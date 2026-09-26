.class public final Lcom/sgscq/vpn/handler/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:[I

.field public static final d:[[I

.field public static final e:[[I

.field public static final f:[[I


# instance fields
.field public final a:Lcom/sgscq/vpn/handler/e0;

.field public final b:Lcom/sgscq/vpn/handler/d1;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x6

    filled-new-array {v1, v2, v3, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/l0;->c:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    filled-new-array {v0, v1, v2}, [[I

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/l0;->d:[[I

    new-array v0, v3, [I

    fill-array-data v0, :array_3

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    filled-new-array {v0, v1, v2}, [[I

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/l0;->e:[[I

    new-array v0, v3, [I

    fill-array-data v0, :array_6

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    filled-new-array {v0, v1, v2}, [[I

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/l0;->f:[[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x7
        0x8
        0x8
        0x9
        0xa
    .end array-data

    :array_2
    .array-data 4
        0x9
        0xa
        0xb
        0xb
        0xc
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x8
        0x8
        0x9
        0x9
        0x9
    .end array-data

    :array_4
    .array-data 4
        0xe
        0xf
        0x10
        0x11
        0x12
        0x14
    .end array-data

    :array_5
    .array-data 4
        0x1b
        0x1d
        0x1e
        0x20
        0x22
        0x23
    .end array-data

    :array_6
    .array-data 4
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_8
    .array-data 4
        0x5
        0x5
        0x5
        0x5
        0x6
        0x6
    .end array-data
.end method

.method public constructor <init>(Lcom/sgscq/vpn/handler/k0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sgscq/vpn/handler/d1;

    invoke-direct {v0}, Lcom/sgscq/vpn/handler/d1;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/handler/l0;->b:Lcom/sgscq/vpn/handler/d1;

    iput-object p1, p0, Lcom/sgscq/vpn/handler/l0;->a:Lcom/sgscq/vpn/handler/e0;

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 20

    .line 1
    move-object/from16 v6, p2

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
    const-string v9, "add"

    .line 18
    .line 19
    const-string v10, "upd"

    .line 20
    .line 21
    const-string v11, "del"

    .line 22
    .line 23
    const-string v13, "item_id"

    .line 24
    .line 25
    const-string v4, "id"

    .line 26
    .line 27
    const-string v15, "item_num"

    .line 28
    .line 29
    const-string v14, "num"

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/util/Map;

    .line 38
    .line 39
    const-string v2, ""

    .line 40
    .line 41
    move-object/from16 v12, p1

    .line 42
    .line 43
    invoke-static {v1, v4, v2, v13, v12}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string v0, "0"

    .line 51
    .line 52
    invoke-interface {v1, v15, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v1, v14, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-static {v0, v2}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    add-int v0, v0, p0

    .line 70
    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-interface {v1, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    new-instance v0, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    new-instance v2, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    filled-new-array {v10, v2, v9, v8}, [Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-static {v11, v0, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    return-object v1

    .line 107
    :cond_1
    move-object/from16 v12, p1

    .line 108
    .line 109
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 110
    .line 111
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v3, "pk_id"

    .line 115
    .line 116
    move-object v0, v7

    .line 117
    move-object/from16 v1, p2

    .line 118
    .line 119
    move-object v2, v5

    .line 120
    move-object/from16 v19, v5

    .line 121
    .line 122
    move-object/from16 v5, p1

    .line 123
    .line 124
    invoke-static/range {v0 .. v5}, Lc/a;->x(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    move-object/from16 v12, v19

    .line 128
    .line 129
    move-object v0, v14

    .line 130
    move-object/from16 v14, p1

    .line 131
    .line 132
    move-object v1, v15

    .line 133
    move/from16 v15, p0

    .line 134
    .line 135
    move-object/from16 v16, v0

    .line 136
    .line 137
    move/from16 v17, p0

    .line 138
    .line 139
    move-object/from16 v18, v1

    .line 140
    .line 141
    invoke-static/range {v12 .. v18}, Lc/a;->z(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const/4 v0, 0x1

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const-string v1, "item_type"

    .line 150
    .line 151
    move-object/from16 v2, v19

    .line 152
    .line 153
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    const-string v0, "type"

    .line 157
    .line 158
    const-string v1, "1"

    .line 159
    .line 160
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    new-instance v0, Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .line 170
    .line 171
    new-instance v1, Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .line 175
    .line 176
    filled-new-array {v10, v1, v9, v8}, [Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-static {v11, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    return-object v2
.end method

.method public static b(Ljava/util/List;Ljava/util/Map;Lcom/sgscq/vpn/w1;ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    new-instance v4, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    const-string v7, "112001"

    .line 23
    .line 24
    if-eqz v6, :cond_2

    .line 25
    .line 26
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    check-cast v6, Ljava/util/Map;

    .line 31
    .line 32
    const-string v8, "general_id"

    .line 33
    .line 34
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    new-instance v14, Lcom/sgscq/vpn/handler/e;

    .line 47
    .line 48
    invoke-direct {v14, v7, v2, v8}, Lcom/sgscq/vpn/handler/e;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    iput-object v6, v14, Lcom/sgscq/vpn/handler/e;->d:Ljava/util/Map;

    .line 52
    .line 53
    iput-object v1, v14, Lcom/sgscq/vpn/handler/e;->f:Lcom/sgscq/vpn/w1;

    .line 54
    .line 55
    iput-object v3, v14, Lcom/sgscq/vpn/handler/e;->g:Ljava/lang/String;

    .line 56
    .line 57
    const-wide v10, 0x4072c00000000000L    # 300.0

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    .line 63
    .line 64
    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    .line 65
    .line 66
    move-object v9, v14

    .line 67
    move-object/from16 p0, v5

    .line 68
    .line 69
    move-object v5, v14

    .line 70
    move-wide v14, v7

    .line 71
    invoke-virtual/range {v9 .. v15}, Lcom/sgscq/vpn/handler/e;->a(DDD)V

    .line 72
    .line 73
    .line 74
    if-eqz v0, :cond_0

    .line 75
    .line 76
    iput-object v0, v5, Lcom/sgscq/vpn/handler/e;->e:Ljava/util/Map;

    .line 77
    .line 78
    :cond_0
    if-nez v2, :cond_1

    .line 79
    .line 80
    const-string v7, "fortune"

    .line 81
    .line 82
    const-string v8, "0"

    .line 83
    .line 84
    const/4 v9, 0x0

    .line 85
    invoke-static {v6, v7, v8, v9}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    const/4 v7, 0x1

    .line 90
    if-lt v6, v7, :cond_1

    .line 91
    .line 92
    iput-boolean v7, v5, Lcom/sgscq/vpn/handler/e;->l:Z

    .line 93
    .line 94
    :cond_1
    invoke-static {v5}, Lcom/sgscq/vpn/handler/f;->a(Lcom/sgscq/vpn/handler/e;)Lcom/sgscq/vpn/battle/BattleUnit;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-object/from16 v5, p0

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    new-instance v0, Lcom/sgscq/vpn/handler/e;

    .line 111
    .line 112
    const/4 v5, 0x0

    .line 113
    invoke-direct {v0, v7, v2, v5}, Lcom/sgscq/vpn/handler/e;-><init>(Ljava/lang/String;II)V

    .line 114
    .line 115
    .line 116
    iput-object v1, v0, Lcom/sgscq/vpn/handler/e;->f:Lcom/sgscq/vpn/w1;

    .line 117
    .line 118
    iput-object v3, v0, Lcom/sgscq/vpn/handler/e;->g:Ljava/lang/String;

    .line 119
    .line 120
    const-wide v9, 0x4072c00000000000L    # 300.0

    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    .line 126
    .line 127
    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    .line 128
    .line 129
    move-object v8, v0

    .line 130
    invoke-virtual/range {v8 .. v14}, Lcom/sgscq/vpn/handler/e;->a(DDD)V

    .line 131
    .line 132
    .line 133
    invoke-static {v0}, Lcom/sgscq/vpn/handler/f;->a(Lcom/sgscq/vpn/handler/e;)Lcom/sgscq/vpn/battle/BattleUnit;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    :cond_3
    return-object v4
.end method

.method public static c(Ljava/lang/String;)Ljava/util/LinkedHashMap;
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

.method public static e(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    const-string v0, "hulao_stage"

    const-string v1, "1"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hulao_mode"

    const-string v2, "0"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "hulao_status"

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "mode"

    const-string v3, "status"

    filled-new-array {v2, v1, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "stage"

    invoke-static {v1, v0, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/p5;->t1(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, La/o;

    invoke-direct {v0}, La/o;-><init>()V

    const-class v1, Ljava/util/List;

    invoke-virtual {v0, p0, v1}, La/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static g()Ljava/util/LinkedHashMap;
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

.method public static h(Ljava/util/Map;)I
    .locals 3

    .line 1
    const-string v0, "team_position"

    const-string v1, "general_position"

    const-string v2, "position"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    double-to-int p0, v0

    return p0

    :catch_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const p0, 0x7fffffff

    return p0
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 68

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
    const/4 v4, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v5, "hulao."

    .line 12
    .line 13
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    move v5, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v5, v3

    .line 22
    :goto_0
    const/4 v6, 0x0

    .line 23
    if-nez v5, :cond_1

    .line 24
    .line 25
    return-object v6

    .line 26
    :cond_1
    iget-object v5, v1, Lcom/sgscq/vpn/handler/l0;->a:Lcom/sgscq/vpn/handler/e0;

    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/cloud/m0;->q1(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-nez v5, :cond_2

    .line 36
    .line 37
    iget-object v0, v1, Lcom/sgscq/vpn/handler/l0;->a:Lcom/sgscq/vpn/handler/e0;

    .line 38
    .line 39
    invoke-static {}, Lcom/sgscq/vpn/cloud/m0;->Z2()Ljava/util/LinkedHashMap;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    goto/16 :goto_2f

    .line 44
    .line 45
    :cond_2
    iget-object v5, v1, Lcom/sgscq/vpn/handler/l0;->a:Lcom/sgscq/vpn/handler/e0;

    .line 46
    .line 47
    check-cast v5, Lcom/sgscq/vpn/handler/k0;

    .line 48
    .line 49
    invoke-virtual {v5, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v14

    .line 53
    iget-object v5, v1, Lcom/sgscq/vpn/handler/l0;->a:Lcom/sgscq/vpn/handler/e0;

    .line 54
    .line 55
    check-cast v5, Lcom/sgscq/vpn/handler/k0;

    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/sgscq/vpn/handler/k0;->k()Lcom/sgscq/vpn/handler/d1;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    iget-object v5, v5, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v5, Lcom/sgscq/vpn/handler/k0;

    .line 64
    .line 65
    iget-object v5, v5, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 66
    .line 67
    invoke-virtual {v5, v14}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    if-nez v5, :cond_3

    .line 72
    .line 73
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 74
    .line 75
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 76
    .line 77
    .line 78
    :cond_3
    move-object v15, v5

    .line 79
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 80
    .line 81
    .line 82
    move-result-wide v7

    .line 83
    const-wide/32 v9, 0x112a880

    .line 84
    .line 85
    .line 86
    sub-long/2addr v7, v9

    .line 87
    invoke-static {v7, v8}, Lcom/sgscq/vpn/c7;->c(J)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    const/16 v7, 0xf

    .line 92
    .line 93
    if-eqz v5, :cond_6

    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    if-eqz v8, :cond_4

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    const-string v8, "hulao_day"

    .line 103
    .line 104
    const-string v9, ""

    .line 105
    .line 106
    invoke-static {v15, v8, v9, v5}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    if-eqz v9, :cond_5

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    invoke-interface {v15, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    const-string v8, "hulao_stage"

    .line 121
    .line 122
    invoke-interface {v15, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    const-string v5, "hulao_status"

    .line 126
    .line 127
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-interface {v15, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    const-string v5, "hulao_mode"

    .line 135
    .line 136
    const-string v8, "0"

    .line 137
    .line 138
    invoke-interface {v15, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    const-string v7, "hulao_fortune"

    .line 146
    .line 147
    invoke-interface {v15, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move v5, v4

    .line 151
    goto :goto_2

    .line 152
    :cond_6
    :goto_1
    move v5, v3

    .line 153
    :goto_2
    const-string v7, "hulao_status"

    .line 154
    .line 155
    const-string v8, "0"

    .line 156
    .line 157
    invoke-static {v15, v7, v8, v3}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    const-string v9, "hulao_mode"

    .line 162
    .line 163
    invoke-interface {v15, v9, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    const/4 v11, 0x3

    .line 172
    if-nez v7, :cond_7

    .line 173
    .line 174
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v12

    .line 178
    if-nez v12, :cond_7

    .line 179
    .line 180
    invoke-interface {v15, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_7
    if-ne v7, v11, :cond_8

    .line 185
    .line 186
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    if-eqz v7, :cond_8

    .line 191
    .line 192
    const-string v7, "1"

    .line 193
    .line 194
    invoke-interface {v15, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    :goto_3
    move v7, v4

    .line 198
    goto :goto_4

    .line 199
    :cond_8
    move v7, v3

    .line 200
    :goto_4
    if-eqz v7, :cond_9

    .line 201
    .line 202
    move v5, v4

    .line 203
    :cond_9
    iget-object v7, v1, Lcom/sgscq/vpn/handler/l0;->a:Lcom/sgscq/vpn/handler/e0;

    .line 204
    .line 205
    move-object v8, v7

    .line 206
    check-cast v8, Lcom/sgscq/vpn/handler/k0;

    .line 207
    .line 208
    iget-object v8, v8, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 209
    .line 210
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    iget-object v7, v1, Lcom/sgscq/vpn/handler/l0;->a:Lcom/sgscq/vpn/handler/e0;

    .line 214
    .line 215
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    invoke-static {v8}, Lcom/sgscq/vpn/p7;->h(Landroid/content/Context;)Lcom/sgscq/vpn/p7;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    invoke-virtual {v7}, Lcom/sgscq/vpn/p7;->i()V

    .line 223
    .line 224
    .line 225
    iget-boolean v8, v7, Lcom/sgscq/vpn/p7;->p:Z

    .line 226
    .line 227
    if-eqz v8, :cond_a

    .line 228
    .line 229
    move-object v6, v7

    .line 230
    :cond_a
    const-string v7, "hulao.lineup"

    .line 231
    .line 232
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v7

    .line 236
    const/4 v8, 0x4

    .line 237
    const/4 v9, 0x2

    .line 238
    if-eqz v7, :cond_12

    .line 239
    .line 240
    const-string v0, "stage"

    .line 241
    .line 242
    const-string v5, "1"

    .line 243
    .line 244
    invoke-interface {v2, v0, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    check-cast v0, Ljava/lang/String;

    .line 249
    .line 250
    const-string v5, "mode"

    .line 251
    .line 252
    const-string v7, "1"

    .line 253
    .line 254
    invoke-interface {v2, v5, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    check-cast v2, Ljava/lang/String;

    .line 259
    .line 260
    const-string v5, "hulao_refresh"

    .line 261
    .line 262
    const-string v7, "hulao_refresh"

    .line 263
    .line 264
    const-string v10, "0"

    .line 265
    .line 266
    invoke-interface {v15, v7, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    invoke-static {v7, v3}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 275
    .line 276
    .line 277
    move-result v7

    .line 278
    add-int/2addr v7, v4

    .line 279
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v7

    .line 283
    invoke-interface {v15, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    iget-object v5, v1, Lcom/sgscq/vpn/handler/l0;->b:Lcom/sgscq/vpn/handler/d1;

    .line 287
    .line 288
    monitor-enter v5

    .line 289
    :try_start_0
    invoke-static {v15, v14, v0, v2, v6}, Lcom/sgscq/vpn/handler/n0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sgscq/vpn/p7;)Lcom/sgscq/vpn/handler/n0;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    iget-object v7, v5, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast v7, Ljava/util/Map;

    .line 296
    .line 297
    invoke-static {v14, v0, v2}, Lcom/sgscq/vpn/handler/d1;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v10

    .line 301
    invoke-interface {v7, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    .line 303
    .line 304
    monitor-exit v5

    .line 305
    invoke-static {}, Lcom/sgscq/vpn/handler/l0;->g()Ljava/util/LinkedHashMap;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    const-string v7, "stage"

    .line 310
    .line 311
    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    const-string v0, "mode"

    .line 315
    .line 316
    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    new-array v2, v8, [Ljava/lang/Object;

    .line 324
    .line 325
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    const-string v8, "total_fortune"

    .line 330
    .line 331
    aput-object v8, v2, v3

    .line 332
    .line 333
    const-string v8, "hulao_fortune"

    .line 334
    .line 335
    const-string v10, "0"

    .line 336
    .line 337
    invoke-interface {v15, v8, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v8

    .line 341
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v8

    .line 345
    invoke-static {v8, v3}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    aput-object v3, v2, v4

    .line 354
    .line 355
    const-string v3, "general_list"

    .line 356
    .line 357
    aput-object v3, v2, v9

    .line 358
    .line 359
    new-instance v4, Ljava/util/ArrayList;

    .line 360
    .line 361
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .line 363
    .line 364
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 365
    .line 366
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 367
    .line 368
    .line 369
    const-string v9, "General"

    .line 370
    .line 371
    invoke-static {v9, v15}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 372
    .line 373
    .line 374
    move-result-object v10

    .line 375
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 376
    .line 377
    .line 378
    move-result-object v10

    .line 379
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 380
    .line 381
    .line 382
    move-result v11

    .line 383
    const-string v12, "pk_id"

    .line 384
    .line 385
    const-string v13, ""

    .line 386
    .line 387
    if-eqz v11, :cond_b

    .line 388
    .line 389
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v11

    .line 393
    check-cast v11, Ljava/util/Map;

    .line 394
    .line 395
    invoke-interface {v11, v12, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v12

    .line 399
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v12

    .line 403
    invoke-interface {v8, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    goto :goto_5

    .line 407
    :cond_b
    new-instance v10, Ljava/util/ArrayList;

    .line 408
    .line 409
    const-string v11, "TeamGeneral"

    .line 410
    .line 411
    invoke-static {v11, v15}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 412
    .line 413
    .line 414
    move-result-object v11

    .line 415
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 416
    .line 417
    .line 418
    new-instance v11, Ln/b;

    .line 419
    .line 420
    move-object/from16 v28, v14

    .line 421
    .line 422
    const/16 v14, 0xc

    .line 423
    .line 424
    invoke-direct {v11, v14}, Ln/b;-><init>(I)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 431
    .line 432
    .line 433
    move-result-object v10

    .line 434
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 435
    .line 436
    .line 437
    move-result v11

    .line 438
    const-string v14, "general_id"

    .line 439
    .line 440
    const-string v1, "112001"

    .line 441
    .line 442
    move-object/from16 p1, v5

    .line 443
    .line 444
    const-string v5, "general_level"

    .line 445
    .line 446
    move-object/from16 p2, v3

    .line 447
    .line 448
    const-string v3, "fighting"

    .line 449
    .line 450
    move-object/from16 v29, v6

    .line 451
    .line 452
    const-string v6, "1000"

    .line 453
    .line 454
    move-object/from16 v30, v0

    .line 455
    .line 456
    const-string v0, "1"

    .line 457
    .line 458
    if-eqz v11, :cond_d

    .line 459
    .line 460
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v11

    .line 464
    check-cast v11, Ljava/util/Map;

    .line 465
    .line 466
    move-object/from16 v31, v10

    .line 467
    .line 468
    invoke-interface {v11, v12, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v10

    .line 472
    move-object/from16 v32, v13

    .line 473
    .line 474
    const-string v13, "general_pk_id"

    .line 475
    .line 476
    invoke-interface {v11, v13, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v10

    .line 480
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v10

    .line 484
    invoke-virtual {v8, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v10

    .line 488
    check-cast v10, Ljava/util/Map;

    .line 489
    .line 490
    if-nez v10, :cond_c

    .line 491
    .line 492
    goto :goto_7

    .line 493
    :cond_c
    invoke-interface {v10, v12, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v11

    .line 497
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v11

    .line 501
    const-string v16, "general_id"

    .line 502
    .line 503
    invoke-interface {v10, v14, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v17

    .line 511
    const-string v18, "general_level"

    .line 512
    .line 513
    invoke-interface {v10, v5, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    const/4 v1, 0x1

    .line 522
    invoke-static {v0, v1}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 523
    .line 524
    .line 525
    move-result v0

    .line 526
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 527
    .line 528
    .line 529
    move-result-object v19

    .line 530
    const-string v20, "fighting"

    .line 531
    .line 532
    invoke-interface {v10, v3, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    const/16 v1, 0x3e8

    .line 541
    .line 542
    invoke-static {v0, v1}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 543
    .line 544
    .line 545
    move-result v0

    .line 546
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 547
    .line 548
    .line 549
    move-result-object v21

    .line 550
    const-string v22, "fortune"

    .line 551
    .line 552
    const-string v24, "hp"

    .line 553
    .line 554
    const/16 v0, 0x64

    .line 555
    .line 556
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 557
    .line 558
    .line 559
    move-result-object v25

    .line 560
    const-string v26, "current_hp"

    .line 561
    .line 562
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 563
    .line 564
    .line 565
    move-result-object v27

    .line 566
    move-object/from16 v23, v7

    .line 567
    .line 568
    filled-new-array/range {v16 .. v27}, [Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    invoke-static {v12, v11, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    .line 578
    .line 579
    :goto_7
    move-object/from16 v1, p0

    .line 580
    .line 581
    move-object/from16 v5, p1

    .line 582
    .line 583
    move-object/from16 v3, p2

    .line 584
    .line 585
    move-object/from16 v6, v29

    .line 586
    .line 587
    move-object/from16 v0, v30

    .line 588
    .line 589
    move-object/from16 v10, v31

    .line 590
    .line 591
    move-object/from16 v13, v32

    .line 592
    .line 593
    goto/16 :goto_6

    .line 594
    .line 595
    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 596
    .line 597
    .line 598
    move-result v8

    .line 599
    if-eqz v8, :cond_e

    .line 600
    .line 601
    invoke-static {v9, v15}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 602
    .line 603
    .line 604
    move-result-object v8

    .line 605
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 606
    .line 607
    .line 608
    move-result-object v8

    .line 609
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 610
    .line 611
    .line 612
    move-result v9

    .line 613
    if-eqz v9, :cond_e

    .line 614
    .line 615
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v9

    .line 619
    check-cast v9, Ljava/util/Map;

    .line 620
    .line 621
    invoke-interface {v9, v12, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v10

    .line 625
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v10

    .line 629
    const-string v16, "general_id"

    .line 630
    .line 631
    invoke-interface {v9, v14, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v11

    .line 635
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v17

    .line 639
    const-string v18, "general_level"

    .line 640
    .line 641
    invoke-interface {v9, v5, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v11

    .line 645
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v11

    .line 649
    const/4 v13, 0x1

    .line 650
    invoke-static {v11, v13}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 651
    .line 652
    .line 653
    move-result v11

    .line 654
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 655
    .line 656
    .line 657
    move-result-object v19

    .line 658
    const-string v20, "fighting"

    .line 659
    .line 660
    invoke-interface {v9, v3, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v9

    .line 664
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v9

    .line 668
    const/16 v11, 0x3e8

    .line 669
    .line 670
    invoke-static {v9, v11}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 671
    .line 672
    .line 673
    move-result v9

    .line 674
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 675
    .line 676
    .line 677
    move-result-object v21

    .line 678
    const-string v22, "fortune"

    .line 679
    .line 680
    const-string v24, "hp"

    .line 681
    .line 682
    const/16 v9, 0x64

    .line 683
    .line 684
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 685
    .line 686
    .line 687
    move-result-object v25

    .line 688
    const-string v26, "current_hp"

    .line 689
    .line 690
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 691
    .line 692
    .line 693
    move-result-object v27

    .line 694
    move-object/from16 v23, v7

    .line 695
    .line 696
    filled-new-array/range {v16 .. v27}, [Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object v9

    .line 700
    invoke-static {v12, v10, v9}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 701
    .line 702
    .line 703
    move-result-object v9

    .line 704
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    .line 706
    .line 707
    goto :goto_8

    .line 708
    :cond_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 709
    .line 710
    .line 711
    move-result v6

    .line 712
    if-eqz v6, :cond_f

    .line 713
    .line 714
    const-string v16, "general_id"

    .line 715
    .line 716
    const-string v17, "112001"

    .line 717
    .line 718
    const-string v18, "general_level"

    .line 719
    .line 720
    const/4 v6, 0x1

    .line 721
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 722
    .line 723
    .line 724
    move-result-object v19

    .line 725
    const-string v20, "fighting"

    .line 726
    .line 727
    const/16 v6, 0x3e8

    .line 728
    .line 729
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 730
    .line 731
    .line 732
    move-result-object v21

    .line 733
    const-string v22, "fortune"

    .line 734
    .line 735
    const-string v24, "hp"

    .line 736
    .line 737
    const/16 v6, 0x64

    .line 738
    .line 739
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 740
    .line 741
    .line 742
    move-result-object v25

    .line 743
    const-string v26, "current_hp"

    .line 744
    .line 745
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 746
    .line 747
    .line 748
    move-result-object v27

    .line 749
    move-object/from16 v23, v7

    .line 750
    .line 751
    filled-new-array/range {v16 .. v27}, [Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object v6

    .line 755
    invoke-static {v12, v0, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    .line 761
    .line 762
    :cond_f
    const/4 v0, 0x3

    .line 763
    aput-object v4, v2, v0

    .line 764
    .line 765
    const-string v0, "consume_fortune"

    .line 766
    .line 767
    move-object/from16 v4, v30

    .line 768
    .line 769
    invoke-static {v0, v4, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    const/4 v2, 0x2

    .line 774
    new-array v2, v2, [Ljava/lang/Object;

    .line 775
    .line 776
    const-string v4, "right_info"

    .line 777
    .line 778
    const/4 v6, 0x0

    .line 779
    aput-object v4, v2, v6

    .line 780
    .line 781
    new-instance v4, Ljava/util/ArrayList;

    .line 782
    .line 783
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 784
    .line 785
    .line 786
    new-instance v6, Ljava/util/ArrayList;

    .line 787
    .line 788
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 789
    .line 790
    .line 791
    const/4 v7, 0x0

    .line 792
    move-object/from16 v8, v29

    .line 793
    .line 794
    :goto_9
    iget-object v9, v8, Lcom/sgscq/vpn/handler/n0;->a:Ljava/util/List;

    .line 795
    .line 796
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 797
    .line 798
    .line 799
    move-result v10

    .line 800
    if-ge v7, v10, :cond_11

    .line 801
    .line 802
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    move-result-object v9

    .line 806
    check-cast v9, Lcom/sgscq/vpn/handler/m0;

    .line 807
    .line 808
    const/4 v10, 0x0

    .line 809
    :goto_a
    iget-object v11, v9, Lcom/sgscq/vpn/handler/m0;->f:Ljava/util/List;

    .line 810
    .line 811
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 812
    .line 813
    .line 814
    move-result v11

    .line 815
    if-ge v10, v11, :cond_10

    .line 816
    .line 817
    iget-object v11, v9, Lcom/sgscq/vpn/handler/m0;->f:Ljava/util/List;

    .line 818
    .line 819
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    move-result-object v11

    .line 823
    check-cast v11, Ljava/util/Map;

    .line 824
    .line 825
    new-instance v13, Ljava/util/LinkedHashMap;

    .line 826
    .line 827
    invoke-direct {v13, v11}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 828
    .line 829
    .line 830
    invoke-interface {v11, v14, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v16

    .line 834
    move-object/from16 v17, v1

    .line 835
    .line 836
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v1

    .line 840
    move-object/from16 v29, v8

    .line 841
    .line 842
    const-string v8, "hp"

    .line 843
    .line 844
    move-object/from16 v16, v15

    .line 845
    .line 846
    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v15

    .line 850
    move-object/from16 v18, v0

    .line 851
    .line 852
    const-string v0, "general_hp"

    .line 853
    .line 854
    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    move-result-object v0

    .line 858
    move-object/from16 v19, v2

    .line 859
    .line 860
    const/16 v2, 0x3e8

    .line 861
    .line 862
    invoke-static {v0, v2}, Lcom/sgscq/vpn/handler/n0;->b(Ljava/lang/Object;I)I

    .line 863
    .line 864
    .line 865
    move-result v0

    .line 866
    invoke-static {v15, v0}, Lcom/sgscq/vpn/handler/n0;->b(Ljava/lang/Object;I)I

    .line 867
    .line 868
    .line 869
    move-result v0

    .line 870
    new-instance v2, Ljava/lang/StringBuilder;

    .line 871
    .line 872
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 873
    .line 874
    .line 875
    iget-object v15, v9, Lcom/sgscq/vpn/handler/m0;->a:Ljava/lang/String;

    .line 876
    .line 877
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    .line 879
    .line 880
    const-string v15, "_"

    .line 881
    .line 882
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    .line 884
    .line 885
    add-int/lit8 v10, v10, 0x1

    .line 886
    .line 887
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v2

    .line 894
    invoke-interface {v13, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    .line 896
    .line 897
    invoke-interface {v13, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    .line 902
    .line 903
    move-result-object v1

    .line 904
    iget v2, v9, Lcom/sgscq/vpn/handler/m0;->c:I

    .line 905
    .line 906
    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/n0;->b(Ljava/lang/Object;I)I

    .line 907
    .line 908
    .line 909
    move-result v1

    .line 910
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 911
    .line 912
    .line 913
    move-result-object v1

    .line 914
    invoke-interface {v13, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    .line 916
    .line 917
    const-string v1, "general_fighting"

    .line 918
    .line 919
    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    .line 921
    .line 922
    move-result-object v1

    .line 923
    iget v2, v9, Lcom/sgscq/vpn/handler/m0;->d:I

    .line 924
    .line 925
    div-int/lit8 v2, v2, 0x3

    .line 926
    .line 927
    const/4 v11, 0x1

    .line 928
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    .line 929
    .line 930
    .line 931
    move-result v2

    .line 932
    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/n0;->b(Ljava/lang/Object;I)I

    .line 933
    .line 934
    .line 935
    move-result v1

    .line 936
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 937
    .line 938
    .line 939
    move-result-object v1

    .line 940
    invoke-interface {v13, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    const-string v1, "fortune"

    .line 944
    .line 945
    const/4 v2, 0x0

    .line 946
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 947
    .line 948
    .line 949
    move-result-object v2

    .line 950
    invoke-interface {v13, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 954
    .line 955
    .line 956
    move-result-object v1

    .line 957
    invoke-interface {v13, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    .line 959
    .line 960
    const-string v1, "current_hp"

    .line 961
    .line 962
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 963
    .line 964
    .line 965
    move-result-object v0

    .line 966
    invoke-interface {v13, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    .line 968
    .line 969
    add-int/lit8 v0, v7, 0x1

    .line 970
    .line 971
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 972
    .line 973
    .line 974
    move-result-object v0

    .line 975
    const-string v1, "route"

    .line 976
    .line 977
    invoke-interface {v13, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    .line 982
    .line 983
    move-object/from16 v15, v16

    .line 984
    .line 985
    move-object/from16 v1, v17

    .line 986
    .line 987
    move-object/from16 v0, v18

    .line 988
    .line 989
    move-object/from16 v2, v19

    .line 990
    .line 991
    move-object/from16 v8, v29

    .line 992
    .line 993
    goto/16 :goto_a

    .line 994
    .line 995
    :cond_10
    move-object/from16 v18, v0

    .line 996
    .line 997
    move-object/from16 v17, v1

    .line 998
    .line 999
    move-object/from16 v19, v2

    .line 1000
    .line 1001
    move-object/from16 v29, v8

    .line 1002
    .line 1003
    move-object/from16 v16, v15

    .line 1004
    .line 1005
    iget-object v0, v9, Lcom/sgscq/vpn/handler/m0;->a:Ljava/lang/String;

    .line 1006
    .line 1007
    const-string v20, "player_id"

    .line 1008
    .line 1009
    const-string v22, "user_nick"

    .line 1010
    .line 1011
    iget-object v1, v9, Lcom/sgscq/vpn/handler/m0;->b:Ljava/lang/String;

    .line 1012
    .line 1013
    const-string v24, "nickname"

    .line 1014
    .line 1015
    const-string v26, "server_id"

    .line 1016
    .line 1017
    const/4 v2, 0x1

    .line 1018
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v27

    .line 1022
    move-object/from16 v21, v0

    .line 1023
    .line 1024
    move-object/from16 v23, v1

    .line 1025
    .line 1026
    move-object/from16 v25, v1

    .line 1027
    .line 1028
    filled-new-array/range {v20 .. v27}, [Ljava/lang/Object;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v1

    .line 1032
    const-string v2, "user_id"

    .line 1033
    .line 1034
    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v0

    .line 1038
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1039
    .line 1040
    .line 1041
    add-int/lit8 v7, v7, 0x1

    .line 1042
    .line 1043
    move-object/from16 v1, v17

    .line 1044
    .line 1045
    move-object/from16 v0, v18

    .line 1046
    .line 1047
    move-object/from16 v2, v19

    .line 1048
    .line 1049
    goto/16 :goto_9

    .line 1050
    .line 1051
    :cond_11
    move-object/from16 v18, v0

    .line 1052
    .line 1053
    move-object/from16 v19, v2

    .line 1054
    .line 1055
    move-object/from16 v16, v15

    .line 1056
    .line 1057
    const-string v0, "user_list"

    .line 1058
    .line 1059
    filled-new-array {v0, v6}, [Ljava/lang/Object;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v0

    .line 1063
    move-object/from16 v1, p2

    .line 1064
    .line 1065
    invoke-static {v1, v4, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v0

    .line 1069
    const/4 v1, 0x1

    .line 1070
    aput-object v0, v19, v1

    .line 1071
    .line 1072
    const-string v0, "left_info"

    .line 1073
    .line 1074
    move-object/from16 v1, v18

    .line 1075
    .line 1076
    invoke-static {v0, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v0

    .line 1080
    const-string v1, "data"

    .line 1081
    .line 1082
    move-object/from16 v2, p1

    .line 1083
    .line 1084
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    .line 1086
    .line 1087
    const-string v1, "return_info"

    .line 1088
    .line 1089
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    .line 1091
    .line 1092
    move-object/from16 v1, p0

    .line 1093
    .line 1094
    iget-object v0, v1, Lcom/sgscq/vpn/handler/l0;->a:Lcom/sgscq/vpn/handler/e0;

    .line 1095
    .line 1096
    check-cast v0, Lcom/sgscq/vpn/handler/k0;

    .line 1097
    .line 1098
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->k()Lcom/sgscq/vpn/handler/d1;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v0

    .line 1102
    move-object v5, v2

    .line 1103
    move-object/from16 v6, v28

    .line 1104
    .line 1105
    goto/16 :goto_2b

    .line 1106
    .line 1107
    :catchall_0
    move-exception v0

    .line 1108
    monitor-exit v5

    .line 1109
    throw v0

    .line 1110
    :cond_12
    move-object/from16 v28, v14

    .line 1111
    .line 1112
    move-object/from16 v16, v15

    .line 1113
    .line 1114
    const-string v3, "hulao.fight"

    .line 1115
    .line 1116
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1117
    .line 1118
    .line 1119
    move-result v3

    .line 1120
    if-eqz v3, :cond_3b

    .line 1121
    .line 1122
    const-string v0, "stage"

    .line 1123
    .line 1124
    const-string v3, "1"

    .line 1125
    .line 1126
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v0

    .line 1130
    check-cast v0, Ljava/lang/String;

    .line 1131
    .line 1132
    const-string v3, "mode"

    .line 1133
    .line 1134
    const-string v4, "1"

    .line 1135
    .line 1136
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v3

    .line 1140
    check-cast v3, Ljava/lang/String;

    .line 1141
    .line 1142
    const-string v4, "general_list"

    .line 1143
    .line 1144
    const-string v5, ""

    .line 1145
    .line 1146
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v2

    .line 1150
    check-cast v2, Ljava/lang/String;

    .line 1151
    .line 1152
    iget-object v4, v1, Lcom/sgscq/vpn/handler/l0;->b:Lcom/sgscq/vpn/handler/d1;

    .line 1153
    .line 1154
    monitor-enter v4

    .line 1155
    :try_start_1
    iget-object v5, v4, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    .line 1156
    .line 1157
    check-cast v5, Ljava/util/Map;

    .line 1158
    .line 1159
    move-object/from16 v14, v28

    .line 1160
    .line 1161
    invoke-static {v14, v0, v3}, Lcom/sgscq/vpn/handler/d1;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v7

    .line 1165
    invoke-interface {v5, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v5

    .line 1169
    check-cast v5, Lcom/sgscq/vpn/handler/n0;

    .line 1170
    .line 1171
    if-eqz v5, :cond_13

    .line 1172
    .line 1173
    move-object/from16 v15, v16

    .line 1174
    .line 1175
    goto :goto_b

    .line 1176
    :cond_13
    move-object/from16 v15, v16

    .line 1177
    .line 1178
    invoke-static {v15, v14, v0, v3, v6}, Lcom/sgscq/vpn/handler/n0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sgscq/vpn/p7;)Lcom/sgscq/vpn/handler/n0;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1182
    :goto_b
    monitor-exit v4

    .line 1183
    const-string v4, "hulao_status"

    .line 1184
    .line 1185
    const-string v6, "0"

    .line 1186
    .line 1187
    const/4 v7, 0x0

    .line 1188
    invoke-static {v15, v4, v6, v7}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 1189
    .line 1190
    .line 1191
    move-result v7

    .line 1192
    const/4 v8, 0x2

    .line 1193
    if-lt v7, v8, :cond_14

    .line 1194
    .line 1195
    const-string v0, "e_hulao_1010"

    .line 1196
    .line 1197
    goto :goto_d

    .line 1198
    :cond_14
    invoke-static {v2}, Lcom/sgscq/vpn/handler/l0;->f(Ljava/lang/String;)Ljava/util/List;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v7

    .line 1202
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v7

    .line 1206
    const/4 v8, 0x0

    .line 1207
    :cond_15
    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1208
    .line 1209
    .line 1210
    move-result v9

    .line 1211
    const-string v10, "fortune"

    .line 1212
    .line 1213
    if-eqz v9, :cond_17

    .line 1214
    .line 1215
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v9

    .line 1219
    instance-of v11, v9, Ljava/util/Map;

    .line 1220
    .line 1221
    if-nez v11, :cond_16

    .line 1222
    .line 1223
    goto :goto_c

    .line 1224
    :cond_16
    check-cast v9, Ljava/util/Map;

    .line 1225
    .line 1226
    const/4 v11, 0x0

    .line 1227
    invoke-static {v9, v10, v11}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    .line 1228
    .line 1229
    .line 1230
    move-result v9

    .line 1231
    const/4 v10, 0x1

    .line 1232
    if-lt v9, v10, :cond_15

    .line 1233
    .line 1234
    add-int/lit8 v8, v8, 0x1

    .line 1235
    .line 1236
    goto :goto_c

    .line 1237
    :cond_17
    const/4 v7, 0x0

    .line 1238
    const-string v9, "hulao_fortune"

    .line 1239
    .line 1240
    invoke-static {v15, v9, v6, v7}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 1241
    .line 1242
    .line 1243
    move-result v6

    .line 1244
    mul-int/lit8 v8, v8, 0x3

    .line 1245
    .line 1246
    if-le v8, v6, :cond_18

    .line 1247
    .line 1248
    const-string v0, "e_hulao_1009"

    .line 1249
    .line 1250
    :goto_d
    invoke-static {v0}, Lcom/sgscq/vpn/handler/l0;->c(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v0

    .line 1254
    move-object v6, v14

    .line 1255
    goto/16 :goto_21

    .line 1256
    .line 1257
    :cond_18
    if-lez v8, :cond_19

    .line 1258
    .line 1259
    sub-int/2addr v6, v8

    .line 1260
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v6

    .line 1264
    invoke-interface {v15, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    .line 1266
    .line 1267
    :cond_19
    const-string v6, "hulao_stage"

    .line 1268
    .line 1269
    invoke-interface {v15, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    .line 1271
    .line 1272
    const-string v6, "hulao_mode"

    .line 1273
    .line 1274
    invoke-interface {v15, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    .line 1276
    .line 1277
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 1278
    .line 1279
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1280
    .line 1281
    .line 1282
    const-string v7, "General"

    .line 1283
    .line 1284
    invoke-static {v7, v15}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v7

    .line 1288
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v7

    .line 1292
    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1293
    .line 1294
    .line 1295
    move-result v8

    .line 1296
    const-string v9, "pk_id"

    .line 1297
    .line 1298
    if-eqz v8, :cond_1a

    .line 1299
    .line 1300
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v8

    .line 1304
    check-cast v8, Ljava/util/Map;

    .line 1305
    .line 1306
    const-string v11, ""

    .line 1307
    .line 1308
    invoke-interface {v8, v9, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v9

    .line 1312
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v9

    .line 1316
    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    .line 1318
    .line 1319
    goto :goto_e

    .line 1320
    :cond_1a
    new-instance v7, Ljava/util/ArrayList;

    .line 1321
    .line 1322
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1323
    .line 1324
    .line 1325
    invoke-static {v2}, Lcom/sgscq/vpn/handler/l0;->f(Ljava/lang/String;)Ljava/util/List;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v2

    .line 1329
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v2

    .line 1333
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1334
    .line 1335
    .line 1336
    move-result v8

    .line 1337
    if-eqz v8, :cond_1d

    .line 1338
    .line 1339
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v8

    .line 1343
    instance-of v11, v8, Ljava/util/Map;

    .line 1344
    .line 1345
    if-eqz v11, :cond_1b

    .line 1346
    .line 1347
    check-cast v8, Ljava/util/Map;

    .line 1348
    .line 1349
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v11

    .line 1353
    if-eqz v11, :cond_1b

    .line 1354
    .line 1355
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v11

    .line 1359
    invoke-virtual {v6, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v11

    .line 1363
    check-cast v11, Ljava/util/Map;

    .line 1364
    .line 1365
    if-eqz v11, :cond_1b

    .line 1366
    .line 1367
    new-instance v12, Ljava/util/LinkedHashMap;

    .line 1368
    .line 1369
    invoke-direct {v12, v11}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1370
    .line 1371
    .line 1372
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v8

    .line 1376
    if-eqz v8, :cond_1c

    .line 1377
    .line 1378
    invoke-interface {v12, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1379
    .line 1380
    .line 1381
    goto :goto_10

    .line 1382
    :cond_1b
    const/4 v12, 0x0

    .line 1383
    :cond_1c
    :goto_10
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1384
    .line 1385
    .line 1386
    goto :goto_f

    .line 1387
    :cond_1d
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v2

    .line 1391
    const/4 v6, 0x0

    .line 1392
    :cond_1e
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1393
    .line 1394
    .line 1395
    move-result v8

    .line 1396
    if-eqz v8, :cond_1f

    .line 1397
    .line 1398
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v8

    .line 1402
    check-cast v8, Ljava/util/Map;

    .line 1403
    .line 1404
    if-eqz v8, :cond_1e

    .line 1405
    .line 1406
    add-int/lit8 v6, v6, 0x1

    .line 1407
    .line 1408
    goto :goto_11

    .line 1409
    :cond_1f
    if-nez v6, :cond_20

    .line 1410
    .line 1411
    const-string v16, "general_id"

    .line 1412
    .line 1413
    const-string v17, "112001"

    .line 1414
    .line 1415
    const-string v18, "hp"

    .line 1416
    .line 1417
    const/16 v2, 0x3e8

    .line 1418
    .line 1419
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v19

    .line 1423
    const-string v20, "atk"

    .line 1424
    .line 1425
    const/16 v2, 0x12c

    .line 1426
    .line 1427
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v21

    .line 1431
    const-string v22, "def"

    .line 1432
    .line 1433
    const/16 v2, 0x64

    .line 1434
    .line 1435
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v23

    .line 1439
    const-string v24, "wis"

    .line 1440
    .line 1441
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v25

    .line 1445
    filled-new-array/range {v16 .. v25}, [Ljava/lang/Object;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v2

    .line 1449
    const-string v6, "fallback"

    .line 1450
    .line 1451
    invoke-static {v9, v6, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1452
    .line 1453
    .line 1454
    move-result-object v2

    .line 1455
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1456
    .line 1457
    .line 1458
    :cond_20
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v2

    .line 1462
    const/4 v6, 0x0

    .line 1463
    :cond_21
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1464
    .line 1465
    .line 1466
    move-result v8

    .line 1467
    if-eqz v8, :cond_22

    .line 1468
    .line 1469
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1470
    .line 1471
    .line 1472
    move-result-object v8

    .line 1473
    check-cast v8, Ljava/util/Map;

    .line 1474
    .line 1475
    if-eqz v8, :cond_21

    .line 1476
    .line 1477
    add-int/lit8 v6, v6, 0x1

    .line 1478
    .line 1479
    goto :goto_12

    .line 1480
    :cond_22
    const/4 v2, 0x0

    .line 1481
    invoke-static {v2}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v2

    .line 1485
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1486
    .line 1487
    .line 1488
    invoke-static {v15}, Lcom/sgscq/vpn/w1;->B(Ljava/util/Map;)I

    .line 1489
    .line 1490
    .line 1491
    move-result v2

    .line 1492
    if-lez v2, :cond_23

    .line 1493
    .line 1494
    goto :goto_13

    .line 1495
    :cond_23
    const/4 v2, 0x1

    .line 1496
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 1497
    .line 1498
    .line 1499
    move-result v2

    .line 1500
    :goto_13
    new-instance v6, Ljava/util/ArrayList;

    .line 1501
    .line 1502
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1503
    .line 1504
    .line 1505
    const/4 v8, 0x0

    .line 1506
    :goto_14
    iget-object v9, v5, Lcom/sgscq/vpn/handler/n0;->a:Ljava/util/List;

    .line 1507
    .line 1508
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 1509
    .line 1510
    .line 1511
    move-result v9

    .line 1512
    const-string v10, "success"

    .line 1513
    .line 1514
    const-string v11, "fight_result"

    .line 1515
    .line 1516
    if-ge v8, v9, :cond_31

    .line 1517
    .line 1518
    add-int/lit8 v9, v8, 0x1

    .line 1519
    .line 1520
    add-int/lit8 v12, v9, -0x1

    .line 1521
    .line 1522
    mul-int/lit8 v12, v12, 0x3

    .line 1523
    .line 1524
    new-instance v13, Ljava/util/ArrayList;

    .line 1525
    .line 1526
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1527
    .line 1528
    .line 1529
    move-object/from16 p1, v4

    .line 1530
    .line 1531
    move v1, v12

    .line 1532
    :goto_15
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1533
    .line 1534
    .line 1535
    move-result v4

    .line 1536
    if-ge v1, v4, :cond_25

    .line 1537
    .line 1538
    add-int/lit8 v4, v12, 0x3

    .line 1539
    .line 1540
    if-ge v1, v4, :cond_25

    .line 1541
    .line 1542
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v4

    .line 1546
    check-cast v4, Ljava/util/Map;

    .line 1547
    .line 1548
    if-eqz v4, :cond_24

    .line 1549
    .line 1550
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1551
    .line 1552
    .line 1553
    :cond_24
    add-int/lit8 v1, v1, 0x1

    .line 1554
    .line 1555
    goto :goto_15

    .line 1556
    :cond_25
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1557
    .line 1558
    .line 1559
    move-result v1

    .line 1560
    if-eqz v1, :cond_27

    .line 1561
    .line 1562
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v1

    .line 1566
    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1567
    .line 1568
    .line 1569
    move-result v4

    .line 1570
    if-eqz v4, :cond_27

    .line 1571
    .line 1572
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1573
    .line 1574
    .line 1575
    move-result-object v4

    .line 1576
    check-cast v4, Ljava/util/Map;

    .line 1577
    .line 1578
    if-eqz v4, :cond_26

    .line 1579
    .line 1580
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1581
    .line 1582
    .line 1583
    :cond_27
    iget-object v1, v5, Lcom/sgscq/vpn/handler/n0;->a:Ljava/util/List;

    .line 1584
    .line 1585
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v1

    .line 1589
    check-cast v1, Lcom/sgscq/vpn/handler/m0;

    .line 1590
    .line 1591
    const/4 v4, 0x0

    .line 1592
    invoke-static {v4}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v4

    .line 1596
    const-string v8, "user_nickname"

    .line 1597
    .line 1598
    const-string v12, "Player"

    .line 1599
    .line 1600
    invoke-interface {v15, v8, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v16

    .line 1604
    move-object/from16 v17, v5

    .line 1605
    .line 1606
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1607
    .line 1608
    .line 1609
    move-result-object v5

    .line 1610
    move-object/from16 p2, v7

    .line 1611
    .line 1612
    const/4 v7, 0x0

    .line 1613
    invoke-static {v13, v15, v4, v7, v5}, Lcom/sgscq/vpn/handler/l0;->b(Ljava/util/List;Ljava/util/Map;Lcom/sgscq/vpn/w1;ILjava/lang/String;)Ljava/util/ArrayList;

    .line 1614
    .line 1615
    .line 1616
    move-result-object v7

    .line 1617
    iget-object v13, v1, Lcom/sgscq/vpn/handler/m0;->f:Ljava/util/List;

    .line 1618
    .line 1619
    move-object/from16 v16, v3

    .line 1620
    .line 1621
    iget-object v3, v1, Lcom/sgscq/vpn/handler/m0;->b:Ljava/lang/String;

    .line 1622
    .line 1623
    move-object/from16 v26, v0

    .line 1624
    .line 1625
    const/4 v0, 0x0

    .line 1626
    move-object/from16 v27, v6

    .line 1627
    .line 1628
    const/4 v6, 0x1

    .line 1629
    invoke-static {v13, v0, v4, v6, v3}, Lcom/sgscq/vpn/handler/l0;->b(Ljava/util/List;Ljava/util/Map;Lcom/sgscq/vpn/w1;ILjava/lang/String;)Ljava/util/ArrayList;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v20

    .line 1633
    invoke-static {}, Lo/h;->a()Lo/h;

    .line 1634
    .line 1635
    .line 1636
    move-result-object v0

    .line 1637
    new-instance v4, Lcom/sgscq/vpn/battle/BattleScenario;

    .line 1638
    .line 1639
    const/16 v21, 0x0

    .line 1640
    .line 1641
    move v13, v9

    .line 1642
    move-object v6, v10

    .line 1643
    int-to-double v9, v2

    .line 1644
    move-object/from16 v28, v6

    .line 1645
    .line 1646
    iget v6, v1, Lcom/sgscq/vpn/handler/m0;->e:I

    .line 1647
    .line 1648
    move/from16 v30, v13

    .line 1649
    .line 1650
    move-object/from16 v29, v14

    .line 1651
    .line 1652
    int-to-double v13, v6

    .line 1653
    move-object/from16 v18, v4

    .line 1654
    .line 1655
    move-object/from16 v19, v7

    .line 1656
    .line 1657
    move-wide/from16 v22, v9

    .line 1658
    .line 1659
    move-wide/from16 v24, v13

    .line 1660
    .line 1661
    invoke-direct/range {v18 .. v25}, Lcom/sgscq/vpn/battle/BattleScenario;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;DD)V

    .line 1662
    .line 1663
    .line 1664
    invoke-virtual {v0, v4}, Lo/h;->b(Lcom/sgscq/vpn/battle/BattleScenario;)Lcom/sgscq/vpn/battle/BattleResult;

    .line 1665
    .line 1666
    .line 1667
    move-result-object v0

    .line 1668
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 1669
    .line 1670
    invoke-virtual {v0}, Lcom/sgscq/vpn/battle/BattleResult;->getFightInfo()Ljava/util/Map;

    .line 1671
    .line 1672
    .line 1673
    move-result-object v9

    .line 1674
    invoke-direct {v4, v9}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1675
    .line 1676
    .line 1677
    const-string v9, "init"

    .line 1678
    .line 1679
    invoke-virtual {v4, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v10

    .line 1683
    instance-of v10, v10, Ljava/util/Map;

    .line 1684
    .line 1685
    const-string v13, "general_id"

    .line 1686
    .line 1687
    const-string v14, "112001"

    .line 1688
    .line 1689
    move-object/from16 v18, v3

    .line 1690
    .line 1691
    iget-object v3, v1, Lcom/sgscq/vpn/handler/m0;->f:Ljava/util/List;

    .line 1692
    .line 1693
    if-nez v10, :cond_28

    .line 1694
    .line 1695
    move-object/from16 v19, v4

    .line 1696
    .line 1697
    goto/16 :goto_18

    .line 1698
    .line 1699
    :cond_28
    invoke-virtual {v4, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    .line 1701
    .line 1702
    move-result-object v9

    .line 1703
    check-cast v9, Ljava/util/Map;

    .line 1704
    .line 1705
    invoke-interface {v15, v8, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    .line 1707
    .line 1708
    move-result-object v8

    .line 1709
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1710
    .line 1711
    .line 1712
    move-result-object v8

    .line 1713
    const-string v10, "fighting"

    .line 1714
    .line 1715
    const/4 v12, 0x0

    .line 1716
    move-object/from16 v19, v4

    .line 1717
    .line 1718
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1719
    .line 1720
    .line 1721
    move-result-object v4

    .line 1722
    invoke-interface {v15, v10, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1723
    .line 1724
    .line 1725
    move-result-object v4

    .line 1726
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1727
    .line 1728
    .line 1729
    move-result-object v4

    .line 1730
    invoke-static {v4, v12}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 1731
    .line 1732
    .line 1733
    move-result v4

    .line 1734
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1735
    .line 1736
    .line 1737
    move-result v10

    .line 1738
    if-eqz v10, :cond_29

    .line 1739
    .line 1740
    move-object/from16 v48, v14

    .line 1741
    .line 1742
    goto :goto_16

    .line 1743
    :cond_29
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1744
    .line 1745
    .line 1746
    move-result-object v10

    .line 1747
    check-cast v10, Lcom/sgscq/vpn/battle/BattleUnit;

    .line 1748
    .line 1749
    invoke-virtual {v10}, Lcom/sgscq/vpn/battle/BattleUnit;->getId()Ljava/lang/String;

    .line 1750
    .line 1751
    .line 1752
    move-result-object v10

    .line 1753
    move-object/from16 v48, v10

    .line 1754
    .line 1755
    :goto_16
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 1756
    .line 1757
    .line 1758
    move-result v10

    .line 1759
    if-eqz v10, :cond_2a

    .line 1760
    .line 1761
    move-object/from16 v66, v14

    .line 1762
    .line 1763
    goto :goto_17

    .line 1764
    :cond_2a
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1765
    .line 1766
    .line 1767
    move-result-object v10

    .line 1768
    check-cast v10, Ljava/util/Map;

    .line 1769
    .line 1770
    invoke-interface {v10, v13, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    .line 1772
    .line 1773
    move-result-object v10

    .line 1774
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v10

    .line 1778
    move-object/from16 v66, v10

    .line 1779
    .line 1780
    :goto_17
    const/4 v10, 0x2

    .line 1781
    new-array v10, v10, [Ljava/util/Map;

    .line 1782
    .line 1783
    const-string v31, "userName"

    .line 1784
    .line 1785
    const-string v33, "teamPoint"

    .line 1786
    .line 1787
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1788
    .line 1789
    .line 1790
    move-result-object v34

    .line 1791
    const-string v35, "user_ability"

    .line 1792
    .line 1793
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v36

    .line 1797
    const-string v37, "leadership_num"

    .line 1798
    .line 1799
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1800
    .line 1801
    .line 1802
    move-result-object v38

    .line 1803
    const-string v39, "leadershipNum"

    .line 1804
    .line 1805
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1806
    .line 1807
    .line 1808
    move-result-object v40

    .line 1809
    const-string v41, "user_leadership_num"

    .line 1810
    .line 1811
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1812
    .line 1813
    .line 1814
    move-result-object v42

    .line 1815
    const-string v43, "fighting"

    .line 1816
    .line 1817
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1818
    .line 1819
    .line 1820
    move-result-object v44

    .line 1821
    const-string v45, "general_id"

    .line 1822
    .line 1823
    const-string v47, "teamLeader"

    .line 1824
    .line 1825
    move-object/from16 v32, v8

    .line 1826
    .line 1827
    move-object/from16 v46, v48

    .line 1828
    .line 1829
    filled-new-array/range {v31 .. v48}, [Ljava/lang/Object;

    .line 1830
    .line 1831
    .line 1832
    move-result-object v4

    .line 1833
    const-string v12, "name"

    .line 1834
    .line 1835
    invoke-static {v12, v8, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1836
    .line 1837
    .line 1838
    move-result-object v4

    .line 1839
    const/4 v8, 0x0

    .line 1840
    aput-object v4, v10, v8

    .line 1841
    .line 1842
    iget-object v4, v1, Lcom/sgscq/vpn/handler/m0;->b:Ljava/lang/String;

    .line 1843
    .line 1844
    move-object/from16 v50, v4

    .line 1845
    .line 1846
    const-string v49, "userName"

    .line 1847
    .line 1848
    const-string v51, "teamPoint"

    .line 1849
    .line 1850
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1851
    .line 1852
    .line 1853
    move-result-object v52

    .line 1854
    const-string v53, "user_ability"

    .line 1855
    .line 1856
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1857
    .line 1858
    .line 1859
    move-result-object v54

    .line 1860
    const-string v55, "leadership_num"

    .line 1861
    .line 1862
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1863
    .line 1864
    .line 1865
    move-result-object v56

    .line 1866
    const-string v57, "leadershipNum"

    .line 1867
    .line 1868
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1869
    .line 1870
    .line 1871
    move-result-object v58

    .line 1872
    const-string v59, "user_leadership_num"

    .line 1873
    .line 1874
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1875
    .line 1876
    .line 1877
    move-result-object v60

    .line 1878
    const-string v61, "fighting"

    .line 1879
    .line 1880
    iget v6, v1, Lcom/sgscq/vpn/handler/m0;->d:I

    .line 1881
    .line 1882
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1883
    .line 1884
    .line 1885
    move-result-object v62

    .line 1886
    const-string v63, "general_id"

    .line 1887
    .line 1888
    const-string v65, "teamLeader"

    .line 1889
    .line 1890
    move-object/from16 v64, v66

    .line 1891
    .line 1892
    filled-new-array/range {v49 .. v66}, [Ljava/lang/Object;

    .line 1893
    .line 1894
    .line 1895
    move-result-object v6

    .line 1896
    invoke-static {v12, v4, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1897
    .line 1898
    .line 1899
    move-result-object v4

    .line 1900
    const/4 v6, 0x1

    .line 1901
    aput-object v4, v10, v6

    .line 1902
    .line 1903
    invoke-static {v10}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1904
    .line 1905
    .line 1906
    move-result-object v4

    .line 1907
    const-string v6, "info"

    .line 1908
    .line 1909
    invoke-interface {v9, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1910
    .line 1911
    .line 1912
    const-string v4, "skipRounds"

    .line 1913
    .line 1914
    const/4 v6, 0x0

    .line 1915
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1916
    .line 1917
    .line 1918
    move-result-object v6

    .line 1919
    invoke-interface {v9, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1920
    .line 1921
    .line 1922
    :goto_18
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1923
    .line 1924
    .line 1925
    move-result-object v4

    .line 1926
    const/4 v6, 0x0

    .line 1927
    :cond_2b
    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1928
    .line 1929
    .line 1930
    move-result v8

    .line 1931
    if-eqz v8, :cond_2c

    .line 1932
    .line 1933
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1934
    .line 1935
    .line 1936
    move-result-object v8

    .line 1937
    check-cast v8, Lcom/sgscq/vpn/battle/BattleUnit;

    .line 1938
    .line 1939
    if-eqz v8, :cond_2b

    .line 1940
    .line 1941
    invoke-virtual {v8}, Lcom/sgscq/vpn/battle/BattleUnit;->isAlive()Z

    .line 1942
    .line 1943
    .line 1944
    move-result v8

    .line 1945
    if-eqz v8, :cond_2b

    .line 1946
    .line 1947
    add-int/lit8 v6, v6, 0x1

    .line 1948
    .line 1949
    goto :goto_19

    .line 1950
    :cond_2c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1951
    .line 1952
    .line 1953
    move-result v4

    .line 1954
    const/4 v8, 0x1

    .line 1955
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    .line 1956
    .line 1957
    .line 1958
    move-result v4

    .line 1959
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1960
    .line 1961
    .line 1962
    move-result v8

    .line 1963
    if-eqz v8, :cond_2d

    .line 1964
    .line 1965
    const/4 v7, 0x0

    .line 1966
    move-object v8, v14

    .line 1967
    goto :goto_1a

    .line 1968
    :cond_2d
    const/4 v8, 0x0

    .line 1969
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1970
    .line 1971
    .line 1972
    move-result-object v7

    .line 1973
    check-cast v7, Lcom/sgscq/vpn/battle/BattleUnit;

    .line 1974
    .line 1975
    invoke-virtual {v7}, Lcom/sgscq/vpn/battle/BattleUnit;->getId()Ljava/lang/String;

    .line 1976
    .line 1977
    .line 1978
    move-result-object v7

    .line 1979
    move/from16 v67, v8

    .line 1980
    .line 1981
    move-object v8, v7

    .line 1982
    move/from16 v7, v67

    .line 1983
    .line 1984
    :goto_1a
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 1985
    .line 1986
    .line 1987
    move-result v9

    .line 1988
    if-eqz v9, :cond_2e

    .line 1989
    .line 1990
    goto :goto_1b

    .line 1991
    :cond_2e
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1992
    .line 1993
    .line 1994
    move-result-object v3

    .line 1995
    check-cast v3, Ljava/util/Map;

    .line 1996
    .line 1997
    invoke-interface {v3, v13, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1998
    .line 1999
    .line 2000
    move-result-object v3

    .line 2001
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2002
    .line 2003
    .line 2004
    move-result-object v14

    .line 2005
    :goto_1b
    const/4 v3, 0x2

    .line 2006
    new-array v3, v3, [Ljava/lang/Object;

    .line 2007
    .line 2008
    aput-object v11, v3, v7

    .line 2009
    .line 2010
    invoke-virtual {v0}, Lcom/sgscq/vpn/battle/BattleResult;->isSuccess()Z

    .line 2011
    .line 2012
    .line 2013
    move-result v9

    .line 2014
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2015
    .line 2016
    .line 2017
    move-result-object v9

    .line 2018
    const/16 v10, 0x12

    .line 2019
    .line 2020
    new-array v10, v10, [Ljava/lang/Object;

    .line 2021
    .line 2022
    const-string v12, "is_win"

    .line 2023
    .line 2024
    aput-object v12, v10, v7

    .line 2025
    .line 2026
    invoke-virtual {v0}, Lcom/sgscq/vpn/battle/BattleResult;->isSuccess()Z

    .line 2027
    .line 2028
    .line 2029
    move-result v7

    .line 2030
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2031
    .line 2032
    .line 2033
    move-result-object v7

    .line 2034
    const/4 v12, 0x1

    .line 2035
    aput-object v7, v10, v12

    .line 2036
    .line 2037
    const-string v7, "fight_type"

    .line 2038
    .line 2039
    const/4 v12, 0x2

    .line 2040
    aput-object v7, v10, v12

    .line 2041
    .line 2042
    const/4 v7, 0x3

    .line 2043
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2044
    .line 2045
    .line 2046
    move-result-object v12

    .line 2047
    aput-object v12, v10, v7

    .line 2048
    .line 2049
    const-string v7, "fight_calculate_info"

    .line 2050
    .line 2051
    const/4 v12, 0x4

    .line 2052
    aput-object v7, v10, v12

    .line 2053
    .line 2054
    invoke-virtual {v0}, Lcom/sgscq/vpn/battle/BattleResult;->isSuccess()Z

    .line 2055
    .line 2056
    .line 2057
    move-result v7

    .line 2058
    invoke-static {v7, v6, v4}, Lcom/sgscq/vpn/battle/BattleStarCalculator;->calculate(ZII)I

    .line 2059
    .line 2060
    .line 2061
    move-result v7

    .line 2062
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2063
    .line 2064
    .line 2065
    move-result-object v7

    .line 2066
    const-string v20, "rounds"

    .line 2067
    .line 2068
    invoke-virtual {v0}, Lcom/sgscq/vpn/battle/BattleResult;->getRoundCount()I

    .line 2069
    .line 2070
    .line 2071
    move-result v0

    .line 2072
    const/4 v12, 0x1

    .line 2073
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    .line 2074
    .line 2075
    .line 2076
    move-result v0

    .line 2077
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2078
    .line 2079
    .line 2080
    move-result-object v21

    .line 2081
    const-string v22, "residue_team_num"

    .line 2082
    .line 2083
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2084
    .line 2085
    .line 2086
    move-result-object v23

    .line 2087
    const-string v24, "residue_team_percent"

    .line 2088
    .line 2089
    invoke-static {v6, v4}, Lcom/sgscq/vpn/battle/BattleStarCalculator;->ceilPercent(II)I

    .line 2090
    .line 2091
    .line 2092
    move-result v0

    .line 2093
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2094
    .line 2095
    .line 2096
    move-result-object v25

    .line 2097
    filled-new-array/range {v20 .. v25}, [Ljava/lang/Object;

    .line 2098
    .line 2099
    .line 2100
    move-result-object v0

    .line 2101
    const-string v4, "star_level"

    .line 2102
    .line 2103
    invoke-static {v4, v7, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2104
    .line 2105
    .line 2106
    move-result-object v0

    .line 2107
    const/4 v4, 0x5

    .line 2108
    aput-object v0, v10, v4

    .line 2109
    .line 2110
    const-string v0, "player_info"

    .line 2111
    .line 2112
    const/4 v4, 0x6

    .line 2113
    aput-object v0, v10, v4

    .line 2114
    .line 2115
    const-string v0, "user_level"

    .line 2116
    .line 2117
    const/4 v4, 0x1

    .line 2118
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2119
    .line 2120
    .line 2121
    move-result-object v6

    .line 2122
    invoke-interface {v15, v0, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2123
    .line 2124
    .line 2125
    move-result-object v0

    .line 2126
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2127
    .line 2128
    .line 2129
    move-result-object v0

    .line 2130
    invoke-static {v0, v4}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 2131
    .line 2132
    .line 2133
    move-result v0

    .line 2134
    move-object/from16 v6, v29

    .line 2135
    .line 2136
    invoke-static {v0, v6, v5, v8}, Lcom/sgscq/vpn/cloud/m0;->F2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 2137
    .line 2138
    .line 2139
    move-result-object v0

    .line 2140
    iget v4, v1, Lcom/sgscq/vpn/handler/m0;->c:I

    .line 2141
    .line 2142
    iget-object v1, v1, Lcom/sgscq/vpn/handler/m0;->a:Ljava/lang/String;

    .line 2143
    .line 2144
    move-object/from16 v5, v18

    .line 2145
    .line 2146
    invoke-static {v4, v1, v5, v14}, Lcom/sgscq/vpn/cloud/m0;->F2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 2147
    .line 2148
    .line 2149
    move-result-object v1

    .line 2150
    invoke-static {v0, v1}, Lcom/sgscq/vpn/cloud/m0;->T1(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 2151
    .line 2152
    .line 2153
    move-result-object v0

    .line 2154
    const/4 v1, 0x7

    .line 2155
    aput-object v0, v10, v1

    .line 2156
    .line 2157
    const/16 v0, 0x8

    .line 2158
    .line 2159
    const-string v1, "drop_info"

    .line 2160
    .line 2161
    aput-object v1, v10, v0

    .line 2162
    .line 2163
    const/4 v0, 0x0

    .line 2164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2165
    .line 2166
    .line 2167
    move-result-object v1

    .line 2168
    const-string v31, "general_exp"

    .line 2169
    .line 2170
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2171
    .line 2172
    .line 2173
    move-result-object v32

    .line 2174
    const-string v33, "user_coin"

    .line 2175
    .line 2176
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2177
    .line 2178
    .line 2179
    move-result-object v34

    .line 2180
    const-string v35, "fortune"

    .line 2181
    .line 2182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2183
    .line 2184
    .line 2185
    move-result-object v36

    .line 2186
    const-string v37, "rank_salary"

    .line 2187
    .line 2188
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2189
    .line 2190
    .line 2191
    move-result-object v38

    .line 2192
    const-string v39, "reward_honor"

    .line 2193
    .line 2194
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2195
    .line 2196
    .line 2197
    move-result-object v40

    .line 2198
    const-string v41, "point"

    .line 2199
    .line 2200
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2201
    .line 2202
    .line 2203
    move-result-object v42

    .line 2204
    filled-new-array/range {v31 .. v42}, [Ljava/lang/Object;

    .line 2205
    .line 2206
    .line 2207
    move-result-object v0

    .line 2208
    const-string v4, "user_exp"

    .line 2209
    .line 2210
    invoke-static {v4, v1, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2211
    .line 2212
    .line 2213
    move-result-object v0

    .line 2214
    const/16 v1, 0x9

    .line 2215
    .line 2216
    aput-object v0, v10, v1

    .line 2217
    .line 2218
    const/16 v0, 0xa

    .line 2219
    .line 2220
    const-string v1, "add_list"

    .line 2221
    .line 2222
    aput-object v1, v10, v0

    .line 2223
    .line 2224
    new-instance v0, Ljava/util/ArrayList;

    .line 2225
    .line 2226
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2227
    .line 2228
    .line 2229
    const/16 v1, 0xb

    .line 2230
    .line 2231
    aput-object v0, v10, v1

    .line 2232
    .line 2233
    const-string v0, "add_list_other"

    .line 2234
    .line 2235
    const/16 v1, 0xc

    .line 2236
    .line 2237
    aput-object v0, v10, v1

    .line 2238
    .line 2239
    new-instance v0, Ljava/util/ArrayList;

    .line 2240
    .line 2241
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2242
    .line 2243
    .line 2244
    const/16 v1, 0xd

    .line 2245
    .line 2246
    aput-object v0, v10, v1

    .line 2247
    .line 2248
    const/16 v0, 0xe

    .line 2249
    .line 2250
    const-string v1, "show_general_info"

    .line 2251
    .line 2252
    aput-object v1, v10, v0

    .line 2253
    .line 2254
    new-instance v0, Ljava/util/ArrayList;

    .line 2255
    .line 2256
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2257
    .line 2258
    .line 2259
    const/16 v1, 0xf

    .line 2260
    .line 2261
    aput-object v0, v10, v1

    .line 2262
    .line 2263
    const/16 v0, 0x10

    .line 2264
    .line 2265
    const-string v1, "hulao_round"

    .line 2266
    .line 2267
    aput-object v1, v10, v0

    .line 2268
    .line 2269
    const/16 v0, 0x11

    .line 2270
    .line 2271
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2272
    .line 2273
    .line 2274
    move-result-object v1

    .line 2275
    aput-object v1, v10, v0

    .line 2276
    .line 2277
    move-object/from16 v0, v28

    .line 2278
    .line 2279
    invoke-static {v0, v9, v10}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2280
    .line 2281
    .line 2282
    move-result-object v1

    .line 2283
    const/4 v4, 0x1

    .line 2284
    aput-object v1, v3, v4

    .line 2285
    .line 2286
    const-string v1, "fight_info"

    .line 2287
    .line 2288
    move-object/from16 v4, v19

    .line 2289
    .line 2290
    invoke-static {v1, v4, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2291
    .line 2292
    .line 2293
    move-result-object v1

    .line 2294
    move-object/from16 v3, v27

    .line 2295
    .line 2296
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2297
    .line 2298
    .line 2299
    invoke-virtual {v1, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2300
    .line 2301
    .line 2302
    move-result-object v4

    .line 2303
    check-cast v4, Ljava/util/Map;

    .line 2304
    .line 2305
    if-eqz v4, :cond_30

    .line 2306
    .line 2307
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2308
    .line 2309
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2310
    .line 2311
    .line 2312
    move-result-object v4

    .line 2313
    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 2314
    .line 2315
    .line 2316
    move-result v4

    .line 2317
    if-nez v4, :cond_2f

    .line 2318
    .line 2319
    goto :goto_1c

    .line 2320
    :cond_2f
    move-object/from16 v1, p0

    .line 2321
    .line 2322
    move-object/from16 v4, p1

    .line 2323
    .line 2324
    move-object/from16 v7, p2

    .line 2325
    .line 2326
    move-object v14, v6

    .line 2327
    move-object/from16 v5, v17

    .line 2328
    .line 2329
    move-object/from16 v0, v26

    .line 2330
    .line 2331
    move/from16 v8, v30

    .line 2332
    .line 2333
    move-object v6, v3

    .line 2334
    move-object/from16 v3, v16

    .line 2335
    .line 2336
    goto/16 :goto_14

    .line 2337
    .line 2338
    :cond_30
    :goto_1c
    invoke-interface {v1, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2339
    .line 2340
    .line 2341
    goto :goto_1d

    .line 2342
    :cond_31
    move-object/from16 v26, v0

    .line 2343
    .line 2344
    move-object/from16 v16, v3

    .line 2345
    .line 2346
    move-object/from16 p1, v4

    .line 2347
    .line 2348
    move-object v3, v6

    .line 2349
    move-object v0, v10

    .line 2350
    move-object v6, v14

    .line 2351
    :goto_1d
    invoke-static {}, Lcom/sgscq/vpn/handler/l0;->g()Ljava/util/LinkedHashMap;

    .line 2352
    .line 2353
    .line 2354
    move-result-object v1

    .line 2355
    const-string v2, "stage"

    .line 2356
    .line 2357
    move-object/from16 v4, v26

    .line 2358
    .line 2359
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2360
    .line 2361
    .line 2362
    const-string v2, "mode"

    .line 2363
    .line 2364
    move-object/from16 v4, v16

    .line 2365
    .line 2366
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2367
    .line 2368
    .line 2369
    const-string v2, "fight_result_all"

    .line 2370
    .line 2371
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2372
    .line 2373
    .line 2374
    const-string v4, "return_info"

    .line 2375
    .line 2376
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2377
    .line 2378
    .line 2379
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2380
    .line 2381
    .line 2382
    move-result-object v2

    .line 2383
    instance-of v3, v2, Ljava/util/List;

    .line 2384
    .line 2385
    if-eqz v3, :cond_36

    .line 2386
    .line 2387
    check-cast v2, Ljava/util/List;

    .line 2388
    .line 2389
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 2390
    .line 2391
    .line 2392
    move-result v3

    .line 2393
    if-eqz v3, :cond_32

    .line 2394
    .line 2395
    goto :goto_1e

    .line 2396
    :cond_32
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2397
    .line 2398
    .line 2399
    move-result-object v2

    .line 2400
    :cond_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 2401
    .line 2402
    .line 2403
    move-result v3

    .line 2404
    if-eqz v3, :cond_35

    .line 2405
    .line 2406
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2407
    .line 2408
    .line 2409
    move-result-object v3

    .line 2410
    instance-of v4, v3, Ljava/util/Map;

    .line 2411
    .line 2412
    if-nez v4, :cond_34

    .line 2413
    .line 2414
    goto :goto_1e

    .line 2415
    :cond_34
    check-cast v3, Ljava/util/Map;

    .line 2416
    .line 2417
    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2418
    .line 2419
    .line 2420
    move-result-object v3

    .line 2421
    instance-of v4, v3, Ljava/util/Map;

    .line 2422
    .line 2423
    if-eqz v4, :cond_36

    .line 2424
    .line 2425
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2426
    .line 2427
    check-cast v3, Ljava/util/Map;

    .line 2428
    .line 2429
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2430
    .line 2431
    .line 2432
    move-result-object v3

    .line 2433
    invoke-virtual {v4, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 2434
    .line 2435
    .line 2436
    move-result v3

    .line 2437
    if-nez v3, :cond_33

    .line 2438
    .line 2439
    goto :goto_1e

    .line 2440
    :cond_35
    const/4 v0, 0x1

    .line 2441
    goto :goto_1f

    .line 2442
    :cond_36
    :goto_1e
    const/4 v0, 0x0

    .line 2443
    :goto_1f
    if-eqz v0, :cond_37

    .line 2444
    .line 2445
    const/4 v0, 0x2

    .line 2446
    goto :goto_20

    .line 2447
    :cond_37
    const/4 v0, 0x1

    .line 2448
    :goto_20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2449
    .line 2450
    .line 2451
    move-result-object v0

    .line 2452
    move-object/from16 v2, p1

    .line 2453
    .line 2454
    invoke-interface {v15, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2455
    .line 2456
    .line 2457
    move-object v0, v1

    .line 2458
    :goto_21
    const-string v1, "fight_result_all"

    .line 2459
    .line 2460
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2461
    .line 2462
    .line 2463
    move-result-object v1

    .line 2464
    instance-of v2, v1, Ljava/util/List;

    .line 2465
    .line 2466
    if-nez v2, :cond_38

    .line 2467
    .line 2468
    goto/16 :goto_27

    .line 2469
    .line 2470
    :cond_38
    check-cast v1, Ljava/util/List;

    .line 2471
    .line 2472
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2473
    .line 2474
    .line 2475
    move-result-object v1

    .line 2476
    :cond_39
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2477
    .line 2478
    .line 2479
    move-result v2

    .line 2480
    if-eqz v2, :cond_40

    .line 2481
    .line 2482
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2483
    .line 2484
    .line 2485
    move-result-object v2

    .line 2486
    instance-of v3, v2, Ljava/util/Map;

    .line 2487
    .line 2488
    if-nez v3, :cond_3a

    .line 2489
    .line 2490
    goto :goto_22

    .line 2491
    :cond_3a
    check-cast v2, Ljava/util/Map;

    .line 2492
    .line 2493
    const-string v3, "fight_info"

    .line 2494
    .line 2495
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2496
    .line 2497
    .line 2498
    move-result-object v2

    .line 2499
    instance-of v3, v2, Ljava/util/Map;

    .line 2500
    .line 2501
    if-eqz v3, :cond_39

    .line 2502
    .line 2503
    check-cast v2, Ljava/util/Map;

    .line 2504
    .line 2505
    const/4 v3, 0x1

    .line 2506
    invoke-static {v2, v3}, Lcom/sgscq/vpn/p5;->h(Ljava/util/Map;Z)V

    .line 2507
    .line 2508
    .line 2509
    goto :goto_22

    .line 2510
    :catchall_1
    move-exception v0

    .line 2511
    monitor-exit v4

    .line 2512
    throw v0

    .line 2513
    :cond_3b
    move-object/from16 v15, v16

    .line 2514
    .line 2515
    move-object/from16 v6, v28

    .line 2516
    .line 2517
    const-string v1, "hulao.recieve"

    .line 2518
    .line 2519
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2520
    .line 2521
    .line 2522
    move-result v1

    .line 2523
    if-eqz v1, :cond_46

    .line 2524
    .line 2525
    const-string v0, "stage"

    .line 2526
    .line 2527
    const-string v1, "1"

    .line 2528
    .line 2529
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2530
    .line 2531
    .line 2532
    move-result-object v0

    .line 2533
    check-cast v0, Ljava/lang/String;

    .line 2534
    .line 2535
    const-string v1, "mode"

    .line 2536
    .line 2537
    const-string v3, "1"

    .line 2538
    .line 2539
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2540
    .line 2541
    .line 2542
    move-result-object v1

    .line 2543
    check-cast v1, Ljava/lang/String;

    .line 2544
    .line 2545
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 2546
    .line 2547
    .line 2548
    move-result-wide v2

    .line 2549
    const-string v4, "Asia/Shanghai"

    .line 2550
    .line 2551
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 2552
    .line 2553
    .line 2554
    move-result-object v4

    .line 2555
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2556
    .line 2557
    invoke-static {v4, v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 2558
    .line 2559
    .line 2560
    move-result-object v4

    .line 2561
    const-wide/32 v7, 0x112a880

    .line 2562
    .line 2563
    .line 2564
    sub-long/2addr v2, v7

    .line 2565
    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2566
    .line 2567
    .line 2568
    const/4 v2, 0x7

    .line 2569
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    .line 2570
    .line 2571
    .line 2572
    move-result v3

    .line 2573
    const/4 v4, 0x1

    .line 2574
    if-ne v3, v4, :cond_3c

    .line 2575
    .line 2576
    goto :goto_23

    .line 2577
    :cond_3c
    add-int/lit8 v2, v3, -0x1

    .line 2578
    .line 2579
    :goto_23
    sget-object v3, Lcom/sgscq/vpn/handler/l0;->c:[I

    .line 2580
    .line 2581
    const/4 v4, 0x0

    .line 2582
    const/4 v5, 0x4

    .line 2583
    :goto_24
    if-ge v4, v5, :cond_3e

    .line 2584
    .line 2585
    aget v7, v3, v4

    .line 2586
    .line 2587
    if-ne v2, v7, :cond_3d

    .line 2588
    .line 2589
    const/4 v2, 0x1

    .line 2590
    goto :goto_25

    .line 2591
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    .line 2592
    .line 2593
    goto :goto_24

    .line 2594
    :cond_3e
    const/4 v2, 0x0

    .line 2595
    :goto_25
    const-string v3, "hulao_status"

    .line 2596
    .line 2597
    const-string v4, "0"

    .line 2598
    .line 2599
    const/4 v5, 0x0

    .line 2600
    invoke-static {v15, v3, v4, v5}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 2601
    .line 2602
    .line 2603
    move-result v5

    .line 2604
    const/4 v7, 0x3

    .line 2605
    if-ne v5, v7, :cond_3f

    .line 2606
    .line 2607
    const-string v0, "e_hulao_1005"

    .line 2608
    .line 2609
    goto :goto_26

    .line 2610
    :cond_3f
    const/4 v7, 0x2

    .line 2611
    if-eq v5, v7, :cond_41

    .line 2612
    .line 2613
    const-string v0, "e_hulao_1003"

    .line 2614
    .line 2615
    :goto_26
    invoke-static {v0}, Lcom/sgscq/vpn/handler/l0;->c(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 2616
    .line 2617
    .line 2618
    move-result-object v0

    .line 2619
    :cond_40
    :goto_27
    move-object/from16 v1, p0

    .line 2620
    .line 2621
    goto/16 :goto_2a

    .line 2622
    .line 2623
    :cond_41
    const/4 v5, 0x1

    .line 2624
    invoke-static {v0, v5}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 2625
    .line 2626
    .line 2627
    move-result v0

    .line 2628
    const/4 v7, 0x6

    .line 2629
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    .line 2630
    .line 2631
    .line 2632
    move-result v0

    .line 2633
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 2634
    .line 2635
    .line 2636
    move-result v0

    .line 2637
    invoke-static {v1, v5}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 2638
    .line 2639
    .line 2640
    move-result v1

    .line 2641
    const/4 v7, 0x3

    .line 2642
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    .line 2643
    .line 2644
    .line 2645
    move-result v1

    .line 2646
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 2647
    .line 2648
    .line 2649
    move-result v1

    .line 2650
    sget-object v5, Lcom/sgscq/vpn/handler/l0;->d:[[I

    .line 2651
    .line 2652
    add-int/lit8 v8, v1, -0x1

    .line 2653
    .line 2654
    aget-object v5, v5, v8

    .line 2655
    .line 2656
    add-int/lit8 v9, v0, -0x1

    .line 2657
    .line 2658
    aget v5, v5, v9

    .line 2659
    .line 2660
    if-eqz v2, :cond_42

    .line 2661
    .line 2662
    mul-int/lit8 v5, v5, 0x2

    .line 2663
    .line 2664
    :cond_42
    sget-object v2, Lcom/sgscq/vpn/handler/l0;->e:[[I

    .line 2665
    .line 2666
    aget-object v2, v2, v8

    .line 2667
    .line 2668
    aget v2, v2, v9

    .line 2669
    .line 2670
    sget-object v10, Lcom/sgscq/vpn/handler/l0;->f:[[I

    .line 2671
    .line 2672
    aget-object v8, v10, v8

    .line 2673
    .line 2674
    aget v8, v8, v9

    .line 2675
    .line 2676
    const-string v9, "600094"

    .line 2677
    .line 2678
    invoke-static {v5, v9, v15}, Lcom/sgscq/vpn/handler/l0;->a(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 2679
    .line 2680
    .line 2681
    move-result-object v9

    .line 2682
    const-string v10, "600012"

    .line 2683
    .line 2684
    invoke-static {v2, v10, v15}, Lcom/sgscq/vpn/handler/l0;->a(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 2685
    .line 2686
    .line 2687
    move-result-object v10

    .line 2688
    const-string v11, "600013"

    .line 2689
    .line 2690
    invoke-static {v8, v11, v15}, Lcom/sgscq/vpn/handler/l0;->a(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 2691
    .line 2692
    .line 2693
    move-result-object v11

    .line 2694
    add-int/lit8 v12, v0, 0x1

    .line 2695
    .line 2696
    const/4 v13, 0x6

    .line 2697
    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    .line 2698
    .line 2699
    .line 2700
    move-result v12

    .line 2701
    const-string v14, "hulao_stage"

    .line 2702
    .line 2703
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2704
    .line 2705
    .line 2706
    move-result-object v12

    .line 2707
    invoke-interface {v15, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2708
    .line 2709
    .line 2710
    if-lt v0, v13, :cond_43

    .line 2711
    .line 2712
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2713
    .line 2714
    .line 2715
    move-result-object v4

    .line 2716
    :cond_43
    const-string v1, "hulao_mode"

    .line 2717
    .line 2718
    invoke-interface {v15, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2719
    .line 2720
    .line 2721
    if-lt v0, v13, :cond_44

    .line 2722
    .line 2723
    goto :goto_28

    .line 2724
    :cond_44
    const/4 v7, 0x0

    .line 2725
    :goto_28
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2726
    .line 2727
    .line 2728
    move-result-object v0

    .line 2729
    invoke-interface {v15, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2730
    .line 2731
    .line 2732
    invoke-static {}, Lcom/sgscq/vpn/handler/l0;->g()Ljava/util/LinkedHashMap;

    .line 2733
    .line 2734
    .line 2735
    move-result-object v0

    .line 2736
    invoke-static {v15}, Lcom/sgscq/vpn/handler/l0;->e(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 2737
    .line 2738
    .line 2739
    move-result-object v1

    .line 2740
    const-string v3, "hulao_info"

    .line 2741
    .line 2742
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2743
    .line 2744
    .line 2745
    new-instance v1, Ljava/util/ArrayList;

    .line 2746
    .line 2747
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2748
    .line 2749
    .line 2750
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2751
    .line 2752
    .line 2753
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2754
    .line 2755
    .line 2756
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2757
    .line 2758
    .line 2759
    new-instance v3, Ljava/util/ArrayList;

    .line 2760
    .line 2761
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2762
    .line 2763
    .line 2764
    filled-new-array {v5, v2, v8}, [I

    .line 2765
    .line 2766
    .line 2767
    move-result-object v2

    .line 2768
    const/4 v4, 0x0

    .line 2769
    :goto_29
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2770
    .line 2771
    .line 2772
    move-result v5

    .line 2773
    if-ge v4, v5, :cond_45

    .line 2774
    .line 2775
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2776
    .line 2777
    .line 2778
    move-result-object v5

    .line 2779
    check-cast v5, Ljava/util/Map;

    .line 2780
    .line 2781
    const/4 v7, 0x5

    .line 2782
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2783
    .line 2784
    .line 2785
    move-result-object v7

    .line 2786
    const-string v16, "id"

    .line 2787
    .line 2788
    const-string v8, "item_id"

    .line 2789
    .line 2790
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2791
    .line 2792
    .line 2793
    move-result-object v17

    .line 2794
    const-string v18, "item_id"

    .line 2795
    .line 2796
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2797
    .line 2798
    .line 2799
    move-result-object v19

    .line 2800
    const-string v20, "num"

    .line 2801
    .line 2802
    aget v8, v2, v4

    .line 2803
    .line 2804
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2805
    .line 2806
    .line 2807
    move-result-object v21

    .line 2808
    const-string v22, "pk_id"

    .line 2809
    .line 2810
    const-string v8, "pk_id"

    .line 2811
    .line 2812
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2813
    .line 2814
    .line 2815
    move-result-object v23

    .line 2816
    filled-new-array/range {v16 .. v23}, [Ljava/lang/Object;

    .line 2817
    .line 2818
    .line 2819
    move-result-object v5

    .line 2820
    const-string v8, "type"

    .line 2821
    .line 2822
    invoke-static {v8, v7, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2823
    .line 2824
    .line 2825
    move-result-object v5

    .line 2826
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2827
    .line 2828
    .line 2829
    add-int/lit8 v4, v4, 0x1

    .line 2830
    .line 2831
    goto :goto_29

    .line 2832
    :cond_45
    const-string v2, "add_list"

    .line 2833
    .line 2834
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2835
    .line 2836
    .line 2837
    new-instance v2, Ljava/util/ArrayList;

    .line 2838
    .line 2839
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2840
    .line 2841
    .line 2842
    new-instance v3, Ljava/util/ArrayList;

    .line 2843
    .line 2844
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2845
    .line 2846
    .line 2847
    const-string v4, "upd"

    .line 2848
    .line 2849
    const-string v5, "add"

    .line 2850
    .line 2851
    filled-new-array {v4, v1, v5, v3}, [Ljava/lang/Object;

    .line 2852
    .line 2853
    .line 2854
    move-result-object v1

    .line 2855
    const-string v3, "del"

    .line 2856
    .line 2857
    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2858
    .line 2859
    .line 2860
    move-result-object v1

    .line 2861
    const/4 v2, 0x0

    .line 2862
    new-array v2, v2, [Ljava/lang/Object;

    .line 2863
    .line 2864
    const-string v3, "Item"

    .line 2865
    .line 2866
    invoke-static {v3, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2867
    .line 2868
    .line 2869
    move-result-object v1

    .line 2870
    const-string v2, "delta_data"

    .line 2871
    .line 2872
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2873
    .line 2874
    .line 2875
    const-string v1, "cmn_modules"

    .line 2876
    .line 2877
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2878
    .line 2879
    .line 2880
    goto/16 :goto_27

    .line 2881
    .line 2882
    :goto_2a
    iget-object v2, v1, Lcom/sgscq/vpn/handler/l0;->a:Lcom/sgscq/vpn/handler/e0;

    .line 2883
    .line 2884
    check-cast v2, Lcom/sgscq/vpn/handler/k0;

    .line 2885
    .line 2886
    invoke-virtual {v2}, Lcom/sgscq/vpn/handler/k0;->k()Lcom/sgscq/vpn/handler/d1;

    .line 2887
    .line 2888
    .line 2889
    move-result-object v2

    .line 2890
    invoke-virtual {v2, v6, v15}, Lcom/sgscq/vpn/handler/d1;->T0(Ljava/lang/String;Ljava/util/Map;)V

    .line 2891
    .line 2892
    .line 2893
    move-object v2, v0

    .line 2894
    goto :goto_2c

    .line 2895
    :cond_46
    move-object/from16 v1, p0

    .line 2896
    .line 2897
    const-string v2, "hulao.debugReset"

    .line 2898
    .line 2899
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2900
    .line 2901
    .line 2902
    move-result v0

    .line 2903
    if-eqz v0, :cond_47

    .line 2904
    .line 2905
    iget-object v0, v1, Lcom/sgscq/vpn/handler/l0;->a:Lcom/sgscq/vpn/handler/e0;

    .line 2906
    .line 2907
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2908
    .line 2909
    .line 2910
    :cond_47
    invoke-static {v15}, Lcom/sgscq/vpn/handler/l0;->e(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 2911
    .line 2912
    .line 2913
    move-result-object v0

    .line 2914
    invoke-static {}, Lcom/sgscq/vpn/handler/l0;->g()Ljava/util/LinkedHashMap;

    .line 2915
    .line 2916
    .line 2917
    move-result-object v2

    .line 2918
    const-string v3, "hulao_info"

    .line 2919
    .line 2920
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2921
    .line 2922
    .line 2923
    const-string v3, "return_info"

    .line 2924
    .line 2925
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2926
    .line 2927
    .line 2928
    const-string v3, "stage"

    .line 2929
    .line 2930
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2931
    .line 2932
    .line 2933
    move-result-object v4

    .line 2934
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2935
    .line 2936
    .line 2937
    const-string v3, "mode"

    .line 2938
    .line 2939
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2940
    .line 2941
    .line 2942
    move-result-object v4

    .line 2943
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2944
    .line 2945
    .line 2946
    const-string v3, "status"

    .line 2947
    .line 2948
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2949
    .line 2950
    .line 2951
    move-result-object v0

    .line 2952
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2953
    .line 2954
    .line 2955
    if-eqz v5, :cond_48

    .line 2956
    .line 2957
    iget-object v0, v1, Lcom/sgscq/vpn/handler/l0;->a:Lcom/sgscq/vpn/handler/e0;

    .line 2958
    .line 2959
    check-cast v0, Lcom/sgscq/vpn/handler/k0;

    .line 2960
    .line 2961
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->k()Lcom/sgscq/vpn/handler/d1;

    .line 2962
    .line 2963
    .line 2964
    move-result-object v0

    .line 2965
    move-object v5, v2

    .line 2966
    :goto_2b
    invoke-virtual {v0, v6, v15}, Lcom/sgscq/vpn/handler/d1;->T0(Ljava/lang/String;Ljava/util/Map;)V

    .line 2967
    .line 2968
    .line 2969
    move-object v2, v5

    .line 2970
    :cond_48
    :goto_2c
    const-string v0, "delta_data"

    .line 2971
    .line 2972
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2973
    .line 2974
    .line 2975
    move-result-object v0

    .line 2976
    instance-of v0, v0, Ljava/util/Map;

    .line 2977
    .line 2978
    if-eqz v0, :cond_49

    .line 2979
    .line 2980
    const-string v0, "delta_data"

    .line 2981
    .line 2982
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2983
    .line 2984
    .line 2985
    move-result-object v0

    .line 2986
    check-cast v0, Ljava/util/Map;

    .line 2987
    .line 2988
    goto :goto_2d

    .line 2989
    :cond_49
    move-object v0, v15

    .line 2990
    :goto_2d
    const-string v3, "cmn_modules"

    .line 2991
    .line 2992
    const-string v4, ""

    .line 2993
    .line 2994
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2995
    .line 2996
    .line 2997
    move-result-object v3

    .line 2998
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2999
    .line 3000
    .line 3001
    move-result-object v3

    .line 3002
    const-string v4, ","

    .line 3003
    .line 3004
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 3005
    .line 3006
    .line 3007
    move-result-object v3

    .line 3008
    new-instance v4, Ljava/util/ArrayList;

    .line 3009
    .line 3010
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3011
    .line 3012
    .line 3013
    array-length v5, v3

    .line 3014
    const/4 v7, 0x0

    .line 3015
    :goto_2e
    if-ge v7, v5, :cond_4b

    .line 3016
    .line 3017
    aget-object v8, v3, v7

    .line 3018
    .line 3019
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 3020
    .line 3021
    .line 3022
    move-result-object v8

    .line 3023
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 3024
    .line 3025
    .line 3026
    move-result v9

    .line 3027
    if-nez v9, :cond_4a

    .line 3028
    .line 3029
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3030
    .line 3031
    .line 3032
    :cond_4a
    add-int/lit8 v7, v7, 0x1

    .line 3033
    .line 3034
    goto :goto_2e

    .line 3035
    :cond_4b
    const/4 v3, 0x0

    .line 3036
    new-array v3, v3, [Ljava/lang/String;

    .line 3037
    .line 3038
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3039
    .line 3040
    .line 3041
    move-result-object v3

    .line 3042
    check-cast v3, [Ljava/lang/String;

    .line 3043
    .line 3044
    array-length v4, v3

    .line 3045
    if-lez v4, :cond_4c

    .line 3046
    .line 3047
    const-string v4, "cmn"

    .line 3048
    .line 3049
    iget-object v5, v1, Lcom/sgscq/vpn/handler/l0;->a:Lcom/sgscq/vpn/handler/e0;

    .line 3050
    .line 3051
    check-cast v5, Lcom/sgscq/vpn/handler/k0;

    .line 3052
    .line 3053
    invoke-virtual {v5}, Lcom/sgscq/vpn/handler/k0;->k()Lcom/sgscq/vpn/handler/d1;

    .line 3054
    .line 3055
    .line 3056
    move-result-object v7

    .line 3057
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 3058
    .line 3059
    .line 3060
    move-result-wide v8

    .line 3061
    long-to-int v8, v8

    .line 3062
    invoke-virtual {v5}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 3063
    .line 3064
    .line 3065
    move-result v9

    .line 3066
    int-to-long v9, v9

    .line 3067
    invoke-virtual {v5, v9, v10, v15}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 3068
    .line 3069
    .line 3070
    move-result-wide v12

    .line 3071
    invoke-virtual {v5}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 3072
    .line 3073
    .line 3074
    move-result v9

    .line 3075
    const-string v10, "user_gold"

    .line 3076
    .line 3077
    invoke-virtual {v5, v9, v10, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 3078
    .line 3079
    .line 3080
    move-result v9

    .line 3081
    int-to-long v9, v9

    .line 3082
    invoke-virtual {v5}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 3083
    .line 3084
    .line 3085
    move-result v11

    .line 3086
    const-string v14, "user_energy"

    .line 3087
    .line 3088
    invoke-virtual {v5, v11, v14, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 3089
    .line 3090
    .line 3091
    move-result v11

    .line 3092
    move-object/from16 v16, v2

    .line 3093
    .line 3094
    int-to-long v1, v11

    .line 3095
    invoke-virtual {v5}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 3096
    .line 3097
    .line 3098
    move-result v11

    .line 3099
    const-string v14, "user_power"

    .line 3100
    .line 3101
    invoke-virtual {v5, v11, v14, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 3102
    .line 3103
    .line 3104
    move-result v11

    .line 3105
    move-object/from16 p1, v3

    .line 3106
    .line 3107
    move-object/from16 p2, v4

    .line 3108
    .line 3109
    int-to-long v3, v11

    .line 3110
    iget-object v7, v7, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    .line 3111
    .line 3112
    check-cast v7, Lcom/sgscq/vpn/handler/k0;

    .line 3113
    .line 3114
    iget-object v7, v7, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 3115
    .line 3116
    long-to-int v9, v9

    .line 3117
    long-to-int v10, v1

    .line 3118
    long-to-int v11, v3

    .line 3119
    move-object v14, v6

    .line 3120
    invoke-virtual/range {v7 .. v15}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 3121
    .line 3122
    .line 3123
    move-result-object v1

    .line 3124
    invoke-virtual {v5}, Lcom/sgscq/vpn/handler/k0;->k()Lcom/sgscq/vpn/handler/d1;

    .line 3125
    .line 3126
    .line 3127
    move-result-object v2

    .line 3128
    iget-object v2, v2, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    .line 3129
    .line 3130
    check-cast v2, Lcom/sgscq/vpn/handler/k0;

    .line 3131
    .line 3132
    iget-object v2, v2, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 3133
    .line 3134
    move-object/from16 v3, p1

    .line 3135
    .line 3136
    invoke-virtual {v2, v0, v1, v3}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 3137
    .line 3138
    .line 3139
    move-result-object v0

    .line 3140
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 3141
    .line 3142
    .line 3143
    move-result-object v0

    .line 3144
    move-object/from16 v1, p2

    .line 3145
    .line 3146
    move-object/from16 v2, v16

    .line 3147
    .line 3148
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3149
    .line 3150
    .line 3151
    :cond_4c
    move-object/from16 v1, p0

    .line 3152
    .line 3153
    iget-object v0, v1, Lcom/sgscq/vpn/handler/l0;->a:Lcom/sgscq/vpn/handler/e0;

    .line 3154
    .line 3155
    :goto_2f
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 3156
    .line 3157
    .line 3158
    move-result-object v2

    .line 3159
    check-cast v0, Lcom/sgscq/vpn/handler/k0;

    .line 3160
    .line 3161
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 3162
    .line 3163
    .line 3164
    move-result-object v0

    .line 3165
    return-object v0
.end method
