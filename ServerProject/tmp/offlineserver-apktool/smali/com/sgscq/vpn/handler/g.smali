.class public final Lcom/sgscq/vpn/handler/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:[I


# instance fields
.field public final a:Lcom/sgscq/vpn/handler/k0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sgscq/vpn/handler/g;->b:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x8
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x64
        0x73
        0x82
        0x91
        0xa0
        0xaf
        0xbe
        0xc8
        0xd2
        0xdc
        0xe6
        0xf0
        0xfa
        0x104
        0x10e
        0x118
    .end array-data
.end method

.method public constructor <init>(Lcom/sgscq/vpn/handler/k0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/handler/g;->a:Lcom/sgscq/vpn/handler/k0;

    return-void
.end method

.method public static a(Ljava/util/Map;)Ljava/util/List;
    .locals 6

    .line 1
    const-string v0, "BuddyGeneral"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/util/List;

    return-object v1

    :cond_0
    invoke-static {v0, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "add"

    const-string v5, "upd"

    filled-new-array {v5, v3, v4, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "del"

    invoke-static {v4, v2, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static b(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 9

    .line 1
    const-string v0, "BuddyGeneral"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v2, v1, Ljava/util/Map;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const-string v4, "add"

    .line 11
    .line 12
    const-string v5, "upd"

    .line 13
    .line 14
    const-string v6, "del"

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    new-instance p0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v2, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    filled-new-array {v5, v1, v4, v2}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v6, p0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    new-array v1, v3, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {v0, p0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_0
    check-cast v1, Ljava/util/Map;

    .line 49
    .line 50
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    instance-of v2, v2, Ljava/util/List;

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    new-instance v2, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    check-cast v7, Ljava/util/List;

    .line 65
    .line 66
    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    instance-of v7, v7, Ljava/util/List;

    .line 80
    .line 81
    if-eqz v7, :cond_2

    .line 82
    .line 83
    new-instance v7, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Ljava/util/List;

    .line 90
    .line 91
    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    :goto_1
    invoke-static {v0, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    new-instance v7, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    new-instance v8, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .line 113
    .line 114
    filled-new-array {v5, v8, v4, v1}, [Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    invoke-static {v6, v7, v8, p0, v0}, Lc/a;->n(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    new-instance v7, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 125
    .line 126
    .line 127
    filled-new-array {v5, p0, v4, v7}, [Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {v6, v2, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    new-array v1, v3, [Ljava/lang/Object;

    .line 136
    .line 137
    invoke-static {v0, p0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    return-object p0
.end method

.method public static c(ILjava/util/List;)Ljava/util/Map;
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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
    if-eqz v0, :cond_1

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
    const-string v1, "position"

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v0, v1, v2}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-ne p0, v1, :cond_0

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 3

    .line 1
    const-string v0, "General"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/Map;

    .line 22
    .line 23
    const-string v1, "pk_id"

    .line 24
    .line 25
    const-string v2, ""

    .line 26
    .line 27
    invoke-static {v0, v1, v2, p0}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public static f(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "upd"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/util/Map;

    aput-object p2, v4, v2

    invoke-static {v4}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    aput-object p2, v1, v3

    const/4 p2, 0x2

    const-string v2, "add"

    aput-object v2, v1, p2

    const/4 p2, 0x3

    aput-object p0, v1, p2

    const-string p0, "del"

    invoke-static {p0, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    const-string p2, "BuddyGeneral"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static g()Ljava/util/LinkedHashMap;
    .locals 14

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v1, "code"

    const-string v3, "result"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "msg"

    const-string v6, "success"

    const-string v7, "error_code"

    const-string v9, "return_info"

    const-string v2, "result"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v4, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v10

    const-string v11, "cmn_modules"

    const-string v12, "BuddyGeneral"

    move-object v2, v13

    move-object v8, v13

    filled-new-array/range {v1 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ret"

    invoke-static {v1, v13, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final e(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 35

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "buddy.activatePosition"

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_1

    .line 12
    .line 13
    const-string v3, "buddy.setBuddy"

    .line 14
    .line 15
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v3, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 25
    :goto_1
    const/4 v4, 0x0

    .line 26
    if-nez v3, :cond_2

    .line 27
    .line 28
    return-object v4

    .line 29
    :cond_2
    move-object/from16 v3, p0

    .line 30
    .line 31
    iget-object v4, v3, Lcom/sgscq/vpn/handler/g;->a:Lcom/sgscq/vpn/handler/k0;

    .line 32
    .line 33
    invoke-virtual {v4, v1}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v14

    .line 37
    iget-object v15, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 38
    .line 39
    invoke-virtual {v15, v14}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    if-nez v5, :cond_3

    .line 44
    .line 45
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 48
    .line 49
    .line 50
    :cond_3
    move-object v13, v5

    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const-string v2, "Item"

    .line 56
    .line 57
    const-string v5, "cmn_modules"

    .line 58
    .line 59
    const-string v12, "General"

    .line 60
    .line 61
    const-string v6, "del"

    .line 62
    .line 63
    const-string v7, "add"

    .line 64
    .line 65
    const-string v8, "upd"

    .line 66
    .line 67
    const-string v10, "TeamGeneral"

    .line 68
    .line 69
    const-string v9, "pk_id"

    .line 70
    .line 71
    const-string v11, "0"

    .line 72
    .line 73
    const-string v3, "delta_data"

    .line 74
    .line 75
    move-object/from16 v16, v15

    .line 76
    .line 77
    const-string v15, "position"

    .line 78
    .line 79
    move-object/from16 v17, v14

    .line 80
    .line 81
    const-string v14, ""

    .line 82
    .line 83
    if-eqz v0, :cond_d

    .line 84
    .line 85
    invoke-interface {v1, v15, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Ljava/lang/String;

    .line 90
    .line 91
    const/4 v1, 0x1

    .line 92
    invoke-static {v0, v1}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-static {v13}, Lcom/sgscq/vpn/handler/g;->a(Ljava/util/Map;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/g;->c(ILjava/util/List;)Ljava/util/Map;

    .line 105
    .line 106
    .line 107
    move-result-object v18

    .line 108
    if-nez v18, :cond_b

    .line 109
    .line 110
    sget-object v18, Lcom/sgscq/vpn/handler/g;->b:[I

    .line 111
    .line 112
    move-object/from16 v19, v4

    .line 113
    .line 114
    if-ltz v0, :cond_4

    .line 115
    .line 116
    const/16 v4, 0x19

    .line 117
    .line 118
    if-ge v0, v4, :cond_4

    .line 119
    .line 120
    aget v4, v18, v0

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    const/16 v4, 0x18

    .line 124
    .line 125
    aget v4, v18, v4

    .line 126
    .line 127
    :goto_2
    invoke-static {v2, v13}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v18

    .line 131
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v18

    .line 135
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v20

    .line 139
    if-eqz v20, :cond_6

    .line 140
    .line 141
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v20

    .line 145
    move-object/from16 p1, v12

    .line 146
    .line 147
    move-object/from16 v12, v20

    .line 148
    .line 149
    check-cast v12, Ljava/util/Map;

    .line 150
    .line 151
    move-object/from16 v20, v10

    .line 152
    .line 153
    const-string v10, "id"

    .line 154
    .line 155
    move-object/from16 v21, v3

    .line 156
    .line 157
    const-string v3, "item_id"

    .line 158
    .line 159
    move-object/from16 v22, v5

    .line 160
    .line 161
    const-string v5, "600065"

    .line 162
    .line 163
    invoke-static {v12, v10, v14, v3, v5}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_5

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_5
    move-object/from16 v12, p1

    .line 171
    .line 172
    move-object/from16 v10, v20

    .line 173
    .line 174
    move-object/from16 v3, v21

    .line 175
    .line 176
    move-object/from16 v5, v22

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_6
    move-object/from16 v21, v3

    .line 180
    .line 181
    move-object/from16 v22, v5

    .line 182
    .line 183
    move-object/from16 v20, v10

    .line 184
    .line 185
    move-object/from16 p1, v12

    .line 186
    .line 187
    const/4 v12, 0x0

    .line 188
    :goto_4
    const-string v3, "num"

    .line 189
    .line 190
    const-string v5, "item_num"

    .line 191
    .line 192
    const-string v10, "total_num"

    .line 193
    .line 194
    if-nez v12, :cond_7

    .line 195
    .line 196
    const/4 v11, 0x0

    .line 197
    move-object/from16 v23, v2

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_7
    invoke-static {v12, v10, v11, v5, v3}, Lc/a;->k(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v11

    .line 204
    move-object/from16 v23, v2

    .line 205
    .line 206
    const/4 v2, 0x0

    .line 207
    invoke-static {v11, v2}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 208
    .line 209
    .line 210
    move-result v11

    .line 211
    :goto_5
    if-lez v4, :cond_8

    .line 212
    .line 213
    if-ge v11, v4, :cond_8

    .line 214
    .line 215
    const-string v29, "\u8bcf\u4ee4\u6570\u91cf\u4e0d\u8db3"

    .line 216
    .line 217
    const/4 v0, -0x1

    .line 218
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    const-string v24, "code"

    .line 223
    .line 224
    const-string v26, "result"

    .line 225
    .line 226
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 227
    .line 228
    const-string v28, "msg"

    .line 229
    .line 230
    const-string v30, "error_code"

    .line 231
    .line 232
    const-string v32, "return_info"

    .line 233
    .line 234
    const/4 v2, 0x0

    .line 235
    new-array v2, v2, [Ljava/lang/Object;

    .line 236
    .line 237
    const-string v3, "result"

    .line 238
    .line 239
    invoke-static {v3, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 240
    .line 241
    .line 242
    move-result-object v33

    .line 243
    move-object/from16 v25, v0

    .line 244
    .line 245
    move-object/from16 v27, v1

    .line 246
    .line 247
    move-object/from16 v31, v0

    .line 248
    .line 249
    filled-new-array/range {v24 .. v33}, [Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    const-string v2, "ret"

    .line 254
    .line 255
    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    move-object/from16 v2, v21

    .line 260
    .line 261
    move-object/from16 v3, v23

    .line 262
    .line 263
    goto/16 :goto_9

    .line 264
    .line 265
    :cond_8
    if-lez v4, :cond_a

    .line 266
    .line 267
    sub-int/2addr v11, v4

    .line 268
    if-nez v12, :cond_9

    .line 269
    .line 270
    goto :goto_6

    .line 271
    :cond_9
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-interface {v12, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-interface {v12, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-interface {v12, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    :cond_a
    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    filled-new-array {v15, v0}, [Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-static {v9, v14, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    goto :goto_7

    .line 308
    :cond_b
    move-object/from16 v23, v2

    .line 309
    .line 310
    move-object/from16 v21, v3

    .line 311
    .line 312
    move-object/from16 v19, v4

    .line 313
    .line 314
    move-object/from16 v22, v5

    .line 315
    .line 316
    move-object/from16 v20, v10

    .line 317
    .line 318
    move-object/from16 p1, v12

    .line 319
    .line 320
    const/4 v12, 0x0

    .line 321
    move-object/from16 v0, v18

    .line 322
    .line 323
    :goto_7
    new-instance v2, Ln/b;

    .line 324
    .line 325
    const/16 v3, 0x9

    .line 326
    .line 327
    invoke-direct {v2, v3}, Ln/b;-><init>(I)V

    .line 328
    .line 329
    .line 330
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 331
    .line 332
    .line 333
    invoke-static {v1, v13, v0}, Lcom/sgscq/vpn/handler/g;->f(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    .line 334
    .line 335
    .line 336
    invoke-static {}, Lcom/sgscq/vpn/handler/g;->g()Ljava/util/LinkedHashMap;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-static {v13}, Lcom/sgscq/vpn/handler/g;->b(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    if-eqz v12, :cond_c

    .line 345
    .line 346
    new-instance v2, Ljava/util/ArrayList;

    .line 347
    .line 348
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .line 350
    .line 351
    const/4 v3, 0x1

    .line 352
    new-array v3, v3, [Ljava/util/Map;

    .line 353
    .line 354
    const/4 v4, 0x0

    .line 355
    aput-object v12, v3, v4

    .line 356
    .line 357
    invoke-static {v3}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    new-instance v4, Ljava/util/ArrayList;

    .line 362
    .line 363
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .line 365
    .line 366
    filled-new-array {v8, v3, v7, v4}, [Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    invoke-static {v6, v2, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    move-object/from16 v3, v23

    .line 375
    .line 376
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    const-string v2, "BuddyGeneral,Item"

    .line 380
    .line 381
    move-object/from16 v4, v22

    .line 382
    .line 383
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    goto :goto_8

    .line 387
    :cond_c
    move-object/from16 v3, v23

    .line 388
    .line 389
    :goto_8
    move-object/from16 v2, v21

    .line 390
    .line 391
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    :goto_9
    move-object/from16 v4, p1

    .line 395
    .line 396
    move-object v1, v2

    .line 397
    move-object/from16 v23, v3

    .line 398
    .line 399
    move-object/from16 v3, v20

    .line 400
    .line 401
    goto/16 :goto_16

    .line 402
    .line 403
    :cond_d
    move-object/from16 v19, v4

    .line 404
    .line 405
    move-object v4, v5

    .line 406
    move-object/from16 v20, v10

    .line 407
    .line 408
    move-object/from16 p1, v12

    .line 409
    .line 410
    move-object/from16 v34, v3

    .line 411
    .line 412
    move-object v3, v2

    .line 413
    move-object/from16 v2, v34

    .line 414
    .line 415
    const-string v0, "general_pk_id"

    .line 416
    .line 417
    invoke-interface {v1, v0, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    check-cast v5, Ljava/lang/String;

    .line 422
    .line 423
    const-string v10, "user_general_id"

    .line 424
    .line 425
    invoke-interface {v1, v10, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v5

    .line 429
    check-cast v5, Ljava/lang/String;

    .line 430
    .line 431
    const-string v10, "1"

    .line 432
    .line 433
    invoke-interface {v1, v15, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    check-cast v1, Ljava/lang/String;

    .line 438
    .line 439
    const/4 v10, 0x1

    .line 440
    invoke-static {v1, v10}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    invoke-static {v13}, Lcom/sgscq/vpn/handler/g;->a(Ljava/util/Map;)Ljava/util/List;

    .line 449
    .line 450
    .line 451
    move-result-object v10

    .line 452
    new-instance v12, Ljava/util/ArrayList;

    .line 453
    .line 454
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .line 456
    .line 457
    if-eqz v5, :cond_12

    .line 458
    .line 459
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 460
    .line 461
    .line 462
    move-result v18

    .line 463
    if-nez v18, :cond_12

    .line 464
    .line 465
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v18

    .line 469
    if-eqz v18, :cond_e

    .line 470
    .line 471
    goto/16 :goto_c

    .line 472
    .line 473
    :cond_e
    move-object/from16 v23, v3

    .line 474
    .line 475
    invoke-static {v5, v13}, Lcom/sgscq/vpn/handler/g;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 476
    .line 477
    .line 478
    move-result-object v3

    .line 479
    move-object/from16 v21, v2

    .line 480
    .line 481
    if-nez v3, :cond_f

    .line 482
    .line 483
    goto/16 :goto_d

    .line 484
    .line 485
    :cond_f
    const-string v2, "major_pk_id"

    .line 486
    .line 487
    invoke-interface {v3, v2, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v18

    .line 491
    move-object/from16 v22, v4

    .line 492
    .line 493
    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v4

    .line 497
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 498
    .line 499
    .line 500
    move-result v18

    .line 501
    if-nez v18, :cond_11

    .line 502
    .line 503
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    move-result v18

    .line 507
    if-nez v18, :cond_11

    .line 508
    .line 509
    move-object/from16 v18, v6

    .line 510
    .line 511
    const-string v6, "null"

    .line 512
    .line 513
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 514
    .line 515
    .line 516
    move-result v6

    .line 517
    if-eqz v6, :cond_10

    .line 518
    .line 519
    goto :goto_b

    .line 520
    :cond_10
    invoke-static {v4, v13}, Lcom/sgscq/vpn/handler/g;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 521
    .line 522
    .line 523
    move-result-object v6

    .line 524
    invoke-interface {v3, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    invoke-interface {v3, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    const-string v2, "lieutenant_skill_id"

    .line 531
    .line 532
    invoke-interface {v3, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-object/from16 v24, v7

    .line 536
    .line 537
    const-string v7, "skill_type_lieutenant"

    .line 538
    .line 539
    invoke-interface {v3, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-object/from16 v25, v8

    .line 543
    .line 544
    const-string v8, "ls_type"

    .line 545
    .line 546
    invoke-interface {v3, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-object/from16 v26, v15

    .line 550
    .line 551
    const-string v15, "ls_value"

    .line 552
    .line 553
    invoke-interface {v3, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    if-eqz v6, :cond_13

    .line 560
    .line 561
    invoke-interface {v6, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    invoke-interface {v6, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    invoke-interface {v6, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    invoke-interface {v6, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    const/4 v2, 0x0

    .line 577
    invoke-static {v2}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    invoke-virtual {v2, v4, v13}, Lcom/sgscq/vpn/w1;->F2(Ljava/lang/String;Ljava/util/Map;)Z

    .line 582
    .line 583
    .line 584
    goto :goto_e

    .line 585
    :cond_11
    :goto_a
    move-object/from16 v18, v6

    .line 586
    .line 587
    :goto_b
    move-object/from16 v24, v7

    .line 588
    .line 589
    move-object/from16 v25, v8

    .line 590
    .line 591
    move-object/from16 v26, v15

    .line 592
    .line 593
    goto :goto_e

    .line 594
    :cond_12
    :goto_c
    move-object/from16 v21, v2

    .line 595
    .line 596
    move-object/from16 v23, v3

    .line 597
    .line 598
    :goto_d
    move-object/from16 v22, v4

    .line 599
    .line 600
    goto :goto_a

    .line 601
    :cond_13
    :goto_e
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 606
    .line 607
    .line 608
    move-result v3

    .line 609
    const-string v4, "suspended_general_pk_id"

    .line 610
    .line 611
    if-eqz v3, :cond_18

    .line 612
    .line 613
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v3

    .line 617
    check-cast v3, Ljava/util/Map;

    .line 618
    .line 619
    if-eqz v5, :cond_16

    .line 620
    .line 621
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 622
    .line 623
    .line 624
    move-result v6

    .line 625
    if-nez v6, :cond_16

    .line 626
    .line 627
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    move-result v6

    .line 631
    if-eqz v6, :cond_14

    .line 632
    .line 633
    goto :goto_10

    .line 634
    :cond_14
    invoke-static {v3, v9, v14, v5}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 635
    .line 636
    .line 637
    move-result v6

    .line 638
    if-nez v6, :cond_15

    .line 639
    .line 640
    invoke-static {v3, v0, v14, v5}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 641
    .line 642
    .line 643
    move-result v6

    .line 644
    if-nez v6, :cond_15

    .line 645
    .line 646
    invoke-static {v3, v4, v14, v5}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 647
    .line 648
    .line 649
    move-result v6

    .line 650
    if-eqz v6, :cond_16

    .line 651
    .line 652
    :cond_15
    const/4 v6, 0x1

    .line 653
    goto :goto_11

    .line 654
    :cond_16
    :goto_10
    const/4 v6, 0x0

    .line 655
    :goto_11
    if-nez v6, :cond_17

    .line 656
    .line 657
    goto :goto_f

    .line 658
    :cond_17
    invoke-interface {v3, v9, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    invoke-interface {v3, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    goto :goto_f

    .line 668
    :cond_18
    invoke-static {v1, v10}, Lcom/sgscq/vpn/handler/g;->c(ILjava/util/List;)Ljava/util/Map;

    .line 669
    .line 670
    .line 671
    move-result-object v2

    .line 672
    if-nez v2, :cond_19

    .line 673
    .line 674
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 675
    .line 676
    .line 677
    move-result-object v2

    .line 678
    move-object/from16 v3, v26

    .line 679
    .line 680
    filled-new-array {v0, v14, v3, v2}, [Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v2

    .line 684
    invoke-static {v9, v14, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 685
    .line 686
    .line 687
    move-result-object v2

    .line 688
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    .line 690
    .line 691
    goto :goto_12

    .line 692
    :cond_19
    move-object/from16 v3, v26

    .line 693
    .line 694
    :goto_12
    if-nez v5, :cond_1a

    .line 695
    .line 696
    move-object v5, v14

    .line 697
    :cond_1a
    invoke-interface {v2, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 707
    .line 708
    .line 709
    move-result-object v1

    .line 710
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    new-instance v1, Ln/b;

    .line 714
    .line 715
    const/16 v3, 0x9

    .line 716
    .line 717
    invoke-direct {v1, v3}, Ln/b;-><init>(I)V

    .line 718
    .line 719
    .line 720
    invoke-static {v10, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 721
    .line 722
    .line 723
    invoke-static {v10, v13, v2}, Lcom/sgscq/vpn/handler/g;->f(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    .line 724
    .line 725
    .line 726
    new-instance v1, Ljava/util/ArrayList;

    .line 727
    .line 728
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 729
    .line 730
    .line 731
    const/4 v2, 0x0

    .line 732
    invoke-static {v2}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 733
    .line 734
    .line 735
    move-result-object v2

    .line 736
    move-object/from16 v3, v20

    .line 737
    .line 738
    invoke-static {v3, v13}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 739
    .line 740
    .line 741
    move-result-object v4

    .line 742
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 743
    .line 744
    .line 745
    move-result-object v4

    .line 746
    :cond_1b
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 747
    .line 748
    .line 749
    move-result v5

    .line 750
    if-eqz v5, :cond_1d

    .line 751
    .line 752
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v5

    .line 756
    check-cast v5, Ljava/util/Map;

    .line 757
    .line 758
    invoke-static {v5, v9, v14, v0}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v5

    .line 762
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 763
    .line 764
    .line 765
    move-result v6

    .line 766
    if-nez v6, :cond_1b

    .line 767
    .line 768
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 769
    .line 770
    .line 771
    move-result v6

    .line 772
    if-eqz v6, :cond_1c

    .line 773
    .line 774
    goto :goto_13

    .line 775
    :cond_1c
    invoke-virtual {v2, v5, v13}, Lcom/sgscq/vpn/w1;->F2(Ljava/lang/String;Ljava/util/Map;)Z

    .line 776
    .line 777
    .line 778
    invoke-static {v5, v13}, Lcom/sgscq/vpn/handler/g;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 779
    .line 780
    .line 781
    move-result-object v5

    .line 782
    if-eqz v5, :cond_1b

    .line 783
    .line 784
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 785
    .line 786
    .line 787
    move-result v6

    .line 788
    if-nez v6, :cond_1b

    .line 789
    .line 790
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    .line 792
    .line 793
    goto :goto_13

    .line 794
    :cond_1d
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    :cond_1e
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 799
    .line 800
    .line 801
    move-result v2

    .line 802
    if-eqz v2, :cond_1f

    .line 803
    .line 804
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 805
    .line 806
    .line 807
    move-result-object v2

    .line 808
    check-cast v2, Ljava/lang/String;

    .line 809
    .line 810
    invoke-static {v2, v13}, Lcom/sgscq/vpn/handler/g;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 811
    .line 812
    .line 813
    move-result-object v2

    .line 814
    if-eqz v2, :cond_1e

    .line 815
    .line 816
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    move-result v4

    .line 820
    if-nez v4, :cond_1e

    .line 821
    .line 822
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    .line 824
    .line 825
    goto :goto_14

    .line 826
    :cond_1f
    invoke-static {}, Lcom/sgscq/vpn/handler/g;->g()Ljava/util/LinkedHashMap;

    .line 827
    .line 828
    .line 829
    move-result-object v0

    .line 830
    invoke-static {v13}, Lcom/sgscq/vpn/handler/g;->b(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 831
    .line 832
    .line 833
    move-result-object v2

    .line 834
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 835
    .line 836
    .line 837
    move-result v4

    .line 838
    if-nez v4, :cond_20

    .line 839
    .line 840
    new-instance v4, Ljava/util/ArrayList;

    .line 841
    .line 842
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 843
    .line 844
    .line 845
    new-instance v5, Ljava/util/ArrayList;

    .line 846
    .line 847
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 848
    .line 849
    .line 850
    move-object/from16 v6, v24

    .line 851
    .line 852
    move-object/from16 v7, v25

    .line 853
    .line 854
    filled-new-array {v7, v1, v6, v5}, [Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    move-result-object v1

    .line 858
    move-object/from16 v5, v18

    .line 859
    .line 860
    invoke-static {v5, v4, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 861
    .line 862
    .line 863
    move-result-object v1

    .line 864
    move-object/from16 v4, p1

    .line 865
    .line 866
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    .line 868
    .line 869
    new-instance v1, Ljava/util/ArrayList;

    .line 870
    .line 871
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 872
    .line 873
    .line 874
    new-instance v8, Ljava/util/ArrayList;

    .line 875
    .line 876
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 877
    .line 878
    .line 879
    new-instance v9, Ljava/util/ArrayList;

    .line 880
    .line 881
    invoke-static {v3, v13}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 882
    .line 883
    .line 884
    move-result-object v10

    .line 885
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 886
    .line 887
    .line 888
    filled-new-array {v7, v8, v6, v9}, [Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    move-result-object v6

    .line 892
    invoke-static {v5, v1, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 893
    .line 894
    .line 895
    move-result-object v1

    .line 896
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    const-string v1, "BuddyGeneral,General,TeamGeneral"

    .line 900
    .line 901
    move-object/from16 v5, v22

    .line 902
    .line 903
    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    .line 905
    .line 906
    goto :goto_15

    .line 907
    :cond_20
    move-object/from16 v4, p1

    .line 908
    .line 909
    :goto_15
    move-object/from16 v1, v21

    .line 910
    .line 911
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    :goto_16
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    .line 916
    .line 917
    move-result-object v2

    .line 918
    instance-of v2, v2, Ljava/util/Map;

    .line 919
    .line 920
    if-eqz v2, :cond_21

    .line 921
    .line 922
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    .line 924
    .line 925
    move-result-object v1

    .line 926
    check-cast v1, Ljava/util/Map;

    .line 927
    .line 928
    goto :goto_17

    .line 929
    :cond_21
    move-object v1, v13

    .line 930
    :goto_17
    move-object/from16 v2, v19

    .line 931
    .line 932
    iget-object v5, v2, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 933
    .line 934
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 935
    .line 936
    .line 937
    move-result-wide v6

    .line 938
    long-to-int v6, v6

    .line 939
    invoke-virtual {v2}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 940
    .line 941
    .line 942
    move-result v7

    .line 943
    int-to-long v7, v7

    .line 944
    invoke-virtual {v2, v7, v8, v13}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 945
    .line 946
    .line 947
    move-result-wide v10

    .line 948
    const-string v7, "user_gold"

    .line 949
    .line 950
    invoke-virtual {v2}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 951
    .line 952
    .line 953
    move-result v8

    .line 954
    invoke-virtual {v2, v8, v7, v13}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 955
    .line 956
    .line 957
    move-result v7

    .line 958
    const-string v8, "user_energy"

    .line 959
    .line 960
    invoke-virtual {v2}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 961
    .line 962
    .line 963
    move-result v9

    .line 964
    invoke-virtual {v2, v9, v8, v13}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 965
    .line 966
    .line 967
    move-result v8

    .line 968
    const-string v9, "user_power"

    .line 969
    .line 970
    invoke-virtual {v2}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 971
    .line 972
    .line 973
    move-result v12

    .line 974
    invoke-virtual {v2, v12, v9, v13}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 975
    .line 976
    .line 977
    move-result v9

    .line 978
    move-object/from16 v12, v17

    .line 979
    .line 980
    move-object v14, v13

    .line 981
    invoke-virtual/range {v5 .. v13}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 982
    .line 983
    .line 984
    move-result-object v5

    .line 985
    new-instance v6, Ljava/util/ArrayList;

    .line 986
    .line 987
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 988
    .line 989
    .line 990
    const-string v7, "BuddyGeneral"

    .line 991
    .line 992
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    .line 994
    .line 995
    move-object/from16 v7, v23

    .line 996
    .line 997
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 998
    .line 999
    .line 1000
    move-result v8

    .line 1001
    if-eqz v8, :cond_22

    .line 1002
    .line 1003
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    .line 1005
    .line 1006
    :cond_22
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1007
    .line 1008
    .line 1009
    move-result v7

    .line 1010
    if-eqz v7, :cond_23

    .line 1011
    .line 1012
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    .line 1014
    .line 1015
    :cond_23
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1016
    .line 1017
    .line 1018
    move-result v4

    .line 1019
    if-eqz v4, :cond_24

    .line 1020
    .line 1021
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1022
    .line 1023
    .line 1024
    :cond_24
    const/4 v3, 0x0

    .line 1025
    new-array v3, v3, [Ljava/lang/String;

    .line 1026
    .line 1027
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v3

    .line 1031
    check-cast v3, [Ljava/lang/String;

    .line 1032
    .line 1033
    move-object/from16 v4, v16

    .line 1034
    .line 1035
    invoke-virtual {v4, v1, v5, v3}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v1

    .line 1039
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v1

    .line 1043
    const-string v3, "cmn"

    .line 1044
    .line 1045
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    .line 1047
    .line 1048
    move-object/from16 v1, v17

    .line 1049
    .line 1050
    invoke-virtual {v4, v1, v14}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 1051
    .line 1052
    .line 1053
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v0

    .line 1057
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 1058
    .line 1059
    .line 1060
    move-result-object v0

    .line 1061
    return-object v0
.end method
