.class public final Lcom/sgscq/vpn/h5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:[Ljava/lang/String;

.field public static final g:[[Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/ThreadLocal;

.field public final b:Lcom/sgscq/vpn/z4;

.field public final c:Landroid/content/Context;

.field public final d:Landroid/content/SharedPreferences;

.field public final e:Ljava/util/Set;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-string v0, "upd"

    const-string v1, "update_list"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/h5;->f:[Ljava/lang/String;

    const-string v0, "600028"

    const-string v1, "40"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v0, "600029"

    const-string v1, "8"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "600018"

    const-string v1, "3"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "600100"

    const-string v1, "10"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "600030"

    const-string v1, "0"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "600031"

    const-string v1, "1"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "600035"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/h5;->g:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Ljava/lang/ThreadLocal;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/lang/ThreadLocal;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v3, v0, Lcom/sgscq/vpn/h5;->a:Ljava/lang/ThreadLocal;

    .line 16
    .line 17
    new-instance v3, Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {v3}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iput-object v3, v0, Lcom/sgscq/vpn/h5;->e:Ljava/util/Set;

    .line 27
    .line 28
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, v0, Lcom/sgscq/vpn/h5;->c:Landroid/content/Context;

    .line 34
    .line 35
    move-object/from16 v3, p2

    .line 36
    .line 37
    iput-object v3, v0, Lcom/sgscq/vpn/h5;->d:Landroid/content/SharedPreferences;

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    new-instance v6, Lcom/sgscq/vpn/t4;

    .line 45
    .line 46
    new-instance v4, Lcom/sgscq/vpn/h;

    .line 47
    .line 48
    const/4 v5, 0x2

    .line 49
    invoke-direct {v4, v5, v1}, Lcom/sgscq/vpn/h;-><init>(ILandroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    const/16 v5, 0x80

    .line 53
    .line 54
    const/high16 v7, 0x40000

    .line 55
    .line 56
    invoke-direct {v6, v4, v5, v7}, Lcom/sgscq/vpn/t4;-><init>(Lcom/sgscq/vpn/s4;II)V

    .line 57
    .line 58
    .line 59
    new-instance v10, Lcom/sgscq/vpn/z4;

    .line 60
    .line 61
    new-instance v5, Lm/e;

    .line 62
    .line 63
    invoke-direct {v5, v0, v1, v2}, Lm/e;-><init>(Lcom/sgscq/vpn/h5;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 64
    .line 65
    .line 66
    new-instance v7, Lcom/sgscq/vpn/x1;

    .line 67
    .line 68
    invoke-direct {v7}, Lcom/sgscq/vpn/x1;-><init>()V

    .line 69
    .line 70
    .line 71
    const-wide/16 v8, 0x2ee

    .line 72
    .line 73
    move-object v4, v10

    .line 74
    invoke-direct/range {v4 .. v9}, Lcom/sgscq/vpn/z4;-><init>(Lcom/sgscq/vpn/w4;Lcom/sgscq/vpn/t4;Lcom/sgscq/vpn/y4;J)V

    .line 75
    .line 76
    .line 77
    iput-object v10, v0, Lcom/sgscq/vpn/h5;->b:Lcom/sgscq/vpn/z4;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    new-instance v1, Lcom/sgscq/vpn/z4;

    .line 81
    .line 82
    new-instance v12, La/w;

    .line 83
    .line 84
    const/16 v4, 0xe

    .line 85
    .line 86
    invoke-direct {v12, v4}, La/w;-><init>(I)V

    .line 87
    .line 88
    .line 89
    new-instance v13, Lcom/sgscq/vpn/t4;

    .line 90
    .line 91
    new-instance v4, La/w;

    .line 92
    .line 93
    const/16 v5, 0xf

    .line 94
    .line 95
    invoke-direct {v4, v5}, La/w;-><init>(I)V

    .line 96
    .line 97
    .line 98
    invoke-direct {v13, v4, v3, v3}, Lcom/sgscq/vpn/t4;-><init>(Lcom/sgscq/vpn/s4;II)V

    .line 99
    .line 100
    .line 101
    new-instance v14, Lcom/sgscq/vpn/v4;

    .line 102
    .line 103
    invoke-direct {v14}, Lcom/sgscq/vpn/v4;-><init>()V

    .line 104
    .line 105
    .line 106
    const-wide/16 v15, 0x0

    .line 107
    .line 108
    move-object v11, v1

    .line 109
    invoke-direct/range {v11 .. v16}, Lcom/sgscq/vpn/z4;-><init>(Lcom/sgscq/vpn/w4;Lcom/sgscq/vpn/t4;Lcom/sgscq/vpn/y4;J)V

    .line 110
    .line 111
    .line 112
    iput-object v1, v0, Lcom/sgscq/vpn/h5;->b:Lcom/sgscq/vpn/z4;

    .line 113
    .line 114
    :goto_0
    if-nez v2, :cond_1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_1
    new-instance v1, Lcom/sgscq/vpn/s;

    .line 118
    .line 119
    invoke-direct {v1, v0, v3}, Lcom/sgscq/vpn/s;-><init>(Ljava/lang/Object;I)V

    .line 120
    .line 121
    .line 122
    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 123
    .line 124
    .line 125
    :goto_1
    return-void
.end method

.method public static A(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 8

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const-string v0, "level"

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {v1, v0, p0}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v2, "user_level"

    .line 16
    .line 17
    invoke-static {v0, v2, p0}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1, p0}, Lcom/sgscq/vpn/handler/p;->c(Ljava/lang/String;Ljava/util/Map;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Lcom/sgscq/vpn/handler/p;->f(Ljava/util/Map;)Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {p0}, Lcom/sgscq/vpn/handler/p;->b(Ljava/util/Map;)Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    sget-object v2, Lcom/sgscq/vpn/handler/p;->a:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v3, 0x0

    .line 47
    move v4, v3

    .line 48
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_2

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Lcom/sgscq/vpn/handler/o;

    .line 59
    .line 60
    iget v6, v5, Lcom/sgscq/vpn/handler/o;->d:I

    .line 61
    .line 62
    if-lt v0, v6, :cond_1

    .line 63
    .line 64
    iget-object v6, v5, Lcom/sgscq/vpn/handler/o;->a:Ljava/lang/String;

    .line 65
    .line 66
    invoke-interface {p0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-nez v7, :cond_1

    .line 71
    .line 72
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-static {v6}, Lcom/sgscq/vpn/handler/p;->j(Ljava/lang/Object;)I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    iget v5, v5, Lcom/sgscq/vpn/handler/o;->e:I

    .line 81
    .line 82
    if-lt v6, v5, :cond_1

    .line 83
    .line 84
    add-int/lit8 v4, v4, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    new-array v0, v3, [Ljava/lang/Object;

    .line 92
    .line 93
    const-string v1, "num"

    .line 94
    .line 95
    invoke-static {v1, p0, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0
.end method

.method public static A0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "upd"

    .line 17
    .line 18
    const-string v4, "add"

    .line 19
    .line 20
    const-string v5, "del"

    .line 21
    .line 22
    if-eqz p1, :cond_9

    .line 23
    .line 24
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    instance-of v6, p1, Ljava/util/Map;

    .line 29
    .line 30
    if-eqz v6, :cond_9

    .line 31
    .line 32
    check-cast p1, Ljava/util/Map;

    .line 33
    .line 34
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    instance-of v7, v6, Ljava/util/List;

    .line 39
    .line 40
    if-eqz v7, :cond_0

    .line 41
    .line 42
    check-cast v6, Ljava/util/List;

    .line 43
    .line 44
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    instance-of v7, p1, Ljava/util/List;

    .line 56
    .line 57
    if-eqz v7, :cond_8

    .line 58
    .line 59
    check-cast p1, Ljava/util/List;

    .line 60
    .line 61
    if-eqz p1, :cond_7

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-eqz v7, :cond_1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    invoke-static {v6}, Lcom/sgscq/vpn/h5;->F(Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-eqz v8, :cond_2

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    .line 89
    .line 90
    new-instance v9, Ljava/util/LinkedHashSet;

    .line 91
    .line 92
    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    if-eqz v10, :cond_6

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    invoke-static {v10}, Lcom/sgscq/vpn/h5;->R0(Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v12

    .line 117
    if-eqz v12, :cond_4

    .line 118
    .line 119
    const/4 v12, 0x0

    .line 120
    goto :goto_1

    .line 121
    :cond_4
    invoke-virtual {v7, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    :goto_1
    if-nez v12, :cond_5

    .line 126
    .line 127
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_5
    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    if-eqz v10, :cond_3

    .line 136
    .line 137
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_6
    move-object p1, v8

    .line 142
    :cond_7
    :goto_2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 143
    .line 144
    .line 145
    :cond_8
    instance-of p1, v6, Ljava/util/List;

    .line 146
    .line 147
    if-eqz p1, :cond_9

    .line 148
    .line 149
    check-cast v6, Ljava/util/List;

    .line 150
    .line 151
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 152
    .line 153
    .line 154
    :cond_9
    invoke-static {p0, v1, v0}, Lcom/sgscq/vpn/h5;->F0(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 155
    .line 156
    .line 157
    invoke-static {p0, v2, v0}, Lcom/sgscq/vpn/h5;->F0(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 158
    .line 159
    .line 160
    const-string p1, "Skill"

    .line 161
    .line 162
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    if-eqz p0, :cond_a

    .line 167
    .line 168
    new-instance p0, Lcom/sgscq/vpn/d5;

    .line 169
    .line 170
    const/4 p1, 0x0

    .line 171
    invoke-direct {p0, p1}, Lcom/sgscq/vpn/d5;-><init>(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 175
    .line 176
    .line 177
    new-instance p0, Lcom/sgscq/vpn/d5;

    .line 178
    .line 179
    const/4 p1, 0x1

    .line 180
    invoke-direct {p0, p1}, Lcom/sgscq/vpn/d5;-><init>(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 184
    .line 185
    .line 186
    :cond_a
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 187
    .line 188
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string p1, "del_list"

    .line 192
    .line 193
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    const-string p1, "update_list"

    .line 197
    .line 198
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    invoke-interface {p0, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    invoke-interface {p0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    invoke-interface {p0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    return-object p0
.end method

.method public static B0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sgscq/vpn/h5;->C0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static C(Lcom/sgscq/vpn/w1;Ljava/util/Map;IJ)Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "id"

    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    const-string v3, "general_id"

    .line 11
    .line 12
    invoke-static {p1, v1, v2, v3}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v2, "general_name"

    .line 24
    .line 25
    invoke-interface {p1, v2, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const-string p0, "general_painting_id"

    .line 33
    .line 34
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const-string p0, "general_painting"

    .line 38
    .line 39
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    const-string p0, "general_quality"

    .line 43
    .line 44
    const-string p1, "5"

    .line 45
    .line 46
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    const-string p0, "general_star"

    .line 50
    .line 51
    const-string p1, "1"

    .line 52
    .line 53
    const-string v2, "tag_id"

    .line 54
    .line 55
    invoke-static {v0, p0, p1, p2, v2}, Lcom/sgscq/vpn/handler/l;->b(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string p0, "show_time"

    .line 59
    .line 60
    const-wide/16 v2, 0x0

    .line 61
    .line 62
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    const-string p0, "disappear_time"

    .line 70
    .line 71
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    const-string p0, "general_level"

    .line 79
    .line 80
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    const-string p0, "card_type"

    .line 84
    .line 85
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    const-string p0, "general_avatar"

    .line 89
    .line 90
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    return-object v0
.end method

.method public static C0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_2

    check-cast p1, Ljava/util/Map;

    const-string v2, "del"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const-string v2, "add"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const-string v3, "upd"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v3, p1, Ljava/util/List;

    if-eqz v3, :cond_2

    check-cast p1, Ljava/util/List;

    invoke-static {v2, p1}, Lcom/sgscq/vpn/h5;->S(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-static {p0, v1, v0}, Lcom/sgscq/vpn/h5;->F0(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const-string p1, "Skill"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/sgscq/vpn/d5;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/sgscq/vpn/d5;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_3
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string p1, "del_list"

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "update_list"

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static D0(Ljava/util/Map;)I
    .locals 3

    .line 1
    const-string v0, "General"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    const-string v1, "update_list"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result p0

    return p0

    :cond_0
    const-string v1, "add_list"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0

    :cond_1
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static E(ILjava/lang/String;Ljava/util/Map;)I
    .locals 4

    .line 1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    return p2

    :cond_1
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v2

    int-to-long p0, p0

    add-long/2addr v0, p0

    cmp-long p0, v2, v0

    if-ltz p0, :cond_2

    return p2

    :cond_2
    sub-long/2addr v0, v2

    long-to-int p0, v0

    return p0

    :catch_0
    return p2
.end method

.method public static E0(Ljava/lang/String;)Ljava/lang/String;
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

.method public static F(Ljava/lang/Object;)Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    instance-of v1, p0, Ljava/util/List;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sgscq/vpn/h5;->R0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static F0(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 16

    .line 1
    const-string v0, "EquipmentPiece"

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_d

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_c

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    instance-of v4, v3, Ljava/util/Map;

    .line 40
    .line 41
    if-nez v4, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    check-cast v3, Ljava/util/Map;

    .line 50
    .line 51
    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 52
    .line 53
    .line 54
    const-string v3, "pk_id"

    .line 55
    .line 56
    const-string v5, ""

    .line 57
    .line 58
    invoke-virtual {v4, v3, v5}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    const-string v7, "item_id"

    .line 67
    .line 68
    invoke-virtual {v4, v7, v5}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    const-string v9, "id"

    .line 77
    .line 78
    invoke-virtual {v4, v9, v5}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const-string v10, "equip_id"

    .line 83
    .line 84
    invoke-virtual {v4, v10, v5}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const-string v11, "equipment_id"

    .line 89
    .line 90
    invoke-virtual {v4, v11, v5}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    const/4 v13, 0x7

    .line 103
    const-string v14, "9"

    .line 104
    .line 105
    const/4 v15, 0x1

    .line 106
    if-ne v12, v13, :cond_1

    .line 107
    .line 108
    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v12

    .line 112
    if-eqz v12, :cond_1

    .line 113
    .line 114
    invoke-virtual {v5, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 119
    .line 120
    .line 121
    move-result v12

    .line 122
    if-nez v12, :cond_2

    .line 123
    .line 124
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 125
    .line 126
    .line 127
    move-result v12

    .line 128
    if-ne v12, v13, :cond_2

    .line 129
    .line 130
    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v12

    .line 134
    if-eqz v12, :cond_2

    .line 135
    .line 136
    invoke-virtual {v8, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 141
    .line 142
    .line 143
    move-result v12

    .line 144
    if-nez v12, :cond_3

    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 147
    .line 148
    .line 149
    move-result v12

    .line 150
    if-ne v12, v13, :cond_3

    .line 151
    .line 152
    invoke-virtual {v6, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v12

    .line 156
    if-eqz v12, :cond_3

    .line 157
    .line 158
    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 163
    .line 164
    .line 165
    move-result v12

    .line 166
    if-nez v12, :cond_5

    .line 167
    .line 168
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    :cond_4
    move-object/from16 v3, p2

    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 176
    .line 177
    .line 178
    move-result v12

    .line 179
    if-nez v12, :cond_6

    .line 180
    .line 181
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 182
    .line 183
    .line 184
    move-result v12

    .line 185
    if-ne v12, v13, :cond_6

    .line 186
    .line 187
    invoke-virtual {v6, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result v12

    .line 191
    if-eqz v12, :cond_6

    .line 192
    .line 193
    move-object v8, v6

    .line 194
    :cond_6
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 195
    .line 196
    .line 197
    move-result v12

    .line 198
    if-lez v12, :cond_7

    .line 199
    .line 200
    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    :cond_7
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    invoke-interface {v4, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    invoke-interface {v4, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    invoke-interface {v4, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    check-cast v3, Ljava/lang/Integer;

    .line 220
    .line 221
    const/4 v7, 0x0

    .line 222
    if-nez v3, :cond_8

    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    goto :goto_1

    .line 239
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    check-cast v3, Ljava/util/Map;

    .line 248
    .line 249
    const-string v8, "num"

    .line 250
    .line 251
    invoke-static {v7, v8, v3}, Lcom/sgscq/vpn/h5;->W0(ILjava/lang/String;Ljava/util/Map;)I

    .line 252
    .line 253
    .line 254
    move-result v9

    .line 255
    const-string v10, "item_num"

    .line 256
    .line 257
    invoke-static {v7, v10, v3}, Lcom/sgscq/vpn/h5;->W0(ILjava/lang/String;Ljava/util/Map;)I

    .line 258
    .line 259
    .line 260
    move-result v11

    .line 261
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    .line 262
    .line 263
    .line 264
    move-result v9

    .line 265
    const-string v11, "equipment_piece_num"

    .line 266
    .line 267
    invoke-static {v7, v11, v3}, Lcom/sgscq/vpn/h5;->W0(ILjava/lang/String;Ljava/util/Map;)I

    .line 268
    .line 269
    .line 270
    move-result v12

    .line 271
    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    .line 272
    .line 273
    .line 274
    move-result v9

    .line 275
    invoke-static {v7, v8, v4}, Lcom/sgscq/vpn/h5;->W0(ILjava/lang/String;Ljava/util/Map;)I

    .line 276
    .line 277
    .line 278
    move-result v12

    .line 279
    invoke-static {v7, v10, v4}, Lcom/sgscq/vpn/h5;->W0(ILjava/lang/String;Ljava/util/Map;)I

    .line 280
    .line 281
    .line 282
    move-result v13

    .line 283
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    .line 284
    .line 285
    .line 286
    move-result v12

    .line 287
    invoke-static {v7, v11, v4}, Lcom/sgscq/vpn/h5;->W0(ILjava/lang/String;Ljava/util/Map;)I

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    .line 292
    .line 293
    .line 294
    move-result v4

    .line 295
    add-int/2addr v4, v9

    .line 296
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object v9

    .line 300
    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 304
    .line 305
    .line 306
    move-result-object v8

    .line 307
    invoke-interface {v3, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    invoke-interface {v3, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v8

    .line 314
    if-eqz v8, :cond_9

    .line 315
    .line 316
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    invoke-interface {v3, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    :cond_9
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    if-lez v3, :cond_4

    .line 328
    .line 329
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v3

    .line 333
    if-nez v3, :cond_4

    .line 334
    .line 335
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 340
    .line 341
    .line 342
    move-result v4

    .line 343
    if-eqz v4, :cond_b

    .line 344
    .line 345
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v4

    .line 349
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v4

    .line 357
    if-eqz v4, :cond_a

    .line 358
    .line 359
    goto :goto_2

    .line 360
    :cond_b
    move v15, v7

    .line 361
    :goto_2
    if-nez v15, :cond_4

    .line 362
    .line 363
    move-object/from16 v3, p2

    .line 364
    .line 365
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    goto/16 :goto_0

    .line 369
    .line 370
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 371
    .line 372
    .line 373
    move-object/from16 v0, p1

    .line 374
    .line 375
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 376
    .line 377
    .line 378
    :cond_d
    return-void
.end method

.method public static G0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "0"

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static H0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "0"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "500\\d{3}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/lit16 p0, p0, 0x1f4

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0

    :cond_1
    const-string v0, "5\\d{2}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    const-string v0, "105000\\d{2}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "105"

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0

    :cond_5
    :goto_0
    return-object v0
.end method

.method public static I(Ljava/lang/String;Lcom/sgscq/vpn/p4;ZI)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/16 p2, 0x9

    if-ge p3, p2, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/sgscq/vpn/h5;->J(Ljava/lang/String;)I

    move-result p0

    iget-object p1, p1, Lcom/sgscq/vpn/p4;->b:Ljava/io/Serializable;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/sgscq/vpn/h5;->J(Ljava/lang/String;)I

    move-result p1

    if-gtz p0, :cond_1

    return v0

    :cond_1
    const/4 p2, 0x1

    if-gtz p1, :cond_3

    if-gt p0, p2, :cond_2

    move v0, p2

    :cond_2
    return v0

    :cond_3
    if-gt p0, p1, :cond_4

    move v0, p2

    :cond_4
    return v0
.end method

.method public static I0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "\\d+\\.0+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_3
    return-object p0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static J(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/h5;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    const-string v0, "5\\d{2}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/lit16 p0, p0, -0x1f4

    return p0

    :cond_0
    const-string v0, "105"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static K(Ljava/util/Map;)Lcom/sgscq/vpn/p4;
    .locals 5

    .line 1
    const-string v0, ""

    const/4 v1, 0x1

    if-nez p0, :cond_0

    new-instance p0, Lcom/sgscq/vpn/p4;

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/sgscq/vpn/p4;-><init>(Ljava/lang/String;II)V

    return-object p0

    :cond_0
    const-string v2, "user_position_step"

    const-string v3, "1"

    invoke-static {v2, v3, p0}, Lcom/sgscq/vpn/h5;->X0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sgscq/vpn/h5;->V(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_1

    invoke-static {v1, v2, p0}, Lcom/sgscq/vpn/h5;->W0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_1
    new-instance v1, Lcom/sgscq/vpn/p4;

    const-string v2, "user_map_step"

    invoke-static {v2, v0, p0}, Lcom/sgscq/vpn/h5;->X0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/h5;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v3, v4}, Lcom/sgscq/vpn/p4;-><init>(Ljava/lang/String;Ljava/io/Serializable;I)V

    return-object v1
.end method

.method public static K0(ILjava/lang/String;Ljava/util/Map;)I
    .locals 1

    .line 1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    double-to-int p0, p1

    :cond_1
    :goto_0
    return p0

    :cond_2
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_4

    :try_start_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    double-to-int p0, p1

    :catch_0
    :cond_4
    :goto_1
    return p0
.end method

.method public static L(Ljava/util/Map;Z)Lcom/sgscq/vpn/p4;
    .locals 2

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p1, "user_elite_map_step"

    .line 16
    .line 17
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "user_elite_position_step"

    .line 22
    .line 23
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_0
    if-nez p1, :cond_1

    .line 28
    .line 29
    const-string p1, ""

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :goto_1
    if-nez p0, :cond_2

    .line 37
    .line 38
    const-string p0, "0"

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    :goto_2
    invoke-static {p0}, Lcom/sgscq/vpn/h5;->V(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-gtz v0, :cond_3

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    invoke-static {p0, v0}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    :cond_3
    new-instance v1, Lcom/sgscq/vpn/p4;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/sgscq/vpn/h5;->H0(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {v1, p1, p0, v0}, Lcom/sgscq/vpn/p4;-><init>(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    invoke-static {p0}, Lcom/sgscq/vpn/h5;->K(Ljava/util/Map;)Lcom/sgscq/vpn/p4;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    :goto_3
    return-object v1
.end method

.method public static L0(JLjava/lang/String;Ljava/util/Map;)J
    .locals 0

    .line 1
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Ljava/lang/Number;

    if-eqz p3, :cond_0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    instance-of p3, p2, Ljava/lang/String;

    if-eqz p3, :cond_1

    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-wide p0
.end method

.method public static M(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static M0(Ljava/util/Map;)I
    .locals 4

    .line 1
    const-string v0, "data_version"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sgscq/vpn/h5;->t0(D)Z

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    double-to-int p0, v2

    return p0

    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sgscq/vpn/h5;->t0(D)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    return v1

    :cond_2
    double-to-int p0, v2

    return p0

    :catch_0
    :cond_3
    return v1
.end method

.method public static N(Ljava/lang/Object;Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2, p0, p1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public static N0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static O(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/Map;Z)V
    .locals 4

    .line 1
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Ljava/util/Map;

    if-nez p2, :cond_0

    return-void

    :cond_0
    check-cast p0, Ljava/util/Map;

    const-string p2, "add"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Ljava/util/List;

    if-nez p2, :cond_1

    return-void

    :cond_1
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Ljava/util/Map;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    check-cast p2, Ljava/util/Map;

    if-eqz p3, :cond_4

    const-string v0, "general_pk_id"

    goto :goto_1

    :cond_4
    const-string v0, "pk_id"

    :goto_1
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, ""

    goto :goto_2

    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    :goto_3
    const/4 v2, 0x4

    if-gt v1, v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "equipment_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0, p1}, Lcom/sgscq/vpn/h5;->N(Ljava/lang/Object;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "equipment_id_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0, p1}, Lcom/sgscq/vpn/h5;->N(Ljava/lang/Object;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "equip_id_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0, p1}, Lcom/sgscq/vpn/h5;->N(Ljava/lang/Object;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    const-string v1, "mount_id"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/sgscq/vpn/h5;->N(Ljava/lang/Object;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    const-string v1, "horse_id"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v0, p1}, Lcom/sgscq/vpn/h5;->N(Ljava/lang/Object;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public static O0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static P0(Ljava/lang/String;Ljava/util/Map;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/sgscq/vpn/h5;->E0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    const-string v1, "01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_2
    instance-of p0, v1, Ljava/lang/Number;

    if-eqz p0, :cond_3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_3
    instance-of p0, v1, Ljava/lang/String;

    if-eqz p0, :cond_4

    :try_start_0
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_4
    return v0
.end method

.method public static Q(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "system"

    .line 12
    .line 13
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const-string v3, "friend"

    .line 17
    .line 18
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-string v4, "gift"

    .line 22
    .line 23
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    const-string v4, "event"

    .line 27
    .line 28
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string v4, "pay"

    .line 32
    .line 33
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_5

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    instance-of v4, v1, Ljava/util/Map;

    .line 51
    .line 52
    if-nez v4, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    check-cast v1, Ljava/util/Map;

    .line 56
    .line 57
    const-string v4, "email_type"

    .line 58
    .line 59
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    const-string v5, "mail_type"

    .line 68
    .line 69
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    filled-new-array {v4, v1}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v1}, Lcom/sgscq/vpn/h5;->Y([Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const-string v4, "normalUser"

    .line 86
    .line 87
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-nez v4, :cond_3

    .line 92
    .line 93
    const-string v4, "friendApply"

    .line 94
    .line 95
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_2

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    const-string v4, "normalSystem"

    .line 103
    .line 104
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_4

    .line 109
    .line 110
    move-object v1, v2

    .line 111
    goto :goto_2

    .line 112
    :cond_3
    :goto_1
    move-object v1, v3

    .line 113
    :cond_4
    :goto_2
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_0

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Ljava/lang/Integer;

    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    add-int/lit8 v4, v4, 0x1

    .line 130
    .line 131
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_5
    return-object v0
.end method

.method public static R(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast p0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sgscq/vpn/h5;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/json/JSONArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    :try_start_1
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/sgscq/vpn/h5;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    return-object p0
.end method

.method public static R0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/util/Map;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    check-cast p0, Ljava/util/Map;

    const-string v0, "pk_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_4

    const-string p0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, p0

    :cond_4
    :goto_0
    return-object v1
.end method

.method public static S(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 1
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/sgscq/vpn/h5;->F(Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sgscq/vpn/h5;->R0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    return-object p1
.end method

.method public static T(Ljava/util/Map;)V
    .locals 8

    .line 1
    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    check-cast v0, Ljava/util/Map;

    const-string v1, "add"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/List;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/sgscq/vpn/h5;->f:[Ljava/lang/String;

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/util/List;

    if-eqz v6, :cond_5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v6}, Lcom/sgscq/vpn/h5;->S(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v7, v5, :cond_5

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public static T0(Ljava/util/Map;Lcom/sgscq/vpn/a7;Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/sgscq/vpn/a7;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p0, p1}, Lcom/sgscq/vpn/handler/d0;->R(Ljava/util/Map;Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static U(Ljava/lang/String;)Ljava/lang/String;
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

.method public static U0(Lcom/sgscq/vpn/c0;)Z
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    iget p0, p0, Lcom/sgscq/vpn/c0;->a:I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    move p0, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p0, v1

    .line 11
    :goto_0
    if-nez p0, :cond_1

    .line 12
    .line 13
    move v1, v2

    .line 14
    :cond_1
    return v1
.end method

.method public static V(Ljava/lang/String;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "105"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x8

    if-lt v1, v3, :cond_1

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_2
    :goto_0
    return v0
.end method

.method public static V0(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "claimed_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_3

    check-cast p0, Ljava/util/Map;

    const-string p1, "rewarded"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_2

    move-object p1, p0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_2

    return v3

    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v3

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v3
.end method

.method public static W0(ILjava/lang/String;Ljava/util/Map;)I
    .locals 0

    .line 1
    if-nez p2, :cond_0

    return p0

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return p0
.end method

.method public static X0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
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

.method public static varargs Y([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static Y0(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double p0, v3, v5

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1

    :cond_5
    return v2
.end method

.method public static Z0(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "500"

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "105\\d{2}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "105000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "5\\d{2}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "%03d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object p0

    :cond_3
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static a(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p0, Ljava/util/Map;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    check-cast p0, Ljava/util/Map;

    .line 8
    .line 9
    const-string v0, "skill_id"

    .line 10
    .line 11
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "id"

    .line 18
    .line 19
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_1
    if-nez v0, :cond_2

    .line 24
    .line 25
    const-string v0, "skill_code"

    .line 26
    .line 27
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v2, 0x6

    .line 40
    if-ne v0, v2, :cond_3

    .line 41
    .line 42
    const-string v0, "39100"

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    const/4 v0, 0x5

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    const/16 v3, 0x31

    .line 56
    .line 57
    if-lt v2, v3, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    const/16 v0, 0x38

    .line 64
    .line 65
    if-gt p0, v0, :cond_3

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    :cond_3
    :goto_0
    return v1
.end method

.method public static a0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/sgscq/vpn/h5;->A0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p0

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "del_list"

    invoke-virtual {p0, v1, v0}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "update_list"

    invoke-virtual {p0, v1, v0}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public static b0(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "General"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Map;

    const-string v0, "add"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const-string p0, "[]"

    return-object p0
.end method

.method public static c(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static c0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->I1()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/sgscq/vpn/w1;->I:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    instance-of v0, p0, Ljava/util/Map;

    .line 11
    .line 12
    const-string v1, ""

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    check-cast p0, Ljava/util/Map;

    .line 18
    .line 19
    const-string v0, "bg_image"

    .line 20
    .line 21
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-nez p0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string v0, "null"

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move-object v1, p0

    .line 46
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_3

    .line 51
    .line 52
    return-object v1

    .line 53
    :cond_3
    if-eqz p1, :cond_4

    .line 54
    .line 55
    const-string p0, "105"

    .line 56
    .line 57
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_4

    .line 62
    .line 63
    const-string p0, "930001"

    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_4
    const/4 p0, 0x3

    .line 67
    const/4 v0, 0x0

    .line 68
    :try_start_0
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    add-int/lit16 p0, p0, -0x1f4

    .line 77
    .line 78
    const/16 p1, 0xa

    .line 79
    .line 80
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    const/4 p1, 0x1

    .line 85
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    const-string v1, "920%03d"

    .line 90
    .line 91
    new-array p1, p1, [Ljava/lang/Object;

    .line 92
    .line 93
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    aput-object p0, p1, v0

    .line 98
    .line 99
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    return-object p0

    .line 104
    :catch_0
    const-string p0, "920001"

    .line 105
    .line 106
    return-object p0
.end method

.method public static d(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 70

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "_start_day"

    .line 8
    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    return v4

    .line 21
    :cond_0
    const-string v3, "_total_days"

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/16 v5, 0x1f

    .line 28
    .line 29
    invoke-static {v5, v3, v2}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const-string v5, "_claimed_days"

    .line 34
    .line 35
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-static {v4, v6, v2}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-lt v6, v3, :cond_1

    .line 44
    .line 45
    return v4

    .line 46
    :cond_1
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v7, "_last_claim_day"

    .line 51
    .line 52
    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    const-string v9, ""

    .line 57
    .line 58
    invoke-static {v8, v9, v2}, Lcom/sgscq/vpn/h5;->O0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-eqz v8, :cond_2

    .line 67
    .line 68
    return v4

    .line 69
    :cond_2
    const-string v8, "email_list"

    .line 70
    .line 71
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    instance-of v10, v9, Ljava/util/List;

    .line 76
    .line 77
    const-string v11, "mail_list"

    .line 78
    .line 79
    if-nez v10, :cond_3

    .line 80
    .line 81
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    :cond_3
    instance-of v10, v9, Ljava/util/List;

    .line 86
    .line 87
    if-eqz v10, :cond_4

    .line 88
    .line 89
    check-cast v9, Ljava/util/List;

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    new-instance v9, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    :goto_0
    const-string v10, "_daily_gold"

    .line 98
    .line 99
    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    move/from16 v12, p0

    .line 104
    .line 105
    invoke-static {v12, v10, v2}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    const/4 v12, 0x1

    .line 110
    add-int/2addr v6, v12

    .line 111
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 112
    .line 113
    .line 114
    move-result-wide v13

    .line 115
    const-wide/16 v15, 0x3e8

    .line 116
    .line 117
    move-object/from16 v17, v5

    .line 118
    .line 119
    div-long v4, v13, v15

    .line 120
    .line 121
    new-instance v15, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v12, "_"

    .line 130
    .line 131
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v12

    .line 147
    move-object/from16 v19, v12

    .line 148
    .line 149
    move-object/from16 v21, v12

    .line 150
    .line 151
    move-object/from16 v23, v12

    .line 152
    .line 153
    const-string v24, "id"

    .line 154
    .line 155
    const-string v25, "600034"

    .line 156
    .line 157
    const-string v26, "item_num"

    .line 158
    .line 159
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v27

    .line 163
    const-string v28, "num"

    .line 164
    .line 165
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v29

    .line 169
    const-string v30, "item_type"

    .line 170
    .line 171
    const/16 v13, 0x10

    .line 172
    .line 173
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v31

    .line 177
    const-string v32, "type"

    .line 178
    .line 179
    const/4 v13, 0x5

    .line 180
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v33

    .line 184
    filled-new-array/range {v24 .. v33}, [Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v13

    .line 188
    const-string v14, "item_id"

    .line 189
    .line 190
    const-string v15, "600034"

    .line 191
    .line 192
    invoke-static {v14, v15, v13}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 193
    .line 194
    .line 195
    move-result-object v13

    .line 196
    const-string v18, "email_id"

    .line 197
    .line 198
    const-string v20, "id"

    .line 199
    .line 200
    const-string v22, "pk_id"

    .line 201
    .line 202
    const-string v24, "mail_type"

    .line 203
    .line 204
    const-string v25, "gift"

    .line 205
    .line 206
    const-string v26, "email_type"

    .line 207
    .line 208
    const-string v27, "gift"

    .line 209
    .line 210
    const-string v28, "origin_mail_type"

    .line 211
    .line 212
    const-string v29, "pay"

    .line 213
    .line 214
    const-string v30, "title"

    .line 215
    .line 216
    const-string v14, "\u6bcf\u65e5\u5143\u5b9d"

    .line 217
    .line 218
    invoke-virtual {v1, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v31

    .line 222
    const-string v32, "email_title"

    .line 223
    .line 224
    invoke-virtual {v1, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v33

    .line 228
    const-string v34, "content"

    .line 229
    .line 230
    new-instance v14, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v15, "\u7b2c "

    .line 239
    .line 240
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    move-object/from16 v16, v3

    .line 247
    .line 248
    const-string v3, " \u5929\u5956\u52b1 "

    .line 249
    .line 250
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v0, " \u5143\u5b9d\uff0c\u8bf7\u9886\u53d6\u9644\u4ef6\u3002"

    .line 257
    .line 258
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v35

    .line 265
    const-string v36, "email_content"

    .line 266
    .line 267
    new-instance v14, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v37

    .line 294
    const-string v38, "sender"

    .line 295
    .line 296
    const-string v39, "\u7cfb\u7edf"

    .line 297
    .line 298
    const-string v40, "email_sender"

    .line 299
    .line 300
    const-string v41, "\u7cfb\u7edf"

    .line 301
    .line 302
    const-string v42, "email_sender_nickname"

    .line 303
    .line 304
    const-string v43, "\u7cfb\u7edf"

    .line 305
    .line 306
    const-string v44, "from_user"

    .line 307
    .line 308
    const-string v45, "\u7cfb\u7edf"

    .line 309
    .line 310
    const-string v46, "email_time_offset"

    .line 311
    .line 312
    const/4 v0, 0x0

    .line 313
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v47

    .line 317
    move-object/from16 v63, v47

    .line 318
    .line 319
    const-string v48, "send_time"

    .line 320
    .line 321
    long-to-int v0, v4

    .line 322
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    .line 324
    .line 325
    move-result-object v49

    .line 326
    const-string v50, "create_time"

    .line 327
    .line 328
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object v51

    .line 332
    const-string v52, "time"

    .line 333
    .line 334
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 335
    .line 336
    .line 337
    move-result-object v53

    .line 338
    const-string v54, "expire_time"

    .line 339
    .line 340
    const v1, 0x278d00

    .line 341
    .line 342
    .line 343
    add-int/2addr v0, v1

    .line 344
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 345
    .line 346
    .line 347
    move-result-object v55

    .line 348
    const-string v56, "is_read"

    .line 349
    .line 350
    sget-object v57, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 351
    .line 352
    move-object/from16 v59, v57

    .line 353
    .line 354
    const-string v58, "is_accepted"

    .line 355
    .line 356
    const-string v60, "is_attach_get"

    .line 357
    .line 358
    const-string v61, "0"

    .line 359
    .line 360
    const-string v62, "status"

    .line 361
    .line 362
    const-string v64, "reward_list"

    .line 363
    .line 364
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 365
    .line 366
    .line 367
    move-result-object v65

    .line 368
    const-string v66, "reward"

    .line 369
    .line 370
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 371
    .line 372
    .line 373
    move-result-object v67

    .line 374
    const-string v68, "rewards"

    .line 375
    .line 376
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 377
    .line 378
    .line 379
    move-result-object v69

    .line 380
    filled-new-array/range {v18 .. v69}, [Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    const-string v1, "mail_id"

    .line 385
    .line 386
    invoke-static {v1, v12, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    const/4 v1, 0x0

    .line 391
    invoke-interface {v9, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    invoke-interface {v2, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-object/from16 v0, p1

    .line 401
    .line 402
    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    move-object/from16 v3, v16

    .line 407
    .line 408
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-object/from16 v1, v17

    .line 412
    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    const/4 v0, 0x1

    .line 425
    return v0
.end method

.method public static d0(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "105"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "01"

    const/4 v3, 0x0

    const-string v4, "%02d"

    const/4 v5, 0x1

    const-string v6, "5000"

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v7, 0x5

    if-lt v1, v7, :cond_0

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0

    :cond_0
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit16 v0, v0, -0x1f4

    if-lez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-object p0
.end method

.method public static e(Ljava/util/Map;)Z
    .locals 4

    .line 1
    const/16 v0, 0x64

    const-string v1, "monthly_card"

    const-string v2, "\u6708\u5361"

    invoke-static {v0, v1, v2, p0}, Lcom/sgscq/vpn/h5;->d(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    const/16 v1, 0x12c

    const-string v2, "super_monthly_card"

    const-string v3, "\u8d85\u7ea7\u6708\u5361"

    invoke-static {v1, v2, v3, p0}, Lcom/sgscq/vpn/h5;->d(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static f(Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/h5;->R0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sgscq/vpn/h5;->R0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    :goto_2
    if-ltz v2, :cond_3

    invoke-virtual {p0, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_3
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static g(Lcom/sgscq/vpn/w1;Ljava/util/Map;)Z
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "freshman_step"

    .line 6
    .line 7
    const-string v3, "server_step"

    .line 8
    .line 9
    const-string v4, "guide_step"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    const/4 v6, 0x0

    .line 16
    move v7, v6

    .line 17
    move v8, v7

    .line 18
    :goto_0
    const/4 v9, 0x3

    .line 19
    const-string v10, "80000"

    .line 20
    .line 21
    if-ge v7, v9, :cond_2

    .line 22
    .line 23
    aget-object v9, v5, v7

    .line 24
    .line 25
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    const-string v11, "70000"

    .line 34
    .line 35
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v11

    .line 39
    if-eqz v11, :cond_0

    .line 40
    .line 41
    const/4 v8, 0x1

    .line 42
    :cond_0
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v11
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    if-le v9, v11, :cond_1

    .line 51
    .line 52
    move v8, v6

    .line 53
    goto :goto_1

    .line 54
    :catch_0
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    :goto_1
    const-string v5, "0"

    .line 58
    .line 59
    const-string v7, "null"

    .line 60
    .line 61
    const-string v9, "id"

    .line 62
    .line 63
    const-string v11, ""

    .line 64
    .line 65
    const-string v12, "general_pk_id"

    .line 66
    .line 67
    if-eqz v8, :cond_8

    .line 68
    .line 69
    const-string v8, "Equipment"

    .line 70
    .line 71
    invoke-static {v8, v1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v13

    .line 83
    if-eqz v13, :cond_6

    .line 84
    .line 85
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v13

    .line 89
    check-cast v13, Ljava/util/Map;

    .line 90
    .line 91
    invoke-static {v9, v11, v13}, Lcom/sgscq/vpn/h5;->X0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v14

    .line 95
    const-string v15, "equip_id"

    .line 96
    .line 97
    invoke-static {v15, v14, v13}, Lcom/sgscq/vpn/h5;->X0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v14

    .line 101
    const-string v15, "equipment_id"

    .line 102
    .line 103
    invoke-static {v15, v14, v13}, Lcom/sgscq/vpn/h5;->X0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v14

    .line 107
    invoke-virtual {v0, v14}, Lcom/sgscq/vpn/w1;->y1(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v14

    .line 111
    if-nez v14, :cond_4

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    invoke-static {v12, v11, v13}, Lcom/sgscq/vpn/h5;->X0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v14

    .line 118
    const-string v15, "is_wear"

    .line 119
    .line 120
    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v13

    .line 124
    invoke-static {v13}, Lcom/sgscq/vpn/h5;->Y0(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v13

    .line 128
    if-nez v13, :cond_5

    .line 129
    .line 130
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v13

    .line 134
    if-nez v13, :cond_3

    .line 135
    .line 136
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v13

    .line 140
    if-nez v13, :cond_3

    .line 141
    .line 142
    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v13

    .line 146
    if-nez v13, :cond_3

    .line 147
    .line 148
    :cond_5
    const/4 v8, 0x1

    .line 149
    goto :goto_3

    .line 150
    :cond_6
    move v8, v6

    .line 151
    :goto_3
    if-nez v8, :cond_7

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_7
    invoke-interface {v1, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    invoke-interface {v1, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    invoke-interface {v1, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    const/4 v2, 0x1

    .line 164
    goto :goto_5

    .line 165
    :cond_8
    :goto_4
    move v2, v6

    .line 166
    :goto_5
    or-int/2addr v2, v6

    .line 167
    const-string v3, "General"

    .line 168
    .line 169
    invoke-static {v3, v1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    const-string v8, "skill_id"

    .line 178
    .line 179
    const-string v10, "1"

    .line 180
    .line 181
    const-string v13, "gSkill"

    .line 182
    .line 183
    const-string v14, "position"

    .line 184
    .line 185
    const-string v15, "general_skills"

    .line 186
    .line 187
    move-object/from16 v16, v5

    .line 188
    .line 189
    const-string v5, "general_id"

    .line 190
    .line 191
    move-object/from16 v17, v7

    .line 192
    .line 193
    const-string v7, "upd"

    .line 194
    .line 195
    move/from16 v18, v2

    .line 196
    .line 197
    const-string v2, "del"

    .line 198
    .line 199
    move-object/from16 v19, v3

    .line 200
    .line 201
    const-string v3, "add"

    .line 202
    .line 203
    move-object/from16 v20, v9

    .line 204
    .line 205
    const-string v9, "Skill"

    .line 206
    .line 207
    move-object/from16 v21, v8

    .line 208
    .line 209
    const-string v8, "pk_id"

    .line 210
    .line 211
    if-eqz v6, :cond_9

    .line 212
    .line 213
    const/4 v4, 0x0

    .line 214
    move-object/from16 v24, v2

    .line 215
    .line 216
    move-object/from16 v25, v3

    .line 217
    .line 218
    move-object/from16 v27, v5

    .line 219
    .line 220
    move-object/from16 v26, v7

    .line 221
    .line 222
    move-object/from16 v28, v9

    .line 223
    .line 224
    move-object v5, v11

    .line 225
    move-object/from16 v2, v19

    .line 226
    .line 227
    move-object/from16 v33, v1

    .line 228
    .line 229
    move-object v1, v0

    .line 230
    move-object/from16 v0, v33

    .line 231
    .line 232
    goto/16 :goto_f

    .line 233
    .line 234
    :cond_9
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    check-cast v6, Ljava/util/Map;

    .line 239
    .line 240
    if-nez v6, :cond_a

    .line 241
    .line 242
    new-instance v6, Ljava/util/HashMap;

    .line 243
    .line 244
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 245
    .line 246
    .line 247
    new-instance v0, Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    new-instance v0, Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    new-instance v0, Ljava/util/ArrayList;

    .line 264
    .line 265
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    invoke-interface {v1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    :cond_a
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    check-cast v0, Ljava/util/List;

    .line 279
    .line 280
    if-nez v0, :cond_b

    .line 281
    .line 282
    invoke-static {v6, v3}, Lc/a;->o(Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    :cond_b
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    const/4 v6, 0x0

    .line 291
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 292
    .line 293
    .line 294
    move-result v22

    .line 295
    if-eqz v22, :cond_1c

    .line 296
    .line 297
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v22

    .line 301
    move-object/from16 v23, v4

    .line 302
    .line 303
    move-object/from16 v4, v22

    .line 304
    .line 305
    check-cast v4, Ljava/util/Map;

    .line 306
    .line 307
    invoke-interface {v4, v8, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v22

    .line 311
    move-object/from16 v24, v2

    .line 312
    .line 313
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    invoke-interface {v4, v5, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v22

    .line 321
    move-object/from16 v25, v3

    .line 322
    .line 323
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 328
    .line 329
    .line 330
    move-result v22

    .line 331
    move-object/from16 v26, v7

    .line 332
    .line 333
    const-string v7, "general_naturalskill_id"

    .line 334
    .line 335
    move-object/from16 v27, v5

    .line 336
    .line 337
    const-string v5, "is_natural"

    .line 338
    .line 339
    if-eqz v22, :cond_d

    .line 340
    .line 341
    move-object/from16 v28, v9

    .line 342
    .line 343
    :cond_c
    move-object/from16 v30, v11

    .line 344
    .line 345
    goto :goto_9

    .line 346
    :cond_d
    invoke-interface {v4, v7, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v22

    .line 350
    move-object/from16 v28, v9

    .line 351
    .line 352
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v9

    .line 356
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 357
    .line 358
    .line 359
    move-result-object v22

    .line 360
    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    .line 361
    .line 362
    .line 363
    move-result v29

    .line 364
    if-eqz v29, :cond_c

    .line 365
    .line 366
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v29

    .line 370
    move-object/from16 v1, v29

    .line 371
    .line 372
    check-cast v1, Ljava/util/Map;

    .line 373
    .line 374
    if-nez v1, :cond_e

    .line 375
    .line 376
    move-object/from16 v1, p1

    .line 377
    .line 378
    goto :goto_7

    .line 379
    :cond_e
    invoke-interface {v1, v8, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v29

    .line 383
    move-object/from16 v30, v11

    .line 384
    .line 385
    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v11

    .line 389
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v29

    .line 393
    if-nez v29, :cond_f

    .line 394
    .line 395
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v29

    .line 399
    if-nez v29, :cond_f

    .line 400
    .line 401
    goto :goto_8

    .line 402
    :cond_f
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v29

    .line 406
    invoke-static/range {v29 .. v29}, Lcom/sgscq/vpn/w1;->z1(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v29

    .line 410
    if-nez v29, :cond_11

    .line 411
    .line 412
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result v11

    .line 416
    if-eqz v11, :cond_10

    .line 417
    .line 418
    goto :goto_a

    .line 419
    :cond_10
    :goto_8
    move-object/from16 v1, p1

    .line 420
    .line 421
    move-object/from16 v11, v30

    .line 422
    .line 423
    goto :goto_7

    .line 424
    :goto_9
    const/4 v1, 0x0

    .line 425
    :cond_11
    :goto_a
    const-string v9, "skill_position"

    .line 426
    .line 427
    const-string v11, "pos"

    .line 428
    .line 429
    if-eqz v1, :cond_16

    .line 430
    .line 431
    invoke-static {v2, v12, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 432
    .line 433
    .line 434
    move-result v3

    .line 435
    or-int/lit8 v3, v3, 0x0

    .line 436
    .line 437
    invoke-static {v10, v14, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 438
    .line 439
    .line 440
    move-result v22

    .line 441
    or-int v3, v22, v3

    .line 442
    .line 443
    invoke-static {v10, v11, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 444
    .line 445
    .line 446
    move-result v11

    .line 447
    or-int/2addr v3, v11

    .line 448
    invoke-static {v10, v9, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 449
    .line 450
    .line 451
    move-result v9

    .line 452
    or-int/2addr v3, v9

    .line 453
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 454
    .line 455
    invoke-static {v9, v5, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 456
    .line 457
    .line 458
    move-result v5

    .line 459
    or-int/2addr v3, v5

    .line 460
    or-int/2addr v3, v6

    .line 461
    new-instance v5, Ljava/util/ArrayList;

    .line 462
    .line 463
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v6

    .line 473
    instance-of v9, v6, Ljava/util/List;

    .line 474
    .line 475
    if-eqz v9, :cond_12

    .line 476
    .line 477
    check-cast v6, Ljava/util/List;

    .line 478
    .line 479
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 480
    .line 481
    .line 482
    move-result v9

    .line 483
    if-nez v9, :cond_12

    .line 484
    .line 485
    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    move-result v6

    .line 489
    if-nez v6, :cond_13

    .line 490
    .line 491
    :cond_12
    invoke-interface {v4, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    const/4 v3, 0x1

    .line 495
    :cond_13
    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v6

    .line 499
    instance-of v9, v6, Ljava/util/List;

    .line 500
    .line 501
    if-eqz v9, :cond_14

    .line 502
    .line 503
    check-cast v6, Ljava/util/List;

    .line 504
    .line 505
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 506
    .line 507
    .line 508
    move-result v9

    .line 509
    if-nez v9, :cond_14

    .line 510
    .line 511
    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v1

    .line 515
    if-nez v1, :cond_15

    .line 516
    .line 517
    :cond_14
    invoke-interface {v4, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    const/4 v3, 0x1

    .line 521
    :cond_15
    invoke-static {v2, v7, v4}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    or-int v6, v3, v1

    .line 526
    .line 527
    move-object/from16 v1, p1

    .line 528
    .line 529
    move-object/from16 v4, v23

    .line 530
    .line 531
    move-object/from16 v2, v24

    .line 532
    .line 533
    move-object/from16 v3, v25

    .line 534
    .line 535
    move-object/from16 v7, v26

    .line 536
    .line 537
    move-object/from16 v5, v27

    .line 538
    .line 539
    move-object/from16 v9, v28

    .line 540
    .line 541
    move-object/from16 v11, v30

    .line 542
    .line 543
    goto/16 :goto_6

    .line 544
    .line 545
    :cond_16
    move-object/from16 v1, p0

    .line 546
    .line 547
    invoke-virtual {v1, v3}, Lcom/sgscq/vpn/w1;->T0(Ljava/lang/String;)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v7

    .line 551
    move/from16 v22, v6

    .line 552
    .line 553
    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v6

    .line 557
    instance-of v1, v6, Ljava/util/List;

    .line 558
    .line 559
    if-eqz v1, :cond_17

    .line 560
    .line 561
    check-cast v6, Ljava/util/List;

    .line 562
    .line 563
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 564
    .line 565
    .line 566
    move-result v1

    .line 567
    if-eqz v1, :cond_18

    .line 568
    .line 569
    :cond_17
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 570
    .line 571
    .line 572
    move-result v1

    .line 573
    if-nez v1, :cond_18

    .line 574
    .line 575
    invoke-static {v8, v2, v12, v2}, Lc/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    move-object/from16 v6, v21

    .line 580
    .line 581
    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-object/from16 v6, v20

    .line 585
    .line 586
    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    const-string v6, "skill_code"

    .line 590
    .line 591
    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v1, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v1, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 604
    .line 605
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    const-string v5, "level"

    .line 609
    .line 610
    invoke-virtual {v1, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    const-string v5, "card_type"

    .line 614
    .line 615
    const-string v6, "4"

    .line 616
    .line 617
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    new-instance v5, Ljava/util/ArrayList;

    .line 621
    .line 622
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    .line 627
    .line 628
    invoke-interface {v4, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    invoke-interface {v4, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    const/4 v6, 0x1

    .line 635
    goto :goto_b

    .line 636
    :cond_18
    move/from16 v6, v22

    .line 637
    .line 638
    :goto_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 643
    .line 644
    .line 645
    move-result v4

    .line 646
    if-eqz v4, :cond_1a

    .line 647
    .line 648
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v4

    .line 652
    check-cast v4, Ljava/util/Map;

    .line 653
    .line 654
    move-object/from16 v5, v30

    .line 655
    .line 656
    invoke-static {v4, v8, v5, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 657
    .line 658
    .line 659
    move-result v22

    .line 660
    if-eqz v22, :cond_19

    .line 661
    .line 662
    invoke-static {v4, v14, v10, v11}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    invoke-static {v1, v9, v4}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 667
    .line 668
    .line 669
    move-result v1

    .line 670
    or-int/2addr v6, v1

    .line 671
    const/4 v1, 0x1

    .line 672
    goto :goto_d

    .line 673
    :cond_19
    move-object/from16 v30, v5

    .line 674
    .line 675
    goto :goto_c

    .line 676
    :cond_1a
    move-object/from16 v5, v30

    .line 677
    .line 678
    const/4 v1, 0x0

    .line 679
    :goto_d
    if-nez v1, :cond_1b

    .line 680
    .line 681
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 682
    .line 683
    .line 684
    move-result v1

    .line 685
    if-nez v1, :cond_1b

    .line 686
    .line 687
    move-object/from16 v1, p0

    .line 688
    .line 689
    invoke-virtual {v1, v3}, Lcom/sgscq/vpn/w1;->Z1(Ljava/lang/String;)Ljava/util/HashMap;

    .line 690
    .line 691
    .line 692
    move-result-object v3

    .line 693
    invoke-virtual {v3, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    invoke-virtual {v3, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    const/4 v2, 0x1

    .line 703
    move v6, v2

    .line 704
    goto :goto_e

    .line 705
    :cond_1b
    move-object/from16 v1, p0

    .line 706
    .line 707
    :goto_e
    move-object/from16 v1, p1

    .line 708
    .line 709
    move-object v11, v5

    .line 710
    move-object/from16 v4, v23

    .line 711
    .line 712
    move-object/from16 v2, v24

    .line 713
    .line 714
    move-object/from16 v3, v25

    .line 715
    .line 716
    move-object/from16 v7, v26

    .line 717
    .line 718
    move-object/from16 v5, v27

    .line 719
    .line 720
    move-object/from16 v9, v28

    .line 721
    .line 722
    goto/16 :goto_6

    .line 723
    .line 724
    :cond_1c
    move-object/from16 v1, p0

    .line 725
    .line 726
    move-object/from16 v24, v2

    .line 727
    .line 728
    move-object/from16 v25, v3

    .line 729
    .line 730
    move-object/from16 v27, v5

    .line 731
    .line 732
    move/from16 v22, v6

    .line 733
    .line 734
    move-object/from16 v26, v7

    .line 735
    .line 736
    move-object/from16 v28, v9

    .line 737
    .line 738
    move-object v5, v11

    .line 739
    move-object/from16 v0, p1

    .line 740
    .line 741
    move-object/from16 v2, v19

    .line 742
    .line 743
    move/from16 v4, v22

    .line 744
    .line 745
    :goto_f
    invoke-static {v2, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 746
    .line 747
    .line 748
    move-result-object v3

    .line 749
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 750
    .line 751
    .line 752
    move-result-object v3

    .line 753
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 754
    .line 755
    .line 756
    move-result v6

    .line 757
    if-eqz v6, :cond_1d

    .line 758
    .line 759
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    move-result-object v6

    .line 763
    check-cast v6, Ljava/util/Map;

    .line 764
    .line 765
    invoke-interface {v6, v8, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v7

    .line 769
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v7

    .line 773
    invoke-virtual {v1, v7, v6}, Lcom/sgscq/vpn/w1;->t2(Ljava/lang/String;Ljava/util/Map;)Z

    .line 774
    .line 775
    .line 776
    move-result v6

    .line 777
    or-int/2addr v4, v6

    .line 778
    goto :goto_10

    .line 779
    :cond_1d
    or-int v3, v18, v4

    .line 780
    .line 781
    invoke-static {v2, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 782
    .line 783
    .line 784
    move-result-object v4

    .line 785
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 786
    .line 787
    .line 788
    move-result-object v4

    .line 789
    const/4 v6, 0x0

    .line 790
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 791
    .line 792
    .line 793
    move-result v7

    .line 794
    if-eqz v7, :cond_2e

    .line 795
    .line 796
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v7

    .line 800
    check-cast v7, Ljava/util/Map;

    .line 801
    .line 802
    invoke-virtual {v1, v7}, Lcom/sgscq/vpn/w1;->b0(Ljava/util/Map;)Z

    .line 803
    .line 804
    .line 805
    move-result v9

    .line 806
    or-int/2addr v6, v9

    .line 807
    filled-new-array {v13, v15}, [Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v9

    .line 811
    const/4 v11, 0x0

    .line 812
    const/16 v18, 0x0

    .line 813
    .line 814
    move-object/from16 v19, v4

    .line 815
    .line 816
    :goto_12
    const/4 v4, 0x2

    .line 817
    if-ge v11, v4, :cond_24

    .line 818
    .line 819
    aget-object v4, v9, v11

    .line 820
    .line 821
    move-object/from16 v22, v9

    .line 822
    .line 823
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    move-result-object v9

    .line 827
    instance-of v1, v9, Ljava/util/List;

    .line 828
    .line 829
    if-nez v1, :cond_1e

    .line 830
    .line 831
    move-object/from16 v23, v10

    .line 832
    .line 833
    goto :goto_17

    .line 834
    :cond_1e
    check-cast v9, Ljava/util/List;

    .line 835
    .line 836
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 837
    .line 838
    .line 839
    move-result-object v1

    .line 840
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 841
    .line 842
    .line 843
    move-result v23

    .line 844
    if-eqz v23, :cond_20

    .line 845
    .line 846
    move-object/from16 v23, v10

    .line 847
    .line 848
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object v10

    .line 852
    move-object/from16 v29, v1

    .line 853
    .line 854
    instance-of v1, v10, Ljava/util/Map;

    .line 855
    .line 856
    if-eqz v1, :cond_1f

    .line 857
    .line 858
    check-cast v10, Ljava/util/Map;

    .line 859
    .line 860
    invoke-static {v10}, Lcom/sgscq/vpn/w1;->x1(Ljava/util/Map;)Z

    .line 861
    .line 862
    .line 863
    move-result v1

    .line 864
    if-eqz v1, :cond_1f

    .line 865
    .line 866
    const/4 v1, 0x1

    .line 867
    goto :goto_14

    .line 868
    :cond_1f
    move-object/from16 v10, v23

    .line 869
    .line 870
    move-object/from16 v1, v29

    .line 871
    .line 872
    goto :goto_13

    .line 873
    :cond_20
    move-object/from16 v23, v10

    .line 874
    .line 875
    const/4 v1, 0x0

    .line 876
    :goto_14
    if-nez v1, :cond_21

    .line 877
    .line 878
    goto :goto_17

    .line 879
    :cond_21
    new-instance v1, Ljava/util/ArrayList;

    .line 880
    .line 881
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 882
    .line 883
    .line 884
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 885
    .line 886
    .line 887
    move-result-object v9

    .line 888
    :goto_15
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 889
    .line 890
    .line 891
    move-result v10

    .line 892
    if-eqz v10, :cond_23

    .line 893
    .line 894
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 895
    .line 896
    .line 897
    move-result-object v10

    .line 898
    move-object/from16 v18, v9

    .line 899
    .line 900
    instance-of v9, v10, Ljava/util/Map;

    .line 901
    .line 902
    if-eqz v9, :cond_22

    .line 903
    .line 904
    move-object v9, v10

    .line 905
    check-cast v9, Ljava/util/Map;

    .line 906
    .line 907
    invoke-static {v9}, Lcom/sgscq/vpn/w1;->x1(Ljava/util/Map;)Z

    .line 908
    .line 909
    .line 910
    move-result v9

    .line 911
    if-eqz v9, :cond_22

    .line 912
    .line 913
    goto :goto_16

    .line 914
    :cond_22
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    .line 916
    .line 917
    :goto_16
    move-object/from16 v9, v18

    .line 918
    .line 919
    goto :goto_15

    .line 920
    :cond_23
    invoke-interface {v7, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    .line 922
    .line 923
    const/4 v1, 0x1

    .line 924
    move/from16 v18, v1

    .line 925
    .line 926
    :goto_17
    add-int/lit8 v11, v11, 0x1

    .line 927
    .line 928
    move-object/from16 v1, p0

    .line 929
    .line 930
    move-object/from16 v9, v22

    .line 931
    .line 932
    move-object/from16 v10, v23

    .line 933
    .line 934
    goto :goto_12

    .line 935
    :cond_24
    move-object/from16 v23, v10

    .line 936
    .line 937
    or-int v1, v6, v18

    .line 938
    .line 939
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    .line 941
    .line 942
    move-result-object v4

    .line 943
    invoke-static {v4}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 944
    .line 945
    .line 946
    move-result-object v4

    .line 947
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 948
    .line 949
    .line 950
    move-result v6

    .line 951
    if-eqz v6, :cond_25

    .line 952
    .line 953
    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    .line 955
    .line 956
    move-result-object v4

    .line 957
    invoke-static {v4}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 958
    .line 959
    .line 960
    move-result-object v4

    .line 961
    :cond_25
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 962
    .line 963
    .line 964
    move-result v6

    .line 965
    if-eqz v6, :cond_26

    .line 966
    .line 967
    const/4 v4, 0x0

    .line 968
    move-object/from16 v18, v13

    .line 969
    .line 970
    move-object/from16 v29, v15

    .line 971
    .line 972
    move-object/from16 v31, v28

    .line 973
    .line 974
    goto/16 :goto_1e

    .line 975
    .line 976
    :cond_26
    new-instance v6, Ljava/util/HashMap;

    .line 977
    .line 978
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 979
    .line 980
    .line 981
    move-object/from16 v9, v28

    .line 982
    .line 983
    invoke-static {v9, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 984
    .line 985
    .line 986
    move-result-object v10

    .line 987
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 988
    .line 989
    .line 990
    move-result-object v10

    .line 991
    :goto_18
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 992
    .line 993
    .line 994
    move-result v11

    .line 995
    if-eqz v11, :cond_27

    .line 996
    .line 997
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 998
    .line 999
    .line 1000
    move-result-object v11

    .line 1001
    check-cast v11, Ljava/util/Map;

    .line 1002
    .line 1003
    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v18

    .line 1007
    move-object/from16 v22, v10

    .line 1008
    .line 1009
    invoke-static/range {v18 .. v18}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v10

    .line 1013
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v11

    .line 1017
    invoke-static {v11}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v11

    .line 1021
    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    .line 1023
    .line 1024
    move-object/from16 v10, v22

    .line 1025
    .line 1026
    goto :goto_18

    .line 1027
    :cond_27
    filled-new-array {v13, v15}, [Ljava/lang/String;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v10

    .line 1031
    const/4 v11, 0x2

    .line 1032
    const/16 v18, 0x0

    .line 1033
    .line 1034
    const/16 v22, 0x0

    .line 1035
    .line 1036
    move/from16 v33, v18

    .line 1037
    .line 1038
    move-object/from16 v18, v13

    .line 1039
    .line 1040
    move/from16 v13, v33

    .line 1041
    .line 1042
    :goto_19
    if-ge v13, v11, :cond_2d

    .line 1043
    .line 1044
    aget-object v11, v10, v13

    .line 1045
    .line 1046
    move-object/from16 v28, v10

    .line 1047
    .line 1048
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v10

    .line 1052
    move-object/from16 v29, v15

    .line 1053
    .line 1054
    instance-of v15, v10, Ljava/util/List;

    .line 1055
    .line 1056
    if-nez v15, :cond_28

    .line 1057
    .line 1058
    move-object/from16 v31, v9

    .line 1059
    .line 1060
    goto :goto_1d

    .line 1061
    :cond_28
    new-instance v15, Ljava/util/ArrayList;

    .line 1062
    .line 1063
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    .line 1065
    .line 1066
    check-cast v10, Ljava/util/List;

    .line 1067
    .line 1068
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v10

    .line 1072
    const/16 v30, 0x0

    .line 1073
    .line 1074
    :goto_1a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 1075
    .line 1076
    .line 1077
    move-result v31

    .line 1078
    if-eqz v31, :cond_2b

    .line 1079
    .line 1080
    move-object/from16 v31, v9

    .line 1081
    .line 1082
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v9

    .line 1086
    move-object/from16 v32, v10

    .line 1087
    .line 1088
    instance-of v10, v9, Ljava/util/Map;

    .line 1089
    .line 1090
    if-nez v10, :cond_29

    .line 1091
    .line 1092
    goto :goto_1b

    .line 1093
    :cond_29
    move-object v10, v9

    .line 1094
    check-cast v10, Ljava/util/Map;

    .line 1095
    .line 1096
    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v10

    .line 1100
    invoke-static {v10}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v10

    .line 1104
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v10

    .line 1108
    check-cast v10, Ljava/lang/String;

    .line 1109
    .line 1110
    if-eqz v10, :cond_2a

    .line 1111
    .line 1112
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1113
    .line 1114
    .line 1115
    move-result v10

    .line 1116
    if-nez v10, :cond_2a

    .line 1117
    .line 1118
    const/16 v30, 0x1

    .line 1119
    .line 1120
    goto :goto_1c

    .line 1121
    :cond_2a
    :goto_1b
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    .line 1123
    .line 1124
    :goto_1c
    move-object/from16 v9, v31

    .line 1125
    .line 1126
    move-object/from16 v10, v32

    .line 1127
    .line 1128
    goto :goto_1a

    .line 1129
    :cond_2b
    move-object/from16 v31, v9

    .line 1130
    .line 1131
    if-eqz v30, :cond_2c

    .line 1132
    .line 1133
    invoke-interface {v7, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    .line 1135
    .line 1136
    const/16 v22, 0x1

    .line 1137
    .line 1138
    :cond_2c
    :goto_1d
    add-int/lit8 v13, v13, 0x1

    .line 1139
    .line 1140
    const/4 v11, 0x2

    .line 1141
    move-object/from16 v10, v28

    .line 1142
    .line 1143
    move-object/from16 v15, v29

    .line 1144
    .line 1145
    move-object/from16 v9, v31

    .line 1146
    .line 1147
    goto :goto_19

    .line 1148
    :cond_2d
    move-object/from16 v31, v9

    .line 1149
    .line 1150
    move-object/from16 v29, v15

    .line 1151
    .line 1152
    move/from16 v4, v22

    .line 1153
    .line 1154
    :goto_1e
    or-int v6, v1, v4

    .line 1155
    .line 1156
    move-object/from16 v1, p0

    .line 1157
    .line 1158
    move-object/from16 v13, v18

    .line 1159
    .line 1160
    move-object/from16 v4, v19

    .line 1161
    .line 1162
    move-object/from16 v10, v23

    .line 1163
    .line 1164
    move-object/from16 v15, v29

    .line 1165
    .line 1166
    move-object/from16 v28, v31

    .line 1167
    .line 1168
    goto/16 :goto_11

    .line 1169
    .line 1170
    :cond_2e
    move-object/from16 v23, v10

    .line 1171
    .line 1172
    move-object/from16 v31, v28

    .line 1173
    .line 1174
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/w1;->x2(Ljava/util/Map;)Z

    .line 1175
    .line 1176
    .line 1177
    move-result v1

    .line 1178
    or-int/2addr v1, v6

    .line 1179
    or-int/2addr v1, v3

    .line 1180
    const-string v3, "TeamGeneral"

    .line 1181
    .line 1182
    invoke-static {v3, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v3

    .line 1186
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 1187
    .line 1188
    .line 1189
    move-result v4

    .line 1190
    if-eqz v4, :cond_2f

    .line 1191
    .line 1192
    const/4 v2, 0x0

    .line 1193
    move-object/from16 v4, p0

    .line 1194
    .line 1195
    move/from16 v19, v1

    .line 1196
    .line 1197
    move-object/from16 v10, v17

    .line 1198
    .line 1199
    goto/16 :goto_28

    .line 1200
    .line 1201
    :cond_2f
    invoke-static {v2, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v2

    .line 1205
    new-instance v4, Ljava/util/HashMap;

    .line 1206
    .line 1207
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1208
    .line 1209
    .line 1210
    new-instance v6, Ljava/util/HashMap;

    .line 1211
    .line 1212
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1213
    .line 1214
    .line 1215
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v2

    .line 1219
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1220
    .line 1221
    .line 1222
    move-result v7

    .line 1223
    if-eqz v7, :cond_33

    .line 1224
    .line 1225
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v7

    .line 1229
    check-cast v7, Ljava/util/Map;

    .line 1230
    .line 1231
    invoke-interface {v7, v8, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v9

    .line 1235
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v9

    .line 1239
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 1240
    .line 1241
    .line 1242
    move-result v10

    .line 1243
    if-nez v10, :cond_30

    .line 1244
    .line 1245
    move-object/from16 v10, v17

    .line 1246
    .line 1247
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1248
    .line 1249
    .line 1250
    move-result v11

    .line 1251
    if-nez v11, :cond_31

    .line 1252
    .line 1253
    invoke-virtual {v4, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    .line 1255
    .line 1256
    goto :goto_20

    .line 1257
    :cond_30
    move-object/from16 v10, v17

    .line 1258
    .line 1259
    :cond_31
    :goto_20
    move-object/from16 v9, v27

    .line 1260
    .line 1261
    invoke-interface {v7, v9, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v11

    .line 1265
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v11

    .line 1269
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 1270
    .line 1271
    .line 1272
    move-result v13

    .line 1273
    if-nez v13, :cond_32

    .line 1274
    .line 1275
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1276
    .line 1277
    .line 1278
    move-result v13

    .line 1279
    if-nez v13, :cond_32

    .line 1280
    .line 1281
    new-instance v13, Ln/a;

    .line 1282
    .line 1283
    const/4 v15, 0x6

    .line 1284
    invoke-direct {v13, v15}, Ln/a;-><init>(I)V

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v6, v11, v13}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v11

    .line 1291
    check-cast v11, Ljava/util/List;

    .line 1292
    .line 1293
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1294
    .line 1295
    .line 1296
    :cond_32
    move-object/from16 v27, v9

    .line 1297
    .line 1298
    move-object/from16 v17, v10

    .line 1299
    .line 1300
    goto :goto_1f

    .line 1301
    :cond_33
    move-object/from16 v10, v17

    .line 1302
    .line 1303
    move-object/from16 v9, v27

    .line 1304
    .line 1305
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v2

    .line 1309
    const/4 v3, 0x0

    .line 1310
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1311
    .line 1312
    .line 1313
    move-result v7

    .line 1314
    if-eqz v7, :cond_3d

    .line 1315
    .line 1316
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v7

    .line 1320
    check-cast v7, Ljava/util/Map;

    .line 1321
    .line 1322
    invoke-static {v7, v8, v5, v12}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v11

    .line 1326
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 1327
    .line 1328
    .line 1329
    move-result v13

    .line 1330
    if-nez v13, :cond_3c

    .line 1331
    .line 1332
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1333
    .line 1334
    .line 1335
    move-result v13

    .line 1336
    if-eqz v13, :cond_34

    .line 1337
    .line 1338
    goto/16 :goto_25

    .line 1339
    .line 1340
    :cond_34
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v13

    .line 1344
    check-cast v13, Ljava/util/Map;

    .line 1345
    .line 1346
    if-nez v13, :cond_36

    .line 1347
    .line 1348
    invoke-interface {v7, v9, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v15

    .line 1352
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v15

    .line 1356
    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v15

    .line 1360
    check-cast v15, Ljava/util/List;

    .line 1361
    .line 1362
    if-eqz v15, :cond_36

    .line 1363
    .line 1364
    move-object/from16 v17, v4

    .line 1365
    .line 1366
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 1367
    .line 1368
    .line 1369
    move-result v4

    .line 1370
    move-object/from16 v18, v6

    .line 1371
    .line 1372
    const/4 v6, 0x1

    .line 1373
    if-ne v4, v6, :cond_35

    .line 1374
    .line 1375
    const/4 v3, 0x0

    .line 1376
    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v3

    .line 1380
    move-object v13, v3

    .line 1381
    check-cast v13, Ljava/util/Map;

    .line 1382
    .line 1383
    invoke-interface {v13, v8, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v3

    .line 1387
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v11

    .line 1391
    move v3, v6

    .line 1392
    goto :goto_22

    .line 1393
    :cond_35
    move/from16 v33, v6

    .line 1394
    .line 1395
    move v6, v3

    .line 1396
    move/from16 v3, v33

    .line 1397
    .line 1398
    goto :goto_22

    .line 1399
    :cond_36
    move-object/from16 v17, v4

    .line 1400
    .line 1401
    move-object/from16 v18, v6

    .line 1402
    .line 1403
    const/4 v4, 0x1

    .line 1404
    move v6, v3

    .line 1405
    move v3, v4

    .line 1406
    :goto_22
    if-nez v13, :cond_37

    .line 1407
    .line 1408
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1409
    .line 1410
    .line 1411
    move-object/from16 v4, v17

    .line 1412
    .line 1413
    move-object/from16 v6, v18

    .line 1414
    .line 1415
    goto :goto_21

    .line 1416
    :cond_37
    invoke-interface {v13, v9, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v3

    .line 1420
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v3

    .line 1424
    const-string v4, "general_position"

    .line 1425
    .line 1426
    move-object/from16 v13, v23

    .line 1427
    .line 1428
    invoke-static {v7, v14, v13, v4}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v15

    .line 1432
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 1433
    .line 1434
    .line 1435
    move-result v19

    .line 1436
    if-nez v19, :cond_39

    .line 1437
    .line 1438
    invoke-virtual {v10, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1439
    .line 1440
    .line 1441
    move-result v19

    .line 1442
    if-eqz v19, :cond_38

    .line 1443
    .line 1444
    goto :goto_23

    .line 1445
    :cond_38
    move/from16 v19, v1

    .line 1446
    .line 1447
    move-object/from16 v22, v2

    .line 1448
    .line 1449
    :try_start_1
    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 1450
    .line 1451
    .line 1452
    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1453
    double-to-int v1, v1

    .line 1454
    if-lez v1, :cond_3a

    .line 1455
    .line 1456
    const/4 v1, 0x1

    .line 1457
    goto :goto_24

    .line 1458
    :cond_39
    :goto_23
    move/from16 v19, v1

    .line 1459
    .line 1460
    move-object/from16 v22, v2

    .line 1461
    .line 1462
    :catch_1
    :cond_3a
    const/4 v1, 0x0

    .line 1463
    :goto_24
    if-nez v1, :cond_3b

    .line 1464
    .line 1465
    move-object/from16 v4, p0

    .line 1466
    .line 1467
    move-object/from16 v2, v20

    .line 1468
    .line 1469
    goto :goto_26

    .line 1470
    :cond_3b
    invoke-static {v11, v8, v7}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 1471
    .line 1472
    .line 1473
    move-result v1

    .line 1474
    or-int/2addr v1, v6

    .line 1475
    move-object/from16 v2, v20

    .line 1476
    .line 1477
    invoke-static {v11, v2, v7}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 1478
    .line 1479
    .line 1480
    move-result v6

    .line 1481
    or-int/2addr v1, v6

    .line 1482
    invoke-static {v11, v12, v7}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 1483
    .line 1484
    .line 1485
    move-result v6

    .line 1486
    or-int/2addr v1, v6

    .line 1487
    invoke-static {v3, v9, v7}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 1488
    .line 1489
    .line 1490
    move-result v3

    .line 1491
    or-int/2addr v1, v3

    .line 1492
    const-string v3, "team_id"

    .line 1493
    .line 1494
    invoke-static {v13, v3, v7}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 1495
    .line 1496
    .line 1497
    move-result v3

    .line 1498
    or-int/2addr v1, v3

    .line 1499
    const-string v3, "team_position"

    .line 1500
    .line 1501
    invoke-static {v15, v3, v7}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 1502
    .line 1503
    .line 1504
    move-result v3

    .line 1505
    or-int/2addr v1, v3

    .line 1506
    invoke-static {v15, v4, v7}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 1507
    .line 1508
    .line 1509
    move-result v3

    .line 1510
    or-int/2addr v1, v3

    .line 1511
    invoke-static {v15, v14, v7}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 1512
    .line 1513
    .line 1514
    move-result v3

    .line 1515
    or-int/2addr v1, v3

    .line 1516
    move-object/from16 v4, p0

    .line 1517
    .line 1518
    invoke-virtual {v4, v11, v0}, Lcom/sgscq/vpn/w1;->F2(Ljava/lang/String;Ljava/util/Map;)Z

    .line 1519
    .line 1520
    .line 1521
    move-result v3

    .line 1522
    or-int/2addr v1, v3

    .line 1523
    goto :goto_27

    .line 1524
    :cond_3c
    :goto_25
    move/from16 v19, v1

    .line 1525
    .line 1526
    move-object/from16 v22, v2

    .line 1527
    .line 1528
    move-object/from16 v17, v4

    .line 1529
    .line 1530
    move-object/from16 v18, v6

    .line 1531
    .line 1532
    move-object/from16 v2, v20

    .line 1533
    .line 1534
    move-object/from16 v13, v23

    .line 1535
    .line 1536
    move-object/from16 v4, p0

    .line 1537
    .line 1538
    :goto_26
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->remove()V

    .line 1539
    .line 1540
    .line 1541
    const/4 v1, 0x1

    .line 1542
    :goto_27
    move v3, v1

    .line 1543
    move-object/from16 v20, v2

    .line 1544
    .line 1545
    move-object/from16 v23, v13

    .line 1546
    .line 1547
    move-object/from16 v4, v17

    .line 1548
    .line 1549
    move-object/from16 v6, v18

    .line 1550
    .line 1551
    move/from16 v1, v19

    .line 1552
    .line 1553
    move-object/from16 v2, v22

    .line 1554
    .line 1555
    goto/16 :goto_21

    .line 1556
    .line 1557
    :cond_3d
    move-object/from16 v4, p0

    .line 1558
    .line 1559
    move/from16 v19, v1

    .line 1560
    .line 1561
    if-eqz v3, :cond_3e

    .line 1562
    .line 1563
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/w1;->H2(Ljava/util/Map;)I

    .line 1564
    .line 1565
    .line 1566
    :cond_3e
    move v2, v3

    .line 1567
    :goto_28
    or-int v1, v19, v2

    .line 1568
    .line 1569
    const-string v2, "MeridianTop"

    .line 1570
    .line 1571
    invoke-static {v2, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v3

    .line 1575
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v3

    .line 1579
    const/4 v6, 0x0

    .line 1580
    :cond_3f
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1581
    .line 1582
    .line 1583
    move-result v7

    .line 1584
    if-eqz v7, :cond_40

    .line 1585
    .line 1586
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v7

    .line 1590
    check-cast v7, Ljava/util/Map;

    .line 1591
    .line 1592
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 1593
    .line 1594
    invoke-direct {v9, v7}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1595
    .line 1596
    .line 1597
    invoke-static {v4, v7}, Lcom/sgscq/vpn/handler/u0;->p(Lcom/sgscq/vpn/w1;Ljava/util/Map;)V

    .line 1598
    .line 1599
    .line 1600
    invoke-interface {v9, v7}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 1601
    .line 1602
    .line 1603
    move-result v7

    .line 1604
    if-nez v7, :cond_3f

    .line 1605
    .line 1606
    const/4 v6, 0x1

    .line 1607
    goto :goto_29

    .line 1608
    :cond_40
    or-int/2addr v1, v6

    .line 1609
    const/4 v3, 0x0

    .line 1610
    invoke-static {v3}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 1611
    .line 1612
    .line 1613
    move-result-object v3

    .line 1614
    move-object/from16 v4, v31

    .line 1615
    .line 1616
    invoke-static {v4, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1617
    .line 1618
    .line 1619
    move-result-object v6

    .line 1620
    new-instance v7, Ljava/util/ArrayList;

    .line 1621
    .line 1622
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1623
    .line 1624
    .line 1625
    invoke-static {v2, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1626
    .line 1627
    .line 1628
    move-result-object v2

    .line 1629
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v2

    .line 1633
    const/4 v9, 0x0

    .line 1634
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1635
    .line 1636
    .line 1637
    move-result v11

    .line 1638
    if-eqz v11, :cond_4e

    .line 1639
    .line 1640
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1641
    .line 1642
    .line 1643
    move-result-object v11

    .line 1644
    check-cast v11, Ljava/util/Map;

    .line 1645
    .line 1646
    const-string v13, "user_general_id"

    .line 1647
    .line 1648
    invoke-static {v11, v13, v5, v12}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v13

    .line 1652
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 1653
    .line 1654
    .line 1655
    move-result v14

    .line 1656
    if-nez v14, :cond_4d

    .line 1657
    .line 1658
    move-object/from16 v14, v16

    .line 1659
    .line 1660
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1661
    .line 1662
    .line 1663
    move-result v15

    .line 1664
    if-nez v15, :cond_4c

    .line 1665
    .line 1666
    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1667
    .line 1668
    .line 1669
    move-result v15

    .line 1670
    if-eqz v15, :cond_41

    .line 1671
    .line 1672
    goto/16 :goto_31

    .line 1673
    .line 1674
    :cond_41
    const-string v15, "top_level"

    .line 1675
    .line 1676
    invoke-interface {v11, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v15

    .line 1680
    move-object/from16 p0, v2

    .line 1681
    .line 1682
    const/4 v2, 0x0

    .line 1683
    invoke-static {v15, v2}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 1684
    .line 1685
    .line 1686
    move-result v2

    .line 1687
    if-gtz v2, :cond_42

    .line 1688
    .line 1689
    goto/16 :goto_32

    .line 1690
    .line 1691
    :cond_42
    invoke-static {v11}, Lcom/sgscq/vpn/handler/u0;->d(Ljava/util/Map;)I

    .line 1692
    .line 1693
    .line 1694
    move-result v2

    .line 1695
    const/4 v11, 0x1

    .line 1696
    :goto_2b
    const/16 v15, 0x8

    .line 1697
    .line 1698
    if-gt v11, v15, :cond_4b

    .line 1699
    .line 1700
    :try_start_2
    invoke-virtual {v3, v11}, Lcom/sgscq/vpn/w1;->j1(I)Ljava/util/Map;

    .line 1701
    .line 1702
    .line 1703
    move-result-object v15
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1704
    if-eqz v15, :cond_43

    .line 1705
    .line 1706
    move-object/from16 v16, v3

    .line 1707
    .line 1708
    move-object/from16 v3, v21

    .line 1709
    .line 1710
    :try_start_3
    invoke-interface {v15, v3, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1711
    .line 1712
    .line 1713
    move-result-object v15

    .line 1714
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1715
    .line 1716
    .line 1717
    move-result-object v15
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1718
    goto :goto_2c

    .line 1719
    :catch_2
    :cond_43
    move-object/from16 v16, v3

    .line 1720
    .line 1721
    move-object/from16 v3, v21

    .line 1722
    .line 1723
    :catch_3
    move-object v15, v5

    .line 1724
    :goto_2c
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 1725
    .line 1726
    .line 1727
    move-result v17

    .line 1728
    if-eqz v17, :cond_44

    .line 1729
    .line 1730
    move/from16 v17, v9

    .line 1731
    .line 1732
    move-object/from16 v20, v10

    .line 1733
    .line 1734
    goto :goto_2e

    .line 1735
    :cond_44
    move/from16 v17, v9

    .line 1736
    .line 1737
    new-instance v9, Ljava/util/ArrayList;

    .line 1738
    .line 1739
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1740
    .line 1741
    .line 1742
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1743
    .line 1744
    .line 1745
    move-result-object v18

    .line 1746
    :goto_2d
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 1747
    .line 1748
    .line 1749
    move-result v19

    .line 1750
    if-eqz v19, :cond_46

    .line 1751
    .line 1752
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1753
    .line 1754
    .line 1755
    move-result-object v19

    .line 1756
    move-object/from16 v20, v10

    .line 1757
    .line 1758
    move-object/from16 v10, v19

    .line 1759
    .line 1760
    check-cast v10, Ljava/util/Map;

    .line 1761
    .line 1762
    invoke-static {v10, v12, v5, v13}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1763
    .line 1764
    .line 1765
    move-result v19

    .line 1766
    if-eqz v19, :cond_45

    .line 1767
    .line 1768
    invoke-static {v10, v3, v5, v15}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1769
    .line 1770
    .line 1771
    move-result v19

    .line 1772
    if-eqz v19, :cond_45

    .line 1773
    .line 1774
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1775
    .line 1776
    .line 1777
    :cond_45
    move-object/from16 v10, v20

    .line 1778
    .line 1779
    goto :goto_2d

    .line 1780
    :cond_46
    move-object/from16 v20, v10

    .line 1781
    .line 1782
    if-gt v11, v2, :cond_49

    .line 1783
    .line 1784
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1785
    .line 1786
    .line 1787
    move-result v9

    .line 1788
    if-nez v9, :cond_48

    .line 1789
    .line 1790
    :cond_47
    :goto_2e
    move/from16 v9, v17

    .line 1791
    .line 1792
    goto :goto_30

    .line 1793
    :cond_48
    invoke-static {v13, v15, v0}, Lcom/sgscq/vpn/handler/u0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v9

    .line 1797
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1798
    .line 1799
    .line 1800
    const/4 v9, 0x1

    .line 1801
    goto :goto_30

    .line 1802
    :cond_49
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1803
    .line 1804
    .line 1805
    move-result-object v9

    .line 1806
    :goto_2f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 1807
    .line 1808
    .line 1809
    move-result v10

    .line 1810
    if-eqz v10, :cond_47

    .line 1811
    .line 1812
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1813
    .line 1814
    .line 1815
    move-result-object v10

    .line 1816
    check-cast v10, Ljava/util/Map;

    .line 1817
    .line 1818
    invoke-interface {v6, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1819
    .line 1820
    .line 1821
    invoke-interface {v10, v8, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    .line 1823
    .line 1824
    move-result-object v10

    .line 1825
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1826
    .line 1827
    .line 1828
    move-result-object v10

    .line 1829
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 1830
    .line 1831
    .line 1832
    move-result v15

    .line 1833
    if-nez v15, :cond_4a

    .line 1834
    .line 1835
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1836
    .line 1837
    .line 1838
    :cond_4a
    const/16 v17, 0x1

    .line 1839
    .line 1840
    goto :goto_2f

    .line 1841
    :goto_30
    add-int/lit8 v11, v11, 0x1

    .line 1842
    .line 1843
    move-object/from16 v21, v3

    .line 1844
    .line 1845
    move-object/from16 v3, v16

    .line 1846
    .line 1847
    move-object/from16 v10, v20

    .line 1848
    .line 1849
    goto/16 :goto_2b

    .line 1850
    .line 1851
    :cond_4b
    move/from16 v17, v9

    .line 1852
    .line 1853
    move-object/from16 v2, p0

    .line 1854
    .line 1855
    goto :goto_34

    .line 1856
    :cond_4c
    :goto_31
    move-object/from16 p0, v2

    .line 1857
    .line 1858
    :goto_32
    move-object/from16 v16, v3

    .line 1859
    .line 1860
    move-object/from16 v20, v10

    .line 1861
    .line 1862
    goto :goto_33

    .line 1863
    :cond_4d
    move-object/from16 p0, v2

    .line 1864
    .line 1865
    move-object/from16 v20, v10

    .line 1866
    .line 1867
    move-object/from16 v14, v16

    .line 1868
    .line 1869
    move-object/from16 v16, v3

    .line 1870
    .line 1871
    :goto_33
    move-object/from16 v3, v21

    .line 1872
    .line 1873
    move-object/from16 v2, p0

    .line 1874
    .line 1875
    move-object/from16 v21, v3

    .line 1876
    .line 1877
    move-object/from16 v3, v16

    .line 1878
    .line 1879
    move-object/from16 v10, v20

    .line 1880
    .line 1881
    :goto_34
    move-object/from16 v16, v14

    .line 1882
    .line 1883
    goto/16 :goto_2a

    .line 1884
    .line 1885
    :cond_4e
    if-eqz v9, :cond_4f

    .line 1886
    .line 1887
    new-instance v2, Ljava/util/ArrayList;

    .line 1888
    .line 1889
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1890
    .line 1891
    .line 1892
    move-object/from16 v5, v25

    .line 1893
    .line 1894
    move-object/from16 v3, v26

    .line 1895
    .line 1896
    filled-new-array {v3, v2, v5, v6}, [Ljava/lang/Object;

    .line 1897
    .line 1898
    .line 1899
    move-result-object v2

    .line 1900
    move-object/from16 v3, v24

    .line 1901
    .line 1902
    invoke-static {v3, v7, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1903
    .line 1904
    .line 1905
    move-result-object v2

    .line 1906
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1907
    .line 1908
    .line 1909
    :cond_4f
    or-int/2addr v1, v9

    .line 1910
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/w;->R0(Ljava/util/Map;)Z

    .line 1911
    .line 1912
    .line 1913
    move-result v0

    .line 1914
    or-int/2addr v0, v1

    .line 1915
    return v0
.end method

.method public static h0(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    const-string v1, "TeamGeneral"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/util/Map;

    const-string v1, "add"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lcom/sgscq/vpn/h5;->f(Ljava/util/ArrayList;Ljava/util/List;)V

    :cond_1
    const-string v1, "upd"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_2

    :goto_0
    check-cast p0, Ljava/util/List;

    invoke-static {v0, p0}, Lcom/sgscq/vpn/h5;->f(Ljava/util/ArrayList;Ljava/util/List;)V

    :cond_2
    return-object v0
.end method

.method public static i(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/h5;->k0(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/h5;->Q(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "num"

    invoke-static {v5, v3, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v4

    const-string v6, "climb"

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v5, v3, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v4

    const-string v6, "training"

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v5, v3, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v4

    const-string v6, "vipstore"

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v5, v3, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v4, "ladderstore"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "discount"

    filled-new-array {v6, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "is_open"

    invoke-static {v6, v3, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v4, "gem_discount"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/sgscq/vpn/h5;->A(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p0

    const-string v3, "task"

    invoke-interface {v1, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_email"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static i0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_3

    check-cast p0, Ljava/util/Map;

    const-string p1, "add"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    const-string p1, "upd"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_3

    :goto_0
    check-cast p0, Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

.method public static k(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .line 1
    instance-of v0, p0, Ljava/util/List;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result v5

    if-lt v5, v2, :cond_0

    if-le v5, v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v4, 0x1

    if-lez v4, :cond_2

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v6

    goto :goto_0

    :cond_3
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result p0

    if-lt p0, v2, :cond_5

    if-gt p0, v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\"]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    const-string p0, "[]"

    :goto_1
    return-object p0
.end method

.method public static k0(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    const-string v2, "email_list"

    .line 12
    .line 13
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    instance-of v3, v2, Ljava/util/List;

    .line 18
    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    const-string v2, "mail_list"

    .line 22
    .line 23
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :cond_1
    instance-of v0, v2, Ljava/util/List;

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1a

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    instance-of v3, v2, Ljava/util/Map;

    .line 49
    .line 50
    if-nez v3, :cond_4

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    check-cast v2, Ljava/util/Map;

    .line 54
    .line 55
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 56
    .line 57
    const-string v4, "is_accepted"

    .line 58
    .line 59
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v3, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-nez v5, :cond_3

    .line 68
    .line 69
    const-string v5, "status"

    .line 70
    .line 71
    const-string v6, "0"

    .line 72
    .line 73
    const-string v7, "1"

    .line 74
    .line 75
    invoke-static {v2, v5, v6, v7}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-nez v8, :cond_3

    .line 80
    .line 81
    const-string v8, "is_attach_get"

    .line 82
    .line 83
    invoke-static {v2, v8, v6, v7}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    if-eqz v9, :cond_5

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 91
    .line 92
    invoke-direct {v9, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 93
    .line 94
    .line 95
    const-string v2, "pk_id"

    .line 96
    .line 97
    const-string v10, ""

    .line 98
    .line 99
    invoke-virtual {v9, v2, v10}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    const-string v12, "mail_id"

    .line 108
    .line 109
    invoke-virtual {v9, v12, v10}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v13

    .line 113
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v13

    .line 117
    const-string v14, "email_id"

    .line 118
    .line 119
    invoke-virtual {v9, v14, v10}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v15

    .line 123
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v15

    .line 127
    move-object/from16 p0, v0

    .line 128
    .line 129
    const-string v0, "id"

    .line 130
    .line 131
    invoke-virtual {v9, v0, v10}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v16

    .line 135
    move-object/from16 v17, v1

    .line 136
    .line 137
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    filled-new-array {v11, v13, v15, v1}, [Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-static {v1}, Lcom/sgscq/vpn/h5;->Y([Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 150
    .line 151
    .line 152
    move-result v11

    .line 153
    if-eqz v11, :cond_6

    .line 154
    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v11, "mail_"

    .line 158
    .line 159
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-interface {v9}, Ljava/util/Map;->hashCode()I

    .line 163
    .line 164
    .line 165
    move-result v11

    .line 166
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    :cond_6
    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    invoke-interface {v9, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    invoke-interface {v9, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    const-string v0, "email_title"

    .line 190
    .line 191
    invoke-virtual {v9, v0, v10}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    const-string v2, "title"

    .line 200
    .line 201
    invoke-virtual {v9, v2, v10}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v11

    .line 205
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v11

    .line 209
    const-string v12, "\u7cfb\u7edf\u90ae\u4ef6"

    .line 210
    .line 211
    filled-new-array {v1, v11, v12}, [Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {v1}, Lcom/sgscq/vpn/h5;->Y([Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    const-string v11, "email_content"

    .line 220
    .line 221
    invoke-virtual {v9, v11, v10}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v12

    .line 225
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v12

    .line 229
    const-string v13, "content"

    .line 230
    .line 231
    invoke-virtual {v9, v13, v10}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v14

    .line 235
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v14

    .line 239
    filled-new-array {v12, v14, v10}, [Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v12

    .line 243
    invoke-static {v12}, Lcom/sgscq/vpn/h5;->Y([Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v12

    .line 247
    const-string v14, "email_sender"

    .line 248
    .line 249
    invoke-virtual {v9, v14, v10}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v15

    .line 253
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v15

    .line 257
    move-object/from16 v16, v8

    .line 258
    .line 259
    const-string v8, "sender"

    .line 260
    .line 261
    invoke-virtual {v9, v8, v10}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v18

    .line 265
    move-object/from16 v19, v7

    .line 266
    .line 267
    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    move-object/from16 v18, v5

    .line 272
    .line 273
    const-string v5, "from_user"

    .line 274
    .line 275
    invoke-virtual {v9, v5, v10}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v20

    .line 279
    move-object/from16 v21, v6

    .line 280
    .line 281
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    move-object/from16 v20, v3

    .line 286
    .line 287
    const-string v3, "\u7cfb\u7edf"

    .line 288
    .line 289
    filled-new-array {v15, v7, v6, v3}, [Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    invoke-static {v6}, Lcom/sgscq/vpn/h5;->Y([Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    const-string v7, "email_sender_nickname"

    .line 298
    .line 299
    invoke-virtual {v9, v7, v10}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v15

    .line 303
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v15

    .line 307
    invoke-virtual {v9, v8, v10}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v22

    .line 311
    move-object/from16 v23, v4

    .line 312
    .line 313
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    invoke-virtual {v9, v5, v10}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v22

    .line 321
    move-object/from16 v24, v10

    .line 322
    .line 323
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v10

    .line 327
    filled-new-array {v15, v4, v10, v6, v3}, [Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    invoke-static {v3}, Lcom/sgscq/vpn/h5;->Y([Ljava/lang/String;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    invoke-interface {v9, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    invoke-interface {v9, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    invoke-interface {v9, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    invoke-interface {v9, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    invoke-interface {v9, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    const-string v0, "reward_list"

    .line 360
    .line 361
    invoke-virtual {v9, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    instance-of v2, v1, Ljava/util/List;

    .line 366
    .line 367
    const-string v3, "reward"

    .line 368
    .line 369
    if-nez v2, :cond_7

    .line 370
    .line 371
    invoke-virtual {v9, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    :cond_7
    instance-of v2, v1, Ljava/util/List;

    .line 376
    .line 377
    const-string v4, "rewards"

    .line 378
    .line 379
    if-nez v2, :cond_8

    .line 380
    .line 381
    invoke-virtual {v9, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    :cond_8
    instance-of v2, v1, Ljava/util/List;

    .line 386
    .line 387
    if-eqz v2, :cond_9

    .line 388
    .line 389
    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    invoke-interface {v9, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    invoke-interface {v9, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    const-string v0, "attach_list"

    .line 399
    .line 400
    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    const-string v0, "attachment"

    .line 404
    .line 405
    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    const-string v0, "attachments"

    .line 409
    .line 410
    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    :cond_9
    move-object/from16 v0, v23

    .line 414
    .line 415
    invoke-virtual {v9, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    move-object/from16 v3, v20

    .line 420
    .line 421
    invoke-virtual {v3, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    const/4 v3, 0x1

    .line 426
    const/4 v4, 0x0

    .line 427
    if-nez v0, :cond_c

    .line 428
    .line 429
    move-object/from16 v0, v18

    .line 430
    .line 431
    move-object/from16 v5, v21

    .line 432
    .line 433
    invoke-virtual {v9, v0, v5}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    move-object/from16 v6, v19

    .line 442
    .line 443
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    if-nez v0, :cond_b

    .line 448
    .line 449
    move-object/from16 v0, v16

    .line 450
    .line 451
    invoke-virtual {v9, v0, v5}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v7

    .line 455
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v7

    .line 459
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result v7

    .line 463
    if-eqz v7, :cond_a

    .line 464
    .line 465
    goto :goto_1

    .line 466
    :cond_a
    move v7, v4

    .line 467
    goto :goto_2

    .line 468
    :cond_b
    move-object/from16 v0, v16

    .line 469
    .line 470
    goto :goto_1

    .line 471
    :cond_c
    move-object/from16 v0, v16

    .line 472
    .line 473
    move-object/from16 v6, v19

    .line 474
    .line 475
    move-object/from16 v5, v21

    .line 476
    .line 477
    :goto_1
    move v7, v3

    .line 478
    :goto_2
    if-eqz v7, :cond_d

    .line 479
    .line 480
    goto :goto_3

    .line 481
    :cond_d
    move-object v6, v5

    .line 482
    :goto_3
    invoke-interface {v9, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    const-string v0, "email_type"

    .line 486
    .line 487
    invoke-virtual {v9, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v5

    .line 491
    if-eqz v2, :cond_e

    .line 492
    .line 493
    check-cast v1, Ljava/util/List;

    .line 494
    .line 495
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 496
    .line 497
    .line 498
    move-result v1

    .line 499
    if-nez v1, :cond_e

    .line 500
    .line 501
    goto :goto_4

    .line 502
    :cond_e
    move v3, v4

    .line 503
    :goto_4
    if-eqz v3, :cond_f

    .line 504
    .line 505
    if-nez v7, :cond_f

    .line 506
    .line 507
    const-string v1, "origin_mail_type"

    .line 508
    .line 509
    move-object/from16 v2, v24

    .line 510
    .line 511
    invoke-virtual {v9, v1, v2}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v3

    .line 515
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    invoke-virtual {v9, v0, v2}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    filled-new-array {v3, v2}, [Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    invoke-static {v2}, Lcom/sgscq/vpn/h5;->Y([Ljava/lang/String;)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v2

    .line 535
    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    goto :goto_5

    .line 539
    :cond_f
    if-eqz v5, :cond_10

    .line 540
    .line 541
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 546
    .line 547
    .line 548
    move-result v1

    .line 549
    if-nez v1, :cond_10

    .line 550
    .line 551
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    const-string v2, "\\d+"

    .line 556
    .line 557
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 558
    .line 559
    .line 560
    move-result v1

    .line 561
    if-eqz v1, :cond_11

    .line 562
    .line 563
    :cond_10
    :goto_5
    const-string v1, "gift"

    .line 564
    .line 565
    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    const-string v0, "mail_type"

    .line 569
    .line 570
    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    :cond_11
    const-string v0, "send_time"

    .line 574
    .line 575
    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    const-string v2, "time"

    .line 580
    .line 581
    const-string v3, "create_time"

    .line 582
    .line 583
    if-nez v1, :cond_12

    .line 584
    .line 585
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    invoke-virtual {v9, v3, v1}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    invoke-virtual {v9, v2, v1}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    :cond_12
    invoke-virtual {v9, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    invoke-virtual {v9, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v1

    .line 608
    invoke-virtual {v9, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    move v1, v4

    .line 617
    :goto_6
    const/4 v2, 0x3

    .line 618
    const-wide/16 v5, 0x0

    .line 619
    .line 620
    if-ge v1, v2, :cond_16

    .line 621
    .line 622
    aget-object v2, v0, v1

    .line 623
    .line 624
    instance-of v3, v2, Ljava/lang/Number;

    .line 625
    .line 626
    if-eqz v3, :cond_13

    .line 627
    .line 628
    check-cast v2, Ljava/lang/Number;

    .line 629
    .line 630
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 631
    .line 632
    .line 633
    move-result-wide v2

    .line 634
    goto :goto_8

    .line 635
    :cond_13
    if-nez v2, :cond_14

    .line 636
    .line 637
    goto :goto_7

    .line 638
    :cond_14
    :try_start_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v2

    .line 642
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 643
    .line 644
    .line 645
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    goto :goto_8

    .line 647
    :catch_0
    :goto_7
    move-wide v2, v5

    .line 648
    :goto_8
    cmp-long v7, v2, v5

    .line 649
    .line 650
    if-lez v7, :cond_15

    .line 651
    .line 652
    goto :goto_9

    .line 653
    :cond_15
    add-int/lit8 v1, v1, 0x1

    .line 654
    .line 655
    goto :goto_6

    .line 656
    :cond_16
    move-wide v2, v5

    .line 657
    :goto_9
    cmp-long v0, v2, v5

    .line 658
    .line 659
    const-string v1, "email_time_offset"

    .line 660
    .line 661
    if-gtz v0, :cond_17

    .line 662
    .line 663
    invoke-static {v4, v1, v9}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 664
    .line 665
    .line 666
    move-result v4

    .line 667
    goto :goto_a

    .line 668
    :cond_17
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 669
    .line 670
    .line 671
    move-result-wide v7

    .line 672
    sub-long/2addr v7, v2

    .line 673
    cmp-long v0, v7, v5

    .line 674
    .line 675
    if-gtz v0, :cond_18

    .line 676
    .line 677
    goto :goto_a

    .line 678
    :cond_18
    const-wide/32 v2, 0x7fffffff

    .line 679
    .line 680
    .line 681
    cmp-long v0, v7, v2

    .line 682
    .line 683
    if-lez v0, :cond_19

    .line 684
    .line 685
    const v4, 0x7fffffff

    .line 686
    .line 687
    .line 688
    goto :goto_a

    .line 689
    :cond_19
    long-to-int v4, v7

    .line 690
    :goto_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-object/from16 v0, v17

    .line 698
    .line 699
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    move-object v1, v0

    .line 703
    move-object/from16 v0, p0

    .line 704
    .line 705
    goto/16 :goto_0

    .line 706
    .line 707
    :cond_1a
    move-object v0, v1

    .line 708
    return-object v0
.end method

.method public static l0(Ljava/util/Map;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "data_version"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sgscq/vpn/h5;->t0(D)Z

    move-result p0

    return p0

    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2

    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/sgscq/vpn/h5;->t0(D)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_2
    :goto_0
    return v0
.end method

.method public static m0(Ljava/lang/String;)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sgscq/vpn/w1;->x0(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "hidden"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v3, "idx"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_1

    return v2

    :cond_1
    if-eqz p0, :cond_2

    const-string v3, "105"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x5

    if-lt v3, v5, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x3

    if-ge v3, v5, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    :goto_1
    const-string p0, ""

    :goto_2
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/sgscq/vpn/w1;->o0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v5

    invoke-virtual {v5, p0, p0}, Lcom/sgscq/vpn/w1;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    move v5, v2

    move v6, v5

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_8

    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v7

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/sgscq/vpn/w1;->x0(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    if-eqz v7, :cond_7

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    add-int/lit8 v7, v5, 0x1

    if-ne v7, v1, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_6
    add-int/lit8 v6, v6, 0x1

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    return v2
.end method

.method public static n(Ljava/util/Map;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "General"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/Map;

    const-string v1, "{}"

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/Map;

    const-string v0, "add"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/sgscq/vpn/y1;

    invoke-direct {v0}, Lcom/sgscq/vpn/y1;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pk_id"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v0, v4, v1}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static o0(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "_afdian_owner_token"

    .line 11
    .line 12
    const-string v1, ""

    .line 13
    .line 14
    invoke-static {p1, v0, v1, p0}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public static p0(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    const-string v0, "105"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x5

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "hidden"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static q0(Ljava/util/Map;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/h5;->l0(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sgscq/vpn/h5;->M0(Ljava/util/Map;)I

    move-result p0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static r0(Ljava/util/HashMap;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "hidden"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "true"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static s0(Ljava/util/Map;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    const-string v1, "user_level"

    invoke-static {v0, v1, p0}, Lcom/sgscq/vpn/h5;->W0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    const-string v2, "user_experience"

    const/4 v3, 0x0

    invoke-static {v3, v2, p0}, Lcom/sgscq/vpn/h5;->W0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    const-string v4, "user_position_step"

    invoke-static {v3, v4, p0}, Lcom/sgscq/vpn/h5;->W0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v4

    const-string v5, "user_map_step"

    const-string v6, ""

    invoke-static {v5, v6, p0}, Lcom/sgscq/vpn/h5;->X0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    const/16 v5, 0x64

    if-lt v1, v5, :cond_0

    const v1, 0x3b9ac9ff

    if-lt v2, v1, :cond_0

    const/16 v1, 0x3e7

    if-ne v4, v1, :cond_0

    const-string v1, "500"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :cond_1
    :goto_0
    return v0
.end method

.method public static t0(D)Z
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    cmpl-double p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static u0(Ljava/util/List;)Ljava/lang/String;
    .locals 4

    .line 1
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v2, "{}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    const-string p0, "[]"

    return-object p0
.end method

.method public static v(Ljava/util/Map;)Ljava/lang/String;
    .locals 12

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/h5;->k0(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/sgscq/vpn/handler/x0;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v2, v1, p0}, Lcom/sgscq/vpn/handler/x0;->H(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "mission"

    .line 17
    .line 18
    new-instance v3, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v4, "party"

    .line 24
    .line 25
    sget-object v5, Lcom/sgscq/vpn/handler/c;->b:[[Lcom/sgscq/vpn/config/h;

    .line 26
    .line 27
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 28
    .line 29
    .line 30
    move-result-wide v5

    .line 31
    invoke-static {v5, v6, p0}, Lcom/sgscq/vpn/handler/c;->e(JLjava/util/Map;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const-string v6, "wishing"

    .line 36
    .line 37
    const-string v7, "wishing"

    .line 38
    .line 39
    invoke-virtual {v1, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    const-string v8, "wish_info"

    .line 44
    .line 45
    const-string v9, "wish_info"

    .line 46
    .line 47
    invoke-virtual {v1, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    const-string v10, "push_info"

    .line 52
    .line 53
    invoke-static {v0}, Lcom/sgscq/vpn/h5;->w(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "mail"

    .line 62
    .line 63
    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {p0}, Lcom/sgscq/vpn/h5;->A(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "task"

    .line 72
    .line 73
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 77
    .line 78
    .line 79
    move-result-wide v1

    .line 80
    sget-boolean v3, Lcom/sgscq/vpn/c7;->i:Z

    .line 81
    .line 82
    invoke-static {p0, v1, v2, v3}, Lcom/sgscq/vpn/handler/c;->g(Ljava/util/Map;JZ)Ljava/util/LinkedHashMap;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0
.end method

.method public static v0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/util/Map;

    return-object p0

    :cond_1
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_2

    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static w(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/h5;->Q(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_email"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static x(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v0

    long-to-int v0, v0

    const v1, 0x15180

    sub-int/2addr v0, v1

    new-instance v1, Lcom/sgscq/vpn/y1;

    invoke-direct {v1}, Lcom/sgscq/vpn/y1;-><init>()V

    const-string v2, "serverId"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v2, "server_id"

    const-string v4, "1"

    invoke-virtual {v1, v2, v4}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "server_title"

    const-string v4, "\u5355\u673a\u670d\u52a1\u5668"

    invoke-virtual {v1, v2, v4}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "server_url"

    const-string v5, "cqzx.sanguosha.com/sanguosha_account"

    invoke-virtual {v1, v2, v5}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "serverName"

    invoke-virtual {v1, v2, v4}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "nickname"

    invoke-virtual {v1, v2, p3}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "nickName"

    invoke-virtual {v1, v2, p3}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "roleName"

    invoke-virtual {v1, v2, p3}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "roleId"

    invoke-virtual {v1, v2, p2}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "role_id"

    invoke-virtual {v1, v2, p2}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "role_name"

    invoke-virtual {v1, p2, p3}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "roleLevel"

    invoke-virtual {v1, p2, p0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string p2, "role_level"

    invoke-virtual {v1, p2, p0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string p2, "level"

    invoke-virtual {v1, p2, p0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string p0, "lastLoginTime"

    invoke-virtual {v1, p0, v0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string p0, "recentLoginTime"

    invoke-virtual {v1, p0, v0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string p0, "career"

    invoke-virtual {v1, p0, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string p0, "avatar"

    invoke-virtual {v1, p0, p1}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static x0(Ljava/lang/String;Ljava/lang/String;JJ)J
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-string v2, "[LoginPerf] uid="

    .line 6
    .line 7
    const-string v3, " step="

    .line 8
    .line 9
    const-string v4, " stepMs="

    .line 10
    .line 11
    invoke-static {v2, p0, v3, p1, v4}, Lc/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sub-long p4, v0, p4

    .line 16
    .line 17
    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, " totalMs="

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    sub-long p1, v0, p2

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string p1, "SGSCQ_SRV"

    .line 35
    .line 36
    invoke-static {p1, p0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-wide v0
.end method

.method public static y(Ljava/util/List;Ljava/util/Map;)Ljava/lang/String;
    .locals 25

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "surrender_dialog"

    .line 4
    .line 5
    const-string v2, "evolution_all_status"

    .line 6
    .line 7
    const-string v3, "item_id"

    .line 8
    .line 9
    const-string v4, "complete_list"

    .line 10
    .line 11
    const-string v5, "all_status"

    .line 12
    .line 13
    const-string v6, "surrender_progress"

    .line 14
    .line 15
    const-string v7, "{}"

    .line 16
    .line 17
    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    instance-of v10, v9, Ljava/util/Map;

    .line 27
    .line 28
    if-eqz v10, :cond_0

    .line 29
    .line 30
    move-object v8, v9

    .line 31
    check-cast v8, Ljava/util/Map;

    .line 32
    .line 33
    :cond_0
    instance-of v9, v9, Ljava/util/Map;

    .line 34
    .line 35
    if-nez v9, :cond_1

    .line 36
    .line 37
    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_1
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v10, Ljava/util/ArrayList;

    .line 46
    .line 47
    const-string v11, "General"

    .line 48
    .line 49
    invoke-static {v11, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v11

    .line 53
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v11

    .line 60
    if-eqz v11, :cond_2

    .line 61
    .line 62
    return-object v7

    .line 63
    :cond_2
    new-instance v11, Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v12

    .line 72
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    const-string v14, "general_id"

    .line 77
    .line 78
    if-eqz v13, :cond_3

    .line 79
    .line 80
    :try_start_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v13

    .line 84
    check-cast v13, Ljava/util/Map;

    .line 85
    .line 86
    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v14

    .line 90
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v14

    .line 94
    invoke-interface {v11, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    if-eqz v12, :cond_15

    .line 107
    .line 108
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v12

    .line 112
    check-cast v12, Ljava/util/Map;

    .line 113
    .line 114
    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v12

    .line 118
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v12

    .line 122
    invoke-virtual {v11, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v13

    .line 126
    check-cast v13, Ljava/util/Map;

    .line 127
    .line 128
    if-nez v13, :cond_4

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/d0;->t0(Ljava/util/Map;)Ljava/util/Map;

    .line 132
    .line 133
    .line 134
    move-result-object v15

    .line 135
    invoke-static {v0, v13, v15}, Lcom/sgscq/vpn/handler/d0;->o(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 136
    .line 137
    .line 138
    move-result-object v15

    .line 139
    move-object/from16 p0, v10

    .line 140
    .line 141
    invoke-virtual {v15, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    instance-of v10, v10, Ljava/lang/Number;

    .line 146
    .line 147
    if-eqz v10, :cond_5

    .line 148
    .line 149
    invoke-virtual {v15, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    check-cast v10, Ljava/lang/Number;

    .line 154
    .line 155
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    goto :goto_2

    .line 160
    :cond_5
    const/4 v10, 0x0

    .line 161
    :goto_2
    move-object/from16 v16, v11

    .line 162
    .line 163
    invoke-virtual {v15, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    instance-of v11, v11, Ljava/util/List;

    .line 168
    .line 169
    if-eqz v11, :cond_6

    .line 170
    .line 171
    invoke-virtual {v15, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    check-cast v11, Ljava/util/List;

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 179
    .line 180
    .line 181
    move-result-object v11

    .line 182
    :goto_3
    invoke-virtual {v15, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v17

    .line 186
    move-object/from16 v18, v11

    .line 187
    .line 188
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    move-object/from16 v17, v7

    .line 193
    .line 194
    :try_start_2
    invoke-virtual {v15, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    instance-of v7, v7, Ljava/lang/Number;

    .line 199
    .line 200
    if-eqz v7, :cond_7

    .line 201
    .line 202
    invoke-virtual {v15, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    check-cast v7, Ljava/lang/Number;

    .line 207
    .line 208
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    goto :goto_4

    .line 213
    :cond_7
    const/4 v7, 0x0

    .line 214
    :goto_4
    invoke-static {v12, v8}, Lcom/sgscq/vpn/handler/d0;->Q(Ljava/lang/String;Ljava/util/Map;)Z

    .line 215
    .line 216
    .line 217
    move-result v19

    .line 218
    invoke-static {v12, v8}, Lcom/sgscq/vpn/handler/d0;->N(Ljava/lang/String;Ljava/util/Map;)Z

    .line 219
    .line 220
    .line 221
    move-result v20
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 222
    move-object/from16 v21, v2

    .line 223
    .line 224
    const/4 v2, 0x1

    .line 225
    if-ne v10, v2, :cond_8

    .line 226
    .line 227
    if-nez v19, :cond_8

    .line 228
    .line 229
    move/from16 v19, v2

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_8
    const/16 v19, 0x0

    .line 233
    .line 234
    :goto_5
    move-object/from16 v22, v9

    .line 235
    .line 236
    const-string v9, "evolution_rewards"

    .line 237
    .line 238
    if-ne v7, v2, :cond_9

    .line 239
    .line 240
    if-nez v20, :cond_9

    .line 241
    .line 242
    :try_start_3
    invoke-virtual {v15, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    instance-of v7, v7, Ljava/util/List;

    .line 247
    .line 248
    if-eqz v7, :cond_9

    .line 249
    .line 250
    invoke-virtual {v15, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    check-cast v7, Ljava/util/List;

    .line 255
    .line 256
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    if-nez v7, :cond_9

    .line 261
    .line 262
    goto :goto_6

    .line 263
    :cond_9
    const/4 v2, 0x0

    .line 264
    :goto_6
    if-nez v19, :cond_a

    .line 265
    .line 266
    if-nez v2, :cond_a

    .line 267
    .line 268
    move-object/from16 v10, p0

    .line 269
    .line 270
    move-object/from16 v11, v16

    .line 271
    .line 272
    move-object/from16 v7, v17

    .line 273
    .line 274
    move-object/from16 v2, v21

    .line 275
    .line 276
    move-object/from16 v9, v22

    .line 277
    .line 278
    goto/16 :goto_1

    .line 279
    .line 280
    :cond_a
    const-string v7, "surrender_list"

    .line 281
    .line 282
    invoke-virtual {v15, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v7

    .line 286
    if-eqz v19, :cond_b

    .line 287
    .line 288
    move-object/from16 v20, v14

    .line 289
    .line 290
    instance-of v14, v7, Ljava/util/List;

    .line 291
    .line 292
    if-eqz v14, :cond_c

    .line 293
    .line 294
    check-cast v7, Ljava/util/List;

    .line 295
    .line 296
    goto :goto_7

    .line 297
    :cond_b
    move-object/from16 v20, v14

    .line 298
    .line 299
    :cond_c
    new-instance v7, Ljava/util/ArrayList;

    .line 300
    .line 301
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 302
    .line 303
    .line 304
    :goto_7
    const-string v14, "1"

    .line 305
    .line 306
    move-object/from16 v23, v5

    .line 307
    .line 308
    if-eqz v19, :cond_e

    .line 309
    .line 310
    :try_start_4
    const-string v5, "rewards"

    .line 311
    .line 312
    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v5

    .line 316
    move/from16 v24, v10

    .line 317
    .line 318
    instance-of v10, v5, Ljava/util/List;

    .line 319
    .line 320
    if-eqz v10, :cond_d

    .line 321
    .line 322
    check-cast v5, Ljava/util/List;

    .line 323
    .line 324
    goto :goto_8

    .line 325
    :cond_d
    new-instance v5, Ljava/util/ArrayList;

    .line 326
    .line 327
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .line 329
    .line 330
    :goto_8
    invoke-static {v0, v13, v7, v5}, Lcom/sgscq/vpn/handler/d0;->J(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Lcom/sgscq/vpn/handler/b0;

    .line 331
    .line 332
    .line 333
    new-instance v5, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    const-string v7, "claimed_"

    .line 339
    .line 340
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    invoke-interface {v8, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    goto :goto_9

    .line 354
    :cond_e
    move/from16 v24, v10

    .line 355
    .line 356
    :goto_9
    const-string v5, "evolution_surrender_list"

    .line 357
    .line 358
    invoke-virtual {v15, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    if-eqz v2, :cond_f

    .line 363
    .line 364
    instance-of v7, v5, Ljava/util/List;

    .line 365
    .line 366
    if-eqz v7, :cond_f

    .line 367
    .line 368
    check-cast v5, Ljava/util/List;

    .line 369
    .line 370
    goto :goto_a

    .line 371
    :cond_f
    new-instance v5, Ljava/util/ArrayList;

    .line 372
    .line 373
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .line 375
    .line 376
    :goto_a
    if-eqz v2, :cond_10

    .line 377
    .line 378
    invoke-virtual {v15, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    check-cast v2, Ljava/util/List;

    .line 383
    .line 384
    invoke-static {v0, v13, v5, v2}, Lcom/sgscq/vpn/handler/d0;->J(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Lcom/sgscq/vpn/handler/b0;

    .line 385
    .line 386
    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .line 391
    .line 392
    const-string v5, "claimed_evolution_"

    .line 393
    .line 394
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    invoke-interface {v8, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    :cond_10
    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/w1;->D2(Ljava/util/Map;)Z

    .line 411
    .line 412
    .line 413
    const-string v2, "_login_surrender_dirty"

    .line 414
    .line 415
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 416
    .line 417
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 421
    .line 422
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 423
    .line 424
    .line 425
    if-eqz v19, :cond_11

    .line 426
    .line 427
    move-object/from16 v5, v18

    .line 428
    .line 429
    goto :goto_b

    .line 430
    :cond_11
    const-string v5, "evolution_complete_list"

    .line 431
    .line 432
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 433
    .line 434
    .line 435
    move-result-object v7

    .line 436
    invoke-virtual {v15, v5, v7}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v5

    .line 440
    :goto_b
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    if-eqz v19, :cond_12

    .line 444
    .line 445
    goto :goto_c

    .line 446
    :cond_12
    const-string v5, "evolution_item_id"

    .line 447
    .line 448
    invoke-virtual {v15, v5, v11}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v5

    .line 452
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v11

    .line 456
    :goto_c
    invoke-interface {v2, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    const-string v5, ""

    .line 460
    .line 461
    invoke-interface {v13, v1, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v5

    .line 465
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 470
    .line 471
    .line 472
    move-result v7

    .line 473
    if-nez v7, :cond_13

    .line 474
    .line 475
    const-string v7, "null"

    .line 476
    .line 477
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result v7

    .line 481
    if-eqz v7, :cond_14

    .line 482
    .line 483
    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    .line 484
    .line 485
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    const-string v7, "02"

    .line 492
    .line 493
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v5

    .line 500
    :cond_14
    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 504
    .line 505
    .line 506
    move-result-object v5

    .line 507
    move-object/from16 v7, v23

    .line 508
    .line 509
    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    const-string v5, "is_receive"

    .line 513
    .line 514
    const/4 v9, 0x1

    .line 515
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 516
    .line 517
    .line 518
    move-result-object v9

    .line 519
    invoke-interface {v2, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-object/from16 v5, v20

    .line 523
    .line 524
    invoke-interface {v2, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-object/from16 v9, v22

    .line 528
    .line 529
    invoke-interface {v9, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-object/from16 v10, p0

    .line 533
    .line 534
    move-object v14, v5

    .line 535
    move-object v5, v7

    .line 536
    move-object/from16 v11, v16

    .line 537
    .line 538
    move-object/from16 v7, v17

    .line 539
    .line 540
    move-object/from16 v2, v21

    .line 541
    .line 542
    goto/16 :goto_1

    .line 543
    .line 544
    :cond_15
    move-object/from16 v17, v7

    .line 545
    .line 546
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    .line 547
    .line 548
    .line 549
    move-result v0

    .line 550
    if-eqz v0, :cond_16

    .line 551
    .line 552
    return-object v17

    .line 553
    :cond_16
    const-string v0, "general_list"

    .line 554
    .line 555
    const/4 v1, 0x0

    .line 556
    new-array v1, v1, [Ljava/lang/Object;

    .line 557
    .line 558
    invoke-static {v0, v9, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 566
    return-object v0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    goto :goto_d

    .line 569
    :catch_1
    move-exception v0

    .line 570
    move-object/from16 v17, v7

    .line 571
    .line 572
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 573
    .line 574
    const-string v2, "[SurrenderInfo] build failed: "

    .line 575
    .line 576
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    const-string v2, "SGSCQ_SRV"

    .line 580
    .line 581
    invoke-static {v0, v1, v2}, Lc/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    return-object v17
.end method

.method public static z0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sgscq/vpn/h5;->A0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final B(Ljava/lang/String;)Ljava/lang/String;
    .locals 52

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v11

    .line 9
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    long-to-int v13, v0

    .line 14
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 15
    .line 16
    .line 17
    move-result-wide v14

    .line 18
    const-string v0, "\u73a9\u5bb6"

    .line 19
    .line 20
    iget-object v1, v9, Lcom/sgscq/vpn/h5;->d:Landroid/content/SharedPreferences;

    .line 21
    .line 22
    const-string v2, "player_name"

    .line 23
    .line 24
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "resource_coin"

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v9, v1, v2}, Lcom/sgscq/vpn/h5;->J0(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    int-to-long v3, v3

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/h5;->G()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/h5;->H()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    iget-object v7, v9, Lcom/sgscq/vpn/h5;->c:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    move-wide/from16 v16, v3

    .line 51
    .line 52
    const-string v3, "sgscq_passport_v4"

    .line 53
    .line 54
    invoke-virtual {v7, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    const-string v4, "sgscq_player_v5"

    .line 59
    .line 60
    invoke-virtual {v7, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 61
    .line 62
    .line 63
    const-string v4, "sgscq_guide_v2"

    .line 64
    .line 65
    invoke-virtual {v7, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    const-string v8, "sgscq_cloud_passport_owner_v1"

    .line 73
    .line 74
    invoke-virtual {v4, v8, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 75
    .line 76
    .line 77
    const-string v2, "_status"

    .line 78
    .line 79
    const-string v4, "passport_"

    .line 80
    .line 81
    const-string v8, "active"

    .line 82
    .line 83
    if-eqz v10, :cond_1

    .line 84
    .line 85
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v18

    .line 89
    if-eqz v18, :cond_0

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    move/from16 v18, v5

    .line 93
    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    goto :goto_1

    .line 114
    :cond_1
    :goto_0
    move/from16 v18, v5

    .line 115
    .line 116
    move-object v5, v8

    .line 117
    :goto_1
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v19

    .line 121
    move/from16 v20, v6

    .line 122
    .line 123
    const-string v6, "general_id"

    .line 124
    .line 125
    move-wide/from16 v21, v14

    .line 126
    .line 127
    const-string v14, "first_choose_general"

    .line 128
    .line 129
    const-string v15, "[Login] User "

    .line 130
    .line 131
    move/from16 v24, v13

    .line 132
    .line 133
    const-string v13, "Item"

    .line 134
    .line 135
    move-wide/from16 v25, v11

    .line 136
    .line 137
    const-string v11, "user_power"

    .line 138
    .line 139
    const-string v12, "user_energy"

    .line 140
    .line 141
    move-object/from16 v27, v11

    .line 142
    .line 143
    const-string v11, "user_gold"

    .line 144
    .line 145
    move-object/from16 v28, v12

    .line 146
    .line 147
    const-string v12, "user_coin"

    .line 148
    .line 149
    move-object/from16 v29, v11

    .line 150
    .line 151
    const-string v11, "General"

    .line 152
    .line 153
    move-object/from16 v30, v12

    .line 154
    .line 155
    const-string v12, ""

    .line 156
    .line 157
    move-object/from16 v31, v1

    .line 158
    .line 159
    const-string v1, "SGSCQ_SRV"

    .line 160
    .line 161
    if-nez v19, :cond_4

    .line 162
    .line 163
    move-object/from16 v19, v0

    .line 164
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v15, " is "

    .line 174
    .line 175
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v5, ", forcing new player"

    .line 182
    .line 183
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {v1, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual/range {p0 .. p1}, Lcom/sgscq/vpn/h5;->y0(Ljava/lang/String;)Ljava/util/HashMap;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v9, v10, v0}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 198
    .line 199
    .line 200
    if-eqz v10, :cond_3

    .line 201
    .line 202
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-eqz v5, :cond_2

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_2
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-interface {v3, v2, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 233
    .line 234
    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    const-string v3, "Set user status: "

    .line 238
    .line 239
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v3, " -> active"

    .line 246
    .line 247
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    const-string v3, "SGSCQ_PASSPORT"

    .line 255
    .line 256
    invoke-static {v3, v2}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :cond_3
    :goto_2
    const/4 v2, 0x1

    .line 260
    const/4 v3, 0x1

    .line 261
    const/4 v4, 0x0

    .line 262
    move v5, v2

    .line 263
    move-object/from16 v34, v7

    .line 264
    .line 265
    move-object/from16 v41, v11

    .line 266
    .line 267
    move-object/from16 v15, v27

    .line 268
    .line 269
    move-object/from16 v8, v29

    .line 270
    .line 271
    move-object/from16 v7, v30

    .line 272
    .line 273
    move-object v2, v1

    .line 274
    move-object v11, v9

    .line 275
    move v9, v4

    .line 276
    move-object v4, v0

    .line 277
    move-wide/from16 v0, v16

    .line 278
    .line 279
    move-object/from16 v17, v13

    .line 280
    .line 281
    move-object/from16 v16, v14

    .line 282
    .line 283
    move-object/from16 v13, v28

    .line 284
    .line 285
    move-object v14, v6

    .line 286
    move/from16 v6, v20

    .line 287
    .line 288
    move/from16 v49, v18

    .line 289
    .line 290
    move-object/from16 v18, v12

    .line 291
    .line 292
    move/from16 v12, v49

    .line 293
    .line 294
    goto/16 :goto_1e

    .line 295
    .line 296
    :cond_4
    move-object/from16 v19, v0

    .line 297
    .line 298
    invoke-virtual/range {p0 .. p1}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    const-string v2, "0"

    .line 303
    .line 304
    if-eqz v0, :cond_a

    .line 305
    .line 306
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    instance-of v4, v3, Ljava/util/Map;

    .line 311
    .line 312
    if-eqz v4, :cond_7

    .line 313
    .line 314
    check-cast v3, Ljava/util/Map;

    .line 315
    .line 316
    const-string v4, "add"

    .line 317
    .line 318
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    instance-of v4, v3, Ljava/util/List;

    .line 323
    .line 324
    if-eqz v4, :cond_7

    .line 325
    .line 326
    check-cast v3, Ljava/util/List;

    .line 327
    .line 328
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 333
    .line 334
    .line 335
    move-result v4

    .line 336
    if-eqz v4, :cond_7

    .line 337
    .line 338
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    instance-of v5, v4, Ljava/util/Map;

    .line 343
    .line 344
    if-nez v5, :cond_5

    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_5
    check-cast v4, Ljava/util/Map;

    .line 348
    .line 349
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 350
    .line 351
    const-string v8, "story_guest"

    .line 352
    .line 353
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v4

    .line 361
    if-eqz v4, :cond_6

    .line 362
    .line 363
    goto :goto_3

    .line 364
    :cond_6
    const/4 v3, 0x1

    .line 365
    goto :goto_4

    .line 366
    :cond_7
    const/4 v3, 0x0

    .line 367
    :goto_4
    if-nez v3, :cond_a

    .line 368
    .line 369
    invoke-static {v14, v2, v0}, Lcom/sgscq/vpn/h5;->N0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    if-eqz v3, :cond_9

    .line 374
    .line 375
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    if-nez v4, :cond_9

    .line 380
    .line 381
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v4

    .line 385
    if-nez v4, :cond_9

    .line 386
    .line 387
    const-string v4, "[]"

    .line 388
    .line 389
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    if-eqz v3, :cond_8

    .line 394
    .line 395
    goto :goto_5

    .line 396
    :cond_8
    const/4 v3, 0x0

    .line 397
    goto :goto_6

    .line 398
    :cond_9
    :goto_5
    const/4 v3, 0x1

    .line 399
    :goto_6
    if-eqz v3, :cond_a

    .line 400
    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    const-string v3, " has data but no generals, recreating"

    .line 410
    .line 411
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-static {v1, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    const/4 v0, 0x0

    .line 422
    :cond_a
    const-string v3, "user_vip_level"

    .line 423
    .line 424
    const-string v4, "user_nickname"

    .line 425
    .line 426
    const-string v5, "user_level"

    .line 427
    .line 428
    if-eqz v0, :cond_3f

    .line 429
    .line 430
    invoke-static {v0}, Lcom/sgscq/vpn/h5;->l0(Ljava/util/Map;)Z

    .line 431
    .line 432
    .line 433
    move-result v8

    .line 434
    const/4 v15, 0x7

    .line 435
    if-eqz v8, :cond_b

    .line 436
    .line 437
    invoke-static {v0}, Lcom/sgscq/vpn/h5;->M0(Ljava/util/Map;)I

    .line 438
    .line 439
    .line 440
    move-result v8

    .line 441
    if-ltz v8, :cond_b

    .line 442
    .line 443
    invoke-static {v0}, Lcom/sgscq/vpn/h5;->M0(Ljava/util/Map;)I

    .line 444
    .line 445
    .line 446
    move-result v8

    .line 447
    if-ge v8, v15, :cond_b

    .line 448
    .line 449
    const/4 v8, 0x1

    .line 450
    goto :goto_7

    .line 451
    :cond_b
    const/4 v8, 0x0

    .line 452
    :goto_7
    if-eqz v8, :cond_f

    .line 453
    .line 454
    const-string v8, "data_version"

    .line 455
    .line 456
    const/4 v15, 0x0

    .line 457
    invoke-static {v15, v8, v0}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 458
    .line 459
    .line 460
    move-result v15

    .line 461
    move-object/from16 v16, v14

    .line 462
    .line 463
    new-instance v14, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    move-object/from16 v17, v3

    .line 466
    .line 467
    const-string v3, "[Migration] Migrating data from version "

    .line 468
    .line 469
    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    const-string v3, " to 7"

    .line 476
    .line 477
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    invoke-static {v1, v3}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    const/4 v3, 0x1

    .line 488
    if-ge v15, v3, :cond_e

    .line 489
    .line 490
    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v14

    .line 494
    if-nez v14, :cond_c

    .line 495
    .line 496
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 497
    .line 498
    .line 499
    move-result-object v3

    .line 500
    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    :cond_c
    const-string v3, "user_sign"

    .line 504
    .line 505
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    move-result v14

    .line 509
    if-nez v14, :cond_d

    .line 510
    .line 511
    const-string v14, "Hi"

    .line 512
    .line 513
    invoke-interface {v0, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    :cond_d
    const-string v3, "[Migration] V0 -> V1 completed"

    .line 517
    .line 518
    invoke-static {v1, v3}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    :cond_e
    const/4 v3, 0x7

    .line 522
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 523
    .line 524
    .line 525
    move-result-object v3

    .line 526
    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    new-instance v3, Ljava/lang/StringBuilder;

    .line 530
    .line 531
    const-string v8, "[Player] Migrated: "

    .line 532
    .line 533
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v3

    .line 543
    invoke-static {v1, v3}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    const/4 v3, 0x1

    .line 547
    goto :goto_8

    .line 548
    :cond_f
    move-object/from16 v17, v3

    .line 549
    .line 550
    move-object/from16 v16, v14

    .line 551
    .line 552
    const/4 v3, 0x0

    .line 553
    :goto_8
    invoke-static {v7}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 554
    .line 555
    .line 556
    move-result-object v8

    .line 557
    invoke-virtual {v8, v0}, Lcom/sgscq/vpn/w1;->g2(Ljava/util/Map;)Z

    .line 558
    .line 559
    .line 560
    move-result v14

    .line 561
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->D2(Ljava/util/Map;)Z

    .line 562
    .line 563
    .line 564
    move-result v15

    .line 565
    invoke-static {v13, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 566
    .line 567
    .line 568
    move-result-object v18

    .line 569
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 570
    .line 571
    .line 572
    move-result-object v18

    .line 573
    const/16 v20, 0x0

    .line 574
    .line 575
    :goto_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 576
    .line 577
    .line 578
    move-result v32

    .line 579
    move/from16 v33, v3

    .line 580
    .line 581
    const-string v3, "related_equipment_id"

    .line 582
    .line 583
    move-object/from16 v34, v7

    .line 584
    .line 585
    const-string v7, "fate_equip_id"

    .line 586
    .line 587
    move-object/from16 v35, v4

    .line 588
    .line 589
    const-string v4, "equipment_id"

    .line 590
    .line 591
    const-string v9, "item_id"

    .line 592
    .line 593
    move-object/from16 v36, v5

    .line 594
    .line 595
    const-string v5, "id"

    .line 596
    .line 597
    if-eqz v32, :cond_1b

    .line 598
    .line 599
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v32

    .line 603
    move-object/from16 v37, v1

    .line 604
    .line 605
    move-object/from16 v1, v32

    .line 606
    .line 607
    check-cast v1, Ljava/util/Map;

    .line 608
    .line 609
    if-nez v1, :cond_10

    .line 610
    .line 611
    move-object/from16 v39, v6

    .line 612
    .line 613
    move-object/from16 v41, v11

    .line 614
    .line 615
    move/from16 v32, v14

    .line 616
    .line 617
    move/from16 v38, v15

    .line 618
    .line 619
    goto/16 :goto_d

    .line 620
    .line 621
    :cond_10
    invoke-static {v1, v5, v12, v9}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v10

    .line 625
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v32

    .line 629
    if-nez v32, :cond_11

    .line 630
    .line 631
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v32

    .line 635
    :cond_11
    if-nez v32, :cond_12

    .line 636
    .line 637
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v32

    .line 641
    :cond_12
    if-nez v32, :cond_13

    .line 642
    .line 643
    move-object/from16 v32, v12

    .line 644
    .line 645
    goto :goto_a

    .line 646
    :cond_13
    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v32

    .line 650
    :goto_a
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->isEmpty()Z

    .line 651
    .line 652
    .line 653
    move-result v38

    .line 654
    if-eqz v38, :cond_14

    .line 655
    .line 656
    move/from16 v38, v15

    .line 657
    .line 658
    invoke-virtual {v8, v10}, Lcom/sgscq/vpn/w1;->E0(Ljava/lang/String;)Ljava/util/Map;

    .line 659
    .line 660
    .line 661
    move-result-object v15

    .line 662
    if-eqz v15, :cond_15

    .line 663
    .line 664
    invoke-interface {v15, v7, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-result-object v15

    .line 668
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v32

    .line 672
    goto :goto_b

    .line 673
    :cond_14
    move/from16 v38, v15

    .line 674
    .line 675
    :cond_15
    :goto_b
    move-object/from16 v15, v32

    .line 676
    .line 677
    move/from16 v32, v14

    .line 678
    .line 679
    const-string v14, "600045"

    .line 680
    .line 681
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 682
    .line 683
    .line 684
    move-result v39

    .line 685
    if-nez v39, :cond_16

    .line 686
    .line 687
    invoke-virtual {v8, v10}, Lcom/sgscq/vpn/w1;->E0(Ljava/lang/String;)Ljava/util/Map;

    .line 688
    .line 689
    .line 690
    move-result-object v10

    .line 691
    if-eqz v10, :cond_1a

    .line 692
    .line 693
    :cond_16
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 694
    .line 695
    .line 696
    move-result v10

    .line 697
    if-nez v10, :cond_1a

    .line 698
    .line 699
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 700
    .line 701
    .line 702
    move-result v10

    .line 703
    move-object/from16 v39, v6

    .line 704
    .line 705
    const/4 v6, 0x2

    .line 706
    if-ge v10, v6, :cond_17

    .line 707
    .line 708
    goto :goto_c

    .line 709
    :cond_17
    invoke-virtual {v8, v15}, Lcom/sgscq/vpn/w1;->F0(Ljava/lang/String;)Ljava/util/Map;

    .line 710
    .line 711
    .line 712
    move-result-object v6

    .line 713
    if-nez v6, :cond_18

    .line 714
    .line 715
    :goto_c
    move-object/from16 v41, v11

    .line 716
    .line 717
    goto/16 :goto_d

    .line 718
    .line 719
    :cond_18
    const-string v10, "box_id"

    .line 720
    .line 721
    invoke-interface {v6, v10, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    move-result-object v40

    .line 725
    move-object/from16 v41, v11

    .line 726
    .line 727
    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v11

    .line 731
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 732
    .line 733
    .line 734
    move-result v40

    .line 735
    if-eqz v40, :cond_19

    .line 736
    .line 737
    goto :goto_d

    .line 738
    :cond_19
    invoke-interface {v1, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    invoke-interface {v1, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    const-string v5, "base_item_id"

    .line 745
    .line 746
    invoke-interface {v6, v5, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v9

    .line 750
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v9

    .line 754
    invoke-interface {v1, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    const-string v5, "resource_id"

    .line 758
    .line 759
    invoke-interface {v6, v5, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    move-result-object v9

    .line 763
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v9

    .line 767
    invoke-interface {v1, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    const-string v5, "fate_box_id"

    .line 774
    .line 775
    invoke-interface {v1, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    invoke-interface {v1, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    .line 780
    .line 781
    invoke-interface {v1, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    invoke-interface {v1, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    const-string v3, "name"

    .line 788
    .line 789
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object v4

    .line 793
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v4

    .line 797
    const-string v5, "desc"

    .line 798
    .line 799
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    move-result-object v6

    .line 803
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v6

    .line 807
    const-string v7, "item_title"

    .line 808
    .line 809
    invoke-interface {v1, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    const-string v7, "item_name"

    .line 813
    .line 814
    invoke-interface {v1, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    const-string v3, "title"

    .line 821
    .line 822
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    const-string v3, "item_desc"

    .line 826
    .line 827
    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    .line 829
    .line 830
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    const/16 v20, 0x1

    .line 834
    .line 835
    goto :goto_d

    .line 836
    :cond_1a
    move-object/from16 v39, v6

    .line 837
    .line 838
    goto :goto_c

    .line 839
    :goto_d
    move-object/from16 v9, p0

    .line 840
    .line 841
    move-object/from16 v10, p1

    .line 842
    .line 843
    move/from16 v14, v32

    .line 844
    .line 845
    move/from16 v3, v33

    .line 846
    .line 847
    move-object/from16 v7, v34

    .line 848
    .line 849
    move-object/from16 v4, v35

    .line 850
    .line 851
    move-object/from16 v5, v36

    .line 852
    .line 853
    move-object/from16 v1, v37

    .line 854
    .line 855
    move/from16 v15, v38

    .line 856
    .line 857
    move-object/from16 v6, v39

    .line 858
    .line 859
    move-object/from16 v11, v41

    .line 860
    .line 861
    goto/16 :goto_9

    .line 862
    .line 863
    :cond_1b
    move-object/from16 v37, v1

    .line 864
    .line 865
    move-object/from16 v39, v6

    .line 866
    .line 867
    move-object/from16 v41, v11

    .line 868
    .line 869
    move/from16 v32, v14

    .line 870
    .line 871
    move/from16 v38, v15

    .line 872
    .line 873
    const-string v1, "EquipmentPiece"

    .line 874
    .line 875
    invoke-static {v1, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 876
    .line 877
    .line 878
    move-result-object v1

    .line 879
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 880
    .line 881
    .line 882
    move-result-object v1

    .line 883
    const/4 v6, 0x0

    .line 884
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 885
    .line 886
    .line 887
    move-result v10

    .line 888
    if-eqz v10, :cond_25

    .line 889
    .line 890
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 891
    .line 892
    .line 893
    move-result-object v10

    .line 894
    check-cast v10, Ljava/util/Map;

    .line 895
    .line 896
    if-nez v10, :cond_1c

    .line 897
    .line 898
    move-object/from16 v18, v1

    .line 899
    .line 900
    goto/16 :goto_f

    .line 901
    .line 902
    :cond_1c
    const-string v11, "pk_id"

    .line 903
    .line 904
    invoke-static {v10, v11, v12, v5, v9}, Lc/a;->k(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 905
    .line 906
    .line 907
    move-result-object v11

    .line 908
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 909
    .line 910
    .line 911
    move-result v14

    .line 912
    const-string v15, "9"

    .line 913
    .line 914
    move-object/from16 v18, v1

    .line 915
    .line 916
    const/4 v1, 0x7

    .line 917
    if-ne v14, v1, :cond_1d

    .line 918
    .line 919
    invoke-virtual {v11, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 920
    .line 921
    .line 922
    move-result v14

    .line 923
    if-nez v14, :cond_1e

    .line 924
    .line 925
    :cond_1d
    invoke-interface {v10, v5, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    move-result-object v14

    .line 929
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 930
    .line 931
    .line 932
    move-result-object v14

    .line 933
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 934
    .line 935
    .line 936
    move-result v14

    .line 937
    if-ne v14, v1, :cond_1e

    .line 938
    .line 939
    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    .line 941
    .line 942
    move-result-object v11

    .line 943
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 944
    .line 945
    .line 946
    move-result-object v11

    .line 947
    :cond_1e
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 948
    .line 949
    .line 950
    move-result v14

    .line 951
    if-ne v14, v1, :cond_24

    .line 952
    .line 953
    invoke-virtual {v11, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 954
    .line 955
    .line 956
    move-result v1

    .line 957
    if-nez v1, :cond_1f

    .line 958
    .line 959
    goto :goto_f

    .line 960
    :cond_1f
    const/4 v1, 0x1

    .line 961
    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object v1

    .line 965
    invoke-virtual {v8, v1}, Lcom/sgscq/vpn/w1;->z0(Ljava/lang/String;)Ljava/util/Map;

    .line 966
    .line 967
    .line 968
    move-result-object v14

    .line 969
    if-nez v14, :cond_20

    .line 970
    .line 971
    goto :goto_f

    .line 972
    :cond_20
    invoke-static {v10, v4, v12, v1}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 973
    .line 974
    .line 975
    move-result v14

    .line 976
    if-nez v14, :cond_21

    .line 977
    .line 978
    invoke-interface {v10, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    const/4 v6, 0x1

    .line 982
    :cond_21
    const-string v14, "equip_id"

    .line 983
    .line 984
    invoke-static {v10, v14, v12, v1}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 985
    .line 986
    .line 987
    move-result v15

    .line 988
    if-nez v15, :cond_22

    .line 989
    .line 990
    invoke-interface {v10, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    .line 992
    .line 993
    const/4 v6, 0x1

    .line 994
    :cond_22
    invoke-static {v10, v9, v12, v11}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 995
    .line 996
    .line 997
    move-result v14

    .line 998
    if-nez v14, :cond_23

    .line 999
    .line 1000
    invoke-interface {v10, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    .line 1002
    .line 1003
    const/4 v6, 0x1

    .line 1004
    :cond_23
    invoke-static {v10, v5, v12, v1}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1005
    .line 1006
    .line 1007
    move-result v11

    .line 1008
    if-nez v11, :cond_24

    .line 1009
    .line 1010
    invoke-interface {v10, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    .line 1012
    .line 1013
    const/4 v6, 0x1

    .line 1014
    :cond_24
    :goto_f
    move-object/from16 v1, v18

    .line 1015
    .line 1016
    goto/16 :goto_e

    .line 1017
    .line 1018
    :cond_25
    invoke-static {v13, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v1

    .line 1022
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1023
    .line 1024
    .line 1025
    move-result v10

    .line 1026
    const/4 v11, 0x2

    .line 1027
    if-ge v10, v11, :cond_26

    .line 1028
    .line 1029
    const/4 v1, 0x0

    .line 1030
    goto/16 :goto_13

    .line 1031
    .line 1032
    :cond_26
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 1033
    .line 1034
    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1035
    .line 1036
    .line 1037
    new-instance v11, Ljava/util/ArrayList;

    .line 1038
    .line 1039
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1040
    .line 1041
    .line 1042
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v14

    .line 1046
    const/4 v15, 0x0

    .line 1047
    :goto_10
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 1048
    .line 1049
    .line 1050
    move-result v18

    .line 1051
    if-eqz v18, :cond_2a

    .line 1052
    .line 1053
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v18

    .line 1057
    move-object/from16 v40, v14

    .line 1058
    .line 1059
    move-object/from16 v14, v18

    .line 1060
    .line 1061
    check-cast v14, Ljava/util/Map;

    .line 1062
    .line 1063
    if-nez v14, :cond_27

    .line 1064
    .line 1065
    move/from16 v18, v15

    .line 1066
    .line 1067
    goto :goto_11

    .line 1068
    :cond_27
    move/from16 v18, v15

    .line 1069
    .line 1070
    invoke-static {v14, v5, v12, v9}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v15

    .line 1074
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 1075
    .line 1076
    .line 1077
    move-result v42

    .line 1078
    if-eqz v42, :cond_28

    .line 1079
    .line 1080
    :goto_11
    move-object/from16 v42, v9

    .line 1081
    .line 1082
    goto :goto_12

    .line 1083
    :cond_28
    move-object/from16 v42, v9

    .line 1084
    .line 1085
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1086
    .line 1087
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    .line 1092
    .line 1093
    const-string v15, "#"

    .line 1094
    .line 1095
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    .line 1097
    .line 1098
    invoke-static {v14, v4, v12, v3, v7}, Lc/a;->k(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v15

    .line 1102
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v9

    .line 1109
    invoke-virtual {v10, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v15

    .line 1113
    check-cast v15, Ljava/util/Map;

    .line 1114
    .line 1115
    if-nez v15, :cond_29

    .line 1116
    .line 1117
    invoke-interface {v10, v9, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    .line 1119
    .line 1120
    :goto_12
    move/from16 v15, v18

    .line 1121
    .line 1122
    move-object/from16 v14, v40

    .line 1123
    .line 1124
    move-object/from16 v9, v42

    .line 1125
    .line 1126
    goto :goto_10

    .line 1127
    :cond_29
    const-string v9, "num"

    .line 1128
    .line 1129
    move-object/from16 v43, v3

    .line 1130
    .line 1131
    const-string v3, "item_num"

    .line 1132
    .line 1133
    move-object/from16 v44, v4

    .line 1134
    .line 1135
    const/4 v4, 0x0

    .line 1136
    invoke-static {v15, v9, v2, v3, v4}, Lc/a;->g(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 1137
    .line 1138
    .line 1139
    move-result v4

    .line 1140
    move-object/from16 v45, v7

    .line 1141
    .line 1142
    invoke-interface {v14, v9, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v7

    .line 1146
    invoke-interface {v14, v3, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v7

    .line 1150
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v7

    .line 1154
    move-object/from16 v46, v10

    .line 1155
    .line 1156
    const/4 v10, 0x0

    .line 1157
    invoke-static {v7, v10}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 1158
    .line 1159
    .line 1160
    move-result v7

    .line 1161
    add-int/2addr v7, v4

    .line 1162
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v4

    .line 1166
    invoke-interface {v15, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    .line 1168
    .line 1169
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v3

    .line 1173
    invoke-interface {v15, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    .line 1178
    .line 1179
    const/4 v15, 0x1

    .line 1180
    move-object/from16 v14, v40

    .line 1181
    .line 1182
    move-object/from16 v9, v42

    .line 1183
    .line 1184
    move-object/from16 v3, v43

    .line 1185
    .line 1186
    move-object/from16 v4, v44

    .line 1187
    .line 1188
    move-object/from16 v7, v45

    .line 1189
    .line 1190
    move-object/from16 v10, v46

    .line 1191
    .line 1192
    goto/16 :goto_10

    .line 1193
    .line 1194
    :cond_2a
    move/from16 v18, v15

    .line 1195
    .line 1196
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1197
    .line 1198
    .line 1199
    move-result v3

    .line 1200
    if-nez v3, :cond_2b

    .line 1201
    .line 1202
    invoke-interface {v1, v11}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1203
    .line 1204
    .line 1205
    :cond_2b
    move/from16 v1, v18

    .line 1206
    .line 1207
    :goto_13
    const-string v3, "BuddyGeneral"

    .line 1208
    .line 1209
    invoke-static {v3, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v3

    .line 1213
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 1214
    .line 1215
    .line 1216
    move-result v4

    .line 1217
    const-string v7, "null"

    .line 1218
    .line 1219
    if-eqz v4, :cond_2c

    .line 1220
    .line 1221
    const/4 v3, 0x0

    .line 1222
    :goto_14
    move-object/from16 v9, v41

    .line 1223
    .line 1224
    goto :goto_16

    .line 1225
    :cond_2c
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v3

    .line 1229
    const/4 v4, 0x0

    .line 1230
    :cond_2d
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1231
    .line 1232
    .line 1233
    move-result v9

    .line 1234
    if-eqz v9, :cond_2e

    .line 1235
    .line 1236
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v9

    .line 1240
    check-cast v9, Ljava/util/Map;

    .line 1241
    .line 1242
    const-string v10, "lieutenant_user_general_id"

    .line 1243
    .line 1244
    const-string v11, "major_user_general_id"

    .line 1245
    .line 1246
    const-string v14, "major_pk_id"

    .line 1247
    .line 1248
    invoke-static {v9, v10, v12, v11, v14}, Lc/a;->k(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v9

    .line 1252
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 1253
    .line 1254
    .line 1255
    move-result v10

    .line 1256
    if-nez v10, :cond_2d

    .line 1257
    .line 1258
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1259
    .line 1260
    .line 1261
    move-result v10

    .line 1262
    if-nez v10, :cond_2d

    .line 1263
    .line 1264
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1265
    .line 1266
    .line 1267
    move-result v9

    .line 1268
    if-nez v9, :cond_2d

    .line 1269
    .line 1270
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1271
    .line 1272
    .line 1273
    const/4 v4, 0x1

    .line 1274
    goto :goto_15

    .line 1275
    :cond_2e
    move v3, v4

    .line 1276
    goto :goto_14

    .line 1277
    :goto_16
    invoke-static {v9, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v4

    .line 1281
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v4

    .line 1285
    const/4 v10, 0x0

    .line 1286
    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1287
    .line 1288
    .line 1289
    move-result v11

    .line 1290
    if-eqz v11, :cond_37

    .line 1291
    .line 1292
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v11

    .line 1296
    check-cast v11, Ljava/util/Map;

    .line 1297
    .line 1298
    move-object/from16 v14, v39

    .line 1299
    .line 1300
    invoke-static {v11, v5, v12, v14}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v15

    .line 1304
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 1305
    .line 1306
    .line 1307
    move-result v18

    .line 1308
    if-nez v18, :cond_36

    .line 1309
    .line 1310
    invoke-virtual {v7, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1311
    .line 1312
    .line 1313
    move-result v18

    .line 1314
    if-eqz v18, :cond_2f

    .line 1315
    .line 1316
    goto/16 :goto_1a

    .line 1317
    .line 1318
    :cond_2f
    invoke-virtual {v8, v15}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v15

    .line 1322
    if-nez v15, :cond_30

    .line 1323
    .line 1324
    goto :goto_1a

    .line 1325
    :cond_30
    move-object/from16 v18, v4

    .line 1326
    .line 1327
    const-string v4, "lieutenant_skill_id"

    .line 1328
    .line 1329
    invoke-interface {v15, v4, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v15

    .line 1333
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v15

    .line 1337
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 1338
    .line 1339
    .line 1340
    move-result v39

    .line 1341
    move-object/from16 v40, v5

    .line 1342
    .line 1343
    const-string v5, "skill_type_lieutenant"

    .line 1344
    .line 1345
    if-nez v39, :cond_34

    .line 1346
    .line 1347
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1348
    .line 1349
    .line 1350
    move-result v39

    .line 1351
    if-nez v39, :cond_34

    .line 1352
    .line 1353
    invoke-virtual {v7, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1354
    .line 1355
    .line 1356
    move-result v39

    .line 1357
    if-eqz v39, :cond_31

    .line 1358
    .line 1359
    goto :goto_18

    .line 1360
    :cond_31
    invoke-static {v11, v4, v15}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1361
    .line 1362
    .line 1363
    move-result v39

    .line 1364
    if-nez v39, :cond_32

    .line 1365
    .line 1366
    invoke-interface {v11, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    .line 1368
    .line 1369
    const/4 v10, 0x1

    .line 1370
    :cond_32
    invoke-static {v11, v5, v15}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1371
    .line 1372
    .line 1373
    move-result v4

    .line 1374
    if-nez v4, :cond_33

    .line 1375
    .line 1376
    invoke-interface {v11, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    .line 1378
    .line 1379
    const/4 v10, 0x1

    .line 1380
    :cond_33
    invoke-virtual {v8, v0, v11}, Lcom/sgscq/vpn/w1;->E2(Ljava/util/Map;Ljava/util/Map;)Z

    .line 1381
    .line 1382
    .line 1383
    move-result v4

    .line 1384
    goto :goto_19

    .line 1385
    :cond_34
    :goto_18
    invoke-virtual {v8, v4, v11}, Lcom/sgscq/vpn/w1;->E(Ljava/lang/String;Ljava/util/Map;)Z

    .line 1386
    .line 1387
    .line 1388
    move-result v15

    .line 1389
    or-int/2addr v10, v15

    .line 1390
    invoke-virtual {v8, v5, v11}, Lcom/sgscq/vpn/w1;->E(Ljava/lang/String;Ljava/util/Map;)Z

    .line 1391
    .line 1392
    .line 1393
    move-result v5

    .line 1394
    or-int/2addr v5, v10

    .line 1395
    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v4

    .line 1399
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v4

    .line 1403
    invoke-static {v4}, Lcom/sgscq/vpn/w1;->r1(Ljava/lang/String;)Z

    .line 1404
    .line 1405
    .line 1406
    move-result v4

    .line 1407
    if-eqz v4, :cond_35

    .line 1408
    .line 1409
    const-string v4, "ls_type"

    .line 1410
    .line 1411
    invoke-static {v2, v4, v11}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 1412
    .line 1413
    .line 1414
    move-result v4

    .line 1415
    or-int/2addr v4, v5

    .line 1416
    const-string v5, "ls_value"

    .line 1417
    .line 1418
    invoke-static {v2, v5, v11}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 1419
    .line 1420
    .line 1421
    move-result v10

    .line 1422
    :goto_19
    or-int v5, v4, v10

    .line 1423
    .line 1424
    :cond_35
    move v10, v5

    .line 1425
    goto :goto_1b

    .line 1426
    :cond_36
    :goto_1a
    move-object/from16 v18, v4

    .line 1427
    .line 1428
    move-object/from16 v40, v5

    .line 1429
    .line 1430
    :goto_1b
    move-object/from16 v39, v14

    .line 1431
    .line 1432
    move-object/from16 v4, v18

    .line 1433
    .line 1434
    move-object/from16 v5, v40

    .line 1435
    .line 1436
    goto/16 :goto_17

    .line 1437
    .line 1438
    :cond_37
    move-object/from16 v14, v39

    .line 1439
    .line 1440
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->j2(Ljava/util/Map;)Z

    .line 1441
    .line 1442
    .line 1443
    move-result v2

    .line 1444
    invoke-static {v8, v0}, Lcom/sgscq/vpn/h5;->g(Lcom/sgscq/vpn/w1;Ljava/util/Map;)Z

    .line 1445
    .line 1446
    .line 1447
    move-result v4

    .line 1448
    if-nez v32, :cond_39

    .line 1449
    .line 1450
    if-nez v38, :cond_39

    .line 1451
    .line 1452
    if-nez v20, :cond_39

    .line 1453
    .line 1454
    if-nez v6, :cond_39

    .line 1455
    .line 1456
    if-nez v1, :cond_39

    .line 1457
    .line 1458
    if-nez v3, :cond_39

    .line 1459
    .line 1460
    if-nez v10, :cond_39

    .line 1461
    .line 1462
    if-nez v2, :cond_39

    .line 1463
    .line 1464
    if-eqz v4, :cond_38

    .line 1465
    .line 1466
    goto :goto_1c

    .line 1467
    :cond_38
    const/4 v1, 0x1

    .line 1468
    move-object/from16 v10, p1

    .line 1469
    .line 1470
    move/from16 v3, v33

    .line 1471
    .line 1472
    move-object/from16 v4, v36

    .line 1473
    .line 1474
    move-object/from16 v2, v37

    .line 1475
    .line 1476
    goto :goto_1d

    .line 1477
    :cond_39
    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1478
    .line 1479
    const-string v2, "[Player] Normalized login data: "

    .line 1480
    .line 1481
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1482
    .line 1483
    .line 1484
    move-object/from16 v10, p1

    .line 1485
    .line 1486
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    .line 1488
    .line 1489
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v1

    .line 1493
    move-object/from16 v2, v37

    .line 1494
    .line 1495
    invoke-static {v2, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    .line 1497
    .line 1498
    const/4 v1, 0x1

    .line 1499
    const/4 v3, 0x1

    .line 1500
    move-object/from16 v4, v36

    .line 1501
    .line 1502
    :goto_1d
    invoke-static {v1, v4, v0}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 1503
    .line 1504
    .line 1505
    move-result v1

    .line 1506
    const-string v5, "user_experience"

    .line 1507
    .line 1508
    const/4 v6, 0x0

    .line 1509
    invoke-static {v6, v5, v0}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 1510
    .line 1511
    .line 1512
    move-result v7

    .line 1513
    invoke-virtual {v8, v1, v7, v6}, Lcom/sgscq/vpn/w1;->m(III)Ll/c;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v6

    .line 1517
    iget v8, v6, Ll/c;->a:I

    .line 1518
    .line 1519
    iget v6, v6, Ll/c;->b:I

    .line 1520
    .line 1521
    if-ne v8, v1, :cond_3a

    .line 1522
    .line 1523
    if-eq v6, v7, :cond_3b

    .line 1524
    .line 1525
    :cond_3a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v3

    .line 1529
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    .line 1531
    .line 1532
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v3

    .line 1536
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    .line 1538
    .line 1539
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1540
    .line 1541
    const-string v5, "[Player] Fixed user level progress: level "

    .line 1542
    .line 1543
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1544
    .line 1545
    .line 1546
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1547
    .line 1548
    .line 1549
    const-string v1, " -> "

    .line 1550
    .line 1551
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    .line 1553
    .line 1554
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1555
    .line 1556
    .line 1557
    const-string v5, ", exp "

    .line 1558
    .line 1559
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    .line 1561
    .line 1562
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1563
    .line 1564
    .line 1565
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    .line 1567
    .line 1568
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1569
    .line 1570
    .line 1571
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v1

    .line 1575
    invoke-static {v2, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    .line 1577
    .line 1578
    const/4 v3, 0x1

    .line 1579
    :cond_3b
    invoke-static {v0}, Lcom/sgscq/vpn/handler/d1;->K0(Ljava/util/Map;)Z

    .line 1580
    .line 1581
    .line 1582
    move-result v1

    .line 1583
    if-eqz v1, :cond_3c

    .line 1584
    .line 1585
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1586
    .line 1587
    const-string v3, "[Player] Refreshed combat unlocks: "

    .line 1588
    .line 1589
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1590
    .line 1591
    .line 1592
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    .line 1594
    .line 1595
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1596
    .line 1597
    .line 1598
    move-result-object v1

    .line 1599
    invoke-static {v2, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    .line 1601
    .line 1602
    const/4 v3, 0x1

    .line 1603
    :cond_3c
    invoke-static {v0}, Lcom/sgscq/vpn/h5;->e(Ljava/util/Map;)Z

    .line 1604
    .line 1605
    .line 1606
    move-result v1

    .line 1607
    if-eqz v1, :cond_3d

    .line 1608
    .line 1609
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1610
    .line 1611
    const-string v3, "[Recharge] Monthly card daily mails appended: "

    .line 1612
    .line 1613
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1614
    .line 1615
    .line 1616
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    .line 1618
    .line 1619
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v1

    .line 1623
    invoke-static {v2, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    .line 1625
    .line 1626
    const/4 v3, 0x1

    .line 1627
    :cond_3d
    move-object/from16 v11, p0

    .line 1628
    .line 1629
    if-eqz v3, :cond_3e

    .line 1630
    .line 1631
    invoke-virtual {v11, v10, v0}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 1632
    .line 1633
    .line 1634
    :cond_3e
    move-object/from16 v1, v19

    .line 1635
    .line 1636
    move-object/from16 v3, v35

    .line 1637
    .line 1638
    invoke-static {v3, v1, v0}, Lcom/sgscq/vpn/h5;->O0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v1

    .line 1642
    const/4 v3, 0x1

    .line 1643
    invoke-static {v3, v4, v0}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 1644
    .line 1645
    .line 1646
    move-result v3

    .line 1647
    const/4 v4, 0x0

    .line 1648
    move-object/from16 v5, v17

    .line 1649
    .line 1650
    invoke-static {v4, v5, v0}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 1651
    .line 1652
    .line 1653
    move-object/from16 v6, v31

    .line 1654
    .line 1655
    invoke-virtual {v11, v6, v4}, Lcom/sgscq/vpn/h5;->J0(Ljava/lang/String;I)I

    .line 1656
    .line 1657
    .line 1658
    move-result v5

    .line 1659
    int-to-long v5, v5

    .line 1660
    move-object/from16 v7, v30

    .line 1661
    .line 1662
    invoke-static {v5, v6, v7, v0}, Lcom/sgscq/vpn/h5;->L0(JLjava/lang/String;Ljava/util/Map;)J

    .line 1663
    .line 1664
    .line 1665
    move-result-wide v5

    .line 1666
    move-object/from16 v8, v29

    .line 1667
    .line 1668
    invoke-static {v4, v8, v0}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 1669
    .line 1670
    .line 1671
    move-result v4

    .line 1672
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/h5;->G()I

    .line 1673
    .line 1674
    .line 1675
    move-result v15

    .line 1676
    move-object/from16 v17, v13

    .line 1677
    .line 1678
    move-object/from16 v13, v28

    .line 1679
    .line 1680
    invoke-static {v15, v13, v0}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 1681
    .line 1682
    .line 1683
    move-result v15

    .line 1684
    move-object/from16 v18, v1

    .line 1685
    .line 1686
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/h5;->H()I

    .line 1687
    .line 1688
    .line 1689
    move-result v1

    .line 1690
    move/from16 v19, v15

    .line 1691
    .line 1692
    move-object/from16 v15, v27

    .line 1693
    .line 1694
    invoke-static {v1, v15, v0}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 1695
    .line 1696
    .line 1697
    move-result v1

    .line 1698
    const/16 v20, 0x0

    .line 1699
    .line 1700
    move-object/from16 v41, v9

    .line 1701
    .line 1702
    move v9, v4

    .line 1703
    move-object v4, v0

    .line 1704
    move-wide/from16 v49, v5

    .line 1705
    .line 1706
    move v6, v1

    .line 1707
    move v5, v3

    .line 1708
    move-wide/from16 v0, v49

    .line 1709
    .line 1710
    move/from16 v3, v20

    .line 1711
    .line 1712
    move-object/from16 v51, v18

    .line 1713
    .line 1714
    move-object/from16 v18, v12

    .line 1715
    .line 1716
    move/from16 v12, v19

    .line 1717
    .line 1718
    move-object/from16 v19, v51

    .line 1719
    .line 1720
    goto/16 :goto_1e

    .line 1721
    .line 1722
    :cond_3f
    move-object v2, v1

    .line 1723
    move-object/from16 v34, v7

    .line 1724
    .line 1725
    move-object/from16 v17, v13

    .line 1726
    .line 1727
    move-object/from16 v16, v14

    .line 1728
    .line 1729
    move-object/from16 v1, v19

    .line 1730
    .line 1731
    move-object/from16 v15, v27

    .line 1732
    .line 1733
    move-object/from16 v13, v28

    .line 1734
    .line 1735
    move-object/from16 v8, v29

    .line 1736
    .line 1737
    move-object/from16 v7, v30

    .line 1738
    .line 1739
    move-object v14, v6

    .line 1740
    move-object/from16 v6, v31

    .line 1741
    .line 1742
    move-object/from16 v49, v5

    .line 1743
    .line 1744
    move-object v5, v3

    .line 1745
    move-object v3, v4

    .line 1746
    move-object/from16 v4, v49

    .line 1747
    .line 1748
    move-object/from16 v50, v11

    .line 1749
    .line 1750
    move-object v11, v9

    .line 1751
    move-object/from16 v9, v50

    .line 1752
    .line 1753
    invoke-virtual/range {p0 .. p1}, Lcom/sgscq/vpn/h5;->y0(Ljava/lang/String;)Ljava/util/HashMap;

    .line 1754
    .line 1755
    .line 1756
    move-result-object v0

    .line 1757
    invoke-virtual {v11, v10, v0}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 1758
    .line 1759
    .line 1760
    invoke-static {v3, v1, v0}, Lcom/sgscq/vpn/h5;->O0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1761
    .line 1762
    .line 1763
    move-result-object v1

    .line 1764
    const/4 v3, 0x1

    .line 1765
    invoke-static {v3, v4, v0}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 1766
    .line 1767
    .line 1768
    move-result v3

    .line 1769
    const/4 v4, 0x0

    .line 1770
    invoke-static {v4, v5, v0}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 1771
    .line 1772
    .line 1773
    invoke-virtual {v11, v6, v4}, Lcom/sgscq/vpn/h5;->J0(Ljava/lang/String;I)I

    .line 1774
    .line 1775
    .line 1776
    move-result v5

    .line 1777
    int-to-long v5, v5

    .line 1778
    invoke-static {v5, v6, v7, v0}, Lcom/sgscq/vpn/h5;->L0(JLjava/lang/String;Ljava/util/Map;)J

    .line 1779
    .line 1780
    .line 1781
    move-result-wide v5

    .line 1782
    invoke-static {v4, v8, v0}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 1783
    .line 1784
    .line 1785
    move-result v4

    .line 1786
    move-object/from16 v18, v1

    .line 1787
    .line 1788
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/h5;->G()I

    .line 1789
    .line 1790
    .line 1791
    move-result v1

    .line 1792
    invoke-static {v1, v13, v0}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 1793
    .line 1794
    .line 1795
    move-result v1

    .line 1796
    move/from16 v19, v1

    .line 1797
    .line 1798
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/h5;->H()I

    .line 1799
    .line 1800
    .line 1801
    move-result v1

    .line 1802
    invoke-static {v1, v15, v0}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 1803
    .line 1804
    .line 1805
    move-result v1

    .line 1806
    move-object/from16 v20, v0

    .line 1807
    .line 1808
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1809
    .line 1810
    move/from16 v27, v1

    .line 1811
    .line 1812
    const-string v1, "[Player] New: "

    .line 1813
    .line 1814
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1815
    .line 1816
    .line 1817
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1818
    .line 1819
    .line 1820
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1821
    .line 1822
    .line 1823
    move-result-object v0

    .line 1824
    invoke-static {v2, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    .line 1826
    .line 1827
    const/4 v0, 0x1

    .line 1828
    move-object/from16 v41, v9

    .line 1829
    .line 1830
    move v9, v4

    .line 1831
    move-object/from16 v4, v20

    .line 1832
    .line 1833
    move/from16 v49, v3

    .line 1834
    .line 1835
    move v3, v0

    .line 1836
    move-wide v0, v5

    .line 1837
    move/from16 v6, v27

    .line 1838
    .line 1839
    move/from16 v5, v49

    .line 1840
    .line 1841
    move-object/from16 v50, v18

    .line 1842
    .line 1843
    move-object/from16 v18, v12

    .line 1844
    .line 1845
    move/from16 v12, v19

    .line 1846
    .line 1847
    move-object/from16 v19, v50

    .line 1848
    .line 1849
    :goto_1e
    const-string v20, "load_fix_player"

    .line 1850
    .line 1851
    move/from16 v27, v12

    .line 1852
    .line 1853
    move-object/from16 v28, v13

    .line 1854
    .line 1855
    move-wide v12, v0

    .line 1856
    move-object/from16 v0, p1

    .line 1857
    .line 1858
    move-object/from16 v1, v20

    .line 1859
    .line 1860
    move/from16 v47, v3

    .line 1861
    .line 1862
    move/from16 v20, v6

    .line 1863
    .line 1864
    move-object v6, v2

    .line 1865
    move-wide/from16 v2, v25

    .line 1866
    .line 1867
    move-object/from16 v29, v4

    .line 1868
    .line 1869
    move/from16 v48, v5

    .line 1870
    .line 1871
    move-wide/from16 v4, v25

    .line 1872
    .line 1873
    invoke-static/range {v0 .. v5}, Lcom/sgscq/vpn/h5;->x0(Ljava/lang/String;Ljava/lang/String;JJ)J

    .line 1874
    .line 1875
    .line 1876
    move-result-wide v4

    .line 1877
    invoke-static/range {v34 .. v34}, Lcom/sgscq/vpn/p5;->X(Landroid/content/Context;)Ljava/lang/String;

    .line 1878
    .line 1879
    .line 1880
    move-result-object v0

    .line 1881
    sget-object v1, Lcom/sgscq/vpn/handler/t0;->b:Ljava/util/LinkedHashMap;

    .line 1882
    .line 1883
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1884
    .line 1885
    .line 1886
    move-result-object v0

    .line 1887
    const/4 v1, 0x5

    .line 1888
    invoke-static {v1}, Lcom/sgscq/vpn/handler/t0;->C(I)Ljava/util/LinkedHashSet;

    .line 1889
    .line 1890
    .line 1891
    move-result-object v1

    .line 1892
    invoke-static/range {v29 .. v29}, Lcom/sgscq/vpn/handler/t0;->y(Ljava/util/Map;)Ljava/util/LinkedHashSet;

    .line 1893
    .line 1894
    .line 1895
    move-result-object v2

    .line 1896
    invoke-static/range {v29 .. v29}, Lcom/sgscq/vpn/handler/t0;->s(Ljava/util/Map;)Ljava/util/List;

    .line 1897
    .line 1898
    .line 1899
    move-result-object v3

    .line 1900
    move-object/from16 v30, v15

    .line 1901
    .line 1902
    const-string v15, "debug_hidden_magical_equ"

    .line 1903
    .line 1904
    move-object/from16 v31, v8

    .line 1905
    .line 1906
    move-object/from16 v8, v29

    .line 1907
    .line 1908
    move/from16 v29, v9

    .line 1909
    .line 1910
    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1911
    .line 1912
    .line 1913
    move-result-object v9

    .line 1914
    move-object/from16 v32, v7

    .line 1915
    .line 1916
    instance-of v7, v9, Ljava/util/List;

    .line 1917
    .line 1918
    if-eqz v7, :cond_40

    .line 1919
    .line 1920
    check-cast v9, Ljava/util/List;

    .line 1921
    .line 1922
    goto :goto_1f

    .line 1923
    :cond_40
    const/4 v9, 0x0

    .line 1924
    :goto_1f
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v7

    .line 1928
    const/16 v33, 0x0

    .line 1929
    .line 1930
    :goto_20
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1931
    .line 1932
    .line 1933
    move-result v35

    .line 1934
    move-wide/from16 v36, v12

    .line 1935
    .line 1936
    const-string v12, "magic_id"

    .line 1937
    .line 1938
    if-eqz v35, :cond_46

    .line 1939
    .line 1940
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1941
    .line 1942
    .line 1943
    move-result-object v13

    .line 1944
    check-cast v13, Ljava/util/Map;

    .line 1945
    .line 1946
    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1947
    .line 1948
    .line 1949
    move-result-object v35

    .line 1950
    move-wide/from16 v38, v4

    .line 1951
    .line 1952
    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1953
    .line 1954
    .line 1955
    move-result-object v4

    .line 1956
    sget-object v5, Lcom/sgscq/vpn/handler/t0;->b:Ljava/util/LinkedHashMap;

    .line 1957
    .line 1958
    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1959
    .line 1960
    .line 1961
    move-result-object v5

    .line 1962
    check-cast v5, Lcom/sgscq/vpn/handler/q0;

    .line 1963
    .line 1964
    if-eqz v5, :cond_43

    .line 1965
    .line 1966
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1967
    .line 1968
    .line 1969
    move-result v4

    .line 1970
    if-nez v4, :cond_43

    .line 1971
    .line 1972
    if-nez v9, :cond_42

    .line 1973
    .line 1974
    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    .line 1976
    .line 1977
    move-result-object v4

    .line 1978
    instance-of v5, v4, Ljava/util/List;

    .line 1979
    .line 1980
    if-eqz v5, :cond_41

    .line 1981
    .line 1982
    check-cast v4, Ljava/util/List;

    .line 1983
    .line 1984
    goto :goto_21

    .line 1985
    :cond_41
    invoke-static {v8, v15}, Lc/a;->o(Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1986
    .line 1987
    .line 1988
    move-result-object v4

    .line 1989
    :goto_21
    move-object v9, v4

    .line 1990
    :cond_42
    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1991
    .line 1992
    .line 1993
    move-result-object v4

    .line 1994
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1995
    .line 1996
    .line 1997
    move-result-object v4

    .line 1998
    invoke-static {v4, v9}, Lcom/sgscq/vpn/handler/t0;->m(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 1999
    .line 2000
    .line 2001
    move-result-object v4

    .line 2002
    if-nez v4, :cond_44

    .line 2003
    .line 2004
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2005
    .line 2006
    .line 2007
    goto :goto_22

    .line 2008
    :cond_43
    if-eqz v5, :cond_45

    .line 2009
    .line 2010
    iget-object v4, v5, Lcom/sgscq/vpn/handler/q0;->a:Ljava/lang/String;

    .line 2011
    .line 2012
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 2013
    .line 2014
    .line 2015
    move-result v4

    .line 2016
    if-nez v4, :cond_45

    .line 2017
    .line 2018
    :cond_44
    :goto_22
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 2019
    .line 2020
    .line 2021
    const/16 v33, 0x1

    .line 2022
    .line 2023
    :cond_45
    move-wide/from16 v12, v36

    .line 2024
    .line 2025
    move-wide/from16 v4, v38

    .line 2026
    .line 2027
    goto :goto_20

    .line 2028
    :cond_46
    move-wide/from16 v38, v4

    .line 2029
    .line 2030
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/t0;->g(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashSet;)Ljava/util/LinkedHashMap;

    .line 2031
    .line 2032
    .line 2033
    move-result-object v0

    .line 2034
    if-eqz v9, :cond_4b

    .line 2035
    .line 2036
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2037
    .line 2038
    .line 2039
    move-result-object v1

    .line 2040
    :cond_47
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2041
    .line 2042
    .line 2043
    move-result v4

    .line 2044
    if-eqz v4, :cond_4a

    .line 2045
    .line 2046
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2047
    .line 2048
    .line 2049
    move-result-object v4

    .line 2050
    check-cast v4, Ljava/util/Map;

    .line 2051
    .line 2052
    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2053
    .line 2054
    .line 2055
    move-result-object v5

    .line 2056
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2057
    .line 2058
    .line 2059
    move-result-object v5

    .line 2060
    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2061
    .line 2062
    .line 2063
    move-result-object v7

    .line 2064
    check-cast v7, Ljava/util/Map;

    .line 2065
    .line 2066
    if-eqz v7, :cond_47

    .line 2067
    .line 2068
    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2069
    .line 2070
    .line 2071
    move-result-object v7

    .line 2072
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2073
    .line 2074
    .line 2075
    move-result-object v7

    .line 2076
    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 2077
    .line 2078
    .line 2079
    move-result v7

    .line 2080
    if-nez v7, :cond_48

    .line 2081
    .line 2082
    goto :goto_23

    .line 2083
    :cond_48
    invoke-static {v5, v3}, Lcom/sgscq/vpn/handler/t0;->m(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 2084
    .line 2085
    .line 2086
    move-result-object v5

    .line 2087
    if-nez v5, :cond_49

    .line 2088
    .line 2089
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2090
    .line 2091
    .line 2092
    :cond_49
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2093
    .line 2094
    .line 2095
    const/16 v33, 0x1

    .line 2096
    .line 2097
    goto :goto_23

    .line 2098
    :cond_4a
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 2099
    .line 2100
    .line 2101
    move-result v1

    .line 2102
    if-eqz v1, :cond_4b

    .line 2103
    .line 2104
    invoke-interface {v8, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2105
    .line 2106
    .line 2107
    :cond_4b
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 2108
    .line 2109
    .line 2110
    move-result-object v1

    .line 2111
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2112
    .line 2113
    .line 2114
    move-result-object v1

    .line 2115
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2116
    .line 2117
    .line 2118
    move-result v4

    .line 2119
    if-eqz v4, :cond_4e

    .line 2120
    .line 2121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2122
    .line 2123
    .line 2124
    move-result-object v4

    .line 2125
    check-cast v4, Ljava/util/Map;

    .line 2126
    .line 2127
    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2128
    .line 2129
    .line 2130
    move-result-object v5

    .line 2131
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2132
    .line 2133
    .line 2134
    move-result-object v5

    .line 2135
    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2136
    .line 2137
    .line 2138
    move-result-object v7

    .line 2139
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2140
    .line 2141
    .line 2142
    move-result-object v7

    .line 2143
    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 2144
    .line 2145
    .line 2146
    move-result v7

    .line 2147
    if-nez v7, :cond_4c

    .line 2148
    .line 2149
    goto :goto_24

    .line 2150
    :cond_4c
    invoke-static {v8, v4}, Lcom/sgscq/vpn/handler/t0;->t(Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 2151
    .line 2152
    .line 2153
    move-result-object v7

    .line 2154
    const-string v9, "open_condition"

    .line 2155
    .line 2156
    invoke-interface {v4, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2157
    .line 2158
    .line 2159
    invoke-static {v8}, Lcom/sgscq/vpn/handler/t0;->s(Ljava/util/Map;)Ljava/util/List;

    .line 2160
    .line 2161
    .line 2162
    move-result-object v7

    .line 2163
    invoke-static {v5, v7}, Lcom/sgscq/vpn/handler/t0;->m(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 2164
    .line 2165
    .line 2166
    move-result-object v5

    .line 2167
    if-nez v5, :cond_4d

    .line 2168
    .line 2169
    invoke-static {v4}, Lcom/sgscq/vpn/handler/t0;->j(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 2170
    .line 2171
    .line 2172
    move-result-object v4

    .line 2173
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2174
    .line 2175
    .line 2176
    const/16 v33, 0x1

    .line 2177
    .line 2178
    goto :goto_24

    .line 2179
    :cond_4d
    invoke-static {v5, v4}, Lcom/sgscq/vpn/handler/t0;->H(Ljava/util/Map;Ljava/util/Map;)Z

    .line 2180
    .line 2181
    .line 2182
    move-result v4

    .line 2183
    or-int v33, v33, v4

    .line 2184
    .line 2185
    goto :goto_24

    .line 2186
    :cond_4e
    const/4 v4, 0x0

    .line 2187
    invoke-static {v4}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 2188
    .line 2189
    .line 2190
    move-result-object v1

    .line 2191
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 2192
    .line 2193
    .line 2194
    move-result-object v0

    .line 2195
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2196
    .line 2197
    .line 2198
    move-result-object v0

    .line 2199
    :cond_4f
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2200
    .line 2201
    .line 2202
    move-result v2

    .line 2203
    if-eqz v2, :cond_51

    .line 2204
    .line 2205
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2206
    .line 2207
    .line 2208
    move-result-object v2

    .line 2209
    check-cast v2, Ljava/util/Map;

    .line 2210
    .line 2211
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2212
    .line 2213
    .line 2214
    move-result-object v3

    .line 2215
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2216
    .line 2217
    .line 2218
    move-result-object v3

    .line 2219
    invoke-static {v8}, Lcom/sgscq/vpn/handler/t0;->s(Ljava/util/Map;)Ljava/util/List;

    .line 2220
    .line 2221
    .line 2222
    move-result-object v4

    .line 2223
    invoke-static {v3, v4}, Lcom/sgscq/vpn/handler/t0;->m(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 2224
    .line 2225
    .line 2226
    move-result-object v3

    .line 2227
    if-eqz v3, :cond_4f

    .line 2228
    .line 2229
    const-string v4, "is_open"

    .line 2230
    .line 2231
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2232
    .line 2233
    .line 2234
    move-result-object v4

    .line 2235
    const/4 v5, 0x0

    .line 2236
    invoke-static {v4, v5}, Lcom/sgscq/vpn/handler/t0;->D(Ljava/lang/Object;I)I

    .line 2237
    .line 2238
    .line 2239
    move-result v4

    .line 2240
    const/4 v5, 0x1

    .line 2241
    if-eq v4, v5, :cond_50

    .line 2242
    .line 2243
    goto :goto_25

    .line 2244
    :cond_50
    invoke-static {v8, v3, v2, v1}, Lcom/sgscq/vpn/handler/t0;->G(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/sgscq/vpn/w1;)Ljava/util/LinkedHashMap;

    .line 2245
    .line 2246
    .line 2247
    move-result-object v2

    .line 2248
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 2249
    .line 2250
    .line 2251
    move-result v2

    .line 2252
    xor-int/2addr v2, v5

    .line 2253
    or-int v33, v33, v2

    .line 2254
    .line 2255
    goto :goto_25

    .line 2256
    :cond_51
    if-eqz v33, :cond_52

    .line 2257
    .line 2258
    invoke-static {v8}, Lcom/sgscq/vpn/handler/t0;->z(Ljava/util/Map;)V

    .line 2259
    .line 2260
    .line 2261
    :cond_52
    const-string v0, "evolution_buffs.json"

    .line 2262
    .line 2263
    move-object/from16 v7, v34

    .line 2264
    .line 2265
    invoke-static {v7, v0}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 2266
    .line 2267
    .line 2268
    move-result-object v0

    .line 2269
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 2270
    .line 2271
    .line 2272
    const/4 v9, 0x0

    .line 2273
    or-int/lit8 v0, v33, 0x0

    .line 2274
    .line 2275
    if-eqz v0, :cond_53

    .line 2276
    .line 2277
    invoke-virtual {v11, v10, v8}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 2278
    .line 2279
    .line 2280
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2281
    .line 2282
    const-string v1, "[Login] Refreshed DEBUG magic/evolution derived state: "

    .line 2283
    .line 2284
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2285
    .line 2286
    .line 2287
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2288
    .line 2289
    .line 2290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2291
    .line 2292
    .line 2293
    move-result-object v0

    .line 2294
    invoke-static {v6, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2295
    .line 2296
    .line 2297
    :cond_53
    const-string v1, "magic_reconcile"

    .line 2298
    .line 2299
    move-object/from16 v0, p1

    .line 2300
    .line 2301
    move-wide/from16 v2, v25

    .line 2302
    .line 2303
    move-wide/from16 v4, v38

    .line 2304
    .line 2305
    invoke-static/range {v0 .. v5}, Lcom/sgscq/vpn/h5;->x0(Ljava/lang/String;Ljava/lang/String;JJ)J

    .line 2306
    .line 2307
    .line 2308
    move-result-wide v4

    .line 2309
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 2310
    .line 2311
    .line 2312
    move-result-object v0

    .line 2313
    invoke-static {v0, v8}, Lcom/sgscq/vpn/handler/x;->A(Ljava/lang/String;Ljava/util/Map;)Z

    .line 2314
    .line 2315
    .line 2316
    move-result v0

    .line 2317
    if-eqz v0, :cond_54

    .line 2318
    .line 2319
    invoke-virtual {v11, v10, v8}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 2320
    .line 2321
    .line 2322
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2323
    .line 2324
    const-string v1, "[Dungeon] Reset daily story and elite challenge times: "

    .line 2325
    .line 2326
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2327
    .line 2328
    .line 2329
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2330
    .line 2331
    .line 2332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2333
    .line 2334
    .line 2335
    move-result-object v0

    .line 2336
    invoke-static {v6, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2337
    .line 2338
    .line 2339
    :cond_54
    const-string v1, "daily_story"

    .line 2340
    .line 2341
    move-object/from16 v0, p1

    .line 2342
    .line 2343
    move-wide/from16 v2, v25

    .line 2344
    .line 2345
    invoke-static/range {v0 .. v5}, Lcom/sgscq/vpn/h5;->x0(Ljava/lang/String;Ljava/lang/String;JJ)J

    .line 2346
    .line 2347
    .line 2348
    move-result-wide v4

    .line 2349
    invoke-virtual {v11, v8}, Lcom/sgscq/vpn/h5;->z(Ljava/util/Map;)Ljava/lang/String;

    .line 2350
    .line 2351
    .line 2352
    move-result-object v12

    .line 2353
    const-string v1, "surrender_info"

    .line 2354
    .line 2355
    invoke-static/range {v0 .. v5}, Lcom/sgscq/vpn/h5;->x0(Ljava/lang/String;Ljava/lang/String;JJ)J

    .line 2356
    .line 2357
    .line 2358
    move-result-wide v4

    .line 2359
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2360
    .line 2361
    const-string v1, "_login_surrender_dirty"

    .line 2362
    .line 2363
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2364
    .line 2365
    .line 2366
    move-result-object v2

    .line 2367
    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 2368
    .line 2369
    .line 2370
    move-result v0

    .line 2371
    if-eqz v0, :cond_55

    .line 2372
    .line 2373
    invoke-interface {v8, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2374
    .line 2375
    .line 2376
    invoke-static {v8}, Lcom/sgscq/vpn/w1;->D2(Ljava/util/Map;)Z

    .line 2377
    .line 2378
    .line 2379
    invoke-virtual {v11, v10, v8}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 2380
    .line 2381
    .line 2382
    move-object/from16 v0, v32

    .line 2383
    .line 2384
    move-wide/from16 v1, v36

    .line 2385
    .line 2386
    invoke-static {v1, v2, v0, v8}, Lcom/sgscq/vpn/h5;->L0(JLjava/lang/String;Ljava/util/Map;)J

    .line 2387
    .line 2388
    .line 2389
    move-result-wide v0

    .line 2390
    move/from16 v3, v29

    .line 2391
    .line 2392
    move-object/from16 v2, v31

    .line 2393
    .line 2394
    invoke-static {v3, v2, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 2395
    .line 2396
    .line 2397
    move-result v2

    .line 2398
    move/from16 v13, v27

    .line 2399
    .line 2400
    move-object/from16 v3, v28

    .line 2401
    .line 2402
    invoke-static {v13, v3, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 2403
    .line 2404
    .line 2405
    move-result v3

    .line 2406
    move/from16 v14, v20

    .line 2407
    .line 2408
    move-object/from16 v13, v30

    .line 2409
    .line 2410
    invoke-static {v14, v13, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 2411
    .line 2412
    .line 2413
    move-result v13

    .line 2414
    move-wide/from16 v27, v0

    .line 2415
    .line 2416
    move v14, v3

    .line 2417
    move v15, v13

    .line 2418
    move v13, v2

    .line 2419
    goto :goto_26

    .line 2420
    :cond_55
    move/from16 v14, v20

    .line 2421
    .line 2422
    move/from16 v13, v27

    .line 2423
    .line 2424
    move/from16 v3, v29

    .line 2425
    .line 2426
    move-wide/from16 v1, v36

    .line 2427
    .line 2428
    move-wide/from16 v27, v1

    .line 2429
    .line 2430
    move v15, v14

    .line 2431
    move v14, v13

    .line 2432
    move v13, v3

    .line 2433
    :goto_26
    const-string v1, "atlas_sync"

    .line 2434
    .line 2435
    move-object/from16 v0, p1

    .line 2436
    .line 2437
    move-wide/from16 v2, v25

    .line 2438
    .line 2439
    invoke-static/range {v0 .. v5}, Lcom/sgscq/vpn/h5;->x0(Ljava/lang/String;Ljava/lang/String;JJ)J

    .line 2440
    .line 2441
    .line 2442
    move-result-wide v29

    .line 2443
    invoke-static {v7}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 2444
    .line 2445
    .line 2446
    move-result-object v0

    .line 2447
    invoke-virtual {v0}, Lcom/sgscq/vpn/w1;->W0()I

    .line 2448
    .line 2449
    .line 2450
    move-result v7

    .line 2451
    const-string v0, "headIcon"

    .line 2452
    .line 2453
    const/4 v1, 0x1

    .line 2454
    invoke-static {v1, v0, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 2455
    .line 2456
    .line 2457
    move-result v0

    .line 2458
    move-object/from16 v1, v19

    .line 2459
    .line 2460
    move/from16 v3, v48

    .line 2461
    .line 2462
    invoke-static {v3, v0, v10, v1}, Lcom/sgscq/vpn/h5;->x(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2463
    .line 2464
    .line 2465
    move-result-object v5

    .line 2466
    move-object/from16 v0, p0

    .line 2467
    .line 2468
    move/from16 v1, v24

    .line 2469
    .line 2470
    move v2, v13

    .line 2471
    move v3, v14

    .line 2472
    move v4, v15

    .line 2473
    move-object v14, v5

    .line 2474
    move-object v13, v6

    .line 2475
    move-wide/from16 v5, v27

    .line 2476
    .line 2477
    move v15, v7

    .line 2478
    move-object/from16 v7, p1

    .line 2479
    .line 2480
    move-object/from16 v19, v8

    .line 2481
    .line 2482
    invoke-virtual/range {v0 .. v8}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 2483
    .line 2484
    .line 2485
    move-result-object v6

    .line 2486
    const-string v1, "player_data"

    .line 2487
    .line 2488
    move-object/from16 v0, p1

    .line 2489
    .line 2490
    move-wide/from16 v2, v25

    .line 2491
    .line 2492
    move-wide/from16 v4, v29

    .line 2493
    .line 2494
    invoke-static/range {v0 .. v5}, Lcom/sgscq/vpn/h5;->x0(Ljava/lang/String;Ljava/lang/String;JJ)J

    .line 2495
    .line 2496
    .line 2497
    move-result-wide v4

    .line 2498
    const-string v0, "user_map_step"

    .line 2499
    .line 2500
    move-object/from16 v7, v18

    .line 2501
    .line 2502
    invoke-static {v0, v7, v8}, Lcom/sgscq/vpn/h5;->N0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 2503
    .line 2504
    .line 2505
    move-result-object v0

    .line 2506
    invoke-static {v0}, Lcom/sgscq/vpn/h5;->H0(Ljava/lang/String;)Ljava/lang/String;

    .line 2507
    .line 2508
    .line 2509
    move-result-object v0

    .line 2510
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 2511
    .line 2512
    .line 2513
    move-result v1

    .line 2514
    if-eqz v1, :cond_56

    .line 2515
    .line 2516
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/h5;->Z()Ljava/lang/String;

    .line 2517
    .line 2518
    .line 2519
    move-result-object v0

    .line 2520
    :cond_56
    invoke-virtual {v11, v0, v8, v9}, Lcom/sgscq/vpn/h5;->o(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    .line 2521
    .line 2522
    .line 2523
    move-result-object v9

    .line 2524
    const-string v1, "map_info"

    .line 2525
    .line 2526
    move-object/from16 v0, p1

    .line 2527
    .line 2528
    move-wide/from16 v2, v25

    .line 2529
    .line 2530
    invoke-static/range {v0 .. v5}, Lcom/sgscq/vpn/h5;->x0(Ljava/lang/String;Ljava/lang/String;JJ)J

    .line 2531
    .line 2532
    .line 2533
    move-result-wide v4

    .line 2534
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/h5;->D()Ljava/lang/String;

    .line 2535
    .line 2536
    .line 2537
    move-result-object v0

    .line 2538
    const-string v1, "wine_gold_time"

    .line 2539
    .line 2540
    const/16 v2, 0x708

    .line 2541
    .line 2542
    invoke-static {v2, v1, v8}, Lcom/sgscq/vpn/h5;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 2543
    .line 2544
    .line 2545
    move-result v1

    .line 2546
    const-string v2, "wine_silver_time"

    .line 2547
    .line 2548
    const/16 v3, 0x258

    .line 2549
    .line 2550
    invoke-static {v3, v2, v8}, Lcom/sgscq/vpn/h5;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 2551
    .line 2552
    .line 2553
    move-result v2

    .line 2554
    const-string v3, "wine_copper_time"

    .line 2555
    .line 2556
    move-object/from16 v18, v12

    .line 2557
    .line 2558
    const/16 v12, 0x12c

    .line 2559
    .line 2560
    invoke-static {v12, v3, v8}, Lcom/sgscq/vpn/h5;->E(ILjava/lang/String;Ljava/util/Map;)I

    .line 2561
    .line 2562
    .line 2563
    move-result v3

    .line 2564
    const-string v12, "first_gold_wine"

    .line 2565
    .line 2566
    invoke-interface {v8, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2567
    .line 2568
    .line 2569
    move-result v12

    .line 2570
    if-nez v1, :cond_57

    .line 2571
    .line 2572
    const/16 v19, 0x1

    .line 2573
    .line 2574
    goto :goto_27

    .line 2575
    :cond_57
    const/16 v19, 0x0

    .line 2576
    .line 2577
    :goto_27
    move-object/from16 v20, v9

    .line 2578
    .line 2579
    move/from16 v9, v19

    .line 2580
    .line 2581
    if-nez v2, :cond_58

    .line 2582
    .line 2583
    const/16 v19, 0x1

    .line 2584
    .line 2585
    goto :goto_28

    .line 2586
    :cond_58
    const/16 v19, 0x0

    .line 2587
    .line 2588
    :goto_28
    move/from16 v23, v15

    .line 2589
    .line 2590
    move/from16 v15, v19

    .line 2591
    .line 2592
    move-object/from16 v19, v7

    .line 2593
    .line 2594
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2595
    .line 2596
    move-object/from16 v27, v14

    .line 2597
    .line 2598
    const-string v14, "{\"toast\":[],\"list\":[],\"gold_info\":{\"free_end_time\":"

    .line 2599
    .line 2600
    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2601
    .line 2602
    .line 2603
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2604
    .line 2605
    .line 2606
    const-string v1, ",\"free_times\":"

    .line 2607
    .line 2608
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2609
    .line 2610
    .line 2611
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2612
    .line 2613
    .line 2614
    const-string v9, ",\"price\":100},\"silver_info\":{\"free_end_time\":"

    .line 2615
    .line 2616
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2617
    .line 2618
    .line 2619
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2620
    .line 2621
    .line 2622
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2623
    .line 2624
    .line 2625
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2626
    .line 2627
    .line 2628
    const-string v1, ",\"price\":50},\"copper_info\":{\"free_end_time\":"

    .line 2629
    .line 2630
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2631
    .line 2632
    .line 2633
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2634
    .line 2635
    .line 2636
    const-string v1, ",\"free_times\":1,\"price\":20},\"need_times\":5,\"first_time_consume_gold\":"

    .line 2637
    .line 2638
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2639
    .line 2640
    .line 2641
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2642
    .line 2643
    .line 2644
    const-string v1, ",\"multi_price\":900,\"show_general_list\":"

    .line 2645
    .line 2646
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2647
    .line 2648
    .line 2649
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2650
    .line 2651
    .line 2652
    const-string v9, "}"

    .line 2653
    .line 2654
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2655
    .line 2656
    .line 2657
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2658
    .line 2659
    .line 2660
    move-result-object v7

    .line 2661
    const-string v1, "wine_info"

    .line 2662
    .line 2663
    move-object/from16 v0, p1

    .line 2664
    .line 2665
    move-wide/from16 v2, v25

    .line 2666
    .line 2667
    invoke-static/range {v0 .. v5}, Lcom/sgscq/vpn/h5;->x0(Ljava/lang/String;Ljava/lang/String;JJ)J

    .line 2668
    .line 2669
    .line 2670
    move-result-wide v4

    .line 2671
    move-object/from16 v0, v41

    .line 2672
    .line 2673
    invoke-static {v0, v8}, Lcom/sgscq/vpn/h5;->B0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 2674
    .line 2675
    .line 2676
    move-result-object v12

    .line 2677
    invoke-static {v8}, Lcom/sgscq/vpn/h5;->n(Ljava/util/Map;)Ljava/lang/String;

    .line 2678
    .line 2679
    .line 2680
    move-result-object v0

    .line 2681
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2682
    .line 2683
    const-string v2, "[Login] General module len="

    .line 2684
    .line 2685
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2686
    .line 2687
    .line 2688
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 2689
    .line 2690
    .line 2691
    move-result v2

    .line 2692
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2693
    .line 2694
    .line 2695
    const-string v2, " mapFormatLen="

    .line 2696
    .line 2697
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2698
    .line 2699
    .line 2700
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 2701
    .line 2702
    .line 2703
    move-result v0

    .line 2704
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2705
    .line 2706
    .line 2707
    const-string v0, " entries="

    .line 2708
    .line 2709
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2710
    .line 2711
    .line 2712
    invoke-static {v8}, Lcom/sgscq/vpn/h5;->D0(Ljava/util/Map;)I

    .line 2713
    .line 2714
    .line 2715
    move-result v0

    .line 2716
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2717
    .line 2718
    .line 2719
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2720
    .line 2721
    .line 2722
    move-result-object v0

    .line 2723
    invoke-static {v13, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2724
    .line 2725
    .line 2726
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2727
    .line 2728
    const-string v1, "[Login] first_choose_general="

    .line 2729
    .line 2730
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2731
    .line 2732
    .line 2733
    const-string v1, "?"

    .line 2734
    .line 2735
    move-object/from16 v2, v16

    .line 2736
    .line 2737
    invoke-static {v2, v1, v8}, Lcom/sgscq/vpn/h5;->N0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 2738
    .line 2739
    .line 2740
    move-result-object v2

    .line 2741
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2742
    .line 2743
    .line 2744
    const-string v2, " first_wine_general="

    .line 2745
    .line 2746
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2747
    .line 2748
    .line 2749
    const-string v2, "first_wine_general"

    .line 2750
    .line 2751
    invoke-static {v2, v1, v8}, Lcom/sgscq/vpn/h5;->N0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 2752
    .line 2753
    .line 2754
    move-result-object v1

    .line 2755
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2756
    .line 2757
    .line 2758
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2759
    .line 2760
    .line 2761
    move-result-object v0

    .line 2762
    invoke-static {v13, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2763
    .line 2764
    .line 2765
    const-string v0, "Skill"

    .line 2766
    .line 2767
    invoke-static {v0, v8}, Lcom/sgscq/vpn/h5;->B0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 2768
    .line 2769
    .line 2770
    move-result-object v14

    .line 2771
    const-string v0, "Equipment"

    .line 2772
    .line 2773
    invoke-static {v0, v8}, Lcom/sgscq/vpn/h5;->B0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 2774
    .line 2775
    .line 2776
    move-result-object v15

    .line 2777
    move-object/from16 v0, v17

    .line 2778
    .line 2779
    invoke-static {v0, v8}, Lcom/sgscq/vpn/h5;->B0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 2780
    .line 2781
    .line 2782
    move-result-object v16

    .line 2783
    invoke-virtual {v11, v8}, Lcom/sgscq/vpn/h5;->j0(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 2784
    .line 2785
    .line 2786
    move-result-object v0

    .line 2787
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 2788
    .line 2789
    .line 2790
    move-result-object v17

    .line 2791
    const-string v0, "Atlas"

    .line 2792
    .line 2793
    invoke-static {v0, v8}, Lcom/sgscq/vpn/h5;->B0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 2794
    .line 2795
    .line 2796
    move-result-object v28

    .line 2797
    const-string v1, "modules"

    .line 2798
    .line 2799
    move-object/from16 v0, p1

    .line 2800
    .line 2801
    move-wide/from16 v2, v25

    .line 2802
    .line 2803
    invoke-static/range {v0 .. v5}, Lcom/sgscq/vpn/h5;->x0(Ljava/lang/String;Ljava/lang/String;JJ)J

    .line 2804
    .line 2805
    .line 2806
    move-result-wide v4

    .line 2807
    invoke-virtual {v11, v8, v6}, Lcom/sgscq/vpn/h5;->m(Ljava/util/Map;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 2808
    .line 2809
    .line 2810
    move-result-object v2

    .line 2811
    const-string v1, "full_cmn"

    .line 2812
    .line 2813
    move-object v11, v2

    .line 2814
    move-wide/from16 v2, v25

    .line 2815
    .line 2816
    invoke-static/range {v0 .. v5}, Lcom/sgscq/vpn/h5;->x0(Ljava/lang/String;Ljava/lang/String;JJ)J

    .line 2817
    .line 2818
    .line 2819
    move-result-wide v4

    .line 2820
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2821
    .line 2822
    const-string v1, "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"message\":\"success\",\"isSuccess\":true,\"serverTime\":"

    .line 2823
    .line 2824
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2825
    .line 2826
    .line 2827
    move-wide/from16 v1, v21

    .line 2828
    .line 2829
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2830
    .line 2831
    .line 2832
    const-string v1, ",\"token\":\"tok_"

    .line 2833
    .line 2834
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2835
    .line 2836
    .line 2837
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2838
    .line 2839
    .line 2840
    const-string v1, "\",\"isNew\":"

    .line 2841
    .line 2842
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2843
    .line 2844
    .line 2845
    move/from16 v3, v47

    .line 2846
    .line 2847
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2848
    .line 2849
    .line 2850
    const-string v1, ",\"pushData\":"

    .line 2851
    .line 2852
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2853
    .line 2854
    .line 2855
    invoke-static {v8}, Lcom/sgscq/vpn/h5;->v(Ljava/util/Map;)Ljava/lang/String;

    .line 2856
    .line 2857
    .line 2858
    move-result-object v1

    .line 2859
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2860
    .line 2861
    .line 2862
    const-string v1, ","

    .line 2863
    .line 2864
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2865
    .line 2866
    .line 2867
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 2868
    .line 2869
    .line 2870
    move-result-object v1

    .line 2871
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 2872
    .line 2873
    .line 2874
    move-result v2

    .line 2875
    const/4 v3, 0x1

    .line 2876
    sub-int/2addr v2, v3

    .line 2877
    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 2878
    .line 2879
    .line 2880
    const-string v1, ",\"loginedServerLists\":["

    .line 2881
    .line 2882
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2883
    .line 2884
    .line 2885
    const-string v1, "],\"serverListLogined\":["

    .line 2886
    .line 2887
    const-string v2, "],\"loginedData\":["

    .line 2888
    .line 2889
    move-object/from16 v3, v27

    .line 2890
    .line 2891
    invoke-static {v0, v3, v1, v3, v2}, Lc/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2892
    .line 2893
    .line 2894
    const-string v1, "],\"m_userLoginInfo\":{\"serverListLogined\":["

    .line 2895
    .line 2896
    const-string v2, "],\"loginedServerLists\":["

    .line 2897
    .line 2898
    invoke-static {v0, v3, v1, v3, v2}, Lc/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2899
    .line 2900
    .line 2901
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2902
    .line 2903
    .line 2904
    const-string v1, "],\"curSelServer\":1,\"m_loginServer\":1,\"length\":1},\"user_info\":"

    .line 2905
    .line 2906
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2907
    .line 2908
    .line 2909
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 2910
    .line 2911
    .line 2912
    move-result-object v1

    .line 2913
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2914
    .line 2915
    .line 2916
    const-string v1, ",\"play_id\":\""

    .line 2917
    .line 2918
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2919
    .line 2920
    .line 2921
    const-string v1, "\",\"playId\":\""

    .line 2922
    .line 2923
    const-string v2, "\",\"g_account\":\""

    .line 2924
    .line 2925
    invoke-static {v0, v10, v1, v10, v2}, Lc/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2926
    .line 2927
    .line 2928
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2929
    .line 2930
    .line 2931
    const-string v1, "\","

    .line 2932
    .line 2933
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2934
    .line 2935
    .line 2936
    const-string v1, "general_skin"

    .line 2937
    .line 2938
    move-object/from16 v2, v19

    .line 2939
    .line 2940
    invoke-static {v1, v2, v8}, Lcom/sgscq/vpn/h5;->N0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 2941
    .line 2942
    .line 2943
    move-result-object v1

    .line 2944
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 2945
    .line 2946
    .line 2947
    move-result v2

    .line 2948
    if-eqz v2, :cond_59

    .line 2949
    .line 2950
    const-string v1, "\"general_skin\":null,"

    .line 2951
    .line 2952
    goto :goto_29

    .line 2953
    :cond_59
    const-string v2, "\"general_skin\":\""

    .line 2954
    .line 2955
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2956
    .line 2957
    .line 2958
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 2959
    .line 2960
    .line 2961
    move-result-object v1

    .line 2962
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2963
    .line 2964
    .line 2965
    const-string v1, "\","

    .line 2966
    .line 2967
    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2968
    .line 2969
    .line 2970
    const-string v1, "\"server_version\":\"1.0.0\",\"opt_cfg_version\":\"opt_v1\",\"server_time\":"

    .line 2971
    .line 2972
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2973
    .line 2974
    .line 2975
    move/from16 v1, v24

    .line 2976
    .line 2977
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2978
    .line 2979
    .line 2980
    const-string v1, ",\"offset_time\":0,\"isAdult\":true,\"isShowBanShu\":true,\"is_use_keywords\":true,\"isShowAmt\":true,\"isShowCDKey\":true,\"isShowGem\":true,\"isShowMagic\":true,\"maxTeamNum\":"

    .line 2981
    .line 2982
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2983
    .line 2984
    .line 2985
    move/from16 v1, v23

    .line 2986
    .line 2987
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2988
    .line 2989
    .line 2990
    const-string v1, ",\"isShowUnionWar\":true,\"rechargeRate\":\"1.0\",\"user_auth\":{\"isAuth\":true,\"isAdult\":true,\"isShowBanShu\":true},\"map_info\":"

    .line 2991
    .line 2992
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2993
    .line 2994
    .line 2995
    move-object/from16 v6, v20

    .line 2996
    .line 2997
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2998
    .line 2999
    .line 3000
    const-string v1, ",\"mapInfo\":"

    .line 3001
    .line 3002
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3003
    .line 3004
    .line 3005
    const-string v1, ",\"wine_info\":"

    .line 3006
    .line 3007
    const-string v2, ",\"general_info\":{\"del_list\":[],\"update_list\":[]},\"General\":{\"del_list\":[],\"update_list\":[]},\"skill_info\":{\"del_list\":[],\"update_list\":[]},\"Skill\":{\"del_list\":[],\"update_list\":[]},\"item_info\":{\"del_list\":[],\"update_list\":[]},\"Item\":{\"del_list\":[],\"update_list\":[]},\"team_info\":[],\"TeamGeneral\":[],\"atlas_info\":{\"del_list\":[],\"update_list\":[]},\"Atlas\":{\"del_list\":[],\"update_list\":[]},\"generals\":[],\"generalList\":[],\"general_list\":[],\"Generals\":[],\"skills\":[],\"skillList\":[],\"skill_list\":[],\"Skills\":[],\"items\":[],\"itemList\":[],\"item_list\":[],\"Items\":[],\"team\":[],\"teamList\":[],\"team_list\":[],\"Team\":[],\"GeneralSouls\":[],\"surrender_info\":"

    .line 3008
    .line 3009
    invoke-static {v0, v6, v1, v7, v2}, Lc/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3010
    .line 3011
    .line 3012
    move-object/from16 v1, v18

    .line 3013
    .line 3014
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3015
    .line 3016
    .line 3017
    const-string v1, ",\"cmn\":"

    .line 3018
    .line 3019
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3020
    .line 3021
    .line 3022
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3023
    .line 3024
    .line 3025
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3026
    .line 3027
    .line 3028
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3029
    .line 3030
    .line 3031
    move-result-object v7

    .line 3032
    const-string v1, "assemble"

    .line 3033
    .line 3034
    move-object/from16 v0, p1

    .line 3035
    .line 3036
    move-wide/from16 v2, v25

    .line 3037
    .line 3038
    invoke-static/range {v0 .. v5}, Lcom/sgscq/vpn/h5;->x0(Ljava/lang/String;Ljava/lang/String;JJ)J

    .line 3039
    .line 3040
    .line 3041
    move-result-wide v0

    .line 3042
    new-instance v2, Ljava/lang/StringBuilder;

    .line 3043
    .line 3044
    const-string v3, "[Login] RESPONSE length="

    .line 3045
    .line 3046
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3047
    .line 3048
    .line 3049
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 3050
    .line 3051
    .line 3052
    move-result v3

    .line 3053
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3054
    .line 3055
    .line 3056
    const-string v3, " cmnLen="

    .line 3057
    .line 3058
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3059
    .line 3060
    .line 3061
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 3062
    .line 3063
    .line 3064
    move-result v3

    .line 3065
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3066
    .line 3067
    .line 3068
    const-string v3, " mapLen="

    .line 3069
    .line 3070
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3071
    .line 3072
    .line 3073
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 3074
    .line 3075
    .line 3076
    move-result v3

    .line 3077
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3078
    .line 3079
    .line 3080
    const-string v3, " generalLen="

    .line 3081
    .line 3082
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3083
    .line 3084
    .line 3085
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 3086
    .line 3087
    .line 3088
    move-result v3

    .line 3089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3090
    .line 3091
    .line 3092
    const-string v3, " skillLen="

    .line 3093
    .line 3094
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3095
    .line 3096
    .line 3097
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 3098
    .line 3099
    .line 3100
    move-result v3

    .line 3101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3102
    .line 3103
    .line 3104
    const-string v3, " itemLen="

    .line 3105
    .line 3106
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3107
    .line 3108
    .line 3109
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    .line 3110
    .line 3111
    .line 3112
    move-result v3

    .line 3113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3114
    .line 3115
    .line 3116
    const-string v3, " equipLen="

    .line 3117
    .line 3118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3119
    .line 3120
    .line 3121
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 3122
    .line 3123
    .line 3124
    move-result v3

    .line 3125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3126
    .line 3127
    .line 3128
    const-string v3, " teamLen="

    .line 3129
    .line 3130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3131
    .line 3132
    .line 3133
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    .line 3134
    .line 3135
    .line 3136
    move-result v3

    .line 3137
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3138
    .line 3139
    .line 3140
    const-string v3, " atlasLen="

    .line 3141
    .line 3142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3143
    .line 3144
    .line 3145
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    .line 3146
    .line 3147
    .line 3148
    move-result v3

    .line 3149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3150
    .line 3151
    .line 3152
    const-string v3, " totalMs="

    .line 3153
    .line 3154
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3155
    .line 3156
    .line 3157
    sub-long v0, v0, v25

    .line 3158
    .line 3159
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3160
    .line 3161
    .line 3162
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3163
    .line 3164
    .line 3165
    move-result-object v0

    .line 3166
    invoke-static {v13, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3167
    .line 3168
    .line 3169
    return-object v7
.end method

.method public final D()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/h5;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/w1;->T(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v2, v0, Lcom/sgscq/vpn/w1;->v:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/util/Map;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    const-wide/16 v5, 0x0

    .line 36
    .line 37
    invoke-static {v0, v3, v4, v5, v6}, Lcom/sgscq/vpn/h5;->C(Lcom/sgscq/vpn/w1;Ljava/util/Map;IJ)Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-virtual {v0, v2, v3, v4}, Lcom/sgscq/vpn/w1;->f1(JLjava/util/Set;)Ljava/util/Map;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    const-wide/16 v5, 0x3e8

    .line 57
    .line 58
    mul-long/2addr v2, v5

    .line 59
    invoke-virtual {v0, v2, v3}, Lcom/sgscq/vpn/w1;->r0(J)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    int-to-long v2, v2

    .line 64
    const/4 v5, 0x4

    .line 65
    invoke-static {v0, v4, v5, v2, v3}, Lcom/sgscq/vpn/h5;->C(Lcom/sgscq/vpn/w1;Ljava/util/Map;IJ)Ljava/util/LinkedHashMap;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0
.end method

.method public final G()I
    .locals 2

    .line 1
    const-string v0, "resource_energy"

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/sgscq/vpn/h5;->J0(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final H()I
    .locals 2

    .line 1
    const-string v0, "resource_power"

    const/16 v1, 0x96

    invoke-virtual {p0, v0, v1}, Lcom/sgscq/vpn/h5;->J0(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final J0(Ljava/lang/String;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/h5;->d:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return p2

    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method public final P(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)Ljava/util/LinkedHashMap;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v10, p2

    .line 4
    .line 5
    move-object/from16 v11, p0

    .line 6
    .line 7
    iget-object v12, v11, Lcom/sgscq/vpn/h5;->b:Lcom/sgscq/vpn/z4;

    .line 8
    .line 9
    invoke-virtual {v12, v0}, Lcom/sgscq/vpn/z4;->g(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v13

    .line 13
    monitor-enter v13

    .line 14
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/z4;->i(Ljava/util/Map;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v14

    .line 18
    iget-object v1, v12, Lcom/sgscq/vpn/z4;->b:Lcom/sgscq/vpn/t4;

    .line 19
    .line 20
    move-object/from16 v2, p1

    .line 21
    .line 22
    move-wide v3, v14

    .line 23
    move-object/from16 v5, p3

    .line 24
    .line 25
    move-object/from16 v6, p4

    .line 26
    .line 27
    move-object/from16 v7, p5

    .line 28
    .line 29
    move-wide/from16 v8, p6

    .line 30
    .line 31
    invoke-virtual/range {v1 .. v9}, Lcom/sgscq/vpn/t4;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;J)Lcom/sgscq/vpn/q4;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-wide v3, v1, Lcom/sgscq/vpn/q4;->a:J

    .line 41
    .line 42
    cmp-long v3, v3, v14

    .line 43
    .line 44
    if-lez v3, :cond_0

    .line 45
    .line 46
    iget-object v2, v1, Lcom/sgscq/vpn/q4;->c:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v12, v2}, Lcom/sgscq/vpn/z4;->c(Ljava/lang/String;)Lcom/sgscq/vpn/x4;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/sgscq/vpn/n2;

    .line 53
    .line 54
    invoke-virtual {v2, v10, v1}, Lcom/sgscq/vpn/n2;->a(Ljava/util/Map;Lcom/sgscq/vpn/q4;)Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v3, "_persistence_journal_sequence"

    .line 59
    .line 60
    iget-wide v4, v1, Lcom/sgscq/vpn/q4;->a:J

    .line 61
    .line 62
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v10, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    :cond_0
    iget-object v1, v12, Lcom/sgscq/vpn/z4;->e:Lcom/sgscq/vpn/p4;

    .line 70
    .line 71
    invoke-virtual {v1, v0, v10}, Lcom/sgscq/vpn/p4;->c(Ljava/lang/String;Ljava/util/Map;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v12, Lcom/sgscq/vpn/z4;->b:Lcom/sgscq/vpn/t4;

    .line 75
    .line 76
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/t4;->c(Ljava/lang/String;)Lcom/sgscq/vpn/r4;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    iget-object v4, v3, Lcom/sgscq/vpn/r4;->b:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    iget v5, v1, Lcom/sgscq/vpn/t4;->a:I

    .line 88
    .line 89
    if-ge v4, v5, :cond_2

    .line 90
    .line 91
    invoke-virtual {v3}, Lcom/sgscq/vpn/r4;->a()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    array-length v3, v3

    .line 102
    iget v4, v1, Lcom/sgscq/vpn/t4;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .line 104
    if-lt v3, v4, :cond_1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    const/4 v3, 0x0

    .line 108
    goto :goto_1

    .line 109
    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 110
    :goto_1
    :try_start_2
    monitor-exit v1

    .line 111
    if-eqz v3, :cond_3

    .line 112
    .line 113
    invoke-virtual {v12, v0}, Lcom/sgscq/vpn/z4;->d(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    new-instance v1, Lcom/sgscq/vpn/d;

    .line 118
    .line 119
    const/16 v3, 0xf

    .line 120
    .line 121
    invoke-direct {v1, v12, v0, v3}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 122
    .line 123
    .line 124
    iget-object v3, v12, Lcom/sgscq/vpn/z4;->c:Lcom/sgscq/vpn/y4;

    .line 125
    .line 126
    iget-wide v4, v12, Lcom/sgscq/vpn/z4;->d:J

    .line 127
    .line 128
    invoke-interface {v3, v0, v4, v5, v1}, Lcom/sgscq/vpn/y4;->b(Ljava/lang/String;JLcom/sgscq/vpn/d;)V

    .line 129
    .line 130
    .line 131
    :goto_2
    monitor-exit v13

    .line 132
    return-object v2

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    monitor-exit v1

    .line 135
    throw v0

    .line 136
    :catchall_1
    move-exception v0

    .line 137
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 138
    throw v0
.end method

.method public final Q0(Ljava/lang/String;Lcom/sgscq/vpn/n2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/h5;->b:Lcom/sgscq/vpn/z4;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    iget-object v0, v0, Lcom/sgscq/vpn/z4;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "duplicate mutation applier "

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p2

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string p2, "mutation applier required"

    .line 36
    .line 37
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public final S0(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4

    .line 1
    const-string v0, "[SavePlayer] OK uid="

    .line 2
    .line 3
    const-string v1, "SGSCQ_SRV"

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x7

    .line 9
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "data_version"

    .line 14
    .line 15
    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {p2}, Lcom/sgscq/vpn/h5;->T(Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/sgscq/vpn/h5;->b:Lcom/sgscq/vpn/z4;

    .line 22
    .line 23
    invoke-virtual {v2, p1, p2}, Lcom/sgscq/vpn/z4;->h(Ljava/lang/String;Ljava/util/Map;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/sgscq/vpn/h5;->e:Ljava/util/Set;

    .line 27
    .line 28
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    new-instance v2, Lcom/sgscq/vpn/m4;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/sgscq/vpn/h5;->c:Landroid/content/Context;

    .line 37
    .line 38
    invoke-direct {v2, v3}, Lcom/sgscq/vpn/m4;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1}, Lcom/sgscq/vpn/m4;->g(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, " keys="

    .line 53
    .line 54
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {v1, p1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_0
    move-exception p1

    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v0, "Save player error: "

    .line 76
    .line 77
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-static {v1, p2, p1}, Lcom/sgscq/vpn/z2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    return-void
.end method

.method public final W(Ljava/util/LinkedHashMap;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/h5;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "update_list"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    instance-of v1, p1, Ljava/util/List;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    check-cast p1, Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_a

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    instance-of v2, v1, Ljava/util/Map;

    .line 35
    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    check-cast v1, Ljava/util/Map;

    .line 40
    .line 41
    const-string v2, "id"

    .line 42
    .line 43
    const-string v3, ""

    .line 44
    .line 45
    const-string v4, "general_id"

    .line 46
    .line 47
    invoke-static {v1, v2, v3, v4}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/w1;->b0(Ljava/util/Map;)Z

    .line 59
    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    const-string v7, "exp"

    .line 63
    .line 64
    invoke-static {v6, v7, v1}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    const/4 v9, 0x1

    .line 73
    if-lez v8, :cond_3

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    const-string v8, "general_exp"

    .line 77
    .line 78
    invoke-static {v6, v8, v1}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    const-string v10, "general_experience"

    .line 83
    .line 84
    invoke-static {v6, v10, v1}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-gtz v8, :cond_4

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    const-string v10, "general_level"

    .line 100
    .line 101
    invoke-static {v9, v10, v1}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    const-string v11, "level"

    .line 106
    .line 107
    invoke-static {v10, v11, v1}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    invoke-static {v1, v2, v3, v4}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    int-to-long v3, v8

    .line 120
    if-le v10, v9, :cond_5

    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    if-nez v8, :cond_5

    .line 127
    .line 128
    invoke-virtual {v0, v2, v10}, Lcom/sgscq/vpn/w1;->c0(Ljava/lang/String;I)J

    .line 129
    .line 130
    .line 131
    move-result-wide v10

    .line 132
    sub-long/2addr v3, v10

    .line 133
    const-wide/16 v10, 0x0

    .line 134
    .line 135
    cmp-long v2, v3, v10

    .line 136
    .line 137
    if-gez v2, :cond_5

    .line 138
    .line 139
    move-wide v3, v10

    .line 140
    :cond_5
    const-wide/32 v10, 0x7fffffff

    .line 141
    .line 142
    .line 143
    cmp-long v2, v3, v10

    .line 144
    .line 145
    if-lez v2, :cond_6

    .line 146
    .line 147
    const v2, 0x7fffffff

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_6
    long-to-int v2, v3

    .line 152
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    :goto_2
    const-string v2, "general_hp_attr"

    .line 160
    .line 161
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-eqz v3, :cond_7

    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_7
    invoke-virtual {v0, v5}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    if-nez v3, :cond_8

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_8
    aget-wide v7, v3, v6

    .line 178
    .line 179
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    aget-wide v7, v3, v6

    .line 187
    .line 188
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    const-string v4, "attr_hp"

    .line 193
    .line 194
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    aget-wide v7, v3, v9

    .line 198
    .line 199
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    const-string v4, "general_attack_attr"

    .line 204
    .line 205
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    aget-wide v7, v3, v9

    .line 209
    .line 210
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    const-string v4, "attr_attack"

    .line 215
    .line 216
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    const/4 v2, 0x2

    .line 220
    aget-wide v7, v3, v2

    .line 221
    .line 222
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    const-string v7, "general_defense_attr"

    .line 227
    .line 228
    invoke-interface {v1, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    aget-wide v7, v3, v2

    .line 232
    .line 233
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    const-string v7, "attr_defense"

    .line 238
    .line 239
    invoke-interface {v1, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    const/4 v4, 0x3

    .line 243
    aget-wide v7, v3, v4

    .line 244
    .line 245
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    const-string v8, "general_wisdom_attr"

    .line 250
    .line 251
    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    aget-wide v7, v3, v4

    .line 255
    .line 256
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    const-string v8, "attr_wisdom"

    .line 261
    .line 262
    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    array-length v7, v3

    .line 266
    const/4 v8, 0x5

    .line 267
    if-le v7, v8, :cond_9

    .line 268
    .line 269
    aget-wide v7, v3, v8

    .line 270
    .line 271
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    const-string v8, "general_hp_step"

    .line 276
    .line 277
    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    const/4 v7, 0x6

    .line 281
    aget-wide v7, v3, v7

    .line 282
    .line 283
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    const-string v8, "general_attack_step"

    .line 288
    .line 289
    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    const/4 v7, 0x7

    .line 293
    aget-wide v7, v3, v7

    .line 294
    .line 295
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    const-string v8, "general_defense_step"

    .line 300
    .line 301
    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    const/16 v7, 0x8

    .line 305
    .line 306
    aget-wide v7, v3, v7

    .line 307
    .line 308
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v7

    .line 312
    const-string v8, "general_wisdom_step"

    .line 313
    .line 314
    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    :cond_9
    const-string v1, "[Enrich] "

    .line 318
    .line 319
    const-string v7, " hp="

    .line 320
    .line 321
    invoke-static {v1, v5, v7}, La/b0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    aget-wide v5, v3, v6

    .line 326
    .line 327
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    const-string v5, " atk="

    .line 331
    .line 332
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    aget-wide v5, v3, v9

    .line 336
    .line 337
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    const-string v5, " def="

    .line 341
    .line 342
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    aget-wide v5, v3, v2

    .line 346
    .line 347
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    const-string v2, " wis="

    .line 351
    .line 352
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    aget-wide v2, v3, v4

    .line 356
    .line 357
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    const-string v2, "SGSCQ_SRV"

    .line 365
    .line 366
    invoke-static {v2, v1}, Lcom/sgscq/vpn/z2;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    goto/16 :goto_0

    .line 370
    .line 371
    :cond_a
    return-void
.end method

.method public final X()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/sgscq/vpn/h5;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sgscq/vpn/w1;->g0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    :goto_0
    const-string v0, "10501"

    :goto_1
    return-object v0
.end method

.method public final Z()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/h5;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sgscq/vpn/w1;->j0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-string v3, "chat_messages"

    .line 8
    .line 9
    iget-object v4, p0, Lcom/sgscq/vpn/h5;->d:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    if-eqz v7, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string v7, "\u83b7\u5f97\u4e86\uff0c"

    .line 27
    .line 28
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    if-nez v7, :cond_3

    .line 33
    .line 34
    const-string v7, "\u83b7\u5f97\u4e86,"

    .line 35
    .line 36
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-nez v7, :cond_3

    .line 41
    .line 42
    const-string v7, "\u83b7\u5f97\u4e86"

    .line 43
    .line 44
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-nez v7, :cond_3

    .line 49
    .line 50
    const-string v7, "null"

    .line 51
    .line 52
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move v6, v5

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    :goto_0
    const/4 v6, 0x0

    .line 62
    :goto_1
    if-nez v6, :cond_4

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_4
    :try_start_0
    const-string v6, "[]"

    .line 66
    .line 67
    invoke-interface {v4, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    new-instance v7, Lorg/json/JSONArray;

    .line 72
    .line 73
    invoke-direct {v7, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v6, Lorg/json/JSONObject;

    .line 77
    .line 78
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v8, "user_id"

    .line 82
    .line 83
    const-string v9, "0"

    .line 84
    .line 85
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    .line 87
    .line 88
    const-string v8, "channel"

    .line 89
    .line 90
    const/4 v9, 0x4

    .line 91
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    const-string v8, "vip_level"

    .line 95
    .line 96
    const/16 v9, 0xf

    .line 97
    .line 98
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const-string v8, "nickname"

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-eqz v9, :cond_5

    .line 112
    .line 113
    const-string p1, "\u73a9\u5bb6"

    .line 114
    .line 115
    :cond_5
    invoke-virtual {v6, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    .line 117
    .line 118
    const-string p1, "speaker_type"

    .line 119
    .line 120
    invoke-virtual {v6, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    .line 122
    .line 123
    const-string p1, "message"

    .line 124
    .line 125
    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    .line 127
    .line 128
    const-string p1, "time"

    .line 129
    .line 130
    invoke-virtual {v6, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 134
    .line 135
    .line 136
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    const/16 p2, 0x28

    .line 141
    .line 142
    if-le p1, p2, :cond_6

    .line 143
    .line 144
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    sub-int/2addr p1, v5

    .line 149
    invoke-virtual {v7, p1}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_6
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-interface {p1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .line 167
    .line 168
    goto :goto_3

    .line 169
    :catch_0
    move-exception p1

    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string v0, "[ChatMsg] save failed: "

    .line 173
    .line 174
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const-string v0, "SGSCQ_SRV"

    .line 178
    .line 179
    invoke-static {p1, p2, v0}, Lc/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :goto_3
    return-void
.end method

.method public final e0()Lcom/sgscq/vpn/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/h5;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sgscq/vpn/c0;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sgscq/vpn/c0;->f:Lcom/sgscq/vpn/c0;

    :cond_0
    return-object v0
.end method

.method public final f0(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/h5;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/sgscq/vpn/w1;->v0(Ljava/lang/String;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_5

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const-string v4, "105"

    .line 25
    .line 26
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/4 v5, 0x5

    .line 37
    if-lt v4, v5, :cond_1

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    :try_start_0
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    :cond_1
    move v4, p2

    .line 50
    :goto_0
    const/16 v5, 0x32

    .line 51
    .line 52
    if-lt v4, v5, :cond_2

    .line 53
    .line 54
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-nez v5, :cond_2

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_3

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    const/4 v5, 0x2

    .line 85
    if-lt v4, v5, :cond_4

    .line 86
    .line 87
    const/4 v4, 0x1

    .line 88
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    if-eqz v5, :cond_4

    .line 93
    .line 94
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-nez v5, :cond_4

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    move v4, v2

    .line 112
    :goto_1
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    move-object v4, v1

    .line 117
    check-cast v4, Ljava/lang/String;

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_5
    :goto_2
    move-object v4, v3

    .line 121
    :goto_3
    if-eqz v4, :cond_6

    .line 122
    .line 123
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_6

    .line 128
    .line 129
    return-object v4

    .line 130
    :cond_6
    iget-object v1, v0, Lcom/sgscq/vpn/w1;->P:Ljava/util/HashMap;

    .line 131
    .line 132
    if-nez v1, :cond_b

    .line 133
    .line 134
    const-string v4, "SGSCQ_SRV"

    .line 135
    .line 136
    if-eqz v1, :cond_7

    .line 137
    .line 138
    goto/16 :goto_6

    .line 139
    .line 140
    :cond_7
    new-instance v1, Ljava/util/HashMap;

    .line 141
    .line 142
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 143
    .line 144
    .line 145
    iput-object v1, v0, Lcom/sgscq/vpn/w1;->P:Ljava/util/HashMap;

    .line 146
    .line 147
    :try_start_1
    iget-object v1, v0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 148
    .line 149
    const-string v5, "dungeon_enemies.json"

    .line 150
    .line 151
    invoke-static {v1, v5}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    iget-object v5, v0, Lcom/sgscq/vpn/w1;->b:La/o;

    .line 156
    .line 157
    const-class v6, Ljava/util/Map;

    .line 158
    .line 159
    invoke-virtual {v5, v1, v6}, La/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Ljava/util/Map;

    .line 164
    .line 165
    const-string v5, "dungeon_npcs"

    .line 166
    .line 167
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    check-cast v1, Ljava/util/Map;

    .line 172
    .line 173
    if-eqz v1, :cond_a

    .line 174
    .line 175
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-eqz v5, :cond_a

    .line 188
    .line 189
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    check-cast v5, Ljava/util/Map$Entry;

    .line 194
    .line 195
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    instance-of v7, v6, Ljava/util/List;

    .line 200
    .line 201
    if-eqz v7, :cond_9

    .line 202
    .line 203
    check-cast v6, Ljava/util/List;

    .line 204
    .line 205
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v7

    .line 209
    if-nez v7, :cond_9

    .line 210
    .line 211
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    goto :goto_5

    .line 220
    :cond_9
    move-object v6, v3

    .line 221
    :goto_5
    if-eqz v6, :cond_8

    .line 222
    .line 223
    iget-object v7, v0, Lcom/sgscq/vpn/w1;->P:Ljava/util/HashMap;

    .line 224
    .line 225
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    check-cast v5, Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    const-string v3, "[loadDungeonNpcs] \u52a0\u8f7d "

    .line 241
    .line 242
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    iget-object v3, v0, Lcom/sgscq/vpn/w1;->P:Ljava/util/HashMap;

    .line 246
    .line 247
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v3, " \u526f\u672cNPC\u6620\u5c04"

    .line 255
    .line 256
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-static {v4, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 264
    .line 265
    .line 266
    goto :goto_6

    .line 267
    :catch_1
    move-exception v1

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    const-string v5, "[loadDungeonNpcs] \u5931\u8d25: "

    .line 271
    .line 272
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-static {v1, v3, v4}, Lc/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    :cond_b
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    const/4 v3, 0x6

    .line 283
    if-lt v1, v3, :cond_c

    .line 284
    .line 285
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    :cond_c
    iget-object v0, v0, Lcom/sgscq/vpn/w1;->P:Ljava/util/HashMap;

    .line 290
    .line 291
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    check-cast p1, Ljava/lang/String;

    .line 296
    .line 297
    if-eqz p1, :cond_d

    .line 298
    .line 299
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-nez v0, :cond_d

    .line 304
    .line 305
    return-object p1

    .line 306
    :cond_d
    invoke-static {p2}, Lcom/sgscq/vpn/w1;->q0(I)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    return-object p1
.end method

.method public final g0(Ljava/util/Map;)I
    .locals 3

    .line 1
    const-string v0, "1"

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "user_level"

    const-string v2, "level"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/sgscq/vpn/h5;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sgscq/vpn/w1;->h1(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 78

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/h5;->H0(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object/from16 v14, p0

    .line 8
    .line 9
    iget-object v15, v14, Lcom/sgscq/vpn/h5;->c:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v15}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 12
    .line 13
    .line 14
    move-result-object v13

    .line 15
    invoke-virtual {v13, v1, v1}, Lcom/sgscq/vpn/w1;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v12

    .line 19
    const-string v11, "dungeons"

    .line 20
    .line 21
    const-string v10, "dungeon_info"

    .line 22
    .line 23
    const-string v9, "updateInfo"

    .line 24
    .line 25
    const-string v8, "getChapterId"

    .line 26
    .line 27
    const-string v7, "map_bgimage"

    .line 28
    .line 29
    const-string v6, "map_name"

    .line 30
    .line 31
    const-string v5, "map_id"

    .line 32
    .line 33
    const-string v4, "]"

    .line 34
    .line 35
    const-string v3, "["

    .line 36
    .line 37
    const-string v2, "can_in"

    .line 38
    .line 39
    const-string v14, "can_show"

    .line 40
    .line 41
    move-object/from16 p1, v14

    .line 42
    .line 43
    const-string v14, ""

    .line 44
    .line 45
    if-eqz v12, :cond_73

    .line 46
    .line 47
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v16

    .line 51
    if-eqz v16, :cond_0

    .line 52
    .line 53
    goto/16 :goto_48

    .line 54
    .line 55
    :cond_0
    move-object/from16 v16, v2

    .line 56
    .line 57
    const-string v2, "dungeon_stars"

    .line 58
    .line 59
    invoke-static {v2, v0}, Lcom/sgscq/vpn/h5;->v0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    move-object/from16 v17, v3

    .line 64
    .line 65
    const-string v3, "dungeon_times"

    .line 66
    .line 67
    invoke-static {v3, v0}, Lcom/sgscq/vpn/h5;->v0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    move-object/from16 v18, v4

    .line 72
    .line 73
    const-string v4, "chapter_reward_boxes"

    .line 74
    .line 75
    invoke-static {v4, v0}, Lcom/sgscq/vpn/h5;->v0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/h5;->K(Ljava/util/Map;)Lcom/sgscq/vpn/p4;

    .line 80
    .line 81
    .line 82
    move-result-object v19

    .line 83
    if-nez v0, :cond_1

    .line 84
    .line 85
    const/16 v20, 0x1

    .line 86
    .line 87
    move-object/from16 v21, v5

    .line 88
    .line 89
    move/from16 v5, v20

    .line 90
    .line 91
    move-object/from16 v20, v4

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    move-object/from16 v20, v4

    .line 95
    .line 96
    const-string v4, "user_level"

    .line 97
    .line 98
    move-object/from16 v21, v5

    .line 99
    .line 100
    const/4 v5, 0x1

    .line 101
    invoke-static {v5, v4, v0}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    move v5, v4

    .line 110
    :goto_0
    const-string v4, "105"

    .line 111
    .line 112
    if-eqz v1, :cond_2

    .line 113
    .line 114
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v22

    .line 118
    if-eqz v22, :cond_2

    .line 119
    .line 120
    const/16 v22, 0x1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    const/16 v22, 0x0

    .line 124
    .line 125
    :goto_1
    move-object/from16 v23, v14

    .line 126
    .line 127
    move/from16 v14, v22

    .line 128
    .line 129
    move-object/from16 v22, v4

    .line 130
    .line 131
    if-eqz v14, :cond_3

    .line 132
    .line 133
    const/4 v4, 0x1

    .line 134
    invoke-static {v0, v4}, Lcom/sgscq/vpn/h5;->L(Ljava/util/Map;Z)Lcom/sgscq/vpn/p4;

    .line 135
    .line 136
    .line 137
    move-result-object v19

    .line 138
    :cond_3
    move-object/from16 v4, v19

    .line 139
    .line 140
    move-object/from16 v19, v15

    .line 141
    .line 142
    invoke-static {v1, v4, v14, v5}, Lcom/sgscq/vpn/h5;->I(Ljava/lang/String;Lcom/sgscq/vpn/p4;ZI)Z

    .line 143
    .line 144
    .line 145
    move-result v15

    .line 146
    move/from16 v24, v15

    .line 147
    .line 148
    invoke-virtual {v13, v1}, Lcom/sgscq/vpn/w1;->p0(Ljava/lang/String;)Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v15

    .line 152
    move-object/from16 v25, v11

    .line 153
    .line 154
    new-instance v11, Ljava/util/LinkedHashMap;

    .line 155
    .line 156
    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 157
    .line 158
    .line 159
    const/16 v26, 0x0

    .line 160
    .line 161
    move-object/from16 v27, v6

    .line 162
    .line 163
    move/from16 v6, v26

    .line 164
    .line 165
    move-object/from16 v26, v7

    .line 166
    .line 167
    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    move-object/from16 v28, v10

    .line 172
    .line 173
    const-string v10, "position"

    .line 174
    .line 175
    if-ge v6, v7, :cond_5

    .line 176
    .line 177
    add-int/lit8 v7, v6, 0x1

    .line 178
    .line 179
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    check-cast v6, Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v13, v6}, Lcom/sgscq/vpn/w1;->x0(Ljava/lang/String;)Ljava/util/HashMap;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    move-object/from16 v29, v8

    .line 190
    .line 191
    if-eqz v6, :cond_4

    .line 192
    .line 193
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    invoke-virtual {v6, v10, v8}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    invoke-static {v6, v7}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    goto :goto_3

    .line 210
    :cond_4
    move v6, v7

    .line 211
    :goto_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    invoke-interface {v11, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move v6, v7

    .line 223
    move-object/from16 v10, v28

    .line 224
    .line 225
    move-object/from16 v8, v29

    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_5
    move-object/from16 v29, v8

    .line 229
    .line 230
    new-instance v6, Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 236
    .line 237
    .line 238
    invoke-virtual {v13, v1}, Lcom/sgscq/vpn/w1;->o0(Ljava/lang/String;)Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 243
    .line 244
    .line 245
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 246
    .line 247
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    .line 251
    .line 252
    .line 253
    move-result v7

    .line 254
    move-object/from16 v30, v15

    .line 255
    .line 256
    const-string v15, "L"

    .line 257
    .line 258
    move-object/from16 v31, v13

    .line 259
    .line 260
    const-string v13, "U"

    .line 261
    .line 262
    move-object/from16 v32, v10

    .line 263
    .line 264
    const-string v10, "D"

    .line 265
    .line 266
    move-object/from16 v33, v9

    .line 267
    .line 268
    const-string v9, "R"

    .line 269
    .line 270
    const/16 v34, 0x2

    .line 271
    .line 272
    if-nez v7, :cond_18

    .line 273
    .line 274
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    move/from16 v7, v34

    .line 279
    .line 280
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    .line 282
    .line 283
    move-result v34

    .line 284
    if-eqz v34, :cond_18

    .line 285
    .line 286
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v34

    .line 290
    move-object/from16 v35, v6

    .line 291
    .line 292
    move-object/from16 v6, v34

    .line 293
    .line 294
    check-cast v6, Ljava/util/List;

    .line 295
    .line 296
    if-eqz v6, :cond_16

    .line 297
    .line 298
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    if-ge v0, v7, :cond_6

    .line 303
    .line 304
    goto/16 :goto_b

    .line 305
    .line 306
    :cond_6
    const/4 v0, 0x0

    .line 307
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v7

    .line 311
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v7

    .line 315
    invoke-static {v7, v0}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {v11, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    check-cast v0, Ljava/lang/Integer;

    .line 328
    .line 329
    if-eqz v0, :cond_16

    .line 330
    .line 331
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 332
    .line 333
    .line 334
    move-result v7

    .line 335
    if-gtz v7, :cond_7

    .line 336
    .line 337
    goto/16 :goto_b

    .line 338
    .line 339
    :cond_7
    const/4 v7, 0x1

    .line 340
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v6

    .line 344
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v6

    .line 348
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 349
    .line 350
    .line 351
    move-result v7

    .line 352
    if-gtz v7, :cond_8

    .line 353
    .line 354
    move-object/from16 v36, v1

    .line 355
    .line 356
    move-object/from16 v34, v4

    .line 357
    .line 358
    goto :goto_5

    .line 359
    :cond_8
    move-object/from16 v34, v4

    .line 360
    .line 361
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    move-object/from16 v36, v1

    .line 366
    .line 367
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 368
    .line 369
    invoke-virtual {v4, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v4

    .line 377
    if-eqz v4, :cond_9

    .line 378
    .line 379
    add-int/lit8 v7, v7, -0x1

    .line 380
    .line 381
    goto :goto_6

    .line 382
    :cond_9
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v4

    .line 386
    if-eqz v4, :cond_a

    .line 387
    .line 388
    add-int/lit8 v7, v7, 0x1

    .line 389
    .line 390
    goto :goto_6

    .line 391
    :cond_a
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v4

    .line 395
    if-eqz v4, :cond_b

    .line 396
    .line 397
    add-int/lit8 v7, v7, -0x4

    .line 398
    .line 399
    goto :goto_6

    .line 400
    :cond_b
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    if-eqz v1, :cond_c

    .line 405
    .line 406
    add-int/lit8 v7, v7, 0x4

    .line 407
    .line 408
    goto :goto_6

    .line 409
    :cond_c
    :goto_5
    const/4 v7, 0x0

    .line 410
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    if-lez v0, :cond_f

    .line 415
    .line 416
    if-gtz v7, :cond_d

    .line 417
    .line 418
    goto :goto_7

    .line 419
    :cond_d
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 424
    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    if-eqz v1, :cond_e

    .line 434
    .line 435
    add-int/lit8 v7, v7, -0x1

    .line 436
    .line 437
    goto :goto_8

    .line 438
    :cond_e
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    if-eqz v0, :cond_f

    .line 443
    .line 444
    add-int/lit8 v7, v7, -0x4

    .line 445
    .line 446
    goto :goto_8

    .line 447
    :cond_f
    :goto_7
    const/4 v7, 0x0

    .line 448
    :goto_8
    if-lez v7, :cond_11

    .line 449
    .line 450
    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    if-eqz v1, :cond_11

    .line 463
    .line 464
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    check-cast v1, Ljava/util/Map$Entry;

    .line 469
    .line 470
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v4

    .line 474
    check-cast v4, Ljava/lang/Integer;

    .line 475
    .line 476
    if-eqz v4, :cond_10

    .line 477
    .line 478
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 479
    .line 480
    .line 481
    move-result v4

    .line 482
    if-ne v4, v7, :cond_10

    .line 483
    .line 484
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    check-cast v0, Ljava/lang/Integer;

    .line 489
    .line 490
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    goto :goto_9

    .line 495
    :cond_11
    const/4 v0, 0x0

    .line 496
    :goto_9
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 501
    .line 502
    invoke-virtual {v1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v4

    .line 510
    if-eqz v4, :cond_12

    .line 511
    .line 512
    const/4 v1, 0x2

    .line 513
    goto :goto_a

    .line 514
    :cond_12
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    move-result v1

    .line 518
    if-eqz v1, :cond_13

    .line 519
    .line 520
    const/4 v1, 0x4

    .line 521
    goto :goto_a

    .line 522
    :cond_13
    const/4 v1, 0x0

    .line 523
    :goto_a
    if-lez v0, :cond_17

    .line 524
    .line 525
    if-gtz v1, :cond_14

    .line 526
    .line 527
    goto :goto_c

    .line 528
    :cond_14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 529
    .line 530
    .line 531
    move-result-object v4

    .line 532
    invoke-virtual {v8, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v4

    .line 536
    check-cast v4, Ljava/util/List;

    .line 537
    .line 538
    if-nez v4, :cond_15

    .line 539
    .line 540
    new-instance v4, Ljava/util/ArrayList;

    .line 541
    .line 542
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .line 544
    .line 545
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    invoke-interface {v8, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    :cond_15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    move-result v0

    .line 560
    if-nez v0, :cond_17

    .line 561
    .line 562
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    goto :goto_c

    .line 570
    :cond_16
    :goto_b
    move-object/from16 v36, v1

    .line 571
    .line 572
    move-object/from16 v34, v4

    .line 573
    .line 574
    :cond_17
    :goto_c
    const/4 v7, 0x2

    .line 575
    move-object/from16 v0, p2

    .line 576
    .line 577
    move-object/from16 v4, v34

    .line 578
    .line 579
    move-object/from16 v6, v35

    .line 580
    .line 581
    move-object/from16 v1, v36

    .line 582
    .line 583
    goto/16 :goto_4

    .line 584
    .line 585
    :cond_18
    move-object/from16 v36, v1

    .line 586
    .line 587
    move-object/from16 v34, v4

    .line 588
    .line 589
    const/4 v0, 0x0

    .line 590
    filled-new-array {v0}, [I

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    new-instance v1, Ljava/util/ArrayList;

    .line 595
    .line 596
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 597
    .line 598
    .line 599
    const/4 v4, 0x0

    .line 600
    :goto_d
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 601
    .line 602
    .line 603
    move-result v6

    .line 604
    const-string v7, ","

    .line 605
    .line 606
    if-ge v4, v6, :cond_66

    .line 607
    .line 608
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v6

    .line 612
    check-cast v6, Ljava/lang/String;

    .line 613
    .line 614
    add-int/lit8 v4, v4, 0x1

    .line 615
    .line 616
    move-object/from16 v35, v7

    .line 617
    .line 618
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 619
    .line 620
    .line 621
    move-result v7

    .line 622
    if-ge v4, v7, :cond_19

    .line 623
    .line 624
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v7

    .line 628
    check-cast v7, Ljava/lang/String;

    .line 629
    .line 630
    goto :goto_e

    .line 631
    :cond_19
    move-object/from16 v7, v23

    .line 632
    .line 633
    :goto_e
    invoke-static {v6, v2}, Lcom/sgscq/vpn/h5;->P0(Ljava/lang/String;Ljava/util/Map;)I

    .line 634
    .line 635
    .line 636
    move-result v37

    .line 637
    invoke-static {v6, v3}, Lcom/sgscq/vpn/h5;->P0(Ljava/lang/String;Ljava/util/Map;)I

    .line 638
    .line 639
    .line 640
    move-result v38

    .line 641
    move-object/from16 v39, v3

    .line 642
    .line 643
    if-eqz v14, :cond_1a

    .line 644
    .line 645
    const/16 v3, 0x9

    .line 646
    .line 647
    if-ge v5, v3, :cond_1a

    .line 648
    .line 649
    new-instance v3, Lcom/sgscq/vpn/g5;

    .line 650
    .line 651
    move/from16 v40, v5

    .line 652
    .line 653
    const/4 v5, 0x0

    .line 654
    invoke-direct {v3, v5, v5, v5}, Lcom/sgscq/vpn/g5;-><init>(ZZZ)V

    .line 655
    .line 656
    .line 657
    move-object/from16 v41, v2

    .line 658
    .line 659
    goto :goto_11

    .line 660
    :cond_1a
    move/from16 v40, v5

    .line 661
    .line 662
    if-eqz v2, :cond_1d

    .line 663
    .line 664
    const/4 v3, 0x1

    .line 665
    if-le v4, v3, :cond_1d

    .line 666
    .line 667
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 668
    .line 669
    .line 670
    move-result v3

    .line 671
    if-le v4, v3, :cond_1b

    .line 672
    .line 673
    goto :goto_f

    .line 674
    :cond_1b
    add-int/lit8 v3, v4, -0x1

    .line 675
    .line 676
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v3

    .line 680
    check-cast v3, Ljava/lang/String;

    .line 681
    .line 682
    invoke-static {v3}, Lcom/sgscq/vpn/h5;->m0(Ljava/lang/String;)I

    .line 683
    .line 684
    .line 685
    move-result v3

    .line 686
    if-lez v3, :cond_1d

    .line 687
    .line 688
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 689
    .line 690
    .line 691
    move-result v5

    .line 692
    if-le v3, v5, :cond_1c

    .line 693
    .line 694
    goto :goto_f

    .line 695
    :cond_1c
    add-int/lit8 v3, v3, -0x1

    .line 696
    .line 697
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v3

    .line 701
    check-cast v3, Ljava/lang/String;

    .line 702
    .line 703
    invoke-static {v3, v2}, Lcom/sgscq/vpn/h5;->P0(Ljava/lang/String;Ljava/util/Map;)I

    .line 704
    .line 705
    .line 706
    move-result v3

    .line 707
    if-lez v3, :cond_1d

    .line 708
    .line 709
    const/4 v3, 0x1

    .line 710
    goto :goto_10

    .line 711
    :cond_1d
    :goto_f
    const/4 v3, 0x0

    .line 712
    :goto_10
    if-eqz v3, :cond_1e

    .line 713
    .line 714
    new-instance v3, Lcom/sgscq/vpn/g5;

    .line 715
    .line 716
    const/4 v5, 0x0

    .line 717
    move-object/from16 v41, v2

    .line 718
    .line 719
    const/4 v2, 0x1

    .line 720
    invoke-direct {v3, v2, v2, v5}, Lcom/sgscq/vpn/g5;-><init>(ZZZ)V

    .line 721
    .line 722
    .line 723
    :goto_11
    move-object/from16 v5, v34

    .line 724
    .line 725
    move-object/from16 v34, v9

    .line 726
    .line 727
    goto/16 :goto_18

    .line 728
    .line 729
    :cond_1e
    move-object/from16 v41, v2

    .line 730
    .line 731
    invoke-static/range {v36 .. v36}, Lcom/sgscq/vpn/h5;->J(Ljava/lang/String;)I

    .line 732
    .line 733
    .line 734
    move-result v2

    .line 735
    move-object/from16 v5, v34

    .line 736
    .line 737
    iget-object v3, v5, Lcom/sgscq/vpn/p4;->b:Ljava/io/Serializable;

    .line 738
    .line 739
    check-cast v3, Ljava/lang/String;

    .line 740
    .line 741
    invoke-static {v3}, Lcom/sgscq/vpn/h5;->J(Ljava/lang/String;)I

    .line 742
    .line 743
    .line 744
    move-result v3

    .line 745
    if-lez v2, :cond_25

    .line 746
    .line 747
    if-gtz v3, :cond_1f

    .line 748
    .line 749
    goto :goto_14

    .line 750
    :cond_1f
    if-ge v2, v3, :cond_20

    .line 751
    .line 752
    new-instance v3, Lcom/sgscq/vpn/g5;

    .line 753
    .line 754
    const/4 v2, 0x1

    .line 755
    move-object/from16 v34, v9

    .line 756
    .line 757
    const/4 v9, 0x0

    .line 758
    invoke-direct {v3, v2, v2, v9}, Lcom/sgscq/vpn/g5;-><init>(ZZZ)V

    .line 759
    .line 760
    .line 761
    goto :goto_18

    .line 762
    :cond_20
    move-object/from16 v34, v9

    .line 763
    .line 764
    const/4 v9, 0x0

    .line 765
    if-le v2, v3, :cond_21

    .line 766
    .line 767
    new-instance v3, Lcom/sgscq/vpn/g5;

    .line 768
    .line 769
    invoke-direct {v3, v9, v9, v9}, Lcom/sgscq/vpn/g5;-><init>(ZZZ)V

    .line 770
    .line 771
    .line 772
    goto :goto_18

    .line 773
    :cond_21
    iget-object v2, v5, Lcom/sgscq/vpn/p4;->c:Ljava/lang/Object;

    .line 774
    .line 775
    check-cast v2, Ljava/lang/String;

    .line 776
    .line 777
    invoke-static {v2}, Lcom/sgscq/vpn/h5;->V(Ljava/lang/String;)I

    .line 778
    .line 779
    .line 780
    move-result v2

    .line 781
    if-gtz v2, :cond_22

    .line 782
    .line 783
    iget v2, v5, Lcom/sgscq/vpn/p4;->a:I

    .line 784
    .line 785
    const/4 v3, 0x1

    .line 786
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 787
    .line 788
    .line 789
    move-result v2

    .line 790
    :cond_22
    if-gt v4, v2, :cond_23

    .line 791
    .line 792
    const/4 v3, 0x1

    .line 793
    goto :goto_12

    .line 794
    :cond_23
    const/4 v3, 0x0

    .line 795
    :goto_12
    new-instance v9, Lcom/sgscq/vpn/g5;

    .line 796
    .line 797
    if-ne v4, v2, :cond_24

    .line 798
    .line 799
    const/4 v2, 0x1

    .line 800
    goto :goto_13

    .line 801
    :cond_24
    const/4 v2, 0x0

    .line 802
    :goto_13
    invoke-direct {v9, v3, v3, v2}, Lcom/sgscq/vpn/g5;-><init>(ZZZ)V

    .line 803
    .line 804
    .line 805
    goto :goto_17

    .line 806
    :cond_25
    :goto_14
    move-object/from16 v34, v9

    .line 807
    .line 808
    const/4 v2, 0x1

    .line 809
    if-gt v4, v2, :cond_26

    .line 810
    .line 811
    move v3, v2

    .line 812
    goto :goto_15

    .line 813
    :cond_26
    const/4 v3, 0x0

    .line 814
    :goto_15
    new-instance v9, Lcom/sgscq/vpn/g5;

    .line 815
    .line 816
    if-gt v4, v2, :cond_27

    .line 817
    .line 818
    goto :goto_16

    .line 819
    :cond_27
    const/4 v2, 0x0

    .line 820
    :goto_16
    invoke-direct {v9, v3, v3, v2}, Lcom/sgscq/vpn/g5;-><init>(ZZZ)V

    .line 821
    .line 822
    .line 823
    :goto_17
    move-object v3, v9

    .line 824
    :goto_18
    new-instance v9, Lcom/sgscq/vpn/f5;

    .line 825
    .line 826
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 827
    .line 828
    .line 829
    move-result-object v2

    .line 830
    move-object/from16 v42, v5

    .line 831
    .line 832
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 833
    .line 834
    .line 835
    move-result-object v5

    .line 836
    invoke-virtual {v11, v2, v5}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    move-result-object v2

    .line 840
    check-cast v2, Ljava/lang/Integer;

    .line 841
    .line 842
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 843
    .line 844
    .line 845
    move-result v5

    .line 846
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 847
    .line 848
    .line 849
    move-result v2

    .line 850
    move/from16 v43, v2

    .line 851
    .line 852
    const-string v2, "dungeon:"

    .line 853
    .line 854
    invoke-static {v2, v6}, Lc/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v2

    .line 858
    move/from16 v44, v5

    .line 859
    .line 860
    iget-boolean v5, v3, Lcom/sgscq/vpn/g5;->c:Z

    .line 861
    .line 862
    move-object/from16 v45, v9

    .line 863
    .line 864
    iget-boolean v9, v3, Lcom/sgscq/vpn/g5;->a:Z

    .line 865
    .line 866
    iget-boolean v3, v3, Lcom/sgscq/vpn/g5;->b:Z

    .line 867
    .line 868
    move-object/from16 v46, v2

    .line 869
    .line 870
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 871
    .line 872
    .line 873
    move-result-object v2

    .line 874
    move/from16 v47, v3

    .line 875
    .line 876
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 877
    .line 878
    .line 879
    move-result-object v3

    .line 880
    invoke-virtual {v8, v2, v3}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    move-result-object v2

    .line 884
    move-object/from16 v48, v2

    .line 885
    .line 886
    check-cast v48, Ljava/util/List;

    .line 887
    .line 888
    const-string v2, "user_vip_level"

    .line 889
    .line 890
    const/4 v3, 0x0

    .line 891
    move/from16 v49, v14

    .line 892
    .line 893
    move-object/from16 v14, p2

    .line 894
    .line 895
    invoke-static {v3, v2, v14}, Lcom/sgscq/vpn/h5;->W0(ILjava/lang/String;Ljava/util/Map;)I

    .line 896
    .line 897
    .line 898
    move-result v2

    .line 899
    const-string v3, "vip_level"

    .line 900
    .line 901
    invoke-static {v2, v3, v14}, Lcom/sgscq/vpn/h5;->W0(ILjava/lang/String;Ljava/util/Map;)I

    .line 902
    .line 903
    .line 904
    move-result v50

    .line 905
    move-object/from16 v3, v16

    .line 906
    .line 907
    move-object/from16 v16, v41

    .line 908
    .line 909
    move/from16 v14, v43

    .line 910
    .line 911
    move-object/from16 v41, v15

    .line 912
    .line 913
    move-object/from16 v15, v46

    .line 914
    .line 915
    move-object/from16 v2, p0

    .line 916
    .line 917
    move-object/from16 v52, v3

    .line 918
    .line 919
    move-object/from16 v51, v17

    .line 920
    .line 921
    move-object/from16 v17, v39

    .line 922
    .line 923
    move/from16 v39, v47

    .line 924
    .line 925
    move-object v3, v6

    .line 926
    move-object/from16 v6, v18

    .line 927
    .line 928
    move-object/from16 v53, v20

    .line 929
    .line 930
    move-object/from16 v54, v22

    .line 931
    .line 932
    move-object/from16 v18, v42

    .line 933
    .line 934
    move/from16 v20, v4

    .line 935
    .line 936
    move-object/from16 v22, v0

    .line 937
    .line 938
    move-object/from16 v55, v21

    .line 939
    .line 940
    move/from16 v21, v40

    .line 941
    .line 942
    move/from16 v0, v44

    .line 943
    .line 944
    move-object/from16 v57, v6

    .line 945
    .line 946
    move-object/from16 v56, v27

    .line 947
    .line 948
    move-object v6, v7

    .line 949
    move-object/from16 v58, v26

    .line 950
    .line 951
    move-object/from16 v59, v35

    .line 952
    .line 953
    move/from16 v7, v37

    .line 954
    .line 955
    move-object/from16 v26, v8

    .line 956
    .line 957
    move-object/from16 v60, v29

    .line 958
    .line 959
    move/from16 v8, v38

    .line 960
    .line 961
    move-object/from16 v27, v1

    .line 962
    .line 963
    move-object/from16 v61, v33

    .line 964
    .line 965
    move-object/from16 v62, v34

    .line 966
    .line 967
    move-object/from16 v1, v45

    .line 968
    .line 969
    move-object/from16 v65, v10

    .line 970
    .line 971
    move-object/from16 v63, v28

    .line 972
    .line 973
    move-object/from16 v64, v32

    .line 974
    .line 975
    move/from16 v10, v39

    .line 976
    .line 977
    move-object/from16 v66, v25

    .line 978
    .line 979
    move-object/from16 v25, v11

    .line 980
    .line 981
    move-object/from16 v11, v48

    .line 982
    .line 983
    move-object/from16 v28, v12

    .line 984
    .line 985
    move/from16 v12, v21

    .line 986
    .line 987
    move-object/from16 v68, v13

    .line 988
    .line 989
    move-object/from16 v67, v31

    .line 990
    .line 991
    move/from16 v13, v50

    .line 992
    .line 993
    invoke-virtual/range {v2 .. v13}, Lcom/sgscq/vpn/h5;->l(Ljava/lang/String;IZLjava/lang/String;IIZZLjava/util/List;II)Ljava/lang/String;

    .line 994
    .line 995
    .line 996
    move-result-object v2

    .line 997
    invoke-direct {v1, v0, v14, v15, v2}, Lcom/sgscq/vpn/f5;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 998
    .line 999
    .line 1000
    move-object/from16 v0, v27

    .line 1001
    .line 1002
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    .line 1004
    .line 1005
    invoke-static/range {v19 .. v19}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v1

    .line 1009
    const-string v2, "id"

    .line 1010
    .line 1011
    const-string v3, "box_id"

    .line 1012
    .line 1013
    const-string v4, "type"

    .line 1014
    .line 1015
    const-string v5, "node_type"

    .line 1016
    .line 1017
    const-string v6, "dungeon_position"

    .line 1018
    .line 1019
    if-eqz v30, :cond_56

    .line 1020
    .line 1021
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->isEmpty()Z

    .line 1022
    .line 1023
    .line 1024
    move-result v7

    .line 1025
    if-eqz v7, :cond_28

    .line 1026
    .line 1027
    goto/16 :goto_38

    .line 1028
    .line 1029
    :cond_28
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1030
    .line 1031
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    .line 1032
    .line 1033
    .line 1034
    move-result v8

    .line 1035
    mul-int/lit16 v8, v8, 0xa0

    .line 1036
    .line 1037
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1038
    .line 1039
    .line 1040
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v8

    .line 1044
    :goto_19
    move-object/from16 v9, v16

    .line 1045
    .line 1046
    move-object/from16 v12, v28

    .line 1047
    .line 1048
    move-object/from16 v10, v36

    .line 1049
    .line 1050
    :goto_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1051
    .line 1052
    .line 1053
    move-result v11

    .line 1054
    if-eqz v11, :cond_55

    .line 1055
    .line 1056
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v11

    .line 1060
    check-cast v11, Ljava/util/List;

    .line 1061
    .line 1062
    const/4 v13, 0x0

    .line 1063
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v14

    .line 1067
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v14

    .line 1071
    invoke-static {v14, v13}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 1072
    .line 1073
    .line 1074
    move-result v13

    .line 1075
    move/from16 v14, v20

    .line 1076
    .line 1077
    if-eq v13, v14, :cond_29

    .line 1078
    .line 1079
    move/from16 v20, v14

    .line 1080
    .line 1081
    goto :goto_1a

    .line 1082
    :cond_29
    const/4 v15, 0x1

    .line 1083
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v15

    .line 1087
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v15

    .line 1091
    move-object/from16 v20, v8

    .line 1092
    .line 1093
    const/4 v8, 0x2

    .line 1094
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v8

    .line 1098
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v8

    .line 1102
    move/from16 v27, v14

    .line 1103
    .line 1104
    const/4 v14, 0x3

    .line 1105
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v14

    .line 1109
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v14

    .line 1113
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 1114
    .line 1115
    .line 1116
    move-result v29

    .line 1117
    move-object/from16 v31, v0

    .line 1118
    .line 1119
    const-string v0, "null"

    .line 1120
    .line 1121
    if-nez v29, :cond_2a

    .line 1122
    .line 1123
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1124
    .line 1125
    .line 1126
    move-result v29

    .line 1127
    if-nez v29, :cond_2a

    .line 1128
    .line 1129
    goto :goto_1c

    .line 1130
    :cond_2a
    const-string v14, "\u5143\u5b9d"

    .line 1131
    .line 1132
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1133
    .line 1134
    .line 1135
    move-result v14

    .line 1136
    if-eqz v14, :cond_2b

    .line 1137
    .line 1138
    const-string v14, "600034"

    .line 1139
    .line 1140
    goto :goto_1c

    .line 1141
    :cond_2b
    const-string v14, "\u94f6\u4e24"

    .line 1142
    .line 1143
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1144
    .line 1145
    .line 1146
    move-result v14

    .line 1147
    if-nez v14, :cond_2e

    .line 1148
    .line 1149
    const-string v14, "\u91d1\u5e01"

    .line 1150
    .line 1151
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1152
    .line 1153
    .line 1154
    move-result v14

    .line 1155
    if-nez v14, :cond_2e

    .line 1156
    .line 1157
    const-string v14, "\u94dc\u94b1"

    .line 1158
    .line 1159
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1160
    .line 1161
    .line 1162
    move-result v14

    .line 1163
    if-eqz v14, :cond_2c

    .line 1164
    .line 1165
    goto :goto_1b

    .line 1166
    :cond_2c
    const-string v14, "\u7075\u829d"

    .line 1167
    .line 1168
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1169
    .line 1170
    .line 1171
    move-result v14

    .line 1172
    if-eqz v14, :cond_2d

    .line 1173
    .line 1174
    const-string v14, "600012"

    .line 1175
    .line 1176
    goto :goto_1c

    .line 1177
    :cond_2d
    const-string v14, "\u52fe\u7389"

    .line 1178
    .line 1179
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1180
    .line 1181
    .line 1182
    move-result v8

    .line 1183
    if-eqz v8, :cond_2e

    .line 1184
    .line 1185
    const-string v14, "600013"

    .line 1186
    .line 1187
    goto :goto_1c

    .line 1188
    :cond_2e
    :goto_1b
    const-string v14, "600026"

    .line 1189
    .line 1190
    :goto_1c
    const/4 v8, 0x4

    .line 1191
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v8

    .line 1195
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v8

    .line 1199
    move-object/from16 v29, v6

    .line 1200
    .line 1201
    const/4 v6, 0x0

    .line 1202
    invoke-static {v8, v6}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 1203
    .line 1204
    .line 1205
    move-result v8

    .line 1206
    if-gtz v8, :cond_2f

    .line 1207
    .line 1208
    aget v6, v22, v6

    .line 1209
    .line 1210
    :try_start_0
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1211
    .line 1212
    .line 1213
    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1214
    add-int/lit16 v8, v8, -0x1f4

    .line 1215
    .line 1216
    move-object/from16 v32, v3

    .line 1217
    .line 1218
    const/4 v3, 0x1

    .line 1219
    :try_start_1
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    .line 1220
    .line 1221
    .line 1222
    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1223
    goto :goto_1d

    .line 1224
    :catch_0
    move-object/from16 v32, v3

    .line 1225
    .line 1226
    const/4 v3, 0x1

    .line 1227
    :catch_1
    move v8, v3

    .line 1228
    :goto_1d
    mul-int/lit8 v8, v8, 0x32

    .line 1229
    .line 1230
    move-object/from16 v33, v2

    .line 1231
    .line 1232
    const/4 v2, 0x0

    .line 1233
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 1234
    .line 1235
    .line 1236
    move-result v2

    .line 1237
    add-int/2addr v2, v3

    .line 1238
    mul-int/2addr v2, v8

    .line 1239
    add-int/lit8 v8, v2, 0x64

    .line 1240
    .line 1241
    goto :goto_1e

    .line 1242
    :cond_2f
    move-object/from16 v33, v2

    .line 1243
    .line 1244
    move-object/from16 v32, v3

    .line 1245
    .line 1246
    :goto_1e
    if-lez v13, :cond_3a

    .line 1247
    .line 1248
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    .line 1249
    .line 1250
    .line 1251
    move-result v2

    .line 1252
    if-le v13, v2, :cond_30

    .line 1253
    .line 1254
    goto/16 :goto_23

    .line 1255
    .line 1256
    :cond_30
    add-int/lit8 v2, v13, -0x1

    .line 1257
    .line 1258
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v2

    .line 1262
    check-cast v2, Ljava/lang/String;

    .line 1263
    .line 1264
    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/w1;->x0(Ljava/lang/String;)Ljava/util/HashMap;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v2

    .line 1268
    if-nez v2, :cond_31

    .line 1269
    .line 1270
    goto/16 :goto_23

    .line 1271
    .line 1272
    :cond_31
    const-string v3, "grid"

    .line 1273
    .line 1274
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v3

    .line 1278
    instance-of v6, v3, Ljava/util/List;

    .line 1279
    .line 1280
    if-eqz v6, :cond_32

    .line 1281
    .line 1282
    check-cast v3, Ljava/util/List;

    .line 1283
    .line 1284
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1285
    .line 1286
    .line 1287
    move-result v6

    .line 1288
    move-object/from16 v34, v1

    .line 1289
    .line 1290
    const/4 v1, 0x2

    .line 1291
    if-lt v6, v1, :cond_33

    .line 1292
    .line 1293
    const/4 v1, 0x0

    .line 1294
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v1

    .line 1298
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v1

    .line 1302
    const/4 v2, 0x1

    .line 1303
    invoke-static {v1, v2}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 1304
    .line 1305
    .line 1306
    move-result v1

    .line 1307
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v3

    .line 1311
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v3

    .line 1315
    invoke-static {v3, v2}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 1316
    .line 1317
    .line 1318
    move-result v2

    .line 1319
    move-object/from16 v3, v64

    .line 1320
    .line 1321
    goto :goto_1f

    .line 1322
    :cond_32
    move-object/from16 v34, v1

    .line 1323
    .line 1324
    :cond_33
    const-string v1, "0"

    .line 1325
    .line 1326
    move-object/from16 v3, v64

    .line 1327
    .line 1328
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v1

    .line 1332
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v1

    .line 1336
    const/4 v2, 0x0

    .line 1337
    invoke-static {v1, v2}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 1338
    .line 1339
    .line 1340
    move-result v1

    .line 1341
    if-gtz v1, :cond_34

    .line 1342
    .line 1343
    move-object/from16 v64, v3

    .line 1344
    .line 1345
    goto/16 :goto_24

    .line 1346
    .line 1347
    :cond_34
    add-int/lit8 v1, v1, -0x1

    .line 1348
    .line 1349
    div-int/lit8 v2, v1, 0x4

    .line 1350
    .line 1351
    add-int/lit8 v2, v2, 0x1

    .line 1352
    .line 1353
    rem-int/lit8 v1, v1, 0x4

    .line 1354
    .line 1355
    add-int/lit8 v1, v1, 0x1

    .line 1356
    .line 1357
    move/from16 v77, v2

    .line 1358
    .line 1359
    move v2, v1

    .line 1360
    move/from16 v1, v77

    .line 1361
    .line 1362
    :goto_1f
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v6

    .line 1366
    move/from16 v35, v8

    .line 1367
    .line 1368
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1369
    .line 1370
    invoke-virtual {v6, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v6

    .line 1374
    move-object/from16 v8, v68

    .line 1375
    .line 1376
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1377
    .line 1378
    .line 1379
    move-result v37

    .line 1380
    if-eqz v37, :cond_35

    .line 1381
    .line 1382
    add-int/lit8 v2, v2, -0x1

    .line 1383
    .line 1384
    move-object/from16 v64, v3

    .line 1385
    .line 1386
    move-object/from16 v3, v65

    .line 1387
    .line 1388
    goto :goto_20

    .line 1389
    :cond_35
    move-object/from16 v64, v3

    .line 1390
    .line 1391
    move-object/from16 v3, v65

    .line 1392
    .line 1393
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1394
    .line 1395
    .line 1396
    move-result v37

    .line 1397
    if-eqz v37, :cond_36

    .line 1398
    .line 1399
    add-int/lit8 v2, v2, 0x1

    .line 1400
    .line 1401
    :goto_20
    move v6, v2

    .line 1402
    move-object/from16 v65, v3

    .line 1403
    .line 1404
    move-object/from16 v2, v41

    .line 1405
    .line 1406
    goto :goto_22

    .line 1407
    :cond_36
    move/from16 v37, v2

    .line 1408
    .line 1409
    move-object/from16 v2, v41

    .line 1410
    .line 1411
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1412
    .line 1413
    .line 1414
    move-result v38

    .line 1415
    if-eqz v38, :cond_37

    .line 1416
    .line 1417
    add-int/lit8 v1, v1, -0x1

    .line 1418
    .line 1419
    move-object/from16 v65, v3

    .line 1420
    .line 1421
    move-object/from16 v3, v62

    .line 1422
    .line 1423
    goto :goto_21

    .line 1424
    :cond_37
    move-object/from16 v65, v3

    .line 1425
    .line 1426
    move-object/from16 v3, v62

    .line 1427
    .line 1428
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1429
    .line 1430
    .line 1431
    move-result v6

    .line 1432
    if-eqz v6, :cond_39

    .line 1433
    .line 1434
    add-int/lit8 v1, v1, 0x1

    .line 1435
    .line 1436
    :goto_21
    move-object/from16 v62, v3

    .line 1437
    .line 1438
    move/from16 v6, v37

    .line 1439
    .line 1440
    :goto_22
    const/4 v3, 0x1

    .line 1441
    move-object/from16 v37, v5

    .line 1442
    .line 1443
    if-lt v1, v3, :cond_3b

    .line 1444
    .line 1445
    const/4 v5, 0x6

    .line 1446
    if-gt v1, v5, :cond_3b

    .line 1447
    .line 1448
    if-lt v6, v3, :cond_3b

    .line 1449
    .line 1450
    const/4 v3, 0x4

    .line 1451
    if-le v6, v3, :cond_38

    .line 1452
    .line 1453
    goto :goto_25

    .line 1454
    :cond_38
    add-int/lit8 v1, v1, -0x1

    .line 1455
    .line 1456
    mul-int/2addr v1, v3

    .line 1457
    add-int/2addr v1, v6

    .line 1458
    goto :goto_26

    .line 1459
    :cond_39
    move-object/from16 v62, v3

    .line 1460
    .line 1461
    move-object/from16 v37, v5

    .line 1462
    .line 1463
    goto :goto_25

    .line 1464
    :cond_3a
    :goto_23
    move-object/from16 v34, v1

    .line 1465
    .line 1466
    :goto_24
    move-object/from16 v37, v5

    .line 1467
    .line 1468
    move/from16 v35, v8

    .line 1469
    .line 1470
    move-object/from16 v2, v41

    .line 1471
    .line 1472
    move-object/from16 v8, v68

    .line 1473
    .line 1474
    :cond_3b
    :goto_25
    const/4 v1, 0x0

    .line 1475
    :goto_26
    if-lez v1, :cond_54

    .line 1476
    .line 1477
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1478
    .line 1479
    .line 1480
    move-result v0

    .line 1481
    if-eqz v0, :cond_3c

    .line 1482
    .line 1483
    move-object/from16 v14, p1

    .line 1484
    .line 1485
    move-object/from16 v41, v2

    .line 1486
    .line 1487
    move-object/from16 v68, v8

    .line 1488
    .line 1489
    move-object v1, v9

    .line 1490
    move-object v2, v12

    .line 1491
    move-object/from16 v0, v29

    .line 1492
    .line 1493
    move-object/from16 v12, v32

    .line 1494
    .line 1495
    move-object/from16 v8, v33

    .line 1496
    .line 1497
    move-object/from16 v9, v37

    .line 1498
    .line 1499
    move-object/from16 v15, v52

    .line 1500
    .line 1501
    goto/16 :goto_37

    .line 1502
    .line 1503
    :cond_3c
    const/4 v0, 0x0

    .line 1504
    aget v0, v22, v0

    .line 1505
    .line 1506
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    .line 1507
    .line 1508
    .line 1509
    move-result v3

    .line 1510
    add-int/2addr v3, v0

    .line 1511
    const/4 v0, 0x1

    .line 1512
    add-int/2addr v3, v0

    .line 1513
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 1514
    .line 1515
    .line 1516
    move-result v0

    .line 1517
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1518
    .line 1519
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1520
    .line 1521
    .line 1522
    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v5

    .line 1526
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    .line 1528
    .line 1529
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1530
    .line 1531
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v0

    .line 1535
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v0

    .line 1539
    const-string v6, "%03d"

    .line 1540
    .line 1541
    invoke-static {v5, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v0

    .line 1545
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    .line 1547
    .line 1548
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1549
    .line 1550
    .line 1551
    move-result-object v0

    .line 1552
    invoke-static {v10, v11}, Lcom/sgscq/vpn/h5;->p0(Ljava/lang/String;Ljava/util/List;)Z

    .line 1553
    .line 1554
    .line 1555
    move-result v3

    .line 1556
    if-eqz v3, :cond_3d

    .line 1557
    .line 1558
    const/4 v3, 0x1

    .line 1559
    goto :goto_27

    .line 1560
    :cond_3d
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    .line 1561
    .line 1562
    .line 1563
    move-result v3

    .line 1564
    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    .line 1565
    .line 1566
    .line 1567
    move-result v3

    .line 1568
    const/4 v5, 0x0

    .line 1569
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 1570
    .line 1571
    .line 1572
    move-result v3

    .line 1573
    mul-int/lit8 v3, v3, 0x3

    .line 1574
    .line 1575
    :goto_27
    invoke-static {v10, v11}, Lcom/sgscq/vpn/h5;->p0(Ljava/lang/String;Ljava/util/List;)Z

    .line 1576
    .line 1577
    .line 1578
    move-result v5

    .line 1579
    if-eqz v5, :cond_40

    .line 1580
    .line 1581
    if-eqz v9, :cond_3f

    .line 1582
    .line 1583
    if-lez v13, :cond_3f

    .line 1584
    .line 1585
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    .line 1586
    .line 1587
    .line 1588
    move-result v5

    .line 1589
    if-le v13, v5, :cond_3e

    .line 1590
    .line 1591
    goto :goto_28

    .line 1592
    :cond_3e
    add-int/lit8 v13, v13, -0x1

    .line 1593
    .line 1594
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1595
    .line 1596
    .line 1597
    move-result-object v5

    .line 1598
    check-cast v5, Ljava/lang/String;

    .line 1599
    .line 1600
    invoke-static {v5, v9}, Lcom/sgscq/vpn/h5;->P0(Ljava/lang/String;Ljava/util/Map;)I

    .line 1601
    .line 1602
    .line 1603
    move-result v5

    .line 1604
    const/4 v6, 0x0

    .line 1605
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 1606
    .line 1607
    .line 1608
    move-result v5

    .line 1609
    move v6, v5

    .line 1610
    move-object/from16 v9, v53

    .line 1611
    .line 1612
    move-object/from16 v5, v54

    .line 1613
    .line 1614
    goto :goto_2d

    .line 1615
    :cond_3f
    :goto_28
    move-object/from16 v5, v54

    .line 1616
    .line 1617
    goto :goto_2a

    .line 1618
    :cond_40
    move-object/from16 v5, v54

    .line 1619
    .line 1620
    if-eqz v10, :cond_43

    .line 1621
    .line 1622
    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1623
    .line 1624
    .line 1625
    move-result v6

    .line 1626
    if-eqz v6, :cond_43

    .line 1627
    .line 1628
    if-nez v9, :cond_41

    .line 1629
    .line 1630
    goto :goto_2a

    .line 1631
    :cond_41
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    .line 1632
    .line 1633
    .line 1634
    move-result v6

    .line 1635
    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    .line 1636
    .line 1637
    .line 1638
    move-result v6

    .line 1639
    const/4 v10, 0x0

    .line 1640
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    .line 1641
    .line 1642
    .line 1643
    move-result v6

    .line 1644
    const/4 v11, 0x0

    .line 1645
    :goto_29
    if-ge v10, v6, :cond_42

    .line 1646
    .line 1647
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1648
    .line 1649
    .line 1650
    move-result-object v13

    .line 1651
    check-cast v13, Ljava/lang/String;

    .line 1652
    .line 1653
    invoke-static {v13, v9}, Lcom/sgscq/vpn/h5;->P0(Ljava/lang/String;Ljava/util/Map;)I

    .line 1654
    .line 1655
    .line 1656
    move-result v13

    .line 1657
    add-int/2addr v11, v13

    .line 1658
    add-int/lit8 v10, v10, 0x1

    .line 1659
    .line 1660
    goto :goto_29

    .line 1661
    :cond_42
    mul-int/lit8 v6, v6, 0x3

    .line 1662
    .line 1663
    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    .line 1664
    .line 1665
    .line 1666
    move-result v6

    .line 1667
    const/4 v9, 0x0

    .line 1668
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    .line 1669
    .line 1670
    .line 1671
    move-result v6

    .line 1672
    goto :goto_2b

    .line 1673
    :cond_43
    if-nez v9, :cond_44

    .line 1674
    .line 1675
    :goto_2a
    const/4 v6, 0x0

    .line 1676
    :goto_2b
    move-object/from16 v9, v53

    .line 1677
    .line 1678
    goto :goto_2d

    .line 1679
    :cond_44
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    .line 1680
    .line 1681
    .line 1682
    move-result v6

    .line 1683
    const/4 v10, 0x0

    .line 1684
    const/4 v11, 0x0

    .line 1685
    :goto_2c
    if-ge v10, v6, :cond_45

    .line 1686
    .line 1687
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1688
    .line 1689
    .line 1690
    move-result-object v13

    .line 1691
    check-cast v13, Ljava/lang/String;

    .line 1692
    .line 1693
    invoke-static {v13, v9}, Lcom/sgscq/vpn/h5;->P0(Ljava/lang/String;Ljava/util/Map;)I

    .line 1694
    .line 1695
    .line 1696
    move-result v13

    .line 1697
    add-int/2addr v11, v13

    .line 1698
    add-int/lit8 v10, v10, 0x1

    .line 1699
    .line 1700
    goto :goto_2c

    .line 1701
    :cond_45
    mul-int/lit8 v6, v6, 0x3

    .line 1702
    .line 1703
    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    .line 1704
    .line 1705
    .line 1706
    move-result v6

    .line 1707
    const/4 v9, 0x0

    .line 1708
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    .line 1709
    .line 1710
    .line 1711
    move-result v6

    .line 1712
    goto :goto_2b

    .line 1713
    :goto_2d
    if-eqz v9, :cond_4b

    .line 1714
    .line 1715
    if-nez v0, :cond_46

    .line 1716
    .line 1717
    goto :goto_2f

    .line 1718
    :cond_46
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    .line 1720
    .line 1721
    move-result-object v10

    .line 1722
    if-nez v10, :cond_47

    .line 1723
    .line 1724
    invoke-static {v0}, Lcom/sgscq/vpn/h5;->E0(Ljava/lang/String;)Ljava/lang/String;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v10

    .line 1728
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1729
    .line 1730
    .line 1731
    move-result-object v10

    .line 1732
    :cond_47
    instance-of v11, v10, Ljava/lang/Boolean;

    .line 1733
    .line 1734
    if-eqz v11, :cond_48

    .line 1735
    .line 1736
    check-cast v10, Ljava/lang/Boolean;

    .line 1737
    .line 1738
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1739
    .line 1740
    .line 1741
    move-result v10

    .line 1742
    goto :goto_30

    .line 1743
    :cond_48
    instance-of v11, v10, Ljava/lang/Number;

    .line 1744
    .line 1745
    if-eqz v11, :cond_49

    .line 1746
    .line 1747
    check-cast v10, Ljava/lang/Number;

    .line 1748
    .line 1749
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 1750
    .line 1751
    .line 1752
    move-result v10

    .line 1753
    if-eqz v10, :cond_4b

    .line 1754
    .line 1755
    goto :goto_2e

    .line 1756
    :cond_49
    instance-of v11, v10, Ljava/lang/String;

    .line 1757
    .line 1758
    if-eqz v11, :cond_4b

    .line 1759
    .line 1760
    check-cast v10, Ljava/lang/String;

    .line 1761
    .line 1762
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v10

    .line 1766
    const-string v11, "true"

    .line 1767
    .line 1768
    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1769
    .line 1770
    .line 1771
    move-result v11

    .line 1772
    if-nez v11, :cond_4a

    .line 1773
    .line 1774
    const-string v11, "1"

    .line 1775
    .line 1776
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1777
    .line 1778
    .line 1779
    move-result v10

    .line 1780
    if-eqz v10, :cond_4b

    .line 1781
    .line 1782
    :cond_4a
    :goto_2e
    const/4 v10, 0x1

    .line 1783
    goto :goto_30

    .line 1784
    :cond_4b
    :goto_2f
    const/4 v10, 0x0

    .line 1785
    :goto_30
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1786
    .line 1787
    .line 1788
    move-result-object v11

    .line 1789
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1790
    .line 1791
    invoke-virtual {v11, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 1792
    .line 1793
    .line 1794
    move-result-object v11

    .line 1795
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1796
    .line 1797
    .line 1798
    move-result v12

    .line 1799
    if-eqz v12, :cond_4c

    .line 1800
    .line 1801
    const/4 v11, 0x1

    .line 1802
    goto :goto_31

    .line 1803
    :cond_4c
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1804
    .line 1805
    .line 1806
    move-result v11

    .line 1807
    if-eqz v11, :cond_4d

    .line 1808
    .line 1809
    const/4 v11, 0x3

    .line 1810
    goto :goto_31

    .line 1811
    :cond_4d
    const/4 v11, 0x0

    .line 1812
    :goto_31
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    .line 1813
    .line 1814
    .line 1815
    move-result v12

    .line 1816
    if-lez v12, :cond_4e

    .line 1817
    .line 1818
    move-object/from16 v12, v59

    .line 1819
    .line 1820
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1821
    .line 1822
    .line 1823
    goto :goto_32

    .line 1824
    :cond_4e
    move-object/from16 v12, v59

    .line 1825
    .line 1826
    :goto_32
    const/4 v13, 0x0

    .line 1827
    aget v15, v22, v13

    .line 1828
    .line 1829
    add-int/lit8 v15, v15, 0x1

    .line 1830
    .line 1831
    aput v15, v22, v13

    .line 1832
    .line 1833
    if-nez v0, :cond_4f

    .line 1834
    .line 1835
    move-object/from16 v13, v23

    .line 1836
    .line 1837
    goto :goto_33

    .line 1838
    :cond_4f
    move-object v13, v0

    .line 1839
    :goto_33
    const-string v15, "01"

    .line 1840
    .line 1841
    invoke-virtual {v13, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1842
    .line 1843
    .line 1844
    move-result-object v13

    .line 1845
    if-eqz v0, :cond_51

    .line 1846
    .line 1847
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1848
    .line 1849
    .line 1850
    move-result v15

    .line 1851
    if-eqz v15, :cond_50

    .line 1852
    .line 1853
    goto :goto_34

    .line 1854
    :cond_50
    move-object v15, v0

    .line 1855
    goto :goto_35

    .line 1856
    :cond_51
    :goto_34
    move-object v15, v14

    .line 1857
    :goto_35
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1858
    .line 1859
    .line 1860
    move-result-object v38

    .line 1861
    move-object/from16 v41, v2

    .line 1862
    .line 1863
    invoke-static/range {v38 .. v38}, Lcom/sgscq/vpn/h5;->k(Ljava/lang/Object;)Ljava/lang/String;

    .line 1864
    .line 1865
    .line 1866
    move-result-object v2

    .line 1867
    move-object/from16 v54, v5

    .line 1868
    .line 1869
    new-instance v5, Lcom/sgscq/vpn/y1;

    .line 1870
    .line 1871
    invoke-direct {v5}, Lcom/sgscq/vpn/y1;-><init>()V

    .line 1872
    .line 1873
    .line 1874
    move-object/from16 v68, v8

    .line 1875
    .line 1876
    const-string v8, "box"

    .line 1877
    .line 1878
    invoke-virtual {v5, v4, v8}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    .line 1880
    .line 1881
    const-string v8, "TreasureBox"

    .line 1882
    .line 1883
    move-object/from16 v53, v9

    .line 1884
    .line 1885
    move-object/from16 v9, v37

    .line 1886
    .line 1887
    invoke-virtual {v5, v9, v8}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    .line 1889
    .line 1890
    move-object/from16 v8, v33

    .line 1891
    .line 1892
    invoke-virtual {v5, v8, v0}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    .line 1894
    .line 1895
    move-object/from16 v59, v12

    .line 1896
    .line 1897
    move-object/from16 v12, v32

    .line 1898
    .line 1899
    invoke-virtual {v5, v12, v0}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    .line 1901
    .line 1902
    move-object/from16 v0, v64

    .line 1903
    .line 1904
    invoke-virtual {v5, v0, v1}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 1905
    .line 1906
    .line 1907
    move-object/from16 v0, v29

    .line 1908
    .line 1909
    invoke-virtual {v5, v0, v1}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 1910
    .line 1911
    .line 1912
    const-string v1, "name"

    .line 1913
    .line 1914
    invoke-virtual {v5, v1, v13}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    .line 1916
    .line 1917
    const-string v1, "open_need_star"

    .line 1918
    .line 1919
    invoke-virtual {v5, v1, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 1920
    .line 1921
    .line 1922
    const-string v1, "has_star"

    .line 1923
    .line 1924
    invoke-virtual {v5, v1, v6}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 1925
    .line 1926
    .line 1927
    if-eqz v10, :cond_52

    .line 1928
    .line 1929
    const/4 v1, 0x3

    .line 1930
    goto :goto_36

    .line 1931
    :cond_52
    if-lt v6, v3, :cond_53

    .line 1932
    .line 1933
    const/4 v1, 0x2

    .line 1934
    goto :goto_36

    .line 1935
    :cond_53
    const/4 v1, 0x1

    .line 1936
    :goto_36
    const-string v3, "can_open"

    .line 1937
    .line 1938
    invoke-virtual {v5, v3, v1}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 1939
    .line 1940
    .line 1941
    const-string v1, "is_claimed"

    .line 1942
    .line 1943
    invoke-virtual {v5, v1, v10}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    .line 1944
    .line 1945
    .line 1946
    const-string v1, "claimed"

    .line 1947
    .line 1948
    invoke-virtual {v5, v1, v10}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    .line 1949
    .line 1950
    .line 1951
    const-string v1, "direction"

    .line 1952
    .line 1953
    invoke-virtual {v5, v1, v2}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    .line 1955
    .line 1956
    const-string v1, "dungeon_direction"

    .line 1957
    .line 1958
    invoke-virtual {v5, v1, v11}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 1959
    .line 1960
    .line 1961
    const-string v1, "item_id"

    .line 1962
    .line 1963
    invoke-virtual {v5, v1, v15}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    .line 1965
    .line 1966
    const-string v1, "id_item"

    .line 1967
    .line 1968
    invoke-virtual {v5, v1, v15}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    .line 1970
    .line 1971
    const-string v1, "item_num"

    .line 1972
    .line 1973
    move/from16 v2, v35

    .line 1974
    .line 1975
    invoke-virtual {v5, v1, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 1976
    .line 1977
    .line 1978
    const-string v1, "num"

    .line 1979
    .line 1980
    invoke-virtual {v5, v1, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 1981
    .line 1982
    .line 1983
    const-string v1, "reward_item_id"

    .line 1984
    .line 1985
    invoke-virtual {v5, v1, v14}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    .line 1987
    .line 1988
    const-string v1, "reward_num"

    .line 1989
    .line 1990
    invoke-virtual {v5, v1, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 1991
    .line 1992
    .line 1993
    const/4 v1, 0x1

    .line 1994
    move-object/from16 v14, p1

    .line 1995
    .line 1996
    invoke-virtual {v5, v14, v1}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    .line 1997
    .line 1998
    .line 1999
    move-object/from16 v15, v52

    .line 2000
    .line 2001
    invoke-virtual {v5, v15, v1}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    .line 2002
    .line 2003
    .line 2004
    invoke-virtual {v5}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    .line 2005
    .line 2006
    .line 2007
    move-result-object v1

    .line 2008
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2009
    .line 2010
    .line 2011
    move-object v6, v0

    .line 2012
    move-object v2, v8

    .line 2013
    move-object v5, v9

    .line 2014
    move-object v3, v12

    .line 2015
    move-object/from16 v8, v20

    .line 2016
    .line 2017
    move/from16 v20, v27

    .line 2018
    .line 2019
    move-object/from16 v0, v31

    .line 2020
    .line 2021
    move-object/from16 v1, v34

    .line 2022
    .line 2023
    goto/16 :goto_19

    .line 2024
    .line 2025
    :cond_54
    move-object/from16 v14, p1

    .line 2026
    .line 2027
    move-object/from16 v41, v2

    .line 2028
    .line 2029
    move-object/from16 v68, v8

    .line 2030
    .line 2031
    move-object/from16 v0, v29

    .line 2032
    .line 2033
    move-object/from16 v12, v32

    .line 2034
    .line 2035
    move-object/from16 v8, v33

    .line 2036
    .line 2037
    move-object/from16 v9, v37

    .line 2038
    .line 2039
    move-object/from16 v15, v52

    .line 2040
    .line 2041
    move-object/from16 v1, v16

    .line 2042
    .line 2043
    move-object/from16 v2, v28

    .line 2044
    .line 2045
    move-object/from16 v10, v36

    .line 2046
    .line 2047
    :goto_37
    move-object v6, v0

    .line 2048
    move-object v5, v9

    .line 2049
    move-object v3, v12

    .line 2050
    move-object/from16 p1, v14

    .line 2051
    .line 2052
    move-object/from16 v52, v15

    .line 2053
    .line 2054
    move-object/from16 v0, v31

    .line 2055
    .line 2056
    move-object v9, v1

    .line 2057
    move-object v12, v2

    .line 2058
    move-object v2, v8

    .line 2059
    move-object/from16 v8, v20

    .line 2060
    .line 2061
    move/from16 v20, v27

    .line 2062
    .line 2063
    move-object/from16 v1, v34

    .line 2064
    .line 2065
    goto/16 :goto_1a

    .line 2066
    .line 2067
    :cond_55
    move-object/from16 v14, p1

    .line 2068
    .line 2069
    move-object/from16 v31, v0

    .line 2070
    .line 2071
    move-object v8, v2

    .line 2072
    move-object v12, v3

    .line 2073
    move-object v9, v5

    .line 2074
    move-object v0, v6

    .line 2075
    move/from16 v27, v20

    .line 2076
    .line 2077
    move-object/from16 v15, v52

    .line 2078
    .line 2079
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2080
    .line 2081
    .line 2082
    move-result-object v1

    .line 2083
    goto :goto_39

    .line 2084
    :cond_56
    :goto_38
    move-object/from16 v14, p1

    .line 2085
    .line 2086
    move-object/from16 v31, v0

    .line 2087
    .line 2088
    move-object v8, v2

    .line 2089
    move-object v12, v3

    .line 2090
    move-object v9, v5

    .line 2091
    move-object v0, v6

    .line 2092
    move/from16 v27, v20

    .line 2093
    .line 2094
    move-object/from16 v15, v52

    .line 2095
    .line 2096
    move-object/from16 v1, v23

    .line 2097
    .line 2098
    :goto_39
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 2099
    .line 2100
    .line 2101
    move-result v2

    .line 2102
    if-nez v2, :cond_65

    .line 2103
    .line 2104
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 2105
    .line 2106
    .line 2107
    move-result v2

    .line 2108
    if-eqz v2, :cond_57

    .line 2109
    .line 2110
    goto/16 :goto_41

    .line 2111
    .line 2112
    :cond_57
    new-instance v2, Ljava/util/ArrayList;

    .line 2113
    .line 2114
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2115
    .line 2116
    .line 2117
    const/4 v3, 0x0

    .line 2118
    const/4 v5, 0x0

    .line 2119
    const/4 v6, 0x0

    .line 2120
    const/4 v7, 0x0

    .line 2121
    const/4 v10, -0x1

    .line 2122
    :goto_3a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 2123
    .line 2124
    .line 2125
    move-result v11

    .line 2126
    if-ge v7, v11, :cond_5f

    .line 2127
    .line 2128
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 2129
    .line 2130
    .line 2131
    move-result v11

    .line 2132
    if-eqz v5, :cond_5a

    .line 2133
    .line 2134
    if-eqz v6, :cond_58

    .line 2135
    .line 2136
    const/4 v6, 0x0

    .line 2137
    goto :goto_3b

    .line 2138
    :cond_58
    const/16 v13, 0x5c

    .line 2139
    .line 2140
    if-ne v11, v13, :cond_59

    .line 2141
    .line 2142
    const/4 v6, 0x1

    .line 2143
    goto :goto_3b

    .line 2144
    :cond_59
    const/16 v13, 0x22

    .line 2145
    .line 2146
    if-ne v11, v13, :cond_5e

    .line 2147
    .line 2148
    const/4 v5, 0x0

    .line 2149
    goto :goto_3b

    .line 2150
    :cond_5a
    const/16 v13, 0x22

    .line 2151
    .line 2152
    if-ne v11, v13, :cond_5b

    .line 2153
    .line 2154
    const/4 v5, 0x1

    .line 2155
    goto :goto_3b

    .line 2156
    :cond_5b
    const/16 v13, 0x7b

    .line 2157
    .line 2158
    if-ne v11, v13, :cond_5d

    .line 2159
    .line 2160
    if-nez v3, :cond_5c

    .line 2161
    .line 2162
    move v10, v7

    .line 2163
    :cond_5c
    add-int/lit8 v3, v3, 0x1

    .line 2164
    .line 2165
    goto :goto_3b

    .line 2166
    :cond_5d
    const/16 v13, 0x7d

    .line 2167
    .line 2168
    if-ne v11, v13, :cond_5e

    .line 2169
    .line 2170
    add-int/lit8 v3, v3, -0x1

    .line 2171
    .line 2172
    if-nez v3, :cond_5e

    .line 2173
    .line 2174
    if-ltz v10, :cond_5e

    .line 2175
    .line 2176
    add-int/lit8 v11, v7, 0x1

    .line 2177
    .line 2178
    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 2179
    .line 2180
    .line 2181
    move-result-object v10

    .line 2182
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2183
    .line 2184
    .line 2185
    const/4 v10, -0x1

    .line 2186
    :cond_5e
    :goto_3b
    add-int/lit8 v7, v7, 0x1

    .line 2187
    .line 2188
    goto :goto_3a

    .line 2189
    :cond_5f
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2190
    .line 2191
    .line 2192
    move-result-object v1

    .line 2193
    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2194
    .line 2195
    .line 2196
    move-result v2

    .line 2197
    if-eqz v2, :cond_65

    .line 2198
    .line 2199
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2200
    .line 2201
    .line 2202
    move-result-object v2

    .line 2203
    check-cast v2, Ljava/lang/String;

    .line 2204
    .line 2205
    new-instance v3, Lcom/sgscq/vpn/f5;

    .line 2206
    .line 2207
    if-eqz v2, :cond_61

    .line 2208
    .line 2209
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 2210
    .line 2211
    .line 2212
    move-result v5

    .line 2213
    if-eqz v5, :cond_60

    .line 2214
    .line 2215
    goto :goto_3d

    .line 2216
    :cond_60
    :try_start_2
    new-instance v5, Lorg/json/JSONObject;

    .line 2217
    .line 2218
    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2219
    .line 2220
    .line 2221
    const v6, 0x7fffffff

    .line 2222
    .line 2223
    .line 2224
    :try_start_3
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 2225
    .line 2226
    .line 2227
    move-result v5
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2228
    goto :goto_3e

    .line 2229
    :catch_2
    :cond_61
    :goto_3d
    const v6, 0x7fffffff

    .line 2230
    .line 2231
    .line 2232
    :catch_3
    move v5, v6

    .line 2233
    :goto_3e
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    .line 2234
    .line 2235
    .line 2236
    move-result v6

    .line 2237
    if-eqz v2, :cond_64

    .line 2238
    .line 2239
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 2240
    .line 2241
    .line 2242
    move-result v7

    .line 2243
    if-eqz v7, :cond_62

    .line 2244
    .line 2245
    goto :goto_3f

    .line 2246
    :cond_62
    :try_start_4
    new-instance v7, Lorg/json/JSONObject;

    .line 2247
    .line 2248
    invoke-direct {v7, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2249
    .line 2250
    .line 2251
    const-string v10, "node"

    .line 2252
    .line 2253
    invoke-virtual {v7, v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2254
    .line 2255
    .line 2256
    move-result-object v10

    .line 2257
    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2258
    .line 2259
    .line 2260
    move-result-object v10

    .line 2261
    const-string v11, "dungeon_id"
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2262
    .line 2263
    move-object/from16 v29, v0

    .line 2264
    .line 2265
    move-object/from16 v13, v23

    .line 2266
    .line 2267
    :try_start_5
    invoke-virtual {v7, v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2268
    .line 2269
    .line 2270
    move-result-object v0

    .line 2271
    invoke-virtual {v7, v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2272
    .line 2273
    .line 2274
    move-result-object v0

    .line 2275
    invoke-virtual {v7, v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2276
    .line 2277
    .line 2278
    move-result-object v0

    .line 2279
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 2280
    .line 2281
    .line 2282
    move-result v7

    .line 2283
    if-eqz v7, :cond_63

    .line 2284
    .line 2285
    goto :goto_40

    .line 2286
    :cond_63
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2287
    .line 2288
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2289
    .line 2290
    .line 2291
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2292
    .line 2293
    .line 2294
    const-string v10, ":"

    .line 2295
    .line 2296
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2297
    .line 2298
    .line 2299
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2300
    .line 2301
    .line 2302
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2303
    .line 2304
    .line 2305
    move-result-object v10
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 2306
    goto :goto_40

    .line 2307
    :catch_4
    :cond_64
    :goto_3f
    move-object/from16 v29, v0

    .line 2308
    .line 2309
    move-object/from16 v13, v23

    .line 2310
    .line 2311
    :catch_5
    const-string v10, "unknown"

    .line 2312
    .line 2313
    :goto_40
    invoke-direct {v3, v5, v6, v10, v2}, Lcom/sgscq/vpn/f5;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 2314
    .line 2315
    .line 2316
    move-object/from16 v0, v31

    .line 2317
    .line 2318
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2319
    .line 2320
    .line 2321
    move-object/from16 v23, v13

    .line 2322
    .line 2323
    move-object/from16 v0, v29

    .line 2324
    .line 2325
    goto/16 :goto_3c

    .line 2326
    .line 2327
    :cond_65
    :goto_41
    move-object/from16 v13, v23

    .line 2328
    .line 2329
    move-object/from16 v0, v31

    .line 2330
    .line 2331
    move-object v1, v0

    .line 2332
    move-object/from16 v23, v13

    .line 2333
    .line 2334
    move-object/from16 p1, v14

    .line 2335
    .line 2336
    move-object/from16 v2, v16

    .line 2337
    .line 2338
    move-object/from16 v3, v17

    .line 2339
    .line 2340
    move-object/from16 v34, v18

    .line 2341
    .line 2342
    move/from16 v5, v21

    .line 2343
    .line 2344
    move-object/from16 v0, v22

    .line 2345
    .line 2346
    move-object/from16 v11, v25

    .line 2347
    .line 2348
    move-object/from16 v8, v26

    .line 2349
    .line 2350
    move/from16 v4, v27

    .line 2351
    .line 2352
    move-object/from16 v12, v28

    .line 2353
    .line 2354
    move/from16 v14, v49

    .line 2355
    .line 2356
    move-object/from16 v17, v51

    .line 2357
    .line 2358
    move-object/from16 v20, v53

    .line 2359
    .line 2360
    move-object/from16 v22, v54

    .line 2361
    .line 2362
    move-object/from16 v21, v55

    .line 2363
    .line 2364
    move-object/from16 v27, v56

    .line 2365
    .line 2366
    move-object/from16 v18, v57

    .line 2367
    .line 2368
    move-object/from16 v26, v58

    .line 2369
    .line 2370
    move-object/from16 v29, v60

    .line 2371
    .line 2372
    move-object/from16 v33, v61

    .line 2373
    .line 2374
    move-object/from16 v9, v62

    .line 2375
    .line 2376
    move-object/from16 v28, v63

    .line 2377
    .line 2378
    move-object/from16 v32, v64

    .line 2379
    .line 2380
    move-object/from16 v10, v65

    .line 2381
    .line 2382
    move-object/from16 v25, v66

    .line 2383
    .line 2384
    move-object/from16 v31, v67

    .line 2385
    .line 2386
    move-object/from16 v13, v68

    .line 2387
    .line 2388
    move-object/from16 v16, v15

    .line 2389
    .line 2390
    move-object/from16 v15, v41

    .line 2391
    .line 2392
    goto/16 :goto_d

    .line 2393
    .line 2394
    :cond_66
    move-object/from16 v14, p1

    .line 2395
    .line 2396
    move-object v0, v1

    .line 2397
    move-object/from16 v59, v7

    .line 2398
    .line 2399
    move-object/from16 v15, v16

    .line 2400
    .line 2401
    move-object/from16 v51, v17

    .line 2402
    .line 2403
    move-object/from16 v57, v18

    .line 2404
    .line 2405
    move-object/from16 v55, v21

    .line 2406
    .line 2407
    move-object/from16 v66, v25

    .line 2408
    .line 2409
    move-object/from16 v58, v26

    .line 2410
    .line 2411
    move-object/from16 v56, v27

    .line 2412
    .line 2413
    move-object/from16 v63, v28

    .line 2414
    .line 2415
    move-object/from16 v60, v29

    .line 2416
    .line 2417
    move-object/from16 v67, v31

    .line 2418
    .line 2419
    move-object/from16 v61, v33

    .line 2420
    .line 2421
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 2422
    .line 2423
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2424
    .line 2425
    .line 2426
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2427
    .line 2428
    .line 2429
    move-result-object v2

    .line 2430
    :cond_67
    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 2431
    .line 2432
    .line 2433
    move-result v3

    .line 2434
    if-eqz v3, :cond_6a

    .line 2435
    .line 2436
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2437
    .line 2438
    .line 2439
    move-result-object v3

    .line 2440
    check-cast v3, Lcom/sgscq/vpn/f5;

    .line 2441
    .line 2442
    if-eqz v3, :cond_67

    .line 2443
    .line 2444
    iget v4, v3, Lcom/sgscq/vpn/f5;->a:I

    .line 2445
    .line 2446
    const v5, 0x7fffffff

    .line 2447
    .line 2448
    .line 2449
    if-ne v4, v5, :cond_68

    .line 2450
    .line 2451
    goto :goto_42

    .line 2452
    :cond_68
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2453
    .line 2454
    .line 2455
    move-result-object v5

    .line 2456
    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2457
    .line 2458
    .line 2459
    move-result-object v5

    .line 2460
    check-cast v5, Ljava/util/List;

    .line 2461
    .line 2462
    if-nez v5, :cond_69

    .line 2463
    .line 2464
    new-instance v5, Ljava/util/ArrayList;

    .line 2465
    .line 2466
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2467
    .line 2468
    .line 2469
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2470
    .line 2471
    .line 2472
    move-result-object v4

    .line 2473
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2474
    .line 2475
    .line 2476
    :cond_69
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2477
    .line 2478
    .line 2479
    goto :goto_42

    .line 2480
    :cond_6a
    new-instance v2, Ljava/util/ArrayList;

    .line 2481
    .line 2482
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2483
    .line 2484
    .line 2485
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 2486
    .line 2487
    .line 2488
    move-result-object v1

    .line 2489
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2490
    .line 2491
    .line 2492
    move-result-object v1

    .line 2493
    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2494
    .line 2495
    .line 2496
    move-result v3

    .line 2497
    if-eqz v3, :cond_6e

    .line 2498
    .line 2499
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2500
    .line 2501
    .line 2502
    move-result-object v3

    .line 2503
    check-cast v3, Ljava/util/Map$Entry;

    .line 2504
    .line 2505
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2506
    .line 2507
    .line 2508
    move-result-object v4

    .line 2509
    check-cast v4, Ljava/util/List;

    .line 2510
    .line 2511
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 2512
    .line 2513
    .line 2514
    move-result v5

    .line 2515
    const/4 v6, 0x2

    .line 2516
    if-ge v5, v6, :cond_6b

    .line 2517
    .line 2518
    goto :goto_43

    .line 2519
    :cond_6b
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2520
    .line 2521
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2522
    .line 2523
    .line 2524
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2525
    .line 2526
    .line 2527
    move-result-object v4

    .line 2528
    :goto_44
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 2529
    .line 2530
    .line 2531
    move-result v6

    .line 2532
    if-eqz v6, :cond_6d

    .line 2533
    .line 2534
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2535
    .line 2536
    .line 2537
    move-result-object v6

    .line 2538
    check-cast v6, Lcom/sgscq/vpn/f5;

    .line 2539
    .line 2540
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 2541
    .line 2542
    .line 2543
    move-result v7

    .line 2544
    if-lez v7, :cond_6c

    .line 2545
    .line 2546
    move-object/from16 v7, v59

    .line 2547
    .line 2548
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2549
    .line 2550
    .line 2551
    goto :goto_45

    .line 2552
    :cond_6c
    move-object/from16 v7, v59

    .line 2553
    .line 2554
    :goto_45
    iget-object v6, v6, Lcom/sgscq/vpn/f5;->c:Ljava/lang/String;

    .line 2555
    .line 2556
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2557
    .line 2558
    .line 2559
    move-object/from16 v59, v7

    .line 2560
    .line 2561
    goto :goto_44

    .line 2562
    :cond_6d
    move-object/from16 v7, v59

    .line 2563
    .line 2564
    const-string v4, "chapter="

    .line 2565
    .line 2566
    const-string v6, " position="

    .line 2567
    .line 2568
    move-object/from16 v8, v36

    .line 2569
    .line 2570
    invoke-static {v4, v8, v6}, La/b0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2571
    .line 2572
    .line 2573
    move-result-object v4

    .line 2574
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2575
    .line 2576
    .line 2577
    move-result-object v3

    .line 2578
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2579
    .line 2580
    .line 2581
    const-string v3, " nodes="

    .line 2582
    .line 2583
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2584
    .line 2585
    .line 2586
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2587
    .line 2588
    .line 2589
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2590
    .line 2591
    .line 2592
    move-result-object v3

    .line 2593
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2594
    .line 2595
    .line 2596
    goto :goto_43

    .line 2597
    :cond_6e
    move-object/from16 v8, v36

    .line 2598
    .line 2599
    move-object/from16 v7, v59

    .line 2600
    .line 2601
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2602
    .line 2603
    .line 2604
    move-result-object v1

    .line 2605
    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2606
    .line 2607
    .line 2608
    move-result v2

    .line 2609
    if-eqz v2, :cond_6f

    .line 2610
    .line 2611
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2612
    .line 2613
    .line 2614
    move-result-object v2

    .line 2615
    check-cast v2, Ljava/lang/String;

    .line 2616
    .line 2617
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2618
    .line 2619
    const-string v4, "[ChapterLayout] duplicate dungeon_position "

    .line 2620
    .line 2621
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2622
    .line 2623
    .line 2624
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2625
    .line 2626
    .line 2627
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2628
    .line 2629
    .line 2630
    move-result-object v2

    .line 2631
    const-string v3, "SGSCQ_SRV"

    .line 2632
    .line 2633
    invoke-static {v3, v2}, Lcom/sgscq/vpn/z2;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    .line 2635
    .line 2636
    goto :goto_46

    .line 2637
    :cond_6f
    new-instance v1, Lc/n;

    .line 2638
    .line 2639
    const/4 v2, 0x2

    .line 2640
    invoke-direct {v1, v2}, Lc/n;-><init>(I)V

    .line 2641
    .line 2642
    .line 2643
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2644
    .line 2645
    .line 2646
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2647
    .line 2648
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2649
    .line 2650
    .line 2651
    move-result v2

    .line 2652
    mul-int/lit16 v2, v2, 0x200

    .line 2653
    .line 2654
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2655
    .line 2656
    .line 2657
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2658
    .line 2659
    .line 2660
    move-result-object v0

    .line 2661
    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2662
    .line 2663
    .line 2664
    move-result v2

    .line 2665
    if-eqz v2, :cond_71

    .line 2666
    .line 2667
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2668
    .line 2669
    .line 2670
    move-result-object v2

    .line 2671
    check-cast v2, Lcom/sgscq/vpn/f5;

    .line 2672
    .line 2673
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 2674
    .line 2675
    .line 2676
    move-result v3

    .line 2677
    if-lez v3, :cond_70

    .line 2678
    .line 2679
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2680
    .line 2681
    .line 2682
    :cond_70
    iget-object v2, v2, Lcom/sgscq/vpn/f5;->d:Ljava/lang/String;

    .line 2683
    .line 2684
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2685
    .line 2686
    .line 2687
    goto :goto_47

    .line 2688
    :cond_71
    invoke-static {v8}, Lcom/sgscq/vpn/h5;->d0(Ljava/lang/String;)Ljava/lang/String;

    .line 2689
    .line 2690
    .line 2691
    move-result-object v0

    .line 2692
    move-object/from16 v2, v67

    .line 2693
    .line 2694
    invoke-static {v2, v8}, Lcom/sgscq/vpn/h5;->c0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/lang/String;

    .line 2695
    .line 2696
    .line 2697
    move-result-object v2

    .line 2698
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2699
    .line 2700
    move-object/from16 v12, v51

    .line 2701
    .line 2702
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2703
    .line 2704
    .line 2705
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2706
    .line 2707
    .line 2708
    move-result-object v1

    .line 2709
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2710
    .line 2711
    .line 2712
    move-object/from16 v1, v57

    .line 2713
    .line 2714
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2715
    .line 2716
    .line 2717
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2718
    .line 2719
    .line 2720
    move-result-object v1

    .line 2721
    invoke-static {v8}, Lcom/sgscq/vpn/h5;->Z0(Ljava/lang/String;)Ljava/lang/String;

    .line 2722
    .line 2723
    .line 2724
    move-result-object v3

    .line 2725
    new-instance v4, Lcom/sgscq/vpn/y1;

    .line 2726
    .line 2727
    invoke-direct {v4}, Lcom/sgscq/vpn/y1;-><init>()V

    .line 2728
    .line 2729
    .line 2730
    move-object/from16 v11, v55

    .line 2731
    .line 2732
    invoke-virtual {v4, v11, v3}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2733
    .line 2734
    .line 2735
    move-object/from16 v10, v56

    .line 2736
    .line 2737
    invoke-virtual {v4, v10, v0}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2738
    .line 2739
    .line 2740
    move-object/from16 v0, v58

    .line 2741
    .line 2742
    invoke-virtual {v4, v0, v2}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2743
    .line 2744
    .line 2745
    const-string v0, "chapter_bg"

    .line 2746
    .line 2747
    invoke-virtual {v4, v0, v2}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2748
    .line 2749
    .line 2750
    const/4 v0, 0x1

    .line 2751
    invoke-virtual {v4, v14, v0}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    .line 2752
    .line 2753
    .line 2754
    move/from16 v2, v24

    .line 2755
    .line 2756
    invoke-virtual {v4, v15, v2}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    .line 2757
    .line 2758
    .line 2759
    move-object/from16 v9, v60

    .line 2760
    .line 2761
    invoke-virtual {v4, v9, v3}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2762
    .line 2763
    .line 2764
    move-object/from16 v8, v61

    .line 2765
    .line 2766
    invoke-virtual {v4, v8}, Lcom/sgscq/vpn/y1;->h(Ljava/lang/String;)Lcom/sgscq/vpn/y1;

    .line 2767
    .line 2768
    .line 2769
    move-result-object v3

    .line 2770
    invoke-virtual {v3, v14, v0}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    .line 2771
    .line 2772
    .line 2773
    invoke-virtual {v3, v15, v2}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    .line 2774
    .line 2775
    .line 2776
    invoke-virtual {v3}, Lcom/sgscq/vpn/y1;->c()Lcom/sgscq/vpn/y1;

    .line 2777
    .line 2778
    .line 2779
    move-result-object v0

    .line 2780
    move-object/from16 v7, v63

    .line 2781
    .line 2782
    invoke-virtual {v0, v7, v1}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2783
    .line 2784
    .line 2785
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/h5;->e0()Lcom/sgscq/vpn/c0;

    .line 2786
    .line 2787
    .line 2788
    move-result-object v2

    .line 2789
    invoke-static {v2}, Lcom/sgscq/vpn/h5;->U0(Lcom/sgscq/vpn/c0;)Z

    .line 2790
    .line 2791
    .line 2792
    move-result v2

    .line 2793
    if-eqz v2, :cond_72

    .line 2794
    .line 2795
    move-object/from16 v6, v66

    .line 2796
    .line 2797
    invoke-virtual {v0, v6, v1}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2798
    .line 2799
    .line 2800
    :cond_72
    invoke-virtual {v0}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    .line 2801
    .line 2802
    .line 2803
    move-result-object v0

    .line 2804
    return-object v0

    .line 2805
    :cond_73
    :goto_48
    move-object v12, v3

    .line 2806
    move-object v1, v4

    .line 2807
    move-object v0, v7

    .line 2808
    move-object v7, v10

    .line 2809
    move-object v13, v14

    .line 2810
    move-object/from16 v19, v15

    .line 2811
    .line 2812
    move-object/from16 v14, p1

    .line 2813
    .line 2814
    move-object v15, v2

    .line 2815
    move-object v10, v6

    .line 2816
    move-object v6, v11

    .line 2817
    move-object v11, v5

    .line 2818
    move-object/from16 v77, v9

    .line 2819
    .line 2820
    move-object v9, v8

    .line 2821
    move-object/from16 v8, v77

    .line 2822
    .line 2823
    invoke-static/range {v19 .. v19}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 2824
    .line 2825
    .line 2826
    move-result-object v5

    .line 2827
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/h5;->Z()Ljava/lang/String;

    .line 2828
    .line 2829
    .line 2830
    move-result-object v4

    .line 2831
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 2832
    .line 2833
    .line 2834
    move-result v2

    .line 2835
    if-eqz v2, :cond_74

    .line 2836
    .line 2837
    goto/16 :goto_49

    .line 2838
    .line 2839
    :cond_74
    invoke-virtual {v5, v4, v4}, Lcom/sgscq/vpn/w1;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 2840
    .line 2841
    .line 2842
    move-result-object v2

    .line 2843
    if-eqz v2, :cond_78

    .line 2844
    .line 2845
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 2846
    .line 2847
    .line 2848
    move-result v3

    .line 2849
    if-eqz v3, :cond_75

    .line 2850
    .line 2851
    goto/16 :goto_49

    .line 2852
    .line 2853
    :cond_75
    const/4 v3, 0x0

    .line 2854
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2855
    .line 2856
    .line 2857
    move-result-object v3

    .line 2858
    check-cast v3, Ljava/lang/String;

    .line 2859
    .line 2860
    move-object/from16 p1, v4

    .line 2861
    .line 2862
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 2863
    .line 2864
    .line 2865
    move-result v4

    .line 2866
    move-object/from16 p2, v5

    .line 2867
    .line 2868
    const/4 v5, 0x1

    .line 2869
    if-le v4, v5, :cond_76

    .line 2870
    .line 2871
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2872
    .line 2873
    .line 2874
    move-result-object v2

    .line 2875
    check-cast v2, Ljava/lang/String;

    .line 2876
    .line 2877
    move-object v13, v2

    .line 2878
    :cond_76
    const/4 v4, 0x1

    .line 2879
    const/4 v5, 0x1

    .line 2880
    const/16 v16, 0x0

    .line 2881
    .line 2882
    const/16 v17, 0x0

    .line 2883
    .line 2884
    const/16 v18, 0x1

    .line 2885
    .line 2886
    const/16 v19, 0x1

    .line 2887
    .line 2888
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2889
    .line 2890
    .line 2891
    move-result-object v20

    .line 2892
    const/16 v21, 0x1

    .line 2893
    .line 2894
    const/16 v22, 0x0

    .line 2895
    .line 2896
    move-object/from16 v2, p0

    .line 2897
    .line 2898
    move-object/from16 v23, p1

    .line 2899
    .line 2900
    move-object/from16 v69, p2

    .line 2901
    .line 2902
    move-object/from16 v70, v6

    .line 2903
    .line 2904
    move-object v6, v13

    .line 2905
    move-object v13, v7

    .line 2906
    move/from16 v7, v16

    .line 2907
    .line 2908
    move-object/from16 v71, v8

    .line 2909
    .line 2910
    move/from16 v8, v17

    .line 2911
    .line 2912
    move-object/from16 v72, v9

    .line 2913
    .line 2914
    move/from16 v9, v18

    .line 2915
    .line 2916
    move-object/from16 v73, v10

    .line 2917
    .line 2918
    move/from16 v10, v19

    .line 2919
    .line 2920
    move-object/from16 v74, v11

    .line 2921
    .line 2922
    move-object/from16 v11, v20

    .line 2923
    .line 2924
    move-object/from16 v75, v12

    .line 2925
    .line 2926
    move/from16 v12, v21

    .line 2927
    .line 2928
    move-object/from16 v76, v13

    .line 2929
    .line 2930
    move/from16 v13, v22

    .line 2931
    .line 2932
    invoke-virtual/range {v2 .. v13}, Lcom/sgscq/vpn/h5;->l(Ljava/lang/String;IZLjava/lang/String;IIZZLjava/util/List;II)Ljava/lang/String;

    .line 2933
    .line 2934
    .line 2935
    move-result-object v2

    .line 2936
    move-object/from16 v3, v75

    .line 2937
    .line 2938
    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/handler/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2939
    .line 2940
    .line 2941
    move-result-object v1

    .line 2942
    invoke-static/range {v23 .. v23}, Lcom/sgscq/vpn/h5;->Z0(Ljava/lang/String;)Ljava/lang/String;

    .line 2943
    .line 2944
    .line 2945
    move-result-object v2

    .line 2946
    new-instance v3, Lcom/sgscq/vpn/y1;

    .line 2947
    .line 2948
    invoke-direct {v3}, Lcom/sgscq/vpn/y1;-><init>()V

    .line 2949
    .line 2950
    .line 2951
    move-object/from16 v4, v74

    .line 2952
    .line 2953
    invoke-virtual {v3, v4, v2}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2954
    .line 2955
    .line 2956
    invoke-static/range {v23 .. v23}, Lcom/sgscq/vpn/h5;->d0(Ljava/lang/String;)Ljava/lang/String;

    .line 2957
    .line 2958
    .line 2959
    move-result-object v4

    .line 2960
    move-object/from16 v5, v73

    .line 2961
    .line 2962
    invoke-virtual {v3, v5, v4}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2963
    .line 2964
    .line 2965
    move-object/from16 v5, v23

    .line 2966
    .line 2967
    move-object/from16 v4, v69

    .line 2968
    .line 2969
    invoke-static {v4, v5}, Lcom/sgscq/vpn/h5;->c0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/lang/String;

    .line 2970
    .line 2971
    .line 2972
    move-result-object v4

    .line 2973
    invoke-virtual {v3, v0, v4}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2974
    .line 2975
    .line 2976
    const/4 v0, 0x1

    .line 2977
    invoke-virtual {v3, v14, v0}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    .line 2978
    .line 2979
    .line 2980
    invoke-virtual {v3, v15, v0}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    .line 2981
    .line 2982
    .line 2983
    move-object/from16 v4, v72

    .line 2984
    .line 2985
    invoke-virtual {v3, v4, v2}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2986
    .line 2987
    .line 2988
    move-object/from16 v2, v71

    .line 2989
    .line 2990
    invoke-virtual {v3, v2}, Lcom/sgscq/vpn/y1;->h(Ljava/lang/String;)Lcom/sgscq/vpn/y1;

    .line 2991
    .line 2992
    .line 2993
    move-result-object v2

    .line 2994
    invoke-virtual {v2, v14, v0}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    .line 2995
    .line 2996
    .line 2997
    invoke-virtual {v2, v15, v0}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    .line 2998
    .line 2999
    .line 3000
    invoke-virtual {v2}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    .line 3001
    .line 3002
    .line 3003
    move-object/from16 v0, v76

    .line 3004
    .line 3005
    invoke-virtual {v3, v0, v1}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3006
    .line 3007
    .line 3008
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/h5;->e0()Lcom/sgscq/vpn/c0;

    .line 3009
    .line 3010
    .line 3011
    move-result-object v0

    .line 3012
    invoke-static {v0}, Lcom/sgscq/vpn/h5;->U0(Lcom/sgscq/vpn/c0;)Z

    .line 3013
    .line 3014
    .line 3015
    move-result v0

    .line 3016
    if-eqz v0, :cond_77

    .line 3017
    .line 3018
    move-object/from16 v0, v70

    .line 3019
    .line 3020
    invoke-virtual {v3, v0, v1}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3021
    .line 3022
    .line 3023
    :cond_77
    invoke-virtual {v3}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    .line 3024
    .line 3025
    .line 3026
    move-result-object v0

    .line 3027
    goto :goto_4a

    .line 3028
    :cond_78
    :goto_49
    const-string v0, "{}"

    .line 3029
    .line 3030
    :goto_4a
    return-object v0
.end method

.method public final varargs j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v5

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v7, "general_skin"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Lcom/sgscq/vpn/h5;->N0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    move-object v9, v10

    goto :goto_0

    :cond_0
    move-object v9, v8

    :goto_0
    invoke-interface {v6, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v8, v10

    :cond_1
    const-string v7, "user_general_skin"

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "server_version"

    const-string v8, "1.0.0"

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "cfg_version"

    const-string v8, "ctv201611241300trunk1300_1482732868"

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "opt_cfg_version"

    const-string v8, "opt_v1"

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "server_time"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "offset_time"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/h5;->i(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v7, "push"

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "user_info"

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v3, v2

    move v5, v4

    move v7, v5

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    :goto_1
    const-string v4, "GeneralSoul"

    move/from16 v21, v5

    const-string v5, "Equipment"

    move/from16 v22, v7

    const-string v7, "EvolutionInfo"

    move/from16 v23, v8

    const-string v8, "MagicalEqu"

    move/from16 v24, v9

    const-string v9, "SkillPiece"

    move/from16 v25, v10

    const-string v10, "BuddyGeneral"

    move/from16 v26, v11

    const-string v11, "Gems"

    move/from16 v27, v12

    const-string v12, "Item"

    move/from16 v28, v13

    const-string v13, "Atlas"

    const-string v0, "Skill"

    move/from16 v29, v14

    const-string v14, "MeridianTop"

    move-object/from16 v30, v6

    const-string v6, "EquipmentPiece"

    const-string v1, "General"

    move-object/from16 v31, v4

    const-string v4, "Goddess"

    if-ge v15, v3, :cond_12

    move/from16 v32, v3

    aget-object v3, v2, v15

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v33

    const-string v2, "Combat"

    const/16 v34, 0x1

    const/16 v35, -0x1

    sparse-switch v33, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 v35, 0xf

    goto/16 :goto_2

    :sswitch_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_2

    :cond_3
    const/16 v35, 0xe

    goto/16 :goto_2

    :sswitch_2
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_2

    :cond_4
    const/16 v35, 0xd

    goto/16 :goto_2

    :sswitch_3
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_2

    :cond_5
    const/16 v35, 0xc

    goto/16 :goto_2

    :sswitch_4
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_2

    :cond_6
    const/16 v35, 0xb

    goto/16 :goto_2

    :sswitch_5
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_2

    :cond_7
    const/16 v35, 0xa

    goto/16 :goto_2

    :sswitch_6
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_2

    :cond_8
    const/16 v35, 0x9

    goto/16 :goto_2

    :sswitch_7
    const-string v0, "TeamGeneral"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_2

    :cond_9
    const/16 v35, 0x8

    goto :goto_2

    :sswitch_8
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    const/16 v35, 0x7

    goto :goto_2

    :sswitch_9
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2

    :cond_b
    const/16 v35, 0x6

    goto :goto_2

    :sswitch_a
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2

    :cond_c
    const/16 v35, 0x5

    goto :goto_2

    :sswitch_b
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2

    :cond_d
    const/16 v35, 0x4

    goto :goto_2

    :sswitch_c
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_2

    :cond_e
    const/16 v35, 0x3

    goto :goto_2

    :sswitch_d
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_2

    :cond_f
    const/16 v35, 0x2

    goto :goto_2

    :sswitch_e
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_2

    :cond_10
    move/from16 v35, v34

    goto :goto_2

    :sswitch_f
    move-object/from16 v1, v31

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_2

    :cond_11
    const/16 v35, 0x0

    :goto_2
    move-object/from16 v3, p1

    packed-switch v35, :pswitch_data_0

    move-object/from16 v2, v30

    goto/16 :goto_4

    :pswitch_0
    invoke-static {v2, v3}, Lcom/sgscq/vpn/h5;->i0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "combat_info"

    goto/16 :goto_3

    :pswitch_1
    move/from16 v5, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v10, v25

    move/from16 v11, v26

    move/from16 v12, v27

    move/from16 v13, v28

    move/from16 v14, v29

    move-object/from16 v2, v30

    move/from16 v18, v34

    goto/16 :goto_5

    :pswitch_2
    move/from16 v5, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v10, v25

    move/from16 v11, v26

    move/from16 v12, v27

    move/from16 v13, v28

    move-object/from16 v2, v30

    move/from16 v14, v34

    goto/16 :goto_5

    :pswitch_3
    move/from16 v5, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v10, v25

    move/from16 v11, v26

    move/from16 v12, v27

    move/from16 v13, v28

    move/from16 v14, v29

    move-object/from16 v2, v30

    move/from16 v9, v34

    goto/16 :goto_5

    :pswitch_4
    move/from16 v5, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v10, v25

    move/from16 v11, v26

    move/from16 v12, v27

    move/from16 v13, v28

    move/from16 v14, v29

    move-object/from16 v2, v30

    move/from16 v19, v34

    goto/16 :goto_5

    :pswitch_5
    move/from16 v5, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v10, v25

    move/from16 v11, v26

    move/from16 v12, v27

    move/from16 v14, v29

    move-object/from16 v2, v30

    move/from16 v13, v34

    goto/16 :goto_5

    :pswitch_6
    move/from16 v5, v21

    move/from16 v7, v22

    move/from16 v9, v24

    move/from16 v10, v25

    move/from16 v11, v26

    move/from16 v12, v27

    move/from16 v13, v28

    move/from16 v14, v29

    move-object/from16 v2, v30

    move/from16 v8, v34

    goto/16 :goto_5

    :pswitch_7
    invoke-virtual/range {p0 .. p1}, Lcom/sgscq/vpn/h5;->j0(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "team_info"

    :goto_3
    move-object/from16 v2, v30

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    move/from16 v5, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v10, v25

    move/from16 v11, v26

    move/from16 v12, v27

    move/from16 v13, v28

    move/from16 v14, v29

    goto/16 :goto_5

    :pswitch_8
    move-object/from16 v2, v30

    move/from16 v5, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v10, v25

    move/from16 v12, v27

    move/from16 v13, v28

    move/from16 v14, v29

    move/from16 v11, v34

    goto/16 :goto_5

    :pswitch_9
    move-object/from16 v2, v30

    move/from16 v5, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v10, v25

    move/from16 v11, v26

    move/from16 v12, v27

    move/from16 v13, v28

    move/from16 v14, v29

    move/from16 v16, v34

    goto/16 :goto_5

    :pswitch_a
    move-object/from16 v2, v30

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v10, v25

    move/from16 v11, v26

    move/from16 v12, v27

    move/from16 v13, v28

    move/from16 v14, v29

    move/from16 v5, v34

    goto/16 :goto_5

    :pswitch_b
    move-object/from16 v2, v30

    move/from16 v5, v21

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v10, v25

    move/from16 v11, v26

    move/from16 v12, v27

    move/from16 v13, v28

    move/from16 v14, v29

    move/from16 v7, v34

    goto/16 :goto_5

    :pswitch_c
    move-object/from16 v2, v30

    move/from16 v5, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v10, v25

    move/from16 v11, v26

    move/from16 v12, v27

    move/from16 v13, v28

    move/from16 v14, v29

    move/from16 v17, v34

    goto :goto_5

    :pswitch_d
    move-object/from16 v2, v30

    move/from16 v5, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v10, v25

    move/from16 v11, v26

    move/from16 v12, v27

    move/from16 v13, v28

    move/from16 v14, v29

    move/from16 v20, v34

    goto :goto_5

    :pswitch_e
    move-object/from16 v2, v30

    move/from16 v5, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v10, v25

    move/from16 v11, v26

    move/from16 v13, v28

    move/from16 v14, v29

    move/from16 v12, v34

    goto :goto_5

    :pswitch_f
    move-object/from16 v2, v30

    move/from16 v5, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v11, v26

    move/from16 v12, v27

    move/from16 v13, v28

    move/from16 v14, v29

    move/from16 v10, v34

    :goto_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object v6, v2

    move-object v1, v3

    move/from16 v3, v32

    move-object/from16 v2, p3

    goto/16 :goto_1

    :cond_12
    move-object/from16 v3, p1

    move-object v15, v1

    move-object/from16 v2, v30

    move-object/from16 v1, v31

    if-eqz v29, :cond_13

    invoke-static {v15, v3}, Lcom/sgscq/vpn/h5;->a0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v15

    move-object/from16 v29, v7

    move-object v7, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sgscq/vpn/h5;->W(Ljava/util/LinkedHashMap;)V

    move-object/from16 v30, v14

    const-string v14, "general_info"

    .line 1
    invoke-interface {v2, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_13
    move-object/from16 v29, v7

    move-object/from16 v30, v14

    move-object v7, v0

    move-object/from16 v0, p0

    :goto_6
    if-eqz v28, :cond_14

    .line 2
    invoke-static {v7, v3}, Lcom/sgscq/vpn/h5;->a0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v7

    const-string v14, "skill_info"

    .line 3
    invoke-interface {v2, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    if-eqz v27, :cond_15

    .line 4
    invoke-static {v5, v3}, Lcom/sgscq/vpn/h5;->a0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v5

    const-string v7, "equipment_info"

    .line 5
    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    if-eqz v26, :cond_16

    .line 6
    invoke-static {v12, v3}, Lcom/sgscq/vpn/h5;->a0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v5

    const-string v7, "item_info"

    .line 7
    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    if-eqz v25, :cond_18

    .line 8
    invoke-static {v1, v3}, Lcom/sgscq/vpn/h5;->a0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v5, "update_list"

    .line 9
    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v7, v5, Ljava/util/List;

    if-eqz v7, :cond_17

    check-cast v5, Ljava/util/List;

    new-instance v7, Lcom/sgscq/vpn/e5;

    const/4 v12, 0x0

    invoke-direct {v7, v0, v12}, Lcom/sgscq/vpn/e5;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v5, v7}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_17
    const-string v5, "general_soul_info"

    .line 10
    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    if-eqz v24, :cond_19

    .line 11
    invoke-static {v6, v3}, Lcom/sgscq/vpn/h5;->a0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v5, "equipment_piece_info"

    .line 12
    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    if-eqz v23, :cond_1a

    .line 13
    invoke-static {v13, v3}, Lcom/sgscq/vpn/h5;->a0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v5, "atlas_info"

    .line 14
    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    if-eqz v22, :cond_1b

    .line 15
    invoke-static {v9, v3}, Lcom/sgscq/vpn/h5;->a0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v5, "skill_piece_info"

    .line 16
    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    if-eqz v21, :cond_1c

    .line 17
    invoke-static {v10, v3}, Lcom/sgscq/vpn/h5;->i0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v5, "buddy_info"

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    if-eqz v16, :cond_1d

    invoke-static {v11, v3}, Lcom/sgscq/vpn/h5;->a0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v5, "gem_info"

    .line 18
    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    if-eqz v17, :cond_1e

    .line 19
    invoke-static {v8, v3}, Lcom/sgscq/vpn/h5;->a0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v5, "magic_info"

    .line 20
    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    if-eqz v18, :cond_1f

    .line 21
    invoke-static {v4, v3}, Lcom/sgscq/vpn/h5;->a0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v4, "godness_info"

    .line 22
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    if-eqz v19, :cond_20

    move-object/from16 v1, v30

    .line 23
    invoke-static {v1, v3}, Lcom/sgscq/vpn/h5;->a0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v4, "meridian_info"

    .line 24
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    if-eqz v20, :cond_21

    move-object/from16 v1, v29

    .line 25
    invoke-static {v1, v3}, Lcom/sgscq/vpn/h5;->a0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v3, "evolution_info"

    .line 26
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_21
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x68349925 -> :sswitch_f
        -0x4865fa92 -> :sswitch_e
        -0x414f8d57 -> :sswitch_d
        -0x2b7ab84f -> :sswitch_c
        -0x2a3588c3 -> :sswitch_b
        -0x2862489e -> :sswitch_a
        0x21cf24 -> :sswitch_9
        0x22ef33 -> :sswitch_8
        0x34413ab -> :sswitch_7
        0x3ca546b -> :sswitch_6
        0x4c3da31 -> :sswitch_5
        0x2e3e6bb4 -> :sswitch_4
        0x412eca20 -> :sswitch_3
        0x5e71a0c8 -> :sswitch_2
        0x6ef488fd -> :sswitch_1
        0x78a3eb14 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j0(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/sgscq/vpn/h5;->h0(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/sgscq/vpn/p5;->o1(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string v3, "Skill"

    .line 17
    .line 18
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v3, 0x0

    .line 27
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    instance-of v5, v4, Ljava/util/Map;

    .line 42
    .line 43
    if-eqz v5, :cond_1

    .line 44
    .line 45
    check-cast v4, Ljava/util/Map;

    .line 46
    .line 47
    invoke-static {v4, v2, v3}, Lcom/sgscq/vpn/p5;->b0(Ljava/util/Map;Ljava/util/LinkedHashMap;Z)Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/h5;->g0(Ljava/util/Map;)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-static {p1, v1}, Lcom/sgscq/vpn/p5;->M0(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1
.end method

.method public final l(Ljava/lang/String;IZLjava/lang/String;IIZZLjava/util/List;II)Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "105"

    const/4 v4, 0x7

    const/16 v5, 0x8

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v10, v5, :cond_0

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit16 v10, v10, -0x1f4

    goto :goto_0

    :catch_0
    move v10, v9

    :goto_0
    if-ge v10, v9, :cond_1

    move v10, v9

    :cond_1
    iget-object v11, v0, Lcom/sgscq/vpn/h5;->c:Landroid/content/Context;

    invoke-static {v11}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/sgscq/vpn/w1;->x0(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v13

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/x;->o(Ljava/lang/String;)Z

    move-result v14

    const/4 v4, 0x4

    const-string v15, ""

    if-nez v14, :cond_2

    goto/16 :goto_9

    :cond_2
    invoke-static {v13}, Lcom/sgscq/vpn/h5;->r0(Ljava/util/HashMap;)Z

    move-result v14

    if-eqz v14, :cond_3

    goto/16 :goto_8

    :cond_3
    if-eqz v1, :cond_5

    .line 2
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v14, v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_5
    :goto_1
    move-object v14, v15

    :goto_2
    if-eqz v1, :cond_7

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v5, :cond_6

    goto :goto_3

    :cond_6
    :try_start_1
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    :cond_7
    :goto_3
    move v3, v8

    :goto_4
    if-lez v3, :cond_b

    .line 4
    invoke-static {v14}, Lcom/sgscq/vpn/h5;->J(Ljava/lang/String;)I

    move-result v5

    if-gt v5, v4, :cond_8

    move v5, v4

    goto :goto_5

    :cond_8
    const/16 v7, 0xe

    if-gt v5, v7, :cond_9

    move v5, v6

    goto :goto_5

    :cond_9
    const/16 v7, 0x17

    if-gt v5, v7, :cond_a

    const/4 v5, 0x6

    goto :goto_5

    :cond_a
    const/4 v5, 0x7

    :goto_5
    if-ne v3, v5, :cond_b

    goto :goto_8

    :cond_b
    if-eqz v14, :cond_e

    .line 5
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_c

    goto :goto_7

    :cond_c
    invoke-static {v11}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v3

    invoke-virtual {v3, v14, v14}, Lcom/sgscq/vpn/w1;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v5, v15

    :cond_d
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v11}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v14

    invoke-virtual {v14, v7}, Lcom/sgscq/vpn/w1;->x0(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v14

    invoke-static {v14}, Lcom/sgscq/vpn/h5;->r0(Ljava/util/HashMap;)Z

    move-result v14

    if-nez v14, :cond_d

    invoke-static {v7}, Lcom/sgscq/vpn/h5;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_e
    :goto_7
    move-object v5, v15

    .line 6
    :cond_f
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/h5;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    :goto_8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_a

    :cond_10
    :goto_9
    const/4 v3, 0x0

    :goto_a
    const/4 v5, 0x2

    const-string v7, "boss"

    const-string v14, "type"

    if-eqz v3, :cond_11

    goto :goto_f

    :cond_11
    if-nez v13, :cond_12

    const/4 v3, 0x0

    goto :goto_e

    .line 7
    :cond_12
    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_e

    :cond_13
    const-string v3, "enemies"

    .line 8
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v6, v3, Ljava/util/List;

    if-nez v6, :cond_14

    goto :goto_b

    :cond_14
    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v5, :cond_15

    :goto_b
    move v3, v8

    goto :goto_d

    :cond_15
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_16

    move v3, v9

    goto :goto_c

    .line 9
    :cond_16
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v6, "164\\d{3}"

    invoke-virtual {v3, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    :goto_c
    xor-int/2addr v3, v9

    :goto_d
    if-eqz v3, :cond_17

    .line 10
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_e

    :cond_17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_e
    if-eqz v3, :cond_18

    .line 11
    :goto_f
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_10

    :cond_18
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/h5;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sgscq/vpn/h5;->n0(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v3, v9

    goto :goto_10

    :cond_19
    move v3, v4

    :goto_10
    add-int/lit8 v6, v10, -0x1

    mul-int/2addr v6, v5

    add-int/2addr v6, v9

    .line 12
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 13
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/x;->o(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1a

    const/16 v16, 0xa

    move/from16 v8, v16

    goto :goto_11

    :cond_1a
    const/4 v8, 0x5

    :goto_11
    mul-int/lit8 v16, v10, 0x1e

    const/16 v19, 0x32

    add-int/lit8 v5, v16, 0x32

    add-int/lit8 v9, v10, 0xa

    const-string v4, "grade"

    .line 14
    invoke-virtual {v12, v1, v3, v4}, Lcom/sgscq/vpn/w1;->w0(Ljava/lang/String;ILjava/lang/String;)I

    if-nez v13, :cond_1b

    goto :goto_12

    :cond_1b
    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    :goto_12
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/h5;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sgscq/vpn/h5;->n0(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/h5;->m0(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1c

    goto :goto_13

    :cond_1c
    const/4 v3, 0x0

    goto :goto_14

    :cond_1d
    :goto_13
    const/4 v3, 0x1

    :goto_14
    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    goto :goto_18

    :cond_1e
    invoke-virtual {v0, v1, v10}, Lcom/sgscq/vpn/h5;->f0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1f

    goto :goto_15

    :cond_1f
    invoke-virtual {v12, v3}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    goto :goto_16

    :cond_20
    :goto_15
    const/4 v15, 0x0

    :goto_16
    if-nez v15, :cond_21

    const/4 v3, 0x1

    const/4 v4, 0x4

    goto :goto_17

    :cond_21
    const/4 v3, 0x4

    invoke-static {v3, v4, v15}, Lcom/sgscq/vpn/h5;->W0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v4

    const/4 v3, 0x1

    :goto_17
    if-gt v4, v3, :cond_22

    const/4 v3, 0x2

    goto :goto_18

    :cond_22
    const/4 v3, 0x2

    if-ne v4, v3, :cond_23

    const/4 v3, 0x3

    goto :goto_18

    :cond_23
    const/4 v3, 0x4

    :goto_18
    const-string v4, "suggest_level"

    invoke-virtual {v12, v1, v6, v4}, Lcom/sgscq/vpn/w1;->w0(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    const-string v6, "power"

    invoke-virtual {v12, v1, v8, v6}, Lcom/sgscq/vpn/w1;->w0(Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    invoke-static {v6, v1, v13}, Lcom/sgscq/vpn/handler/x;->B(ILjava/lang/String;Ljava/util/HashMap;)I

    move-result v6

    const-string v7, "coin"

    invoke-virtual {v12, v1, v5, v7}, Lcom/sgscq/vpn/w1;->w0(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    move/from16 v7, p10

    invoke-virtual {v12, v7}, Lcom/sgscq/vpn/w1;->y0(I)I

    move-result v7

    invoke-static {v7, v6}, Lcom/sgscq/vpn/handler/x;->C(II)I

    move-result v7

    invoke-static {v12, v1}, Lcom/sgscq/vpn/handler/x;->h(Lcom/sgscq/vpn/w1;Ljava/lang/String;)I

    move-result v8

    const-string v15, "times"

    move-object/from16 v17, v11

    const/16 v11, 0x63

    invoke-virtual {v12, v1, v11, v15}, Lcom/sgscq/vpn/w1;->w0(Ljava/lang/String;ILjava/lang/String;)I

    move-result v15

    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/x;->o(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_25

    const/16 v11, 0xc

    move/from16 v20, v5

    move/from16 v5, p11

    if-lt v5, v11, :cond_24

    const/16 v5, 0x63

    goto :goto_19

    :cond_24
    move/from16 v5, v19

    :goto_19
    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    goto :goto_1a

    :cond_25
    move/from16 v20, v5

    :goto_1a
    const-string v5, "reset_price"

    invoke-virtual {v12, v1, v9, v5}, Lcom/sgscq/vpn/w1;->w0(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const-string v11, "direction"

    if-eqz v13, :cond_26

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v12, "position"

    invoke-virtual {v13, v12, v9}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result v9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v13, v11, v12}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v21, v12

    move v12, v9

    move-object/from16 v9, v21

    goto :goto_1b

    :cond_26
    move v12, v2

    :goto_1b
    if-eqz p9, :cond_2d

    .line 15
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_27

    goto :goto_1e

    :cond_27
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 16
    instance-of v2, v9, Ljava/util/List;

    if-eqz v2, :cond_28

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v13}, Lcom/sgscq/vpn/h5;->c(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_1c

    :cond_28
    invoke-static {v9, v13}, Lcom/sgscq/vpn/h5;->c(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 17
    :cond_29
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_2a

    move-object/from16 p9, v2

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 p10, v11

    const/4 v11, 0x1

    if-lt v2, v11, :cond_2b

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v11, 0x4

    if-gt v2, v11, :cond_2b

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    move-object/from16 v2, p9

    move-object/from16 v11, p10

    goto :goto_1d

    :cond_2c
    move-object/from16 p10, v11

    move-object v9, v13

    goto :goto_1f

    :cond_2d
    :goto_1e
    move-object/from16 p10, v11

    .line 18
    :goto_1f
    invoke-static {v9}, Lcom/sgscq/vpn/h5;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 19
    instance-of v11, v9, Ljava/util/List;

    if-eqz v11, :cond_2f

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_30

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    invoke-static {v11, v13}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result v11

    const/4 v13, 0x1

    if-lt v11, v13, :cond_2e

    const/4 v13, 0x4

    if-gt v11, v13, :cond_2e

    move v9, v11

    goto :goto_20

    :cond_2f
    const/4 v13, 0x4

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {v9, v11}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result v9

    const/4 v11, 0x1

    if-lt v9, v11, :cond_30

    if-gt v9, v13, :cond_30

    goto :goto_20

    :cond_30
    const/4 v9, 0x0

    .line 20
    :goto_20
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/h5;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/sgscq/vpn/y1;

    invoke-direct {v13}, Lcom/sgscq/vpn/y1;-><init>()V

    move/from16 v19, v9

    const-string v9, "dungeon"

    invoke-virtual {v13, v14, v9}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "dungeon_id"

    invoke-virtual {v13, v9, v11}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "dungeon_position"

    invoke-virtual {v13, v9, v12}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v9, "dungeon_name"

    invoke-virtual {v13, v9, v1}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "dungeon_card"

    invoke-virtual {v0, v1, v10}, Lcom/sgscq/vpn/h5;->f0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v9, v10}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "dungeon_grade"

    invoke-virtual {v13, v9, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v9, "dungeon_suggest_level"

    invoke-virtual {v13, v9, v4}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v4, "dungeon_power"

    invoke-virtual {v13, v4, v6}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v4, "dungeon_user_exp"

    invoke-virtual {v13, v4, v7}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v4, "dungeon_general_exp"

    invoke-virtual {v13, v4, v8}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v4, "dungeon_coin"

    move/from16 v6, v20

    invoke-virtual {v13, v4, v6}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v4, "dungeon_times"

    invoke-virtual {v13, v4, v15}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v4, "user_dungeon_times"

    move/from16 v6, p6

    invoke-virtual {v13, v4, v6}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v4, "num_item_price"

    invoke-virtual {v13, v4, v5}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v4, "can_show"

    move/from16 v5, p7

    invoke-virtual {v13, v4, v5}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    const-string v4, "can_in"

    move/from16 v5, p8

    invoke-virtual {v13, v4, v5}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    const-string v4, "star_level"

    move/from16 v5, p5

    invoke-virtual {v13, v4, v5}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    move-object/from16 v4, p10

    invoke-virtual {v13, v4, v2}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dungeon_direction"

    move/from16 v9, v19

    invoke-virtual {v13, v2, v9}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v2, "is_newest"

    move/from16 v4, p3

    invoke-virtual {v13, v2, v4}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    const-string v2, "\":["

    const-string v4, "unlocked_id"

    const/16 v5, 0x22

    iget-object v6, v13, Lcom/sgscq/vpn/y1;->b:Ljava/lang/StringBuilder;

    if-eqz p4, :cond_31

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_31

    .line 21
    invoke-virtual {v13}, Lcom/sgscq/vpn/y1;->a()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/sgscq/vpn/y1;

    const/4 v4, 0x0

    invoke-direct {v2, v6, v13, v4}, Lcom/sgscq/vpn/y1;-><init>(Ljava/lang/StringBuilder;Lcom/sgscq/vpn/y1;I)V

    .line 22
    invoke-static/range {p4 .. p4}, Lcom/sgscq/vpn/h5;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 23
    invoke-virtual {v2}, Lcom/sgscq/vpn/y1;->a()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v6, v4}, Lcom/sgscq/vpn/p5;->L(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_21

    .line 24
    :cond_31
    invoke-virtual {v13}, Lcom/sgscq/vpn/y1;->a()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/sgscq/vpn/y1;

    const/4 v4, 0x0

    invoke-direct {v2, v6, v13, v4}, Lcom/sgscq/vpn/y1;-><init>(Ljava/lang/StringBuilder;Lcom/sgscq/vpn/y1;I)V

    .line 25
    :goto_21
    invoke-virtual {v2}, Lcom/sgscq/vpn/y1;->c()Lcom/sgscq/vpn/y1;

    const-string v2, "elite_buy_times"

    invoke-virtual {v13, v2, v4}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 26
    invoke-static/range {v17 .. v17}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v2

    .line 27
    invoke-virtual {v2, v1}, Lcom/sgscq/vpn/w1;->x0(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_32

    const-string v6, "drops"

    .line 28
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    const/4 v8, 0x1

    goto :goto_22

    :cond_32
    move v8, v4

    :goto_22
    if-eqz v8, :cond_33

    .line 29
    invoke-virtual {v2, v1}, Lcom/sgscq/vpn/w1;->u0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :cond_33
    invoke-virtual/range {p0 .. p1}, Lcom/sgscq/vpn/h5;->n0(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[{\"type\":5,\"id\":\"600032\",\"num\":"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_34

    const/4 v5, 0x2

    if-lt v3, v5, :cond_34

    const-string v5, ",{\"type\":5,\"id\":\"600023\",\"num\":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v3, 0x64

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    const/4 v5, 0x3

    rem-int/lit8 v5, p2, 0x3

    if-eqz v5, :cond_35

    if-eqz v1, :cond_36

    :cond_35
    const-string v1, ",{\"type\":5,\"id\":\"600001\",\"num\":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    mul-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_23
    const-string v2, "dungeon_drop"

    .line 30
    invoke-virtual {v13, v2, v1}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final m(Ljava/util/Map;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/d1;->K0(Ljava/util/Map;)Z

    .line 10
    .line 11
    .line 12
    const-string v4, "General"

    .line 13
    .line 14
    invoke-static {v4, v1}, Lcom/sgscq/vpn/h5;->C0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    invoke-virtual {v0, v5}, Lcom/sgscq/vpn/h5;->W(Ljava/util/LinkedHashMap;)V

    .line 19
    .line 20
    .line 21
    const-string v6, "Skill"

    .line 22
    .line 23
    invoke-static {v6, v1}, Lcom/sgscq/vpn/h5;->C0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    const-string v7, "Equipment"

    .line 28
    .line 29
    invoke-static {v7, v1}, Lcom/sgscq/vpn/h5;->C0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 34
    .line 35
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v9, 0x0

    .line 39
    invoke-static {v4, v8, v1, v9}, Lcom/sgscq/vpn/h5;->O(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/Map;Z)V

    .line 40
    .line 41
    .line 42
    const-string v4, "TeamGeneral"

    .line 43
    .line 44
    const/4 v10, 0x1

    .line 45
    invoke-static {v4, v8, v1, v10}, Lcom/sgscq/vpn/h5;->O(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/Map;Z)V

    .line 46
    .line 47
    .line 48
    new-instance v4, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v11, "update_list"

    .line 54
    .line 55
    invoke-virtual {v7, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    instance-of v13, v12, Ljava/util/List;

    .line 60
    .line 61
    const-string v14, ""

    .line 62
    .line 63
    if-eqz v13, :cond_3

    .line 64
    .line 65
    check-cast v12, Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v12

    .line 71
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v13

    .line 75
    if-eqz v13, :cond_3

    .line 76
    .line 77
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v13

    .line 81
    instance-of v15, v13, Ljava/util/Map;

    .line 82
    .line 83
    if-nez v15, :cond_0

    .line 84
    .line 85
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    new-instance v15, Ljava/util/LinkedHashMap;

    .line 90
    .line 91
    check-cast v13, Ljava/util/Map;

    .line 92
    .line 93
    invoke-direct {v15, v13}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 94
    .line 95
    .line 96
    const-string v13, "pk_id"

    .line 97
    .line 98
    invoke-virtual {v15, v13, v14}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v13

    .line 102
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v13

    .line 106
    invoke-virtual {v8, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v13

    .line 110
    check-cast v13, Ljava/lang/String;

    .line 111
    .line 112
    const-string v10, "general_pk_id"

    .line 113
    .line 114
    invoke-interface {v15, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    const-string v10, "general_id"

    .line 118
    .line 119
    invoke-interface {v15, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    const-string v10, "user_general_id"

    .line 123
    .line 124
    invoke-interface {v15, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    const-string v10, "0"

    .line 128
    .line 129
    const-string v17, "1"

    .line 130
    .line 131
    move-object/from16 v19, v8

    .line 132
    .line 133
    if-nez v13, :cond_1

    .line 134
    .line 135
    move-object v9, v10

    .line 136
    goto :goto_1

    .line 137
    :cond_1
    move-object/from16 v9, v17

    .line 138
    .line 139
    :goto_1
    const-string v8, "is_wear"

    .line 140
    .line 141
    invoke-interface {v15, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    if-nez v13, :cond_2

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_2
    move-object/from16 v10, v17

    .line 148
    .line 149
    :goto_2
    const-string v8, "wear"

    .line 150
    .line 151
    invoke-interface {v15, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-object/from16 v8, v19

    .line 158
    .line 159
    const/4 v9, 0x0

    .line 160
    const/4 v10, 0x1

    .line 161
    goto :goto_0

    .line 162
    :cond_3
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 163
    .line 164
    invoke-direct {v8, v7}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {v8, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    const-string v4, "Item"

    .line 171
    .line 172
    invoke-static {v4, v1}, Lcom/sgscq/vpn/h5;->C0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-virtual/range {p0 .. p1}, Lcom/sgscq/vpn/h5;->j0(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    const-string v9, "Combat"

    .line 181
    .line 182
    invoke-static {v9, v1}, Lcom/sgscq/vpn/h5;->i0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    const-string v10, "GeneralSoul"

    .line 187
    .line 188
    invoke-static {v10, v1}, Lcom/sgscq/vpn/h5;->C0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 189
    .line 190
    .line 191
    move-result-object v10

    .line 192
    invoke-virtual {v10, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    instance-of v12, v11, Ljava/util/List;

    .line 197
    .line 198
    if-eqz v12, :cond_4

    .line 199
    .line 200
    check-cast v11, Ljava/util/List;

    .line 201
    .line 202
    new-instance v12, Lcom/sgscq/vpn/e5;

    .line 203
    .line 204
    const/4 v13, 0x0

    .line 205
    invoke-direct {v12, v0, v13}, Lcom/sgscq/vpn/e5;-><init>(Ljava/lang/Object;I)V

    .line 206
    .line 207
    .line 208
    invoke-interface {v11, v12}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 209
    .line 210
    .line 211
    :cond_4
    const-string v11, "EquipmentPiece"

    .line 212
    .line 213
    invoke-static {v11, v1}, Lcom/sgscq/vpn/h5;->C0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    const-string v12, "Atlas"

    .line 218
    .line 219
    invoke-static {v12, v1}, Lcom/sgscq/vpn/h5;->C0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 220
    .line 221
    .line 222
    move-result-object v12

    .line 223
    const-string v13, "SkillPiece"

    .line 224
    .line 225
    invoke-static {v13, v1}, Lcom/sgscq/vpn/h5;->C0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 226
    .line 227
    .line 228
    move-result-object v13

    .line 229
    const-string v15, "BuddyGeneral"

    .line 230
    .line 231
    invoke-static {v15, v1}, Lcom/sgscq/vpn/h5;->i0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 232
    .line 233
    .line 234
    move-result-object v15

    .line 235
    const-string v0, "Gems"

    .line 236
    .line 237
    invoke-static {v0, v1}, Lcom/sgscq/vpn/h5;->C0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    move-object/from16 v17, v0

    .line 242
    .line 243
    const-string v0, "MagicalEqu"

    .line 244
    .line 245
    invoke-static {v0, v1}, Lcom/sgscq/vpn/h5;->C0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    move-object/from16 v19, v0

    .line 250
    .line 251
    const-string v0, "Goddess"

    .line 252
    .line 253
    invoke-static {v0, v1}, Lcom/sgscq/vpn/h5;->C0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    move-object/from16 v20, v0

    .line 258
    .line 259
    const-string v0, "MeridianTop"

    .line 260
    .line 261
    invoke-static {v0, v1}, Lcom/sgscq/vpn/h5;->C0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    move-object/from16 v21, v0

    .line 266
    .line 267
    const-string v0, "EvolutionInfo"

    .line 268
    .line 269
    invoke-static {v0, v1}, Lcom/sgscq/vpn/h5;->C0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v22

    .line 277
    invoke-static/range {v22 .. v22}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 278
    .line 279
    .line 280
    move-result-object v22

    .line 281
    move-object/from16 v23, v0

    .line 282
    .line 283
    const-string v0, "general_skin"

    .line 284
    .line 285
    invoke-static {v0, v14, v1}, Lcom/sgscq/vpn/h5;->N0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v14

    .line 289
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 290
    .line 291
    .line 292
    move-result v24

    .line 293
    const/16 v25, 0x0

    .line 294
    .line 295
    move-object/from16 p2, v0

    .line 296
    .line 297
    if-eqz v24, :cond_5

    .line 298
    .line 299
    move-object/from16 v1, v25

    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_5
    move-object v1, v14

    .line 303
    :goto_3
    const/16 v0, 0x30

    .line 304
    .line 305
    new-array v0, v0, [Ljava/lang/Object;

    .line 306
    .line 307
    const-string v24, "user_general_skin"

    .line 308
    .line 309
    const/16 v18, 0x0

    .line 310
    .line 311
    aput-object v24, v0, v18

    .line 312
    .line 313
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 314
    .line 315
    .line 316
    move-result v24

    .line 317
    if-eqz v24, :cond_6

    .line 318
    .line 319
    move-object/from16 v14, v25

    .line 320
    .line 321
    :cond_6
    const/16 v16, 0x1

    .line 322
    .line 323
    aput-object v14, v0, v16

    .line 324
    .line 325
    const/4 v14, 0x2

    .line 326
    const-string v16, "server_version"

    .line 327
    .line 328
    aput-object v16, v0, v14

    .line 329
    .line 330
    const/4 v14, 0x3

    .line 331
    const-string v16, "1.0.0"

    .line 332
    .line 333
    aput-object v16, v0, v14

    .line 334
    .line 335
    const/4 v14, 0x4

    .line 336
    const-string v16, "cfg_version"

    .line 337
    .line 338
    aput-object v16, v0, v14

    .line 339
    .line 340
    const/4 v14, 0x5

    .line 341
    const-string v16, "ctv201611241300trunk1300_1482732868"

    .line 342
    .line 343
    aput-object v16, v0, v14

    .line 344
    .line 345
    const/4 v14, 0x6

    .line 346
    const-string v16, "opt_cfg_version"

    .line 347
    .line 348
    aput-object v16, v0, v14

    .line 349
    .line 350
    const/4 v14, 0x7

    .line 351
    const-string v16, "opt_v1"

    .line 352
    .line 353
    aput-object v16, v0, v14

    .line 354
    .line 355
    const/16 v14, 0x8

    .line 356
    .line 357
    const-string v16, "server_time"

    .line 358
    .line 359
    aput-object v16, v0, v14

    .line 360
    .line 361
    const/16 v14, 0x9

    .line 362
    .line 363
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    aput-object v2, v0, v14

    .line 368
    .line 369
    const/16 v2, 0xa

    .line 370
    .line 371
    const-string v3, "offset_time"

    .line 372
    .line 373
    aput-object v3, v0, v2

    .line 374
    .line 375
    const/16 v2, 0xb

    .line 376
    .line 377
    const/4 v3, 0x0

    .line 378
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    aput-object v3, v0, v2

    .line 383
    .line 384
    const/16 v2, 0xc

    .line 385
    .line 386
    const-string v3, "push"

    .line 387
    .line 388
    aput-object v3, v0, v2

    .line 389
    .line 390
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/h5;->i(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    const/16 v3, 0xd

    .line 395
    .line 396
    aput-object v2, v0, v3

    .line 397
    .line 398
    const/16 v2, 0xe

    .line 399
    .line 400
    const-string v3, "user_info"

    .line 401
    .line 402
    aput-object v3, v0, v2

    .line 403
    .line 404
    const/16 v2, 0xf

    .line 405
    .line 406
    aput-object v22, v0, v2

    .line 407
    .line 408
    const/16 v2, 0x10

    .line 409
    .line 410
    const-string v3, "general_info"

    .line 411
    .line 412
    aput-object v3, v0, v2

    .line 413
    .line 414
    const/16 v2, 0x11

    .line 415
    .line 416
    aput-object v5, v0, v2

    .line 417
    .line 418
    const/16 v2, 0x12

    .line 419
    .line 420
    const-string v3, "general_soul_info"

    .line 421
    .line 422
    aput-object v3, v0, v2

    .line 423
    .line 424
    const/16 v2, 0x13

    .line 425
    .line 426
    aput-object v10, v0, v2

    .line 427
    .line 428
    const/16 v2, 0x14

    .line 429
    .line 430
    const-string v3, "skill_info"

    .line 431
    .line 432
    aput-object v3, v0, v2

    .line 433
    .line 434
    const/16 v2, 0x15

    .line 435
    .line 436
    aput-object v6, v0, v2

    .line 437
    .line 438
    const/16 v2, 0x16

    .line 439
    .line 440
    const-string v3, "equipment_info"

    .line 441
    .line 442
    aput-object v3, v0, v2

    .line 443
    .line 444
    const/16 v2, 0x17

    .line 445
    .line 446
    aput-object v8, v0, v2

    .line 447
    .line 448
    const/16 v2, 0x18

    .line 449
    .line 450
    const-string v3, "item_info"

    .line 451
    .line 452
    aput-object v3, v0, v2

    .line 453
    .line 454
    const/16 v2, 0x19

    .line 455
    .line 456
    aput-object v4, v0, v2

    .line 457
    .line 458
    const/16 v2, 0x1a

    .line 459
    .line 460
    const-string v3, "combat_info"

    .line 461
    .line 462
    aput-object v3, v0, v2

    .line 463
    .line 464
    const/16 v2, 0x1b

    .line 465
    .line 466
    aput-object v9, v0, v2

    .line 467
    .line 468
    const/16 v2, 0x1c

    .line 469
    .line 470
    const-string v3, "team_info"

    .line 471
    .line 472
    aput-object v3, v0, v2

    .line 473
    .line 474
    const/16 v2, 0x1d

    .line 475
    .line 476
    aput-object v7, v0, v2

    .line 477
    .line 478
    const/16 v2, 0x1e

    .line 479
    .line 480
    const-string v3, "equipment_piece_info"

    .line 481
    .line 482
    aput-object v3, v0, v2

    .line 483
    .line 484
    const/16 v2, 0x1f

    .line 485
    .line 486
    aput-object v11, v0, v2

    .line 487
    .line 488
    const/16 v2, 0x20

    .line 489
    .line 490
    const-string v3, "atlas_info"

    .line 491
    .line 492
    aput-object v3, v0, v2

    .line 493
    .line 494
    const/16 v2, 0x21

    .line 495
    .line 496
    aput-object v12, v0, v2

    .line 497
    .line 498
    const/16 v2, 0x22

    .line 499
    .line 500
    const-string v3, "skill_piece_info"

    .line 501
    .line 502
    aput-object v3, v0, v2

    .line 503
    .line 504
    const/16 v2, 0x23

    .line 505
    .line 506
    aput-object v13, v0, v2

    .line 507
    .line 508
    const/16 v2, 0x24

    .line 509
    .line 510
    const-string v3, "buddy_info"

    .line 511
    .line 512
    aput-object v3, v0, v2

    .line 513
    .line 514
    const/16 v2, 0x25

    .line 515
    .line 516
    aput-object v15, v0, v2

    .line 517
    .line 518
    const/16 v2, 0x26

    .line 519
    .line 520
    const-string v3, "gem_info"

    .line 521
    .line 522
    aput-object v3, v0, v2

    .line 523
    .line 524
    const/16 v2, 0x27

    .line 525
    .line 526
    aput-object v17, v0, v2

    .line 527
    .line 528
    const/16 v2, 0x28

    .line 529
    .line 530
    const-string v3, "magic_info"

    .line 531
    .line 532
    aput-object v3, v0, v2

    .line 533
    .line 534
    const/16 v2, 0x29

    .line 535
    .line 536
    aput-object v19, v0, v2

    .line 537
    .line 538
    const/16 v2, 0x2a

    .line 539
    .line 540
    const-string v3, "godness_info"

    .line 541
    .line 542
    aput-object v3, v0, v2

    .line 543
    .line 544
    const/16 v2, 0x2b

    .line 545
    .line 546
    aput-object v20, v0, v2

    .line 547
    .line 548
    const/16 v2, 0x2c

    .line 549
    .line 550
    const-string v3, "meridian_info"

    .line 551
    .line 552
    aput-object v3, v0, v2

    .line 553
    .line 554
    const/16 v2, 0x2d

    .line 555
    .line 556
    aput-object v21, v0, v2

    .line 557
    .line 558
    const/16 v2, 0x2e

    .line 559
    .line 560
    const-string v3, "evolution_info"

    .line 561
    .line 562
    aput-object v3, v0, v2

    .line 563
    .line 564
    const/16 v2, 0x2f

    .line 565
    .line 566
    aput-object v23, v0, v2

    .line 567
    .line 568
    move-object/from16 v2, p2

    .line 569
    .line 570
    invoke-static {v2, v1, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    return-object v0
.end method

.method public final n0(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x3

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    const/4 v5, 0x6

    if-lt v3, v4, :cond_0

    const/4 v0, 0x5

    const/16 v3, 0x8

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/sgscq/vpn/h5;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/w1;->l0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-ne p1, v5, :cond_2

    const/4 v1, 0x1

    :catch_0
    :cond_2
    return v1
.end method

.method public final o(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/h5;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/sgscq/vpn/w1;->g0()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sgscq/vpn/w1;->j0()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[MapInfo] no configured chapters for elite="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SGSCQ_SRV"

    invoke-static {p2, p1}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    const-string p2, "{}"

    invoke-virtual {p0, p1, p2}, Lcom/sgscq/vpn/h5;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_2
    if-eqz p3, :cond_3

    const-string v1, "2"

    goto :goto_1

    :cond_3
    const-string v1, "1"

    :goto_1
    invoke-static {p2, p3}, Lcom/sgscq/vpn/h5;->L(Ljava/util/Map;Z)Lcom/sgscq/vpn/p4;

    move-result-object v3

    const/4 v4, 0x1

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    const-string v5, "user_level"

    invoke-static {v4, v5, p2}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-lez v2, :cond_5

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-static {v6, v3, p3, v4}, Lcom/sgscq/vpn/h5;->I(Ljava/lang/String;Lcom/sgscq/vpn/p4;ZI)Z

    move-result v7

    invoke-virtual {p0, v6, v1, v7}, Lcom/sgscq/vpn/h5;->s(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/sgscq/vpn/h5;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/sgscq/vpn/h5;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final p(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "user_map_step"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {v0, v1, p2}, Lcom/sgscq/vpn/h5;->N0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "105"

    .line 11
    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x5

    .line 29
    if-lt v4, v5, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string v4, "5\\d{5,}"

    .line 37
    .line 38
    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    const/4 v4, 0x3

    .line 45
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_2

    .line 55
    .line 56
    invoke-static {p1}, Lcom/sgscq/vpn/h5;->H0(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_3

    .line 72
    .line 73
    invoke-static {v0}, Lcom/sgscq/vpn/h5;->H0(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    move-object p1, v1

    .line 79
    :goto_0
    invoke-static {v0}, Lcom/sgscq/vpn/h5;->H0(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-nez v4, :cond_7

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-nez v4, :cond_7

    .line 94
    .line 95
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-nez v4, :cond_7

    .line 100
    .line 101
    iget-object v3, p0, Lcom/sgscq/vpn/h5;->c:Landroid/content/Context;

    .line 102
    .line 103
    invoke-static {v3}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v3}, Lcom/sgscq/vpn/w1;->j0()Ljava/util/ArrayList;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_4

    .line 116
    .line 117
    const-string p1, "{}"

    .line 118
    .line 119
    invoke-virtual {p0, v1, p1}, Lcom/sgscq/vpn/h5;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    goto :goto_2

    .line 124
    :cond_4
    invoke-static {p2}, Lcom/sgscq/vpn/h5;->K(Ljava/util/Map;)Lcom/sgscq/vpn/p4;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    move v5, v2

    .line 134
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    const-string v7, ","

    .line 139
    .line 140
    if-ge v5, v6, :cond_6

    .line 141
    .line 142
    if-lez v5, :cond_5

    .line 143
    .line 144
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    :cond_5
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    check-cast v6, Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    check-cast v7, Ljava/lang/String;

    .line 158
    .line 159
    const/4 v8, 0x1

    .line 160
    invoke-static {v7, v1, v2, v8}, Lcom/sgscq/vpn/h5;->I(Ljava/lang/String;Lcom/sgscq/vpn/p4;ZI)Z

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    const-string v8, "1"

    .line 165
    .line 166
    invoke-virtual {p0, v6, v8, v7}, Lcom/sgscq/vpn/h5;->s(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    add-int/lit8 v5, v5, 0x1

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/sgscq/vpn/h5;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p0, v0, p2}, Lcom/sgscq/vpn/h5;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    invoke-virtual {p0, p2, p1}, Lcom/sgscq/vpn/h5;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    :goto_2
    return-object p1

    .line 211
    :cond_7
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    invoke-virtual {p0, p1, p2, v0}, Lcom/sgscq/vpn/h5;->o(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    return-object p1
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/sgscq/vpn/h5;->H0(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/sgscq/vpn/h5;->Z()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :cond_0
    const-string v0, "105"

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_0
    invoke-virtual {p0, p2, p1, v0}, Lcom/sgscq/vpn/h5;->o(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "["

    .line 2
    .line 3
    const-string v1, "]"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/sgscq/vpn/handler/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {v0, p2, v1}, Lcom/sgscq/vpn/handler/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance v0, Lcom/sgscq/vpn/y1;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/sgscq/vpn/y1;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/sgscq/vpn/h5;->e0()Lcom/sgscq/vpn/c0;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Lcom/sgscq/vpn/h5;->U0(Lcom/sgscq/vpn/c0;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    const-string v1, "map_type"

    .line 29
    .line 30
    invoke-virtual {v0, v1, p1}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    const-string v1, "chapter_list"

    .line 34
    .line 35
    invoke-virtual {v0, v1, p1}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string p1, "chapter_details"

    .line 39
    .line 40
    invoke-virtual {v0, p1, p2}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/sgscq/vpn/h5;->e0()Lcom/sgscq/vpn/c0;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lcom/sgscq/vpn/h5;->U0(Lcom/sgscq/vpn/c0;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    const-string p1, "chapters"

    .line 54
    .line 55
    invoke-virtual {v0, p1, p2}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {v0}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/h5;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v0

    invoke-static {p1}, Lcom/sgscq/vpn/h5;->Z0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sgscq/vpn/y1;

    invoke-direct {v2}, Lcom/sgscq/vpn/y1;-><init>()V

    const-string v3, "map_type"

    invoke-virtual {v2, v3, p2}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "getChapterId"

    invoke-virtual {v2, p2, v1}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "map_id"

    invoke-virtual {v2, p2, v1}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sgscq/vpn/h5;->d0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "map_name"

    invoke-virtual {v2, v1, p2}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "can_show"

    const/4 v1, 0x1

    invoke-virtual {v2, p2, v1}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    const-string p2, "can_in"

    invoke-virtual {v2, p2, p3}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    const-string p2, "map_bgimage"

    invoke-static {v0, p1}, Lcom/sgscq/vpn/h5;->c0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 22

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    const-string v9, "\u73a9\u5bb6"

    iget-object v10, v1, Lcom/sgscq/vpn/h5;->d:Landroid/content/SharedPreferences;

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    const-string v11, "player_name"

    invoke-interface {v10, v11, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_0
    const-string v10, "user_nickname"

    invoke-static {v10, v9, v8}, Lcom/sgscq/vpn/h5;->O0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    const-string v12, "user_level"

    invoke-static {v11, v12, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v11

    const/4 v13, 0x0

    const-string v14, "user_vip_level"

    invoke-static {v13, v14, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v13

    new-instance v15, Lcom/sgscq/vpn/y1;

    invoke-direct {v15}, Lcom/sgscq/vpn/y1;-><init>()V

    const-string v0, "userId"

    invoke-virtual {v15, v0, v7}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "user_id"

    invoke-virtual {v15, v0, v7}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "account_uid"

    invoke-virtual {v15, v0, v7}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "roleId"

    invoke-virtual {v15, v0, v7}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "role_id"

    invoke-virtual {v15, v0, v7}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "roleID"

    invoke-virtual {v15, v0, v7}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nickname"

    invoke-virtual {v15, v0, v9}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nickName"

    invoke-virtual {v15, v0, v9}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "roleName"

    invoke-virtual {v15, v0, v9}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v10, v9}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-virtual {v15, v0, v11}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "roleLevel"

    invoke-virtual {v15, v0, v11}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "role_level"

    invoke-virtual {v15, v0, v11}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v15, v12, v11}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "vipLevel"

    invoke-virtual {v15, v0, v13}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "vip_level"

    invoke-virtual {v15, v0, v13}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v15, v14, v13}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "vipExp"

    const/4 v7, 0x0

    invoke-virtual {v15, v0, v7}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "gold"

    invoke-virtual {v15, v5, v6, v0}, Lcom/sgscq/vpn/y1;->d(JLjava/lang/String;)V

    const-string v0, "yuanbao"

    invoke-virtual {v15, v0, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "user_coin"

    invoke-virtual {v15, v5, v6, v0}, Lcom/sgscq/vpn/y1;->d(JLjava/lang/String;)V

    const-string v0, "user_gold"

    invoke-virtual {v15, v0, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "energy"

    invoke-virtual {v15, v0, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "energyMax"

    const/16 v2, 0xc8

    invoke-virtual {v15, v0, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "user_energy"

    invoke-virtual {v15, v0, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "user_energy_date"

    const/4 v2, 0x0

    invoke-static {v2, v0, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v3

    invoke-static {v3}, Lcom/sgscq/vpn/p5;->F0(I)I

    move-result v3

    invoke-virtual {v15, v0, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "user_experience"

    invoke-static {v2, v0, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    const-string v3, "exp"

    invoke-virtual {v15, v3, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v15, v0, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "\u8fd9\u4e2a\u4eba\u5f88\u61d2\uff0c\u4ec0\u4e48\u90fd\u6ca1\u6709\u7559\u4e0b\u3002"

    const-string v2, "user_sign"

    invoke-static {v2, v0, v8}, Lcom/sgscq/vpn/h5;->O0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "sign"

    invoke-virtual {v15, v3, v0}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v2, v0}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stamina"

    invoke-virtual {v15, v0, v4}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "user_power"

    invoke-virtual {v15, v0, v4}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "user_power_date"

    const/4 v2, 0x0

    invoke-static {v2, v0, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    invoke-static {v2}, Lcom/sgscq/vpn/p5;->F0(I)I

    move-result v2

    invoke-virtual {v15, v0, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "TeamGeneral"

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_3

    check-cast v2, Ljava/util/Map;

    const-string v3, "add"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/sgscq/vpn/h5;->M(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const-string v3, "upd"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sgscq/vpn/h5;->M(Ljava/lang/Object;Ljava/util/ArrayList;)V

    :cond_3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/high16 v5, -0x80000000

    const-string v6, "fight_point"

    const-string v7, "fighting"

    const-string v9, "fightPoint"

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "general_id"

    invoke-interface {v4, v12, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const-string v12, "team_general_id"

    invoke-interface {v4, v12, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const-string v12, "pk_id"

    invoke-interface {v4, v12, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_2

    :cond_4
    const-string v10, "general_fighting"

    filled-new-array {v10, v7, v6, v9}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    :goto_3
    const/4 v9, 0x4

    if-ge v7, v9, :cond_6

    .line 2
    aget-object v9, v6, v7

    invoke-static {v5, v9, v4}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v9

    if-eq v9, v5, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    :goto_4
    add-int/2addr v3, v9

    goto :goto_2

    :cond_7
    const/4 v0, 0x5

    const-string v2, "user_ability"

    const-string v4, "user_fighting"

    if-lez v3, :cond_8

    goto :goto_6

    .line 3
    :cond_8
    filled-new-array {v6, v4, v7, v9, v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v0, :cond_a

    .line 4
    aget-object v12, v3, v10

    invoke-static {v5, v12, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v12

    if-eq v12, v5, :cond_9

    move v3, v12

    goto :goto_6

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    move v3, v0

    .line 5
    :goto_6
    invoke-virtual {v15, v9, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v15, v6, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v15, v4, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v15, v7, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    iget-object v0, v1, Lcom/sgscq/vpn/h5;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p8 .. p8}, Lcom/sgscq/vpn/w1;->B(Ljava/util/Map;)I

    move-result v3

    invoke-virtual {v15, v2, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v2, "leadership_num"

    invoke-virtual {v15, v2, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v2, "leadershipNum"

    invoke-virtual {v15, v2, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v2, "user_leadership_num"

    invoke-virtual {v15, v2, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v2, "stage"

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v2, "totalRecharge"

    const/4 v4, 0x0

    invoke-static {v4, v2, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v4

    invoke-virtual {v15, v2, v4}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v2, "headIcon"

    invoke-static {v3, v2, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v4

    invoke-virtual {v15, v2, v4}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v2, "career"

    invoke-virtual {v15, v2, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v2, "lastLoginTime"

    move/from16 v3, p1

    invoke-virtual {v15, v2, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v2, "last_login_time"

    invoke-virtual {v15, v2, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v2, "user_last_login_time"

    invoke-virtual {v15, v2, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const/16 v2, 0xa

    const-string v3, "gold_soul"

    .line 6
    invoke-static {v2, v3, v8}, Lcom/sgscq/vpn/h5;->W0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x32

    const-string v5, "sliver_soul"

    invoke-static {v4, v5, v8}, Lcom/sgscq/vpn/h5;->W0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v5, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 7
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v15, v3, v4}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v15, v5, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "first_choose_general"

    const-string v3, "112018"

    invoke-static {v2, v3, v8}, Lcom/sgscq/vpn/h5;->N0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "first_choose_general"

    invoke-virtual {v15, v3, v2}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "first_wine_general"

    const-string v3, "0"

    invoke-static {v2, v3, v8}, Lcom/sgscq/vpn/h5;->N0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "first_wine_general"

    invoke-virtual {v15, v4, v2}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "freshman_step"

    const-string v4, ""

    invoke-static {v2, v4, v8}, Lcom/sgscq/vpn/h5;->N0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sgscq/vpn/h5;->G0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "freshman_step"

    invoke-virtual {v15, v5, v2}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "server_step"

    invoke-static {v2, v4, v8}, Lcom/sgscq/vpn/h5;->N0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sgscq/vpn/h5;->G0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "server_step"

    invoke-virtual {v15, v5, v2}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "guide_step"

    invoke-static {v2, v4, v8}, Lcom/sgscq/vpn/h5;->N0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sgscq/vpn/h5;->G0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "guide_step"

    invoke-virtual {v15, v5, v2}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "guide_completed"

    .line 8
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Ljava/lang/Boolean;

    if-eqz v5, :cond_b

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_7

    :cond_b
    instance-of v5, v2, Ljava/lang/String;

    if-eqz v5, :cond_c

    const-string v5, "true"

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    :goto_7
    const-string v5, "guide_completed"

    .line 9
    invoke-virtual {v15, v5, v2}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    const-string v2, "triple_speed"

    .line 10
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Ljava/lang/Boolean;

    if-eqz v5, :cond_d

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_8

    :cond_d
    instance-of v5, v2, Ljava/lang/String;

    if-eqz v5, :cond_e

    const-string v5, "true"

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_8

    :cond_e
    const/4 v2, 0x0

    :goto_8
    const-string v5, "triple_speed"

    .line 11
    invoke-virtual {v15, v5, v2}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    const-string v2, "triple_speed_vip_level"

    const/4 v5, 0x0

    invoke-static {v5, v2, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    const-string v5, "triple_speed_vip_level"

    invoke-virtual {v15, v5, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 12
    new-instance v2, Lcom/sgscq/vpn/y1;

    invoke-direct {v2}, Lcom/sgscq/vpn/y1;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    sget-object v6, Lcom/sgscq/vpn/h5;->g:[[Ljava/lang/String;

    const/4 v7, 0x0

    :goto_9
    const/4 v9, 0x7

    if-ge v7, v9, :cond_f

    aget-object v9, v6, v7

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_f
    const-string v7, "Item"

    invoke-static {v7, v8}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string v10, "item_id"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_10

    goto :goto_b

    :cond_10
    const-string v10, "id"

    :goto_b
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    goto :goto_a

    :cond_11
    const-string v12, "item_num"

    const/4 v13, 0x0

    invoke-static {v13, v12, v9}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v9

    if-gtz v9, :cond_12

    goto :goto_a

    :cond_12
    invoke-virtual {v2, v10, v9}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    goto :goto_a

    :cond_13
    invoke-static/range {p8 .. p8}, Lcom/sgscq/vpn/cloud/m0;->n2(Ljava/util/Map;)I

    move-result v5

    const/4 v7, 0x0

    :goto_c
    const/4 v9, 0x7

    const-string v10, "cd_item_price"

    if-ge v7, v9, :cond_1c

    aget-object v9, v6, v7

    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-static {v12}, Lcom/sgscq/vpn/cloud/m0;->y1(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-static {v5, v0, v12}, Lcom/sgscq/vpn/cloud/m0;->i2(ILandroid/content/Context;Ljava/lang/String;)I

    move-result v16

    move/from16 v14, v16

    goto :goto_d

    :cond_14
    const/16 v14, 0x63

    :goto_d
    if-eqz v13, :cond_15

    invoke-static {v5, v0, v12}, Lcom/sgscq/vpn/cloud/m0;->M1(ILandroid/content/Context;Ljava/lang/String;)I

    move-result v16

    goto :goto_e

    :cond_15
    const/16 v16, 0x63

    :goto_e
    if-eqz v13, :cond_16

    invoke-static {v5, v0, v12}, Lcom/sgscq/vpn/cloud/m0;->N1(ILandroid/content/Context;Ljava/lang/String;)I

    move-result v17

    goto :goto_f

    :cond_16
    const/16 v17, 0x1

    :goto_f
    if-eqz v13, :cond_17

    invoke-static {v12, v8}, Lcom/sgscq/vpn/cloud/m0;->b0(Ljava/lang/String;Ljava/util/Map;)I

    move-result v13

    goto :goto_10

    :cond_17
    const/4 v13, 0x0

    :goto_10
    const-string v1, "600030"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move/from16 p1, v5

    const/16 v5, 0x32

    if-eqz v1, :cond_18

    invoke-static {v5, v10, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v5

    .line 13
    :cond_18
    invoke-static {v12, v8}, Lcom/sgscq/vpn/cloud/m0;->b0(Ljava/lang/String;Ljava/util/Map;)I

    move-result v1

    invoke-static {v1, v5, v12, v8}, Lcom/sgscq/vpn/p5;->x1(IILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    .line 14
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v12}, Lcom/sgscq/vpn/cloud/m0;->o1(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 15
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 p2, v6

    const/16 v6, 0xa

    invoke-direct {v10, v6}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v18, Lcom/sgscq/vpn/p5;->J:[I

    const/16 v19, 0x0

    move/from16 v21, v19

    move/from16 v19, v11

    move/from16 v11, v21

    :goto_11
    if-ge v11, v6, :cond_19

    aget v6, v18, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    const/16 v6, 0xa

    goto :goto_11

    .line 16
    :cond_19
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v10, v13, 0x1

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v10, 0x0

    :goto_12
    if-ge v10, v6, :cond_1a

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v18, v0

    const/16 v0, 0x9

    .line 17
    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move-object/from16 p3, v3

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v20, Lcom/sgscq/vpn/p5;->J:[I

    aget v0, v20, v0

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 p4, v4

    const-string v4, "item_price"

    invoke-static {v4, v0, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-interface {v5, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v0, v18

    goto :goto_12

    :cond_1a
    move-object/from16 v18, v0

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    const-string v0, "length"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_1b
    move-object/from16 v18, v0

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p2, v6

    move/from16 v19, v11

    :goto_13
    const-string v0, "price"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "used_num"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "all_num"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "next_all_num"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "next_vip_level"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object v0, v9, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "effect_value"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v12, v0}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v0, v18

    move/from16 v11, v19

    goto/16 :goto_c

    :cond_1c
    move-object/from16 v18, v0

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move/from16 v19, v11

    invoke-virtual {v2}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "item_count"

    .line 19
    invoke-virtual {v15, v1, v0}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "user_map_step"

    move-object/from16 v1, p4

    invoke-static {v0, v1, v8}, Lcom/sgscq/vpn/h5;->N0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    move-object/from16 v2, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    const-string v3, "null"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_14

    :cond_1d
    const-string v3, "5\\d{2}"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_15

    :cond_1e
    move-object/from16 v2, p3

    :cond_1f
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/h5;->Z()Ljava/lang/String;

    move-result-object v0

    :goto_15
    invoke-static {v0}, Lcom/sgscq/vpn/h5;->Z0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_20
    const-string v3, "user_map_step"

    .line 21
    invoke-virtual {v15, v3, v0}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "user_position_step"

    const/4 v3, 0x1

    invoke-static {v3, v0, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    if-gtz v0, :cond_21

    const/4 v0, 0x1

    :cond_21
    const-string v3, "user_position_step"

    invoke-virtual {v15, v3, v0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "user_elite_map_step"

    .line 22
    invoke-static {v0, v2, v8}, Lcom/sgscq/vpn/h5;->N0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/h5;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "105"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-static {v0}, Lcom/sgscq/vpn/h5;->Z0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move/from16 v3, v19

    goto :goto_17

    .line 23
    :cond_22
    :try_start_0
    invoke-static/range {v18 .. v18}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v0

    const-string v3, "EliteMap_Unlock_Level"

    const/16 v4, 0x9

    invoke-virtual {v0, v3, v4}, Lcom/sgscq/vpn/w1;->U0(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_16

    :catchall_0
    const/16 v0, 0x9

    :goto_16
    move/from16 v3, v19

    if-lt v3, v0, :cond_23

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/h5;->X()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/h5;->Z0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_23
    move-object v0, v2

    :goto_17
    const-string v4, "user_elite_map_step"

    .line 25
    invoke-virtual {v15, v4, v0}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "user_elite_position_step"

    .line 26
    invoke-static {v0, v2, v8}, Lcom/sgscq/vpn/h5;->N0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/h5;->V(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_2a

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_24

    goto :goto_1c

    .line 27
    :cond_24
    :try_start_1
    invoke-static/range {v18 .. v18}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v0

    const-string v4, "EliteMap_Unlock_Level"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v5, 0x9

    :try_start_2
    invoke-virtual {v0, v4, v5}, Lcom/sgscq/vpn/w1;->U0(Ljava/lang/String;I)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_18

    :catchall_1
    const/16 v5, 0x9

    :catchall_2
    move v0, v5

    :goto_18
    if-lt v3, v0, :cond_25

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/h5;->X()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_25
    move-object v0, v1

    :goto_19
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_26

    move-object v3, v2

    goto :goto_1d

    :cond_26
    :try_start_3
    invoke-static/range {v18 .. v18}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Lcom/sgscq/vpn/w1;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_1a

    :cond_27
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1b

    :catchall_3
    :cond_28
    :goto_1a
    move-object v0, v1

    :goto_1b
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_29
    const-string v0, "1050100101"

    :cond_2a
    :goto_1c
    move-object v3, v0

    :goto_1d
    const-string v0, "user_elite_position_step"

    .line 29
    invoke-virtual {v15, v0, v3}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "coolDownTime"

    const/4 v2, 0x0

    invoke-static {v2, v0, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v3

    const-string v4, "dungeon_cold_time"

    invoke-static {v3, v4, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v3

    const-string v4, "chaosCountDown"

    invoke-static {v2, v4, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v5

    const-string v6, "to_danger_time"

    invoke-static {v5, v6, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v5

    invoke-static {v3, v0, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v6

    invoke-virtual {v15, v0, v6}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-static {v5, v4, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    invoke-virtual {v15, v4, v0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "dungeon_cold_time"

    invoke-virtual {v15, v0, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-static {v2, v10, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    invoke-virtual {v15, v10, v0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "base_cold_time"

    invoke-static {v2, v0, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    const-string v3, "base_cold_time"

    invoke-virtual {v15, v3, v0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "to_danger_time"

    invoke-virtual {v15, v0, v5}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "user_honor"

    invoke-static {v2, v0, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    const-string v3, "user_honor"

    invoke-virtual {v15, v3, v0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "user_invite_code"

    invoke-virtual {v15, v0, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "user_charge_count"

    invoke-static {v2, v0, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    const-string v3, "user_charge_count"

    invoke-virtual {v15, v3, v0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "current_charge_gold"

    invoke-static {v2, v0, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    const-string v3, "current_charge_gold"

    invoke-virtual {v15, v3, v0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "count_charge_gold"

    invoke-static {v2, v0, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    const-string v2, "count_charge_gold"

    invoke-virtual {v15, v2, v0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "user_login_days"

    const/4 v2, 0x1

    invoke-static {v2, v0, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    const-string v2, "user_count_login_days"

    invoke-static {v0, v2, v8}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    const-string v2, "user_count_login_days"

    invoke-virtual {v15, v2, v0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "unionId"

    const/4 v3, 0x0

    invoke-static {v3, v2, v8}, Lcom/sgscq/vpn/h5;->W0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v4

    const-string v5, "union_id"

    invoke-static {v4, v5, v8}, Lcom/sgscq/vpn/h5;->W0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v4

    const-string v6, "unionName"

    invoke-static {v6, v1, v8}, Lcom/sgscq/vpn/h5;->X0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "union_name"

    invoke-static {v7, v1, v8}, Lcom/sgscq/vpn/h5;->X0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string v9, "user_role"

    invoke-static {v3, v9, v8}, Lcom/sgscq/vpn/h5;->W0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v10

    const-string v11, "user_donate"

    invoke-static {v3, v11, v8}, Lcom/sgscq/vpn/h5;->W0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v12

    const-string v13, "union_donate_num"

    invoke-static {v12, v13, v8}, Lcom/sgscq/vpn/h5;->W0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v12

    const-string v13, "union_today_donate"

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/sgscq/vpn/h5;->Y0(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "donate_state"

    if-eqz v13, :cond_2b

    const/4 v3, 0x1

    goto :goto_1e

    :cond_2b
    invoke-static {v3, v14, v8}, Lcom/sgscq/vpn/h5;->W0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v3

    :goto_1e
    const-string v13, "union_war_sign_up"

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sgscq/vpn/h5;->Y0(Ljava/lang/Object;)Z

    move-result v16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 p1, v0

    move-object/from16 p2, v7

    move-object/from16 p3, v1

    move/from16 p4, v10

    move-object/from16 p5, v9

    move/from16 p6, v12

    move-object/from16 p7, v11

    .line 31
    invoke-static/range {p1 .. p7}, Lc/a;->z(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    if-nez v4, :cond_2c

    goto :goto_1f

    :cond_2c
    if-lez v3, :cond_2d

    :goto_1f
    const/4 v1, 0x0

    goto :goto_20

    :cond_2d
    const/16 v1, 0x19

    .line 32
    :goto_20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "donate_num"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v15, v2, v1}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v15, v5, v1}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v15, v6, v1}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v15, v7, v1}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v15, v9, v1}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v0, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v15, v11, v1}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v15, v4, v1}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v0, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v15, v14, v1}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v0, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v15, v13, v0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "luxun"

    const/4 v1, 0x0

    invoke-virtual {v15, v0, v1}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "isAdult"

    const/4 v2, 0x1

    invoke-virtual {v15, v0, v2}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    const-string v0, "isBroadShowed"

    invoke-virtual {v15, v0, v1}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    const-string v0, "ladderChallengeTimes"

    move-object/from16 v1, p8

    .line 34
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "ladderRankSalary"

    const/4 v4, 0x0

    .line 35
    invoke-static {v1, v3, v4}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v1

    .line 36
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "ladder_rank_salary"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ladder_challenging_num"

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v15, v0, v1}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v15, v3, v0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v15, v5, v0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v15, v2, v0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v15}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SGSCQ_SRV"

    const-string v2, "buildPlayerDataJson error"

    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/z2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public final u(IIIIJLjava/lang/String;Ljava/util/Map;)Ljava/util/HashMap;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p8}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :try_start_0
    new-instance p2, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    if-eqz p4, :cond_0

    .line 19
    .line 20
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    check-cast p4, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p5

    .line 30
    invoke-static {p5}, Lcom/sgscq/vpn/h5;->R(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p5

    .line 34
    invoke-virtual {p2, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object p2

    .line 39
    :catch_0
    move-exception p1

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string p3, "buildPlayerDataMap error: "

    .line 43
    .line 44
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string p2, "SGSCQ_SRV"

    .line 59
    .line 60
    invoke-static {p2, p1}, Lcom/sgscq/vpn/z2;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    return-object p1
.end method

.method public final w0(Ljava/lang/String;)Ljava/util/Map;
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/sgscq/vpn/h5;->b:Lcom/sgscq/vpn/z4;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/z4;->g(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    monitor-enter v3

    .line 12
    :try_start_0
    iget-object v4, v2, Lcom/sgscq/vpn/z4;->e:Lcom/sgscq/vpn/p4;

    .line 13
    .line 14
    new-instance v5, Lcom/sgscq/vpn/a;

    .line 15
    .line 16
    const/4 v6, 0x5

    .line 17
    invoke-direct {v5, v2, v0, v6}, Lcom/sgscq/vpn/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4, v0, v5}, Lcom/sgscq/vpn/p4;->b(Ljava/lang/String;Lcom/sgscq/vpn/a;)Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    iget-object v5, v2, Lcom/sgscq/vpn/z4;->b:Lcom/sgscq/vpn/t4;

    .line 27
    .line 28
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v5, v0}, Lcom/sgscq/vpn/t4;->c(Ljava/lang/String;)Lcom/sgscq/vpn/r4;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    iget-object v8, v8, Lcom/sgscq/vpn/r4;->b:Ljava/util/List;

    .line 36
    .line 37
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    .line 39
    .line 40
    :try_start_2
    monitor-exit v5

    .line 41
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_0

    .line 46
    .line 47
    new-instance v5, Lcom/sgscq/vpn/d;

    .line 48
    .line 49
    const/16 v7, 0xf

    .line 50
    .line 51
    invoke-direct {v5, v2, v0, v7}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 52
    .line 53
    .line 54
    iget-object v7, v2, Lcom/sgscq/vpn/z4;->c:Lcom/sgscq/vpn/y4;

    .line 55
    .line 56
    iget-wide v8, v2, Lcom/sgscq/vpn/z4;->d:J

    .line 57
    .line 58
    invoke-interface {v7, v0, v8, v9, v5}, Lcom/sgscq/vpn/y4;->b(Ljava/lang/String;JLcom/sgscq/vpn/d;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto/16 :goto_a

    .line 64
    .line 65
    :catchall_1
    move-exception v0

    .line 66
    monitor-exit v5

    .line 67
    throw v0

    .line 68
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    const/4 v2, 0x0

    .line 70
    if-nez v4, :cond_1

    .line 71
    .line 72
    return-object v2

    .line 73
    :cond_1
    const-string v3, "data_version"

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    invoke-static {v5, v3, v4}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    iget-object v7, v1, Lcom/sgscq/vpn/h5;->c:Landroid/content/Context;

    .line 81
    .line 82
    const/4 v8, 0x1

    .line 83
    if-nez v7, :cond_2

    .line 84
    .line 85
    move-object v12, v2

    .line 86
    goto :goto_3

    .line 87
    :cond_2
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    const-string v9, "sgscq_cloud_passport_owner_v1"

    .line 92
    .line 93
    invoke-virtual {v7, v9, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    invoke-static/range {p1 .. p1}, Lc/e;->g0(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    invoke-static {v9}, Lc/e;->b0(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    const-string v11, ""

    .line 106
    .line 107
    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    invoke-static {v9}, Lc/e;->k0(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    const-string v12, ""

    .line 116
    .line 117
    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    invoke-static {v9}, Lc/e;->q0(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    invoke-interface {v7, v9, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    invoke-static {v11, v10}, Lc/e;->S(Ljava/lang/String;Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    new-instance v12, Lcom/sgscq/vpn/cloud/n0;

    .line 134
    .line 135
    const-string v13, "cloud"

    .line 136
    .line 137
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    if-nez v11, :cond_4

    .line 142
    .line 143
    if-eqz v9, :cond_3

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_3
    move v11, v5

    .line 147
    goto :goto_2

    .line 148
    :cond_4
    :goto_1
    move v11, v8

    .line 149
    :goto_2
    invoke-direct {v12, v11, v9, v10, v7}, Lcom/sgscq/vpn/cloud/n0;-><init>(ZZLjava/lang/String;I)V

    .line 150
    .line 151
    .line 152
    :goto_3
    if-eqz v12, :cond_5

    .line 153
    .line 154
    iget-boolean v7, v12, Lcom/sgscq/vpn/cloud/n0;->a:Z

    .line 155
    .line 156
    if-eqz v7, :cond_5

    .line 157
    .line 158
    move v7, v8

    .line 159
    goto :goto_4

    .line 160
    :cond_5
    move v7, v5

    .line 161
    :goto_4
    iget-object v9, v1, Lcom/sgscq/vpn/h5;->c:Landroid/content/Context;

    .line 162
    .line 163
    if-nez v9, :cond_6

    .line 164
    .line 165
    const-string v6, ""

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_6
    new-instance v10, Lm/e;

    .line 169
    .line 170
    invoke-direct {v10, v6, v9}, Lm/e;-><init>(ILandroid/content/Context;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v10}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-virtual {v6}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    if-eqz v9, :cond_7

    .line 182
    .line 183
    iget-object v6, v6, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 184
    .line 185
    invoke-static {v6}, Lc/e;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    goto :goto_5

    .line 190
    :cond_7
    const-string v6, ""

    .line 191
    .line 192
    :goto_5
    if-eqz v7, :cond_a

    .line 193
    .line 194
    invoke-static {v4}, Lcom/sgscq/vpn/h5;->q0(Ljava/util/Map;)Z

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    if-eqz v9, :cond_9

    .line 199
    .line 200
    iget-object v9, v12, Lcom/sgscq/vpn/cloud/n0;->c:Ljava/lang/String;

    .line 201
    .line 202
    if-eqz v9, :cond_8

    .line 203
    .line 204
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 205
    .line 206
    .line 207
    move-result v10

    .line 208
    if-nez v10, :cond_8

    .line 209
    .line 210
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    if-eqz v6, :cond_8

    .line 215
    .line 216
    invoke-static {v9, v4}, Lcom/sgscq/vpn/h5;->o0(Ljava/lang/String;Ljava/util/Map;)Z

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-eqz v6, :cond_8

    .line 221
    .line 222
    move v6, v8

    .line 223
    goto :goto_6

    .line 224
    :cond_8
    move v6, v5

    .line 225
    :goto_6
    if-eqz v6, :cond_9

    .line 226
    .line 227
    goto :goto_7

    .line 228
    :cond_9
    move v8, v5

    .line 229
    goto :goto_7

    .line 230
    :cond_a
    invoke-static {v4}, Lcom/sgscq/vpn/h5;->l0(Ljava/util/Map;)Z

    .line 231
    .line 232
    .line 233
    move-result v6

    .line 234
    if-eqz v6, :cond_9

    .line 235
    .line 236
    invoke-static {v4}, Lcom/sgscq/vpn/h5;->M0(Ljava/util/Map;)I

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    if-ltz v6, :cond_9

    .line 241
    .line 242
    invoke-static {v4}, Lcom/sgscq/vpn/h5;->M0(Ljava/util/Map;)I

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    const/4 v9, 0x7

    .line 247
    if-gt v6, v9, :cond_9

    .line 248
    .line 249
    :goto_7
    if-nez v8, :cond_c

    .line 250
    .line 251
    iget-object v2, v1, Lcom/sgscq/vpn/h5;->b:Lcom/sgscq/vpn/z4;

    .line 252
    .line 253
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/z4;->e(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    const-string v2, "SGSCQ_SRV"

    .line 257
    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    const-string v5, "[SavePlayer] Rejected unsupported save uid="

    .line 261
    .line 262
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const-string v0, " version="

    .line 269
    .line 270
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v0, " cloud="

    .line 277
    .line 278
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-static {v2, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 292
    .line 293
    if-eqz v7, :cond_b

    .line 294
    .line 295
    const-string v2, "\u4e91\u5b58\u6863\u5f52\u5c5e\u6216\u7248\u672c\u4e0e\u5f53\u524d\u8d26\u53f7\u4e0d\u4e00\u81f4"

    .line 296
    .line 297
    goto :goto_8

    .line 298
    :cond_b
    const-string v2, "\u672c\u5730\u5b58\u6863\u7248\u672c\u9ad8\u4e8e\u5f53\u524d\u5ba2\u6237\u7aef\u6216\u683c\u5f0f\u65e0\u6548"

    .line 299
    .line 300
    :goto_8
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw v0

    .line 304
    :cond_c
    invoke-static {v4}, Lcom/sgscq/vpn/h5;->s0(Ljava/util/Map;)Z

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    if-eqz v3, :cond_d

    .line 309
    .line 310
    iget-object v3, v1, Lcom/sgscq/vpn/h5;->b:Lcom/sgscq/vpn/z4;

    .line 311
    .line 312
    invoke-virtual {v3, v0}, Lcom/sgscq/vpn/z4;->e(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    const-string v3, "SGSCQ_SRV"

    .line 316
    .line 317
    new-instance v4, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    const-string v5, "[SavePlayer] Ignored unsupported settings max-level save uid="

    .line 320
    .line 321
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-static {v3, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    return-object v2

    .line 335
    :cond_d
    const-string v2, "user_power"

    .line 336
    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/h5;->H()I

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    invoke-static {v3, v2, v4}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    const-string v3, "user_power_date"

    .line 346
    .line 347
    invoke-static {v5, v3, v4}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 348
    .line 349
    .line 350
    move-result v3

    .line 351
    const-string v6, "user_power_recover_updated_at"

    .line 352
    .line 353
    const-wide/16 v13, 0x0

    .line 354
    .line 355
    invoke-static {v13, v14, v6, v4}, Lcom/sgscq/vpn/h5;->L0(JLjava/lang/String;Ljava/util/Map;)J

    .line 356
    .line 357
    .line 358
    move-result-wide v11

    .line 359
    const-string v6, "user_energy"

    .line 360
    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/h5;->G()I

    .line 362
    .line 363
    .line 364
    move-result v7

    .line 365
    invoke-static {v7, v6, v4}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 366
    .line 367
    .line 368
    move-result v6

    .line 369
    const-string v7, "user_energy_date"

    .line 370
    .line 371
    invoke-static {v5, v7, v4}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 372
    .line 373
    .line 374
    move-result v15

    .line 375
    const-string v7, "user_energy_recover_updated_at"

    .line 376
    .line 377
    invoke-static {v13, v14, v7, v4}, Lcom/sgscq/vpn/h5;->L0(JLjava/lang/String;Ljava/util/Map;)J

    .line 378
    .line 379
    .line 380
    move-result-wide v9

    .line 381
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 382
    .line 383
    .line 384
    move-result-wide v16

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/h5;->H()I

    .line 386
    .line 387
    .line 388
    move-result v18

    .line 389
    iget-object v7, v1, Lcom/sgscq/vpn/h5;->c:Landroid/content/Context;

    .line 390
    .line 391
    invoke-static {v7}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 392
    .line 393
    .line 394
    move-result-object v7

    .line 395
    const-string v8, "RevertPowerSeconds"

    .line 396
    .line 397
    const/16 v13, 0x12c

    .line 398
    .line 399
    invoke-virtual {v7, v8, v13}, Lcom/sgscq/vpn/w1;->U0(Ljava/lang/String;I)I

    .line 400
    .line 401
    .line 402
    move-result v13

    .line 403
    const-string v8, "user_power"

    .line 404
    .line 405
    const-string v14, "user_power_date"

    .line 406
    .line 407
    const-string v19, "user_power_recover_updated_at"

    .line 408
    .line 409
    move-object v7, v4

    .line 410
    move-wide/from16 v20, v9

    .line 411
    .line 412
    move-object v9, v14

    .line 413
    move-object/from16 v10, v19

    .line 414
    .line 415
    move-wide/from16 v22, v11

    .line 416
    .line 417
    move/from16 v11, v18

    .line 418
    .line 419
    move v12, v13

    .line 420
    move-wide/from16 v13, v16

    .line 421
    .line 422
    invoke-static/range {v7 .. v14}, Lcom/sgscq/vpn/p5;->G0(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)Z

    .line 423
    .line 424
    .line 425
    move-result v18

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/h5;->G()I

    .line 427
    .line 428
    .line 429
    move-result v11

    .line 430
    iget-object v7, v1, Lcom/sgscq/vpn/h5;->c:Landroid/content/Context;

    .line 431
    .line 432
    invoke-static {v7}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 433
    .line 434
    .line 435
    move-result-object v7

    .line 436
    const-string v8, "RevertEnergySeconds"

    .line 437
    .line 438
    const/16 v9, 0x708

    .line 439
    .line 440
    invoke-virtual {v7, v8, v9}, Lcom/sgscq/vpn/w1;->U0(Ljava/lang/String;I)I

    .line 441
    .line 442
    .line 443
    move-result v12

    .line 444
    const-string v8, "user_energy"

    .line 445
    .line 446
    const-string v9, "user_energy_date"

    .line 447
    .line 448
    const-string v10, "user_energy_recover_updated_at"

    .line 449
    .line 450
    move-object v7, v4

    .line 451
    invoke-static/range {v7 .. v14}, Lcom/sgscq/vpn/p5;->G0(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)Z

    .line 452
    .line 453
    .line 454
    move-result v7

    .line 455
    if-eqz v18, :cond_e

    .line 456
    .line 457
    const-string v8, "SGSCQ_SRV"

    .line 458
    .line 459
    new-instance v9, Ljava/lang/StringBuilder;

    .line 460
    .line 461
    const-string v10, "[PowerRecovery] uid="

    .line 462
    .line 463
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    const-string v10, " power "

    .line 470
    .line 471
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    const-string v2, "->"

    .line 478
    .line 479
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    const-string v2, "user_power"

    .line 483
    .line 484
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/h5;->H()I

    .line 485
    .line 486
    .line 487
    move-result v10

    .line 488
    invoke-static {v10, v2, v4}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 489
    .line 490
    .line 491
    move-result v2

    .line 492
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    const-string v2, " date "

    .line 496
    .line 497
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    const-string v2, "->"

    .line 504
    .line 505
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    const-string v2, "user_power_date"

    .line 509
    .line 510
    invoke-static {v5, v2, v4}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 511
    .line 512
    .line 513
    move-result v2

    .line 514
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    const-string v2, " updatedAt "

    .line 518
    .line 519
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    move-wide/from16 v2, v22

    .line 523
    .line 524
    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    const-string v2, "->"

    .line 528
    .line 529
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    const-string v2, "user_power_recover_updated_at"

    .line 533
    .line 534
    const-wide/16 v10, 0x0

    .line 535
    .line 536
    invoke-static {v10, v11, v2, v4}, Lcom/sgscq/vpn/h5;->L0(JLjava/lang/String;Ljava/util/Map;)J

    .line 537
    .line 538
    .line 539
    move-result-wide v2

    .line 540
    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    invoke-static {v8, v2}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    goto :goto_9

    .line 551
    :cond_e
    const-wide/16 v10, 0x0

    .line 552
    .line 553
    :goto_9
    if-eqz v7, :cond_f

    .line 554
    .line 555
    const-string v2, "SGSCQ_SRV"

    .line 556
    .line 557
    new-instance v3, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    const-string v8, "[EnergyRecovery] uid="

    .line 560
    .line 561
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    const-string v8, " energy "

    .line 568
    .line 569
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    const-string v6, "->"

    .line 576
    .line 577
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    const-string v6, "user_energy"

    .line 581
    .line 582
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/h5;->G()I

    .line 583
    .line 584
    .line 585
    move-result v8

    .line 586
    invoke-static {v8, v6, v4}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 587
    .line 588
    .line 589
    move-result v6

    .line 590
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    const-string v6, " date "

    .line 594
    .line 595
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    const-string v6, "->"

    .line 602
    .line 603
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    const-string v6, "user_energy_date"

    .line 607
    .line 608
    invoke-static {v5, v6, v4}, Lcom/sgscq/vpn/h5;->K0(ILjava/lang/String;Ljava/util/Map;)I

    .line 609
    .line 610
    .line 611
    move-result v5

    .line 612
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    const-string v5, " updatedAt "

    .line 616
    .line 617
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    move-wide/from16 v5, v20

    .line 621
    .line 622
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    const-string v5, "->"

    .line 626
    .line 627
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    const-string v5, "user_energy_recover_updated_at"

    .line 631
    .line 632
    invoke-static {v10, v11, v5, v4}, Lcom/sgscq/vpn/h5;->L0(JLjava/lang/String;Ljava/util/Map;)J

    .line 633
    .line 634
    .line 635
    move-result-wide v5

    .line 636
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v3

    .line 643
    invoke-static {v2, v3}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    :cond_f
    if-nez v18, :cond_10

    .line 647
    .line 648
    if-eqz v7, :cond_11

    .line 649
    .line 650
    :cond_10
    invoke-virtual {v1, v0, v4}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 651
    .line 652
    .line 653
    :cond_11
    return-object v4

    .line 654
    :goto_a
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 655
    throw v0
.end method

.method public final y0(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-string v3, "account_uid"

    .line 8
    .line 9
    const-string v4, "user_id"

    .line 10
    .line 11
    move-object/from16 v5, p1

    .line 12
    .line 13
    invoke-static {v3, v5, v4, v5}, Lc/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v4, "player_name"

    .line 18
    .line 19
    const-string v6, "\u73a9\u5bb6"

    .line 20
    .line 21
    iget-object v7, v0, Lcom/sgscq/vpn/h5;->d:Landroid/content/SharedPreferences;

    .line 22
    .line 23
    invoke-interface {v7, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const-string v6, "user_nickname"

    .line 28
    .line 29
    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const-string v4, "first_choose_general"

    .line 33
    .line 34
    const-string v6, "0"

    .line 35
    .line 36
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const-string v4, "first_wine_general"

    .line 40
    .line 41
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    const-string v8, "headIcon"

    .line 50
    .line 51
    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const/4 v8, 0x1

    .line 55
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    const-string v9, "user_level"

    .line 60
    .line 61
    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    const-string v9, "user_vip_level"

    .line 65
    .line 66
    invoke-virtual {v3, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    const-string v9, "user_experience"

    .line 70
    .line 71
    invoke-virtual {v3, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    const-string v9, "resource_coin"

    .line 75
    .line 76
    invoke-virtual {v0, v9, v4}, Lcom/sgscq/vpn/h5;->J0(Ljava/lang/String;I)I

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    const-string v10, "user_coin"

    .line 85
    .line 86
    invoke-virtual {v3, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    const-string v9, "user_gold"

    .line 90
    .line 91
    invoke-virtual {v3, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/h5;->H()I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    const-string v10, "user_power"

    .line 103
    .line 104
    invoke-virtual {v3, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    const-string v9, "user_power_date"

    .line 108
    .line 109
    invoke-virtual {v3, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/h5;->G()I

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    const-string v10, "user_energy"

    .line 121
    .line 122
    invoke-virtual {v3, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    const-string v9, "user_energy_date"

    .line 126
    .line 127
    invoke-virtual {v3, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    const-string v9, "user_sign"

    .line 131
    .line 132
    const-string v10, "\u8fd9\u4e2a\u4eba\u5f88\u61d2\uff0c\u4ec0\u4e48\u90fd\u6ca1\u6709\u7559\u4e0b\u3002"

    .line 133
    .line 134
    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    const-string v9, "user_register_time"

    .line 138
    .line 139
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    const-string v9, "user_last_login_time"

    .line 147
    .line 148
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v3, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    const-string v1, "user_ability"

    .line 156
    .line 157
    invoke-virtual {v3, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    const-string v1, "user_login_days"

    .line 161
    .line 162
    invoke-virtual {v3, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    const/16 v1, 0xa

    .line 166
    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    const-string v2, "gold_soul"

    .line 172
    .line 173
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    const/16 v1, 0x32

    .line 177
    .line 178
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    const-string v2, "sliver_soul"

    .line 183
    .line 184
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    const-string v1, "user_honor"

    .line 188
    .line 189
    invoke-virtual {v3, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    const-string v1, "user_invite_code"

    .line 193
    .line 194
    invoke-virtual {v3, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    const-string v1, "user_count_login_days"

    .line 198
    .line 199
    invoke-virtual {v3, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    const-string v1, "user_map_step"

    .line 203
    .line 204
    invoke-virtual {v3, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    const-string v1, "user_position_step"

    .line 208
    .line 209
    invoke-virtual {v3, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    const-string v1, "user_elite_map_step"

    .line 213
    .line 214
    invoke-virtual {v3, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    const-string v1, "user_elite_position_step"

    .line 218
    .line 219
    invoke-virtual {v3, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    const-string v1, "unionId"

    .line 223
    .line 224
    invoke-virtual {v3, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    const-string v1, "unionName"

    .line 228
    .line 229
    const-string v2, ""

    .line 230
    .line 231
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    const-string v1, "user_role"

    .line 235
    .line 236
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    const-string v1, "user_donate"

    .line 240
    .line 241
    invoke-virtual {v3, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    const-string v1, "freshman_step"

    .line 245
    .line 246
    invoke-virtual {v3, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    const-string v1, "server_step"

    .line 250
    .line 251
    invoke-virtual {v3, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    const-string v1, "guide_step"

    .line 255
    .line 256
    invoke-virtual {v3, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    const-string v1, "guide_completed"

    .line 260
    .line 261
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 262
    .line 263
    invoke-virtual {v3, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    const-string v1, "resource_items_quantity"

    .line 267
    .line 268
    invoke-virtual {v0, v1, v4}, Lcom/sgscq/vpn/h5;->J0(Ljava/lang/String;I)I

    .line 269
    .line 270
    .line 271
    const-string v1, "gift_boxes_enabled"

    .line 272
    .line 273
    invoke-virtual {v0, v1, v4}, Lcom/sgscq/vpn/h5;->J0(Ljava/lang/String;I)I

    .line 274
    .line 275
    .line 276
    new-instance v1, Ljava/util/ArrayList;

    .line 277
    .line 278
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .line 280
    .line 281
    iget-object v9, v0, Lcom/sgscq/vpn/h5;->c:Landroid/content/Context;

    .line 282
    .line 283
    invoke-static {v9}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 284
    .line 285
    .line 286
    move-result-object v10

    .line 287
    invoke-virtual {v10}, Lcom/sgscq/vpn/w1;->i0()Ljava/util/ArrayList;

    .line 288
    .line 289
    .line 290
    move-result-object v10

    .line 291
    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 292
    .line 293
    .line 294
    move-result v11

    .line 295
    const-string v12, "general_id"

    .line 296
    .line 297
    const-string v13, "pk_id"

    .line 298
    .line 299
    if-ge v4, v11, :cond_0

    .line 300
    .line 301
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v11

    .line 305
    check-cast v11, Ljava/lang/String;

    .line 306
    .line 307
    const-string v14, "id"

    .line 308
    .line 309
    invoke-static {v13, v11, v14, v11}, Lc/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 310
    .line 311
    .line 312
    move-result-object v13

    .line 313
    invoke-virtual {v13, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    const-string v11, "card_type"

    .line 317
    .line 318
    invoke-virtual {v13, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    const-string v11, "num"

    .line 322
    .line 323
    invoke-virtual {v13, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    add-int/lit8 v4, v4, 0x1

    .line 330
    .line 331
    goto :goto_0

    .line 332
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .line 333
    .line 334
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .line 336
    .line 337
    new-instance v7, Ljava/util/ArrayList;

    .line 338
    .line 339
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .line 341
    .line 342
    new-instance v10, Ljava/util/ArrayList;

    .line 343
    .line 344
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .line 346
    .line 347
    const-string v11, "upd"

    .line 348
    .line 349
    const-string v14, "add"

    .line 350
    .line 351
    filled-new-array {v11, v7, v14, v10}, [Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v7

    .line 355
    const-string v10, "del"

    .line 356
    .line 357
    const-string v15, "General"

    .line 358
    .line 359
    invoke-static {v10, v4, v7, v3, v15}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    new-instance v7, Ljava/util/ArrayList;

    .line 364
    .line 365
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .line 367
    .line 368
    new-instance v15, Ljava/util/ArrayList;

    .line 369
    .line 370
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .line 372
    .line 373
    filled-new-array {v11, v7, v14, v15}, [Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v7

    .line 377
    const-string v15, "Skill"

    .line 378
    .line 379
    invoke-static {v10, v4, v7, v3, v15}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    new-instance v7, Ljava/util/ArrayList;

    .line 384
    .line 385
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .line 387
    .line 388
    filled-new-array {v11, v7, v14, v1}, [Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    const-string v7, "GeneralSoul"

    .line 393
    .line 394
    invoke-static {v10, v4, v1, v3, v7}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    new-instance v4, Ljava/util/ArrayList;

    .line 399
    .line 400
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .line 402
    .line 403
    new-instance v7, Ljava/util/ArrayList;

    .line 404
    .line 405
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .line 407
    .line 408
    filled-new-array {v11, v4, v14, v7}, [Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    const-string v7, "Item"

    .line 413
    .line 414
    invoke-static {v10, v1, v4, v3, v7}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    new-instance v4, Ljava/util/ArrayList;

    .line 419
    .line 420
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .line 422
    .line 423
    new-instance v7, Ljava/util/ArrayList;

    .line 424
    .line 425
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .line 427
    .line 428
    filled-new-array {v14, v4, v11, v7}, [Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    const-string v7, "TeamGeneral"

    .line 433
    .line 434
    invoke-static {v10, v1, v4, v3, v7}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    new-instance v4, Ljava/util/ArrayList;

    .line 439
    .line 440
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .line 442
    .line 443
    new-instance v7, Ljava/util/ArrayList;

    .line 444
    .line 445
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .line 447
    .line 448
    filled-new-array {v14, v4, v11, v7}, [Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    const-string v7, "Equipment"

    .line 453
    .line 454
    invoke-static {v10, v1, v4, v3, v7}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    new-instance v4, Ljava/util/ArrayList;

    .line 459
    .line 460
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .line 462
    .line 463
    new-instance v7, Ljava/util/ArrayList;

    .line 464
    .line 465
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .line 467
    .line 468
    filled-new-array {v14, v4, v11, v7}, [Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v4

    .line 472
    const-string v7, "EquipmentPiece"

    .line 473
    .line 474
    invoke-static {v10, v1, v4, v3, v7}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    const/4 v4, 0x4

    .line 479
    new-array v4, v4, [Ljava/lang/Object;

    .line 480
    .line 481
    const/4 v7, 0x0

    .line 482
    aput-object v11, v4, v7

    .line 483
    .line 484
    new-instance v7, Ljava/util/ArrayList;

    .line 485
    .line 486
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .line 488
    .line 489
    const/4 v15, 0x1

    .line 490
    aput-object v7, v4, v15

    .line 491
    .line 492
    const/4 v7, 0x2

    .line 493
    aput-object v14, v4, v7

    .line 494
    .line 495
    invoke-static {v9}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 496
    .line 497
    .line 498
    move-result-object v7

    .line 499
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 500
    .line 501
    .line 502
    new-instance v15, Ljava/util/ArrayList;

    .line 503
    .line 504
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v7}, Lcom/sgscq/vpn/w1;->i0()Ljava/util/ArrayList;

    .line 508
    .line 509
    .line 510
    move-result-object v16

    .line 511
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 512
    .line 513
    .line 514
    move-result-object v26

    .line 515
    const/16 v16, 0x0

    .line 516
    .line 517
    :goto_1
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    .line 518
    .line 519
    .line 520
    move-result v17

    .line 521
    const-string v0, "relation_model"

    .line 522
    .line 523
    const-string v5, "general_grade"

    .line 524
    .line 525
    move-object/from16 v18, v15

    .line 526
    .line 527
    const-string v15, "general_status"

    .line 528
    .line 529
    move-object/from16 v27, v9

    .line 530
    .line 531
    const-string v9, "atlas_status"

    .line 532
    .line 533
    move-object/from16 v28, v11

    .line 534
    .line 535
    const-string v11, "1"

    .line 536
    .line 537
    move-object/from16 v29, v14

    .line 538
    .line 539
    const-string v14, "type"

    .line 540
    .line 541
    move-object/from16 v30, v1

    .line 542
    .line 543
    const-string v1, "resource_id"

    .line 544
    .line 545
    if-eqz v17, :cond_8

    .line 546
    .line 547
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v17

    .line 551
    move-object/from16 v31, v3

    .line 552
    .line 553
    move-object/from16 v3, v17

    .line 554
    .line 555
    check-cast v3, Ljava/lang/String;

    .line 556
    .line 557
    invoke-static {v13, v3, v14, v11}, Lc/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 558
    .line 559
    .line 560
    move-result-object v14

    .line 561
    invoke-virtual {v14, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-object/from16 v17, v11

    .line 565
    .line 566
    invoke-virtual {v7, v3}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 567
    .line 568
    .line 569
    move-result-object v11

    .line 570
    if-eqz v11, :cond_1

    .line 571
    .line 572
    invoke-interface {v11, v1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v19

    .line 576
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v19

    .line 580
    move-object/from16 v32, v12

    .line 581
    .line 582
    move-object/from16 v12, v19

    .line 583
    .line 584
    goto :goto_2

    .line 585
    :cond_1
    move-object/from16 v32, v12

    .line 586
    .line 587
    move-object v12, v3

    .line 588
    :goto_2
    invoke-virtual {v14, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result v1

    .line 595
    if-eqz v1, :cond_2

    .line 596
    .line 597
    move-object/from16 v1, v17

    .line 598
    .line 599
    goto :goto_3

    .line 600
    :cond_2
    move-object v1, v6

    .line 601
    :goto_3
    invoke-virtual {v14, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    move-result v1

    .line 608
    if-eqz v1, :cond_3

    .line 609
    .line 610
    move-object/from16 v1, v17

    .line 611
    .line 612
    goto :goto_4

    .line 613
    :cond_3
    move-object v1, v6

    .line 614
    :goto_4
    invoke-virtual {v14, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v14, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    add-int/lit8 v1, v16, 0x1

    .line 621
    .line 622
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v5

    .line 626
    invoke-virtual {v14, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    const-string v0, "general_orbit"

    .line 630
    .line 631
    if-eqz v11, :cond_6

    .line 632
    .line 633
    const-string v5, "general_hp"

    .line 634
    .line 635
    invoke-static {v5, v11}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    .line 636
    .line 637
    .line 638
    move-result-wide v19

    .line 639
    const-string v9, "general_attack"

    .line 640
    .line 641
    invoke-static {v9, v11}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    .line 642
    .line 643
    .line 644
    move-result-wide v21

    .line 645
    const-string v12, "general_defense"

    .line 646
    .line 647
    invoke-static {v12, v11}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    .line 648
    .line 649
    .line 650
    move-result-wide v23

    .line 651
    const-string v15, "general_wisdom"

    .line 652
    .line 653
    invoke-static {v15, v11}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    .line 654
    .line 655
    .line 656
    move-result-wide v33

    .line 657
    move/from16 v35, v1

    .line 658
    .line 659
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    invoke-virtual {v14, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v1

    .line 670
    invoke-virtual {v14, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    invoke-virtual {v14, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    invoke-static/range {v33 .. v34}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v1

    .line 684
    invoke-virtual {v14, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-object/from16 v12, v18

    .line 688
    .line 689
    move-object v15, v7

    .line 690
    move-object/from16 v16, v14

    .line 691
    .line 692
    move-object/from16 v17, v11

    .line 693
    .line 694
    move-wide/from16 v18, v19

    .line 695
    .line 696
    move-wide/from16 v20, v21

    .line 697
    .line 698
    move-wide/from16 v22, v23

    .line 699
    .line 700
    move-wide/from16 v24, v33

    .line 701
    .line 702
    invoke-virtual/range {v15 .. v25}, Lcom/sgscq/vpn/w1;->W(Ljava/util/Map;Ljava/util/Map;DDDD)V

    .line 703
    .line 704
    .line 705
    const-string v1, "grade"

    .line 706
    .line 707
    invoke-static {v1, v11}, Lcom/sgscq/vpn/w1;->b1(Ljava/lang/String;Ljava/util/Map;)I

    .line 708
    .line 709
    .line 710
    move-result v5

    .line 711
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 712
    .line 713
    .line 714
    move-result-object v5

    .line 715
    invoke-virtual {v14, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    const-string v1, "star"

    .line 719
    .line 720
    invoke-static {v1, v11}, Lcom/sgscq/vpn/w1;->b1(Ljava/lang/String;Ljava/util/Map;)I

    .line 721
    .line 722
    .line 723
    move-result v5

    .line 724
    if-lez v5, :cond_4

    .line 725
    .line 726
    goto :goto_5

    .line 727
    :cond_4
    const/4 v5, 0x1

    .line 728
    :goto_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 729
    .line 730
    .line 731
    move-result-object v5

    .line 732
    invoke-virtual {v14, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    const-string v1, "general_sex"

    .line 736
    .line 737
    invoke-static {v1, v11}, Lcom/sgscq/vpn/w1;->b1(Ljava/lang/String;Ljava/util/Map;)I

    .line 738
    .line 739
    .line 740
    move-result v5

    .line 741
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 742
    .line 743
    .line 744
    move-result-object v5

    .line 745
    invoke-virtual {v14, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    invoke-static {v0, v11}, Lcom/sgscq/vpn/w1;->b1(Ljava/lang/String;Ljava/util/Map;)I

    .line 749
    .line 750
    .line 751
    move-result v1

    .line 752
    if-lez v1, :cond_5

    .line 753
    .line 754
    goto :goto_6

    .line 755
    :cond_5
    const/4 v1, 0x1

    .line 756
    :goto_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    invoke-virtual {v7, v3}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v0

    .line 767
    if-eqz v0, :cond_7

    .line 768
    .line 769
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 770
    .line 771
    .line 772
    move-result v1

    .line 773
    if-nez v1, :cond_7

    .line 774
    .line 775
    const-string v1, "general_name"

    .line 776
    .line 777
    invoke-virtual {v14, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    .line 779
    .line 780
    goto :goto_7

    .line 781
    :cond_6
    move/from16 v35, v1

    .line 782
    .line 783
    move-object/from16 v12, v18

    .line 784
    .line 785
    invoke-virtual {v14, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    :cond_7
    :goto_7
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    .line 790
    .line 791
    move-object/from16 v0, p0

    .line 792
    .line 793
    move-object/from16 v5, p1

    .line 794
    .line 795
    move-object v15, v12

    .line 796
    move-object/from16 v9, v27

    .line 797
    .line 798
    move-object/from16 v11, v28

    .line 799
    .line 800
    move-object/from16 v14, v29

    .line 801
    .line 802
    move-object/from16 v1, v30

    .line 803
    .line 804
    move-object/from16 v3, v31

    .line 805
    .line 806
    move-object/from16 v12, v32

    .line 807
    .line 808
    move/from16 v16, v35

    .line 809
    .line 810
    goto/16 :goto_1

    .line 811
    .line 812
    :cond_8
    move-object/from16 v31, v3

    .line 813
    .line 814
    move-object/from16 v17, v11

    .line 815
    .line 816
    move-object/from16 v12, v18

    .line 817
    .line 818
    invoke-virtual {v7}, Lcom/sgscq/vpn/w1;->k0()Ljava/util/ArrayList;

    .line 819
    .line 820
    .line 821
    move-result-object v3

    .line 822
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 823
    .line 824
    .line 825
    move-result-object v3

    .line 826
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 827
    .line 828
    .line 829
    move-result v8

    .line 830
    if-eqz v8, :cond_a

    .line 831
    .line 832
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object v8

    .line 836
    check-cast v8, Ljava/lang/String;

    .line 837
    .line 838
    const-string v11, "skill_id"

    .line 839
    .line 840
    invoke-static {v13, v8, v11, v8}, Lc/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 841
    .line 842
    .line 843
    move-result-object v11

    .line 844
    invoke-virtual {v11, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    move-object/from16 v18, v3

    .line 848
    .line 849
    const-string v3, "4"

    .line 850
    .line 851
    invoke-virtual {v11, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 855
    .line 856
    .line 857
    move-result v3

    .line 858
    if-eqz v3, :cond_9

    .line 859
    .line 860
    move-object/from16 v3, v17

    .line 861
    .line 862
    goto :goto_9

    .line 863
    :cond_9
    move-object v3, v6

    .line 864
    :goto_9
    invoke-virtual {v11, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    invoke-virtual {v11, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    invoke-virtual {v11, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    add-int/lit8 v16, v16, 0x1

    .line 874
    .line 875
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    move-result-object v3

    .line 879
    invoke-virtual {v11, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    .line 884
    .line 885
    move-object/from16 v3, v18

    .line 886
    .line 887
    goto :goto_8

    .line 888
    :cond_a
    invoke-virtual {v7}, Lcom/sgscq/vpn/w1;->h0()Ljava/util/ArrayList;

    .line 889
    .line 890
    .line 891
    move-result-object v3

    .line 892
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 893
    .line 894
    .line 895
    move-result-object v3

    .line 896
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 897
    .line 898
    .line 899
    move-result v8

    .line 900
    if-eqz v8, :cond_b

    .line 901
    .line 902
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    move-result-object v8

    .line 906
    check-cast v8, Ljava/lang/String;

    .line 907
    .line 908
    const-string v11, "3"

    .line 909
    .line 910
    invoke-static {v13, v8, v14, v11}, Lc/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 911
    .line 912
    .line 913
    move-result-object v11

    .line 914
    move-object/from16 v17, v3

    .line 915
    .line 916
    const-string v3, "equipment_id"

    .line 917
    .line 918
    invoke-virtual {v11, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    .line 920
    .line 921
    invoke-virtual {v11, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    .line 923
    .line 924
    invoke-virtual {v11, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    .line 926
    .line 927
    invoke-virtual {v11, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    .line 929
    .line 930
    invoke-virtual {v11, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    .line 932
    .line 933
    add-int/lit8 v16, v16, 0x1

    .line 934
    .line 935
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 936
    .line 937
    .line 938
    move-result-object v3

    .line 939
    invoke-virtual {v11, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    .line 941
    .line 942
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    .line 944
    .line 945
    move-object/from16 v3, v17

    .line 946
    .line 947
    goto :goto_a

    .line 948
    :cond_b
    iget-object v3, v7, Lcom/sgscq/vpn/w1;->x:Ljava/util/ArrayList;

    .line 949
    .line 950
    if-nez v3, :cond_c

    .line 951
    .line 952
    invoke-virtual {v7}, Lcom/sgscq/vpn/w1;->Q1()V

    .line 953
    .line 954
    .line 955
    :cond_c
    iget-object v3, v7, Lcom/sgscq/vpn/w1;->x:Ljava/util/ArrayList;

    .line 956
    .line 957
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 958
    .line 959
    .line 960
    move-result-object v3

    .line 961
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 962
    .line 963
    .line 964
    move-result v8

    .line 965
    if-eqz v8, :cond_d

    .line 966
    .line 967
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 968
    .line 969
    .line 970
    move-result-object v8

    .line 971
    check-cast v8, Ljava/lang/String;

    .line 972
    .line 973
    const-string v11, "10"

    .line 974
    .line 975
    invoke-static {v13, v8, v14, v11}, Lc/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 976
    .line 977
    .line 978
    move-result-object v11

    .line 979
    move-object/from16 v17, v3

    .line 980
    .line 981
    const-string v3, "godness_id"

    .line 982
    .line 983
    invoke-virtual {v11, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    .line 985
    .line 986
    invoke-virtual {v11, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    .line 988
    .line 989
    invoke-virtual {v11, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    .line 991
    .line 992
    invoke-virtual {v11, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    invoke-virtual {v11, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    add-int/lit8 v16, v16, 0x1

    .line 999
    .line 1000
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v3

    .line 1004
    invoke-virtual {v11, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1008
    .line 1009
    .line 1010
    move-object/from16 v3, v17

    .line 1011
    .line 1012
    goto :goto_b

    .line 1013
    :cond_d
    const/4 v0, 0x1

    .line 1014
    invoke-virtual {v7, v12}, Lcom/sgscq/vpn/w1;->f2(Ljava/util/List;)V

    .line 1015
    .line 1016
    .line 1017
    const/4 v1, 0x3

    .line 1018
    aput-object v12, v4, v1

    .line 1019
    .line 1020
    const-string v1, "Atlas"

    .line 1021
    .line 1022
    move-object/from16 v5, v30

    .line 1023
    .line 1024
    move-object/from16 v3, v31

    .line 1025
    .line 1026
    invoke-static {v10, v5, v4, v3, v1}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v1

    .line 1030
    new-instance v4, Ljava/util/ArrayList;

    .line 1031
    .line 1032
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1033
    .line 1034
    .line 1035
    new-instance v5, Ljava/util/ArrayList;

    .line 1036
    .line 1037
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    .line 1039
    .line 1040
    move-object/from16 v6, v28

    .line 1041
    .line 1042
    move-object/from16 v7, v29

    .line 1043
    .line 1044
    filled-new-array {v7, v4, v6, v5}, [Ljava/lang/Object;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v4

    .line 1048
    invoke-static {v10, v1, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v1

    .line 1052
    const-string v4, "SkillPiece"

    .line 1053
    .line 1054
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    .line 1056
    .line 1057
    invoke-static {v3}, Lcom/sgscq/vpn/handler/d1;->K0(Ljava/util/Map;)Z

    .line 1058
    .line 1059
    .line 1060
    new-instance v1, Ljava/util/ArrayList;

    .line 1061
    .line 1062
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1063
    .line 1064
    .line 1065
    const-string v4, "BuddyGeneral"

    .line 1066
    .line 1067
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    .line 1069
    .line 1070
    new-instance v1, Ljava/util/ArrayList;

    .line 1071
    .line 1072
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1073
    .line 1074
    .line 1075
    new-instance v4, Ljava/util/ArrayList;

    .line 1076
    .line 1077
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1078
    .line 1079
    .line 1080
    new-instance v5, Ljava/util/ArrayList;

    .line 1081
    .line 1082
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1083
    .line 1084
    .line 1085
    filled-new-array {v7, v4, v6, v5}, [Ljava/lang/Object;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v4

    .line 1089
    const-string v5, "Gems"

    .line 1090
    .line 1091
    invoke-static {v10, v1, v4, v3, v5}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v1

    .line 1095
    new-instance v4, Ljava/util/ArrayList;

    .line 1096
    .line 1097
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    .line 1099
    .line 1100
    new-instance v5, Ljava/util/ArrayList;

    .line 1101
    .line 1102
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1103
    .line 1104
    .line 1105
    filled-new-array {v7, v4, v6, v5}, [Ljava/lang/Object;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v4

    .line 1109
    const-string v5, "MagicalEqu"

    .line 1110
    .line 1111
    invoke-static {v10, v1, v4, v3, v5}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v1

    .line 1115
    new-instance v4, Ljava/util/ArrayList;

    .line 1116
    .line 1117
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1118
    .line 1119
    .line 1120
    new-instance v5, Ljava/util/ArrayList;

    .line 1121
    .line 1122
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1123
    .line 1124
    .line 1125
    filled-new-array {v7, v4, v6, v5}, [Ljava/lang/Object;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v4

    .line 1129
    const-string v5, "Goddess"

    .line 1130
    .line 1131
    invoke-static {v10, v1, v4, v3, v5}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v1

    .line 1135
    new-instance v4, Ljava/util/ArrayList;

    .line 1136
    .line 1137
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1138
    .line 1139
    .line 1140
    new-instance v5, Ljava/util/ArrayList;

    .line 1141
    .line 1142
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1143
    .line 1144
    .line 1145
    filled-new-array {v7, v4, v6, v5}, [Ljava/lang/Object;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v4

    .line 1149
    const-string v5, "MeridianTop"

    .line 1150
    .line 1151
    invoke-static {v10, v1, v4, v3, v5}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v1

    .line 1155
    new-instance v4, Ljava/util/ArrayList;

    .line 1156
    .line 1157
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1158
    .line 1159
    .line 1160
    new-instance v5, Ljava/util/ArrayList;

    .line 1161
    .line 1162
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1163
    .line 1164
    .line 1165
    filled-new-array {v7, v4, v6, v5}, [Ljava/lang/Object;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v4

    .line 1169
    invoke-static {v10, v1, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v1

    .line 1173
    const-string v4, "EvolutionInfo"

    .line 1174
    .line 1175
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    .line 1177
    .line 1178
    const/4 v1, 0x7

    .line 1179
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v1

    .line 1183
    const-string v4, "data_version"

    .line 1184
    .line 1185
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    .line 1187
    .line 1188
    if-eqz v27, :cond_12

    .line 1189
    .line 1190
    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v1

    .line 1194
    const-string v4, "sgscq_cloud_passport_owner_v1"

    .line 1195
    .line 1196
    const/4 v5, 0x0

    .line 1197
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v1

    .line 1201
    invoke-static/range {p1 .. p1}, Lc/e;->g0(Ljava/lang/String;)Ljava/lang/String;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v4

    .line 1205
    invoke-static {v4}, Lc/e;->b0(Ljava/lang/String;)Ljava/lang/String;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v6

    .line 1209
    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v6

    .line 1213
    invoke-static {v4}, Lc/e;->k0(Ljava/lang/String;)Ljava/lang/String;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v7

    .line 1217
    invoke-interface {v1, v7, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v2

    .line 1221
    invoke-static {v4}, Lc/e;->q0(Ljava/lang/String;)Ljava/lang/String;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v4

    .line 1225
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 1226
    .line 1227
    .line 1228
    invoke-static {v2, v6}, Lc/e;->S(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1229
    .line 1230
    .line 1231
    move-result v1

    .line 1232
    const-string v4, "cloud"

    .line 1233
    .line 1234
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1235
    .line 1236
    .line 1237
    move-result v2

    .line 1238
    if-nez v2, :cond_f

    .line 1239
    .line 1240
    if-eqz v1, :cond_e

    .line 1241
    .line 1242
    goto :goto_c

    .line 1243
    :cond_e
    move v0, v5

    .line 1244
    :cond_f
    :goto_c
    invoke-static {v6}, Lc/e;->g0(Ljava/lang/String;)Ljava/lang/String;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v1

    .line 1248
    if-eqz v0, :cond_12

    .line 1249
    .line 1250
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 1251
    .line 1252
    .line 1253
    move-result v0

    .line 1254
    if-nez v0, :cond_11

    .line 1255
    .line 1256
    if-eqz v1, :cond_12

    .line 1257
    .line 1258
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 1259
    .line 1260
    .line 1261
    move-result v0

    .line 1262
    if-eqz v0, :cond_10

    .line 1263
    .line 1264
    goto :goto_d

    .line 1265
    :cond_10
    const-string v0, "_afdian_owner_token"

    .line 1266
    .line 1267
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    .line 1269
    .line 1270
    goto :goto_d

    .line 1271
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1272
    .line 1273
    const-string v1, "\u4e91\u5b58\u6863\u7f3a\u5c11\u7231\u53d1\u7535\u5f52\u5c5e"

    .line 1274
    .line 1275
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1276
    .line 1277
    .line 1278
    throw v0

    .line 1279
    :cond_12
    :goto_d
    return-object v3
.end method

.method public final z(Ljava/util/Map;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "{}"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/sgscq/vpn/h5;->c:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "surrenders.json"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v2, La/o;

    .line 21
    .line 22
    invoke-direct {v2}, La/o;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v3, Lcom/sgscq/vpn/ResponseBuilder$3;

    .line 26
    .line 27
    invoke-direct {v3}, Lcom/sgscq/vpn/ResponseBuilder$3;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2, v1, v3}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/util/List;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-static {v1, p1}, Lcom/sgscq/vpn/h5;->y(Ljava/util/List;Ljava/util/Map;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-object p1

    .line 54
    :cond_2
    :goto_0
    return-object v0

    .line 55
    :catch_0
    move-exception p1

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v2, "[SurrenderInfo] build failed: "

    .line 59
    .line 60
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v2, "SGSCQ_SRV"

    .line 64
    .line 65
    invoke-static {p1, v1, v2}, Lc/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-object v0
.end method
