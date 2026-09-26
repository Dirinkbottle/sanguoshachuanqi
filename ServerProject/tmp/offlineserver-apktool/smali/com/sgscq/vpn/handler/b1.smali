.class public final Lcom/sgscq/vpn/handler/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:[I

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[I

.field public static final g:[I


# instance fields
.field public final a:Lcom/sgscq/vpn/handler/k0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sgscq/vpn/handler/b1;->b:[I

    const/16 v0, 0x1e

    const/16 v1, 0x2d

    const/16 v2, 0x14

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/b1;->c:[I

    const/16 v0, 0x96

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sgscq/vpn/handler/b1;->d:[I

    const/4 v0, 0x7

    const/4 v1, 0x3

    const/4 v2, 0x6

    filled-new-array {v1, v2, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/b1;->e:[I

    const/16 v0, 0x9

    filled-new-array {v1, v2, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/b1;->f:[I

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/b1;->g:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x6
        0x9
        0x1e
        0x3c
        0x5a
        0x96
        0x12c
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x50
        0x58
        0x60
        0x68
        0x70
        0x78
        0x80
        0x88
        0x90
        0x98
        0xa0
        0xa8
        0xb0
        0xba
        0xc6
        0x1e6
        0x201
        0x21c
        0x237
        0x252
        0x26d
        0x288
        0x2a3
        0x2be
        0x2d9
        0x2f4
        0x30f
        0x32d
        0x34e
        0x372
        0x4e0
        0x510
        0x540
        0x570
        0x5a0
        0x5d0
        0x600
        0x630
        0x660
        0x690
        0x6c0
        0x6f0
        0x720
        0x750
        0x780
        0x7b0
        0x7e0
        0x810
        0x840
        0x870
        0x8a0
        0x8d0
        0x900
        0x930
        0x960
        0x990
        0x9c0
        0x9f0
        0xa20
        0xa50
        0xa80
        0xab0
        0xae0
        0xb10
        0xb40
        0xb70
        0xba0
        0xbd0
        0xc00
        0xc30
        0xc60
        0xc90
        0xcc0
        0xcf0
        0xd20
        0xd50
        0xd80
        0xdb0
        0xde0
        0xe10
        0xe40
        0xe70
        0xeb2
        0xef6
        0xf3c
        0x1365
        0x13b0
        0x13fb
        0x1446
        0x1491
        0x14dc
        0x1527
        0x1572
        0x15bd
        0x1608
        0x1653
        0x169e
        0x16e9
        0x1734
        0x177f
        0x17ca
        0x1815
        0x1860
        0x18ab
        0x18f6
        0x1941
        0x198c
        0x19d7
        0x1a22
        0x1a6d
        0x1ab8
        0x1b03
        0x1b4e
        0x1b99
        0x1be4
        0x1c2f
        0x1c7a
        0x1cc5
        0x1d10
        0x1d5b
        0x1da6
        0x1df1
        0x1e3c
        0x1e87
        0x1ed2
        0x1f1d
        0x1f68
        0x1fb3
        0x1ffe
        0x2049
        0x2094
        0x20df
        0x212a
        0x2175
        0x21c0
    .end array-data
.end method

.method public constructor <init>(Lcom/sgscq/vpn/handler/k0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/handler/b1;->a:Lcom/sgscq/vpn/handler/k0;

    return-void
.end method

.method public static A(Ljava/lang/String;)Ljava/util/LinkedHashMap;
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

.method public static A0(Ljava/util/List;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p0, :cond_7

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_7

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/util/Map;

    .line 20
    .line 21
    const-string v4, "use_difficulty_profile"

    .line 22
    .line 23
    const-string v5, "difficulty_profile"

    .line 24
    .line 25
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-eqz v3, :cond_6

    .line 30
    .line 31
    move v5, v0

    .line 32
    :goto_0
    const/4 v6, 0x2

    .line 33
    if-ge v5, v6, :cond_6

    .line 34
    .line 35
    aget-object v6, v4, v5

    .line 36
    .line 37
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    instance-of v7, v6, Ljava/lang/Boolean;

    .line 42
    .line 43
    if-eqz v7, :cond_1

    .line 44
    .line 45
    move-object v7, v6

    .line 46
    check-cast v7, Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-eqz v7, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-static {v6, v0}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_3

    .line 60
    .line 61
    :cond_2
    :goto_1
    move v3, v1

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    if-nez v6, :cond_4

    .line 64
    .line 65
    const-string v6, ""

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    :goto_2
    const-string v7, "true"

    .line 77
    .line 78
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-nez v7, :cond_2

    .line 83
    .line 84
    const-string v7, "yes"

    .line 85
    .line 86
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_5

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_6
    move v3, v0

    .line 97
    :goto_3
    if-eqz v3, :cond_0

    .line 98
    .line 99
    return v1

    .line 100
    :cond_7
    if-eqz p0, :cond_8

    .line 101
    .line 102
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    const/16 v2, 0x3c

    .line 107
    .line 108
    if-lt p0, v2, :cond_8

    .line 109
    .line 110
    move v0, v1

    .line 111
    :cond_8
    return v0
.end method

.method public static B(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/util/Map;

    .line 26
    .line 27
    const-string v2, "pk_id"

    .line 28
    .line 29
    invoke-static {v1, v2, p0}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    return-object v1

    .line 36
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static B0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/handler/b1;->C0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "genie_rank"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gold_rank"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "silver_rank"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "copper_rank"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static C(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "General"

    .line 9
    .line 10
    invoke-static {v0, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/util/Map;

    .line 29
    .line 30
    const-string v1, "pk_id"

    .line 31
    .line 32
    const-string v2, ""

    .line 33
    .line 34
    invoke-static {v0, v1, v2, p0}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 42
    return-object p0
.end method

.method public static C0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static varargs D([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

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

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static E(IILjava/util/Map;)Ljava/util/ArrayList;
    .locals 31

    move/from16 v0, p1

    move-object/from16 v6, p2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move/from16 v2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    rem-int/2addr v2, v3

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const/16 v8, 0x63

    const-string v15, "type"

    const-string v14, "pk_id"

    if-eqz v2, :cond_a

    if-ne v2, v5, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string v2, "tower_gold_chest_god_pity_count"

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v5

    const-string v9, "tower_gold_chest_god_fragment_pity_count"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v10

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/2addr v10, v5

    const/16 v11, 0x1f4

    if-lt v3, v11, :cond_1

    move v12, v5

    goto :goto_0

    :cond_1
    move v12, v1

    :goto_0
    const/16 v13, 0x64

    if-lt v10, v13, :cond_2

    move/from16 v16, v5

    goto :goto_1

    :cond_2
    move/from16 v16, v1

    :goto_1
    if-eqz v12, :cond_3

    rem-int/2addr v3, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {v0}, Lcom/sgscq/vpn/handler/b1;->x(Ljava/util/Random;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/sgscq/vpn/handler/b1;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v8, "id"

    const-string v10, "item_id"

    const-string v12, "equipment_id"

    const-string v2, "equip_id"

    const-string v16, "num"

    const-string v18, "item_num"

    const-string v20, "item_type"

    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const-string v22, "pk_id"

    invoke-virtual {v1, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object v9, v0

    move-object v11, v0

    move-object v13, v0

    move-object v14, v2

    move-object v1, v15

    move-object v15, v0

    move-object/from16 v17, v27

    move-object/from16 v19, v27

    filled-new-array/range {v8 .. v23}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    goto :goto_2

    :cond_3
    if-eqz v16, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    rem-int/2addr v10, v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {v0}, Lcom/sgscq/vpn/handler/b1;->x(Ljava/util/Random;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    move-object v11, v0

    move-object v13, v0

    const-string v1, "9"

    .line 1
    invoke-static {v1, v0}, Lc/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    move-object/from16 v17, v1

    .line 2
    invoke-static {v5, v1, v0, v6}, Lcom/sgscq/vpn/cloud/m0;->b1(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v8, "id"

    const-string v10, "equipment_id"

    const-string v12, "equip_id"

    const-string v1, "item_id"

    move-object v4, v14

    move-object v14, v1

    const-string v16, "piece_id"

    const-string v18, "num"

    invoke-static {v5, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v20, "item_num"

    invoke-static {v5, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const-string v22, "item_type"

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const-string v24, "type"

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const-string v26, "level"

    const-string v28, "is_new"

    sget-object v29, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array/range {v8 .. v29}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 4
    :goto_2
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7

    :cond_4
    move-object v4, v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x2d

    if-ge v0, v1, :cond_5

    const-string v0, "791490"

    goto :goto_3

    :cond_5
    const-string v0, "791491"

    :goto_3
    move-object v11, v0

    .line 6
    invoke-static {v11}, Lcom/sgscq/vpn/handler/b1;->z0(Ljava/lang/String;)I

    move-result v8

    const-string v9, "Item"

    .line 7
    invoke-static {v9, v6}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v12, "add"

    const-string v13, "upd"

    const-string v14, "del"

    const-string v5, "item_type"

    const-string v3, "item_id"

    const-string v2, "id"

    move-object/from16 v24, v7

    const-string v7, "total_num"

    move-object/from16 v16, v4

    const-string v4, "item_num"

    const-string v6, "num"

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    move-object/from16 p0, v0

    const-string v0, ""

    .line 8
    invoke-static {v1, v2, v0, v3, v11}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    move-object/from16 v4, v16

    move-object/from16 v7, v24

    goto :goto_4

    .line 9
    :cond_6
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v0

    if-gtz v0, :cond_7

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v0

    :cond_7
    if-gtz v0, :cond_8

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v0

    :cond_8
    const/4 v2, 0x1

    .line 10
    invoke-static {v2, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    filled-new-array {v13, v2, v12, v10}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v14, v0, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object/from16 v6, p2

    invoke-interface {v6, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v30, v16

    goto/16 :goto_5

    :cond_9
    move-object v1, v6

    move-object/from16 v6, p2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 p0, v0

    move-object v0, v9

    move-object v6, v1

    move-object/from16 v1, p2

    move-object/from16 v17, v2

    move-object/from16 v2, p0

    move-object/from16 p1, v9

    move-object v9, v3

    move-object/from16 v3, v16

    move-object/from16 v30, v16

    move-object/from16 v16, v14

    move-object v14, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v12

    move-object v12, v5

    move-object v5, v11

    .line 11
    invoke-static/range {v0 .. v5}, Lc/a;->x(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 12
    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "is_new"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, v17

    filled-new-array {v13, v2, v3, v10}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v3, v16

    invoke-static {v3, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_5
    const/4 v0, 0x5

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v8, "id"

    const-string v10, "item_id"

    const-string v12, "num"

    const-string v14, "item_num"

    const-string v16, "item_type"

    invoke-static {v11}, Lcom/sgscq/vpn/handler/b1;->z0(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-string v18, "pk_id"

    move-object/from16 v6, v30

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object v9, v11

    move-object/from16 v13, v27

    move-object v1, v15

    move-object/from16 v15, v27

    filled-new-array/range {v8 .. v19}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    goto/16 :goto_c

    :cond_a
    :goto_6
    move-object v5, v6

    move-object/from16 v24, v7

    move-object v6, v14

    move-object v1, v15

    .line 14
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v7, 0x0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v7, 0x2

    const/16 v8, 0x5a

    const/4 v9, 0x4

    if-nez v2, :cond_b

    if-ge v0, v8, :cond_d

    goto :goto_7

    :cond_b
    const/16 v10, 0x3c

    if-ge v0, v10, :cond_c

    :goto_7
    move v8, v9

    goto :goto_8

    :cond_c
    if-ge v0, v8, :cond_e

    :cond_d
    move v8, v3

    goto :goto_8

    :cond_e
    move v8, v7

    :goto_8
    new-instance v10, Ljava/util/Random;

    add-int/lit8 v2, v2, 0x1

    int-to-long v11, v2

    const-wide/16 v13, 0x17f5

    mul-long/2addr v11, v13

    int-to-long v13, v0

    add-long/2addr v11, v13

    invoke-direct {v10, v11, v12}, Ljava/util/Random;-><init>(J)V

    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/sgscq/vpn/w1;->h0()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_f
    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/sgscq/vpn/w1;->z0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    if-nez v13, :cond_10

    goto :goto_9

    :cond_10
    const-string v14, "grade"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v9}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v13

    if-ne v13, v8, :cond_f

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_a
    move-object v15, v0

    goto :goto_b

    :cond_12
    const/4 v0, 0x1

    if-eq v8, v0, :cond_15

    if-eq v8, v7, :cond_14

    if-eq v8, v3, :cond_13

    const-string v0, "211001"

    goto :goto_a

    :cond_13
    const-string v0, "213001"

    goto :goto_a

    :cond_14
    const-string v0, "212002"

    goto :goto_a

    :cond_15
    const-string v0, "111001"

    goto :goto_a

    .line 16
    :goto_b
    invoke-static {v15, v5}, Lcom/sgscq/vpn/handler/b1;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v8, "id"

    const-string v10, "item_id"

    const-string v12, "equipment_id"

    const-string v14, "equip_id"

    const-string v16, "num"

    const-string v18, "item_num"

    const-string v20, "item_type"

    const-string v22, "pk_id"

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object v9, v15

    move-object v11, v15

    move-object v13, v15

    move-object/from16 v17, v27

    move-object/from16 v19, v27

    move-object/from16 v21, v4

    filled-new-array/range {v8 .. v23}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    :goto_c
    move-object/from16 v1, v24

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static G(Ljava/util/Map;)Z
    .locals 2

    .line 1
    const-string v0, "tower_point_progress"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "tower_fight_times"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result p0

    if-lez p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static H(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sgscq/vpn/handler/b1;->N(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p1}, Lcom/sgscq/vpn/handler/b1;->N(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p1

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v1, v3, :cond_2

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_2

    move v0, v2

    :cond_2
    :goto_0
    return v0
.end method

.method public static I(Ljava/util/Map;)Z
    .locals 1

    .line 1
    const-string v0, "tower_run_ended"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static J(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static K(IILjava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Lcom/sgscq/vpn/battle/BattleUnit;
    .locals 8

    .line 1
    new-instance v7, Lcom/sgscq/vpn/handler/e;

    .line 2
    .line 3
    invoke-direct {v7, p2, p0, p1}, Lcom/sgscq/vpn/handler/e;-><init>(Ljava/lang/String;II)V

    .line 4
    .line 5
    .line 6
    iput-object p4, v7, Lcom/sgscq/vpn/handler/e;->d:Ljava/util/Map;

    .line 7
    .line 8
    iput-object p3, v7, Lcom/sgscq/vpn/handler/e;->g:Ljava/lang/String;

    .line 9
    .line 10
    const-wide v1, 0x4072c00000000000L    # 300.0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 16
    .line 17
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 18
    .line 19
    move-object v0, v7

    .line 20
    invoke-virtual/range {v0 .. v6}, Lcom/sgscq/vpn/handler/e;->a(DDD)V

    .line 21
    .line 22
    .line 23
    const-wide/16 p0, 0x0

    .line 24
    .line 25
    iput-wide p0, v7, Lcom/sgscq/vpn/handler/e;->s:D

    .line 26
    .line 27
    iput-wide p0, v7, Lcom/sgscq/vpn/handler/e;->t:D

    .line 28
    .line 29
    iput-wide p0, v7, Lcom/sgscq/vpn/handler/e;->u:D

    .line 30
    .line 31
    iput-wide p0, v7, Lcom/sgscq/vpn/handler/e;->v:D

    .line 32
    .line 33
    invoke-static {v7}, Lcom/sgscq/vpn/handler/f;->a(Lcom/sgscq/vpn/handler/e;)Lcom/sgscq/vpn/battle/BattleUnit;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public static L(IIILjava/lang/String;Ljava/util/Map;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "tower_run_ended"

    .line 7
    .line 8
    invoke-interface {p4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    const-string v2, "tower_last_run_point_progress"

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-interface {p4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v2, "tower_last_run_max_point_progress"

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p4, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const-string p1, "tower_last_run_total_integration"

    .line 30
    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    const-string p1, "tower_run_coin_reward"

    .line 39
    .line 40
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-wide/16 v2, 0x0

    .line 45
    .line 46
    invoke-static {p1}, Lcom/sgscq/vpn/handler/b1;->c0(Ljava/lang/Object;)J

    .line 47
    .line 48
    .line 49
    move-result-wide p1

    .line 50
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 51
    .line 52
    .line 53
    move-result-wide p1

    .line 54
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string p2, "tower_last_run_coin_reward"

    .line 59
    .line 60
    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    const-string p1, "tower_is_in_xiuluo"

    .line 64
    .line 65
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const/4 p2, 0x0

    .line 70
    invoke-static {p1, p2}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string v2, "tower_last_run_is_in_xiuluo"

    .line 79
    .line 80
    invoke-interface {p4, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    const-string p1, "tower_run_enemy_counts"

    .line 84
    .line 85
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    instance-of v2, p1, Ljava/util/List;

    .line 90
    .line 91
    if-nez v2, :cond_0

    .line 92
    .line 93
    new-instance p1, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 100
    .line 101
    check-cast p1, Ljava/util/List;

    .line 102
    .line 103
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 104
    .line 105
    .line 106
    move-object p1, v2

    .line 107
    :goto_0
    const-string v2, "tower_last_run_enemy_counts"

    .line 108
    .line 109
    invoke-interface {p4, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    const-string p1, "tower_last_run_end_reason"

    .line 113
    .line 114
    invoke-interface {p4, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    invoke-static {p4}, Lcom/sgscq/vpn/handler/b1;->U(Ljava/util/Map;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const-string p3, "tower_last_run_rank_board"

    .line 122
    .line 123
    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    invoke-static {p4}, Lcom/sgscq/vpn/handler/b1;->t(Ljava/util/Map;)I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    const-string p3, "tower_last_run_rank"

    .line 131
    .line 132
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-interface {p4, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    const-string p3, "tower_best_rank"

    .line 140
    .line 141
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-static {v2, p2}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-lez v2, :cond_1

    .line 150
    .line 151
    if-ge p1, v2, :cond_2

    .line 152
    .line 153
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    :cond_2
    invoke-static {p4}, Lcom/sgscq/vpn/handler/b1;->a0(Ljava/util/Map;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    if-eqz p1, :cond_3

    .line 165
    .line 166
    const-string p3, "tower_last_run_day"

    .line 167
    .line 168
    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-static {p4}, Lcom/sgscq/vpn/handler/b1;->n(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 174
    .line 175
    .line 176
    move-result-object p3

    .line 177
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 178
    .line 179
    .line 180
    const-string p3, "tower_last_run_claimed_box_ids"

    .line 181
    .line 182
    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    const-string p1, "tower_run_day"

    .line 186
    .line 187
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-static {p1}, Lcom/sgscq/vpn/handler/b1;->C0(Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    if-nez p1, :cond_4

    .line 196
    .line 197
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 198
    .line 199
    .line 200
    move-result-wide v2

    .line 201
    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/b1;->r0(J)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    :cond_4
    const-string p3, "tower_clear_streak_day"

    .line 206
    .line 207
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-static {v2}, Lcom/sgscq/vpn/handler/b1;->C0(Ljava/lang/Object;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-eqz v3, :cond_5

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_5
    const/16 v3, 0x96

    .line 223
    .line 224
    const-string v4, "tower_xiuluo_ready"

    .line 225
    .line 226
    const-string v5, "tower_clear_streak"

    .line 227
    .line 228
    if-ge p0, v3, :cond_6

    .line 229
    .line 230
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    invoke-interface {p4, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    goto :goto_1

    .line 241
    :cond_6
    invoke-static {p4}, Lcom/sgscq/vpn/handler/b1;->U(Ljava/util/Map;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    const-string v3, "tower_clear_streak_board"

    .line 246
    .line 247
    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    invoke-static {v6}, Lcom/sgscq/vpn/handler/b1;->B0(Ljava/lang/Object;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    invoke-static {v7, p2}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 260
    .line 261
    .line 262
    move-result v7

    .line 263
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    if-eqz v6, :cond_7

    .line 268
    .line 269
    invoke-static {v2, p1}, Lcom/sgscq/vpn/handler/b1;->H(Ljava/lang/String;Ljava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-eqz v2, :cond_7

    .line 274
    .line 275
    move p2, v0

    .line 276
    :cond_7
    if-eqz p2, :cond_8

    .line 277
    .line 278
    add-int/2addr v0, v7

    .line 279
    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    invoke-interface {p4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    invoke-interface {p4, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    const/4 p1, 0x3

    .line 293
    if-lt v0, p1, :cond_9

    .line 294
    .line 295
    invoke-interface {p4, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    const-string p1, "tower_xiuluo_board"

    .line 299
    .line 300
    invoke-interface {p4, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    goto :goto_2

    .line 304
    :cond_9
    :goto_1
    invoke-interface {p4, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    :goto_2
    return-void
.end method

.method public static M(ILjava/util/ArrayList;Ljava/util/LinkedHashMap;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1}, Lcom/sgscq/vpn/handler/b1;->j0(ILjava/util/ArrayList;)V

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/16 p2, 0x14

    if-le p0, p2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static N(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 11

    .line 1
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x4

    :try_start_0
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v1, 0x6

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string p0, "Asia/Shanghai"

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    add-int/lit8 v6, v3, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Ljava/util/Calendar;->set(IIIIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static O(I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static P(Ljava/util/Map;Z)Ljava/util/LinkedHashMap;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v15

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v2, "tower_last_run_point_progress"

    .line 11
    .line 12
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v2, "tower_max_point_progress"

    .line 22
    .line 23
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const-string v3, "tower_point_progress"

    .line 32
    .line 33
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v3, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    :goto_0
    move/from16 v17, v2

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    const-string v2, "tower_last_run_total_integration"

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const-string v2, "tower_total_integration"

    .line 53
    .line 54
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v2, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 59
    .line 60
    .line 61
    move-result v19

    .line 62
    const-string v2, "account_uid"

    .line 63
    .line 64
    const-string v11, ""

    .line 65
    .line 66
    invoke-interface {v0, v2, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const-string v3, "player_id"

    .line 75
    .line 76
    invoke-interface {v0, v3, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    const-string v4, "uid"

    .line 85
    .line 86
    invoke-interface {v0, v4, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    const-string v5, "user_id"

    .line 95
    .line 96
    invoke-interface {v0, v5, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    const-string v6, "100001"

    .line 105
    .line 106
    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {v2}, Lcom/sgscq/vpn/handler/b1;->D([Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    move-object v3, v5

    .line 115
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/b1;->w(Ljava/util/Map;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v29

    .line 119
    move-object/from16 v25, v29

    .line 120
    .line 121
    move-object/from16 v27, v29

    .line 122
    .line 123
    const-string v2, "user_id"

    .line 124
    .line 125
    const-string v4, "player_id"

    .line 126
    .line 127
    const-string v6, "user_name"

    .line 128
    .line 129
    const-string v12, "user_nickname"

    .line 130
    .line 131
    invoke-interface {v0, v12, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    const-string v13, "nickname"

    .line 140
    .line 141
    invoke-interface {v0, v13, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    const-string v14, "user_name"

    .line 150
    .line 151
    invoke-interface {v0, v14, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v9

    .line 159
    const-string v10, "Player"

    .line 160
    .line 161
    filled-new-array {v7, v8, v9, v10}, [Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->D([Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    const-string v8, "user_nickname"

    .line 170
    .line 171
    invoke-interface {v0, v12, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    invoke-interface {v0, v13, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v16

    .line 183
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-interface {v0, v14, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v16

    .line 191
    move-object/from16 v20, v15

    .line 192
    .line 193
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v15

    .line 197
    filled-new-array {v9, v1, v15, v10}, [Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-static {v1}, Lcom/sgscq/vpn/handler/b1;->D([Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    const-string v1, "nickname"

    .line 206
    .line 207
    move-object v15, v10

    .line 208
    move-object v10, v1

    .line 209
    invoke-interface {v0, v12, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-interface {v0, v13, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v12

    .line 221
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v12

    .line 225
    invoke-interface {v0, v14, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v11

    .line 229
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v11

    .line 233
    filled-new-array {v1, v12, v11, v15}, [Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-static {v1}, Lcom/sgscq/vpn/handler/b1;->D([Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v11

    .line 241
    const-string v12, "user_vip_level"

    .line 242
    .line 243
    const-string v1, "user_vip_level"

    .line 244
    .line 245
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    const/4 v13, 0x0

    .line 250
    invoke-static {v1, v13}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object v13

    .line 258
    const-string v14, "user_level"

    .line 259
    .line 260
    const-string v1, "user_level"

    .line 261
    .line 262
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    const/4 v1, 0x1

    .line 267
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object v15

    .line 275
    move-object/from16 v0, v20

    .line 276
    .line 277
    const-string v16, "point_progress"

    .line 278
    .line 279
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v17

    .line 283
    const-string v18, "total_integration"

    .line 284
    .line 285
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v19

    .line 289
    const-string v20, "reward_gold"

    .line 290
    .line 291
    const-string v22, "reward_point"

    .line 292
    .line 293
    const-string v24, "general_id"

    .line 294
    .line 295
    const-string v26, "general_skin"

    .line 296
    .line 297
    const-string v28, "user_general_skin"

    .line 298
    .line 299
    move-object/from16 v21, v0

    .line 300
    .line 301
    move-object/from16 v23, v0

    .line 302
    .line 303
    filled-new-array/range {v2 .. v29}, [Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    const-string v2, "rank"

    .line 308
    .line 309
    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    return-object v0
.end method

.method public static Q(Ljava/util/Map;)I
    .locals 3

    .line 1
    const-string v0, "TeamGeneral"

    invoke-static {v0, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/sgscq/vpn/handler/b1;->n0(Ljava/util/Map;)I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static R(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p3, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p3}, Lcom/sgscq/vpn/handler/b1;->d(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static S(Ljava/lang/Object;Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 5

    .line 1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    const-string v2, "upd"

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/Map;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "add"

    filled-new-array {v2, v1, v4, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "del"

    invoke-static {v3, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    :goto_0
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/util/List;

    if-eqz v3, :cond_2

    check-cast v1, Ljava/util/List;

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_3

    check-cast v3, Ljava/util/Map;

    invoke-static {v1, v3}, Lcom/sgscq/vpn/handler/b1;->c(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_2

    :cond_4
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    return-void
.end method

.method public static T(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V
    .locals 6

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "type"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_4

    const-string v0, "Item"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v1, :cond_5

    const-string v0, "Equipment"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v2, :cond_6

    const-string v0, "EquipmentPiece"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v0, "cmn_modules"

    invoke-static {p0}, Lcom/sgscq/vpn/handler/b1;->J(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public static U(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/handler/b1;->I(Ljava/util/Map;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p0}, Lcom/sgscq/vpn/handler/b1;->G(Ljava/util/Map;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "tower_run_rank_board"

    .line 15
    .line 16
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/sgscq/vpn/handler/b1;->B0(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 27
    :cond_2
    if-eqz v0, :cond_3

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_3
    const-string v0, "user_level"

    .line 31
    .line 32
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-static {p0, v0}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    invoke-static {p0}, Lcom/sgscq/vpn/handler/b1;->j(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static V(Ljava/util/Map;Lcom/sgscq/vpn/p7;)Ljava/util/LinkedHashMap;
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0xf

    .line 3
    .line 4
    invoke-static {v0, v1, p1}, Lcom/sgscq/vpn/handler/b1;->W(IILcom/sgscq/vpn/p7;)Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x2

    .line 9
    const/16 v3, 0x14

    .line 10
    .line 11
    invoke-static {v2, v3, p1}, Lcom/sgscq/vpn/handler/b1;->W(IILcom/sgscq/vpn/p7;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    const/4 v3, 0x3

    .line 16
    const/16 v4, 0x19

    .line 17
    .line 18
    invoke-static {v3, v4, p1}, Lcom/sgscq/vpn/handler/b1;->W(IILcom/sgscq/vpn/p7;)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    const/4 v4, 0x4

    .line 23
    const/16 v6, 0x1e

    .line 24
    .line 25
    invoke-static {v4, v6, p1}, Lcom/sgscq/vpn/handler/b1;->W(IILcom/sgscq/vpn/p7;)Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    invoke-static {p0}, Lcom/sgscq/vpn/handler/b1;->G(Ljava/util/Map;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const-string v6, "tower_last_run_rank_board"

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/sgscq/vpn/handler/b1;->B0(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string p1, "tower_last_run_point_progress"

    .line 51
    .line 52
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1, v8}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-gtz p1, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const-string p1, "tower_last_run_day"

    .line 64
    .line 65
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Lcom/sgscq/vpn/handler/b1;->C0(Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 76
    .line 77
    .line 78
    move-result-wide v10

    .line 79
    invoke-static {v10, v11}, Lcom/sgscq/vpn/handler/b1;->r0(J)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_4

    .line 88
    .line 89
    :cond_3
    move v8, v0

    .line 90
    :cond_4
    :goto_0
    invoke-static {p0, v8}, Lcom/sgscq/vpn/handler/b1;->P(Ljava/util/Map;Z)Ljava/util/LinkedHashMap;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz v8, :cond_5

    .line 95
    .line 96
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {p0}, Lcom/sgscq/vpn/handler/b1;->B0(Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    goto :goto_1

    .line 105
    :cond_5
    invoke-static {p0}, Lcom/sgscq/vpn/handler/b1;->U(Ljava/util/Map;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    :goto_1
    const-string v6, "genie_rank"

    .line 110
    .line 111
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_6

    .line 116
    .line 117
    invoke-static {v4, v9, p1}, Lcom/sgscq/vpn/handler/b1;->M(ILjava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_6
    const-string v4, "gold_rank"

    .line 122
    .line 123
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eqz v4, :cond_7

    .line 128
    .line 129
    invoke-static {v3, v7, p1}, Lcom/sgscq/vpn/handler/b1;->M(ILjava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_7
    const-string v3, "silver_rank"

    .line 134
    .line 135
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    if-eqz p0, :cond_8

    .line 140
    .line 141
    invoke-static {v2, v5, p1}, Lcom/sgscq/vpn/handler/b1;->M(ILjava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_8
    invoke-static {v0, v1, p1}, Lcom/sgscq/vpn/handler/b1;->M(ILjava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    .line 146
    .line 147
    .line 148
    :goto_2
    const-string v4, "silver_rank"

    .line 149
    .line 150
    const-string v6, "gold_rank"

    .line 151
    .line 152
    const-string v8, "genie_rank"

    .line 153
    .line 154
    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    const-string p1, "copper_rank"

    .line 159
    .line 160
    invoke-static {p1, v1, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    return-object p0
.end method

.method public static W(IILcom/sgscq/vpn/p7;)Ljava/util/ArrayList;
    .locals 38

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v33

    .line 17
    const/16 v15, 0x14

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v5, v0, -0x1

    .line 27
    .line 28
    mul-int/2addr v5, v15

    .line 29
    invoke-virtual/range {p2 .. p2}, Lcom/sgscq/vpn/p7;->e()V

    .line 30
    .line 31
    .line 32
    new-instance v6, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v7, v2, Lcom/sgscq/vpn/p7;->a:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v7

    .line 40
    :try_start_0
    iget-object v2, v2, Lcom/sgscq/vpn/p7;->l:Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-eqz v8, :cond_2

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    check-cast v8, Lcom/sgscq/vpn/v5;

    .line 61
    .line 62
    iget-object v9, v8, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 63
    .line 64
    const-string v10, "robot_"

    .line 65
    .line 66
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    if-eqz v9, :cond_1

    .line 71
    .line 72
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    new-instance v2, Lcom/sgscq/vpn/n1;

    .line 78
    .line 79
    const/4 v7, 0x3

    .line 80
    invoke-direct {v2, v7}, Lcom/sgscq/vpn/n1;-><init>(I)V

    .line 81
    .line 82
    .line 83
    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    new-instance v7, Ln/a;

    .line 88
    .line 89
    const/16 v8, 0x13

    .line 90
    .line 91
    invoke-direct {v7, v8}, Ln/a;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-interface {v2, v7}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    add-int/2addr v5, v2

    .line 118
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    new-instance v7, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v6, v2, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 137
    .line 138
    .line 139
    move-object v2, v7

    .line 140
    :goto_1
    const/4 v14, 0x1

    .line 141
    move v13, v14

    .line 142
    :goto_2
    if-gt v13, v15, :cond_4

    .line 143
    .line 144
    rsub-int/lit8 v5, v13, 0x15

    .line 145
    .line 146
    mul-int/lit8 v5, v5, 0x2

    .line 147
    .line 148
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    .line 149
    .line 150
    .line 151
    move-result v20

    .line 152
    add-int/lit8 v5, v0, 0x2

    .line 153
    .line 154
    mul-int v22, v5, v20

    .line 155
    .line 156
    add-int/lit8 v5, v0, -0x1

    .line 157
    .line 158
    mul-int/2addr v5, v15

    .line 159
    add-int/2addr v5, v13

    .line 160
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-gt v13, v6, :cond_3

    .line 165
    .line 166
    add-int/lit8 v6, v13, -0x1

    .line 167
    .line 168
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    check-cast v6, Lcom/sgscq/vpn/v5;

    .line 173
    .line 174
    invoke-virtual {v6, v5}, Lcom/sgscq/vpn/v5;->m(I)Ljava/util/LinkedHashMap;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    move-object v12, v5

    .line 179
    goto :goto_3

    .line 180
    :cond_3
    sget-object v6, Lcom/sgscq/vpn/handler/p0;->a:[Ljava/lang/String;

    .line 181
    .line 182
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 183
    .line 184
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    invoke-static {v5}, Lcom/sgscq/vpn/handler/p0;->U(I)Lcom/sgscq/vpn/config/e;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-static {v5, v4, v7}, Lcom/sgscq/vpn/handler/p0;->s(IILcom/sgscq/vpn/config/e;)Ljava/util/LinkedHashMap;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-direct {v6, v5}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 197
    .line 198
    .line 199
    move-object v12, v6

    .line 200
    :goto_3
    const-string v11, "rank"

    .line 201
    .line 202
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v10

    .line 206
    const-string v5, "user_id"

    .line 207
    .line 208
    const-string v6, "user_id"

    .line 209
    .line 210
    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    const-string v7, "player_id"

    .line 215
    .line 216
    const-string v8, "player_id"

    .line 217
    .line 218
    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    const-string v9, "user_name"

    .line 223
    .line 224
    const-string v4, "nickname"

    .line 225
    .line 226
    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    move-object/from16 p2, v2

    .line 231
    .line 232
    move-object v2, v10

    .line 233
    move-object v10, v4

    .line 234
    const-string v4, "user_nickname"

    .line 235
    .line 236
    move-object v0, v11

    .line 237
    move-object v11, v4

    .line 238
    const-string v4, "nickname"

    .line 239
    .line 240
    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    move-object/from16 v34, v3

    .line 245
    .line 246
    move-object v3, v12

    .line 247
    move-object v12, v4

    .line 248
    const-string v4, "nickname"

    .line 249
    .line 250
    move/from16 v35, v13

    .line 251
    .line 252
    move-object v13, v4

    .line 253
    const-string v4, "nickname"

    .line 254
    .line 255
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    move/from16 v36, v14

    .line 260
    .line 261
    move-object v14, v4

    .line 262
    const-string v4, "user_vip_level"

    .line 263
    .line 264
    move/from16 v37, v15

    .line 265
    .line 266
    move-object v15, v4

    .line 267
    const-string v4, "user_vip_level"

    .line 268
    .line 269
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v16

    .line 273
    const-string v17, "user_level"

    .line 274
    .line 275
    const-string v4, "user_level"

    .line 276
    .line 277
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-static {v4, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    .line 291
    .line 292
    move-result-object v18

    .line 293
    const-string v19, "point_progress"

    .line 294
    .line 295
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v20

    .line 299
    const-string v21, "total_integration"

    .line 300
    .line 301
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object v22

    .line 305
    const-string v23, "reward_gold"

    .line 306
    .line 307
    const-string v25, "reward_point"

    .line 308
    .line 309
    const-string v27, "general_id"

    .line 310
    .line 311
    const-string v4, "general_id"

    .line 312
    .line 313
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v28

    .line 317
    const-string v29, "general_skin"

    .line 318
    .line 319
    const-string v4, "general_skin"

    .line 320
    .line 321
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v30

    .line 325
    const-string v31, "user_general_skin"

    .line 326
    .line 327
    const-string v4, "user_general_skin"

    .line 328
    .line 329
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v32

    .line 333
    move-object/from16 v24, v33

    .line 334
    .line 335
    move-object/from16 v26, v33

    .line 336
    .line 337
    filled-new-array/range {v5 .. v32}, [Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    invoke-static {v0, v2, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    move-object/from16 v2, v34

    .line 346
    .line 347
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    add-int/lit8 v13, v35, 0x1

    .line 351
    .line 352
    move/from16 v0, p0

    .line 353
    .line 354
    move-object v3, v2

    .line 355
    move/from16 v14, v36

    .line 356
    .line 357
    move/from16 v15, v37

    .line 358
    .line 359
    const/4 v4, 0x0

    .line 360
    move-object/from16 v2, p2

    .line 361
    .line 362
    goto/16 :goto_2

    .line 363
    .line 364
    :cond_4
    move-object v2, v3

    .line 365
    invoke-static {v0, v2}, Lcom/sgscq/vpn/handler/b1;->j0(ILjava/util/ArrayList;)V

    .line 366
    .line 367
    .line 368
    return-object v2

    .line 369
    :catchall_0
    move-exception v0

    .line 370
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    throw v0
.end method

.method public static X(Ljava/util/Map;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "tower_point_progress"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tower_fight_times"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tower_total_integration"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tower_having_integration"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tower_board_integration"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tower_pending_stronger_batch"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "tower_run_coin_reward"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "tower_run_enemy_counts"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tower_attack_percent"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tower_defense_percent"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tower_hp_percent"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tower_wisdom_percent"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "tower_claimed_box_ids"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tower_run_rank_board"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tower_run_start_time"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static Y(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/LinkedHashMap;
    .locals 10

    .line 1
    const-string v3, "1v1"

    .line 2
    .line 3
    const-string v0, "general_id"

    .line 4
    .line 5
    const-string v2, "front_info"

    .line 6
    .line 7
    const-string v4, "general_ids"

    .line 8
    .line 9
    filled-new-array {p1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    const-string v6, "coin"

    .line 18
    .line 19
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    const-string v8, "reward_info"

    .line 24
    .line 25
    new-instance v9, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    move-object v1, p1

    .line 31
    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p2, "id"

    .line 36
    .line 37
    invoke-static {p2, p0, p1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static Z(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    const-string v0, "tower_point_progress"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x1

    .line 13
    add-int/2addr v0, v2

    .line 14
    invoke-static {p0, v0, v2, v1}, Lcom/sgscq/vpn/handler/b1;->q0(Ljava/util/Map;IIZ)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    new-instance p0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->j1(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "1"

    .line 28
    .line 29
    invoke-static {v3, v2, v0, v1}, Lcom/sgscq/vpn/handler/b1;->Y(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->j1(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v3, "2"

    .line 42
    .line 43
    invoke-static {v3, v2, v0, v1}, Lcom/sgscq/vpn/handler/b1;->Y(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/LinkedHashMap;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    const/4 v2, 0x3

    .line 51
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->j1(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const-string v3, "3"

    .line 56
    .line 57
    invoke-static {v3, v2, v0, v1}, Lcom/sgscq/vpn/handler/b1;->Y(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/LinkedHashMap;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 9

    .line 1
    const-string v6, "Equipment"

    .line 2
    .line 3
    invoke-static {v6, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v7

    .line 7
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "pk_id"

    .line 13
    .line 14
    const-string v4, "equipment_id"

    .line 15
    .line 16
    move-object v0, v6

    .line 17
    move-object v1, p1

    .line 18
    move-object v2, v8

    .line 19
    move-object v5, p0

    .line 20
    invoke-static/range {v0 .. v5}, Lc/a;->x(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "id"

    .line 24
    .line 25
    invoke-interface {v8, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "level"

    .line 34
    .line 35
    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    const-string v1, "num"

    .line 39
    .line 40
    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1, p0, v8}, Lcom/sgscq/vpn/w1;->R(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 49
    .line 50
    .line 51
    const-string p0, "general_pk_id"

    .line 52
    .line 53
    invoke-interface {v8, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const-string p0, "general_id"

    .line 57
    .line 58
    invoke-interface {v8, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    const-string p0, "user_general_id"

    .line 62
    .line 63
    invoke-interface {v8, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    const-string p0, "is_wear"

    .line 67
    .line 68
    const-string v0, "0"

    .line 69
    .line 70
    invoke-interface {v8, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    const-string p0, "wear"

    .line 74
    .line 75
    invoke-interface {v8, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    new-instance p0, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v1, "add"

    .line 92
    .line 93
    const-string v2, "upd"

    .line 94
    .line 95
    filled-new-array {v2, v0, v1, v7}, [Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v1, "del"

    .line 100
    .line 101
    invoke-static {v1, p0, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-interface {p1, v6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    return-object v8
.end method

.method public static a0(Ljava/util/Map;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "tower_run_day"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/handler/b1;->C0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "tower_run_start_time"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/b1;->c0(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/b1;->r0(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/util/LinkedHashMap;Ljava/lang/Object;)V
    .locals 5

    .line 1
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/handler/b1;->C0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    instance-of v3, v1, Ljava/lang/Number;

    if-eqz v3, :cond_3

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/handler/b1;->C0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static b0(Ljava/lang/Object;I)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static c(Ljava/util/List;Ljava/util/Map;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "pk_id"

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Ljava/util/Map;

    .line 31
    .line 32
    invoke-static {v4, v0, v1, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static c0(Ljava/lang/Object;)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :try_start_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    double-to-long v0, v0

    :catch_1
    return-wide v0
.end method

.method public static d(Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 7

    .line 1
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "cmn_modules"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {v2}, Lcom/sgscq/vpn/handler/b1;->J(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method public static d0(ILjava/util/List;Ljava/util/Map;)Ljava/util/Map;
    .locals 6

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    const-string v1, "1"

    .line 4
    .line 5
    invoke-static {v0, v1, p2}, Lcom/sgscq/vpn/handler/b1;->k0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "other_id"

    .line 10
    .line 11
    invoke-static {v1, v0, p2}, Lcom/sgscq/vpn/handler/b1;->k0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    sget-object v1, Lcom/sgscq/vpn/handler/c1;->a:Ljava/lang/reflect/Type;

    .line 21
    .line 22
    if-eqz p1, :cond_5

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const/4 v1, -0x1

    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    const-string v2, "team_"

    .line 35
    .line 36
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    const/4 v2, 0x5

    .line 43
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Ljava/util/Map;

    .line 62
    .line 63
    const-string v5, "order"

    .line 64
    .line 65
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v5, v1}, Lcom/sgscq/vpn/handler/c1;->f(Ljava/lang/Object;I)I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    invoke-static {p0, p1}, Lcom/sgscq/vpn/handler/c1;->g(ILjava/util/List;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    if-eqz p2, :cond_3

    .line 89
    .line 90
    invoke-static {p2, v1}, Lcom/sgscq/vpn/handler/c1;->f(Ljava/lang/Object;I)I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    add-int/2addr p2, v1

    .line 95
    if-ltz p2, :cond_3

    .line 96
    .line 97
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-ge p2, v1, :cond_3

    .line 102
    .line 103
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    goto :goto_0

    .line 108
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    if-eqz p2, :cond_4

    .line 113
    .line 114
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    goto :goto_0

    .line 119
    :cond_4
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    :goto_0
    move-object v4, p0

    .line 124
    check-cast v4, Ljava/util/Map;

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_5
    :goto_1
    const/4 v4, 0x0

    .line 128
    :goto_2
    return-object v4
.end method

.method public static e(Lcom/sgscq/vpn/handler/j;Ljava/util/LinkedHashMap;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/handler/j;->b(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/sgscq/vpn/handler/j;->a:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "Atlas"

    .line 9
    .line 10
    invoke-static {v0, p1}, Lcom/sgscq/vpn/handler/b1;->d(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1, v0}, Lcom/sgscq/vpn/handler/j;->a(Ljava/util/Map;Ljava/util/AbstractCollection;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0, p1}, Lcom/sgscq/vpn/handler/b1;->d(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method public static e0(Ljava/lang/String;Ljava/util/Map;)V
    .locals 67

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "tower_last_run_day"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/sgscq/vpn/handler/b1;->C0(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_d

    .line 14
    .line 15
    move-object/from16 v2, p0

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    goto/16 :goto_4

    .line 24
    .line 25
    :cond_0
    const-string v2, "tower_rank_reward_settled_day"

    .line 26
    .line 27
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v3}, Lcom/sgscq/vpn/handler/b1;->C0(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    const-string v3, "tower_last_run_point_progress"

    .line 43
    .line 44
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-static {v3, v4}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-gtz v3, :cond_2

    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    const-string v5, "tower_last_run_rank_board"

    .line 61
    .line 62
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-static {v5}, Lcom/sgscq/vpn/handler/b1;->B0(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    const/4 v6, 0x1

    .line 71
    if-nez v5, :cond_3

    .line 72
    .line 73
    const-string v5, "user_level"

    .line 74
    .line 75
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {v5, v6}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    invoke-static {v5}, Lcom/sgscq/vpn/handler/b1;->j(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    :cond_3
    const-string v7, "genie_rank"

    .line 88
    .line 89
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    const/4 v8, 0x3

    .line 94
    if-eqz v7, :cond_4

    .line 95
    .line 96
    const/4 v5, 0x4

    .line 97
    goto :goto_0

    .line 98
    :cond_4
    const-string v7, "gold_rank"

    .line 99
    .line 100
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_5

    .line 105
    .line 106
    move v5, v8

    .line 107
    goto :goto_0

    .line 108
    :cond_5
    const-string v7, "silver_rank"

    .line 109
    .line 110
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-eqz v5, :cond_6

    .line 115
    .line 116
    const/4 v5, 0x2

    .line 117
    goto :goto_0

    .line 118
    :cond_6
    move v5, v6

    .line 119
    :goto_0
    const-string v7, "tower_last_run_rank"

    .line 120
    .line 121
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    const/16 v9, 0x29

    .line 126
    .line 127
    invoke-static {v7, v9}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    const-string v7, "tower_last_run_total_integration"

    .line 136
    .line 137
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    invoke-static {v7, v4}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    const/16 v9, 0x14

    .line 150
    .line 151
    if-gt v6, v9, :cond_7

    .line 152
    .line 153
    add-int/lit8 v10, v5, 0x1

    .line 154
    .line 155
    mul-int/lit16 v10, v10, 0x190

    .line 156
    .line 157
    rsub-int/lit8 v11, v6, 0x15

    .line 158
    .line 159
    mul-int/2addr v11, v10

    .line 160
    div-int/2addr v11, v9

    .line 161
    goto :goto_1

    .line 162
    :cond_7
    move v11, v4

    .line 163
    :goto_1
    mul-int/2addr v5, v8

    .line 164
    div-int/lit8 v8, v7, 0xa

    .line 165
    .line 166
    add-int/2addr v8, v5

    .line 167
    const/16 v5, 0x28

    .line 168
    .line 169
    if-gt v6, v5, :cond_c

    .line 170
    .line 171
    const-string v5, "email_list"

    .line 172
    .line 173
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    instance-of v12, v10, Ljava/util/List;

    .line 178
    .line 179
    const-string v13, "mail_list"

    .line 180
    .line 181
    if-nez v12, :cond_8

    .line 182
    .line 183
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    :cond_8
    instance-of v12, v10, Ljava/util/List;

    .line 188
    .line 189
    if-eqz v12, :cond_9

    .line 190
    .line 191
    check-cast v10, Ljava/util/List;

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_9
    new-instance v10, Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .line 198
    .line 199
    :goto_2
    new-instance v12, Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .line 203
    .line 204
    if-lez v11, :cond_a

    .line 205
    .line 206
    const-string v14, "id"

    .line 207
    .line 208
    const-string v15, "600034"

    .line 209
    .line 210
    const-string v16, "item_num"

    .line 211
    .line 212
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object v17

    .line 216
    const-string v18, "num"

    .line 217
    .line 218
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v19

    .line 222
    const-string v20, "item_type"

    .line 223
    .line 224
    const/16 v21, 0x10

    .line 225
    .line 226
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v21

    .line 230
    const-string v22, "type"

    .line 231
    .line 232
    const/16 v23, 0x5

    .line 233
    .line 234
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v23

    .line 238
    filled-new-array/range {v14 .. v23}, [Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v14

    .line 242
    const-string v15, "item_id"

    .line 243
    .line 244
    const-string v4, "600034"

    .line 245
    .line 246
    invoke-static {v15, v4, v14}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    :cond_a
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 254
    .line 255
    .line 256
    move-result-wide v14

    .line 257
    const-string v4, "tower_rank_"

    .line 258
    .line 259
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    const-string v9, "\u5173\uff0c\u603b\u79ef\u5206\u4e3a"

    .line 264
    .line 265
    move-wide/from16 v17, v14

    .line 266
    .line 267
    const-string v14, "\u540d\uff0c\u4e00\u5171\u95ef\u8fc7"

    .line 268
    .line 269
    const-string v15, "\u60a8\u5728\u6628\u65e5\u7684\u8fc7\u5173\u65a9\u5c06\u7cfb\u7edf\u4e2d\u83b7\u5f97"

    .line 270
    .line 271
    move-object/from16 v66, v1

    .line 272
    .line 273
    const/16 v1, 0x14

    .line 274
    .line 275
    if-gt v6, v1, :cond_b

    .line 276
    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    const-string v3, "\u5206\uff0c\u7279\u5956\u52b1"

    .line 298
    .line 299
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    const-string v3, "\u5143\u5b9d\uff0c"

    .line 306
    .line 307
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const-string v3, "\u5c06\u9b42\uff0c\u5e0c\u671b\u518d\u63a5\u518d\u5389\uff01"

    .line 314
    .line 315
    goto :goto_3

    .line 316
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v3, "\u5206\uff0c\u5f88\u9057\u61be\u672a\u83b7\u5f97\u5143\u5b9d\u5956\u52b1\uff0c\u7279\u8d60\u9001"

    .line 337
    .line 338
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    const-string v3, "\u5c06\u9b42\uff0c\u60a8\u5c06\u5728\u4eca\u65e5\u7684\u8fc7\u5173\u65a9\u5c06\u7cfb\u7edf\u4e2d\u81ea\u52a8\u83b7\u5f97\u3002"

    .line 345
    .line 346
    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v33

    .line 353
    move-object/from16 v31, v33

    .line 354
    .line 355
    const-string v14, "email_id"

    .line 356
    .line 357
    move-wide/from16 v6, v17

    .line 358
    .line 359
    const-string v16, "id"

    .line 360
    .line 361
    const-string v18, "pk_id"

    .line 362
    .line 363
    const-string v20, "mail_type"

    .line 364
    .line 365
    const-string v21, "gift"

    .line 366
    .line 367
    const-string v22, "email_type"

    .line 368
    .line 369
    const-string v23, "gift"

    .line 370
    .line 371
    const-string v24, "origin_mail_type"

    .line 372
    .line 373
    const-string v25, "system"

    .line 374
    .line 375
    const-string v26, "title"

    .line 376
    .line 377
    const-string v27, "\u8fc7\u5173\u65a9\u5c06\u6628\u65e5\u6392\u540d\u5956\u52b1"

    .line 378
    .line 379
    const-string v28, "email_title"

    .line 380
    .line 381
    const-string v29, "\u8fc7\u5173\u65a9\u5c06\u6628\u65e5\u6392\u540d\u5956\u52b1"

    .line 382
    .line 383
    const-string v30, "content"

    .line 384
    .line 385
    const-string v32, "email_content"

    .line 386
    .line 387
    const-string v34, "sender"

    .line 388
    .line 389
    const-string v35, "\u7cfb\u7edf"

    .line 390
    .line 391
    const-string v36, "email_sender"

    .line 392
    .line 393
    const-string v37, "\u7cfb\u7edf"

    .line 394
    .line 395
    const-string v38, "email_sender_nickname"

    .line 396
    .line 397
    const-string v39, "\u7cfb\u7edf"

    .line 398
    .line 399
    const-string v40, "from_user"

    .line 400
    .line 401
    const-string v41, "\u7cfb\u7edf"

    .line 402
    .line 403
    const-string v42, "email_time_offset"

    .line 404
    .line 405
    const/4 v1, 0x0

    .line 406
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 407
    .line 408
    .line 409
    move-result-object v43

    .line 410
    const-string v44, "send_time"

    .line 411
    .line 412
    long-to-int v1, v6

    .line 413
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 414
    .line 415
    .line 416
    move-result-object v45

    .line 417
    const-string v46, "create_time"

    .line 418
    .line 419
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 420
    .line 421
    .line 422
    move-result-object v47

    .line 423
    const-string v48, "time"

    .line 424
    .line 425
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 426
    .line 427
    .line 428
    move-result-object v49

    .line 429
    const-string v50, "expire_time"

    .line 430
    .line 431
    const v3, 0x278d00

    .line 432
    .line 433
    .line 434
    add-int/2addr v1, v3

    .line 435
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 436
    .line 437
    .line 438
    move-result-object v51

    .line 439
    const-string v52, "is_read"

    .line 440
    .line 441
    sget-object v53, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 442
    .line 443
    move-object/from16 v55, v53

    .line 444
    .line 445
    const-string v54, "is_accepted"

    .line 446
    .line 447
    const-string v56, "is_attach_get"

    .line 448
    .line 449
    const-string v57, "0"

    .line 450
    .line 451
    const-string v58, "status"

    .line 452
    .line 453
    const/4 v1, 0x0

    .line 454
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 455
    .line 456
    .line 457
    move-result-object v59

    .line 458
    const-string v60, "reward_list"

    .line 459
    .line 460
    const-string v62, "reward"

    .line 461
    .line 462
    const-string v64, "rewards"

    .line 463
    .line 464
    move-object v15, v4

    .line 465
    move-object/from16 v17, v4

    .line 466
    .line 467
    move-object/from16 v19, v4

    .line 468
    .line 469
    move-object/from16 v61, v12

    .line 470
    .line 471
    move-object/from16 v63, v12

    .line 472
    .line 473
    move-object/from16 v65, v12

    .line 474
    .line 475
    filled-new-array/range {v14 .. v65}, [Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    const-string v3, "mail_id"

    .line 480
    .line 481
    invoke-static {v3, v4, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    const/4 v3, 0x0

    .line 486
    invoke-interface {v10, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 487
    .line 488
    .line 489
    invoke-interface {v0, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    invoke-interface {v0, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    const-string v1, "tower_rank_reward_soul_pending"

    .line 496
    .line 497
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v4

    .line 501
    invoke-static {v4, v3}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 502
    .line 503
    .line 504
    move-result v4

    .line 505
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 506
    .line 507
    .line 508
    move-result v3

    .line 509
    add-int/2addr v3, v8

    .line 510
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-object/from16 v1, v66

    .line 518
    .line 519
    :cond_c
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    :cond_d
    :goto_4
    return-void
.end method

.method public static varargs f(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Lcom/sgscq/vpn/handler/j;[Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p2, v1, v0}, Lcom/sgscq/vpn/handler/j;->a(Ljava/util/Map;Ljava/util/AbstractCollection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/sgscq/vpn/handler/b1;->p(Ljava/util/LinkedHashMap;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    array-length v3, p3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_3

    aget-object v6, p3, v5

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-nez v4, :cond_1

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {p2, p0, v1}, Lcom/sgscq/vpn/handler/j;->a(Ljava/util/Map;Ljava/util/AbstractCollection;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p3, ","

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "cmn_modules"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static f0(Ljava/util/List;Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;
    .locals 16

    .line 1
    move-object/from16 v8, p1

    .line 2
    .line 3
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/b1;->r0(J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v9

    .line 11
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/b1;->t(Ljava/util/Map;)I

    .line 12
    .line 13
    .line 14
    move-result v10

    .line 15
    const-string v11, "tower_surrender_rank_day"

    .line 16
    .line 17
    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/sgscq/vpn/handler/b1;->C0(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    const-string v12, "tower_surrender_previous_rank"

    .line 26
    .line 27
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v13, 0x0

    .line 32
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v14

    .line 36
    invoke-static {v0, v13}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v7, :cond_9

    .line 41
    .line 42
    if-gtz v4, :cond_0

    .line 43
    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_0
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v8, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    new-instance v0, Lcom/sgscq/vpn/handler/j;

    .line 60
    .line 61
    invoke-direct {v0}, Lcom/sgscq/vpn/handler/j;-><init>()V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_4

    .line 65
    .line 66
    :cond_1
    invoke-static {v7, v9}, Lcom/sgscq/vpn/handler/b1;->H(Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v15

    .line 70
    const-string v2, "20"

    .line 71
    .line 72
    const-string v3, "40"

    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    int-to-long v0, v0

    .line 76
    const-wide/16 v5, 0x3c

    .line 77
    .line 78
    mul-long/2addr v0, v5

    .line 79
    mul-long/2addr v5, v0

    .line 80
    move-object/from16 v0, p1

    .line 81
    .line 82
    move-object/from16 v1, p0

    .line 83
    .line 84
    invoke-static/range {v0 .. v7}, Lcom/sgscq/vpn/handler/y0;->m(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    if-nez v15, :cond_8

    .line 88
    .line 89
    const-string v0, "surrender_rank_duration"

    .line 90
    .line 91
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    instance-of v1, v0, Ljava/util/Map;

    .line 96
    .line 97
    if-nez v1, :cond_2

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    check-cast v0, Ljava/util/Map;

    .line 101
    .line 102
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_8

    .line 111
    .line 112
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Ljava/util/Map;

    .line 117
    .line 118
    const-string v3, "surrender_tasks"

    .line 119
    .line 120
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    instance-of v3, v2, Ljava/util/List;

    .line 125
    .line 126
    if-nez v3, :cond_4

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_4
    check-cast v2, Ljava/util/List;

    .line 130
    .line 131
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_3

    .line 140
    .line 141
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    instance-of v4, v3, Ljava/util/Map;

    .line 146
    .line 147
    if-nez v4, :cond_5

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_5
    check-cast v3, Ljava/util/Map;

    .line 151
    .line 152
    const-string v4, "surrender_type"

    .line 153
    .line 154
    const-string v5, ""

    .line 155
    .line 156
    const-string v6, "20"

    .line 157
    .line 158
    invoke-static {v3, v4, v5, v6}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-nez v4, :cond_6

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_6
    const-string v4, "surrender_id"

    .line 166
    .line 167
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    instance-of v4, v3, Ljava/util/Map;

    .line 180
    .line 181
    if-nez v4, :cond_7

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_7
    check-cast v3, Ljava/util/Map;

    .line 185
    .line 186
    const-string v4, "current"

    .line 187
    .line 188
    invoke-interface {v3, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    const-string v4, "remainder_seconds"

    .line 192
    .line 193
    invoke-interface {v3, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_8
    :goto_2
    invoke-interface {v8, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-interface {v8, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    invoke-static/range {p0 .. p1}, Lcom/sgscq/vpn/handler/y0;->c(Ljava/util/List;Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    goto :goto_4

    .line 212
    :cond_9
    :goto_3
    invoke-interface {v8, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-interface {v8, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    new-instance v0, Lcom/sgscq/vpn/handler/j;

    .line 223
    .line 224
    invoke-direct {v0}, Lcom/sgscq/vpn/handler/j;-><init>()V

    .line 225
    .line 226
    .line 227
    :goto_4
    const-string v1, "tower_daily_day"

    .line 228
    .line 229
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-static {v2}, Lcom/sgscq/vpn/handler/b1;->C0(Ljava/lang/Object;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    if-eqz v2, :cond_a

    .line 238
    .line 239
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-nez v2, :cond_b

    .line 244
    .line 245
    :cond_a
    invoke-interface {v8, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    const-string v1, "tower_daily_fight_times"

    .line 249
    .line 250
    invoke-interface {v8, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    const-string v1, "tower_daily_max_total_integration"

    .line 254
    .line 255
    invoke-interface {v8, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/b1;->a0(Ljava/util/Map;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    const-string v2, "daily"

    .line 263
    .line 264
    const-string v3, "tower_total_integration"

    .line 265
    .line 266
    const-string v4, "tower_max_point_progress"

    .line 267
    .line 268
    const-string v5, "tower_point_progress"

    .line 269
    .line 270
    if-nez v1, :cond_d

    .line 271
    .line 272
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/b1;->I(Ljava/util/Map;)Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    if-nez v1, :cond_c

    .line 277
    .line 278
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/b1;->G(Ljava/util/Map;)Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-eqz v1, :cond_c

    .line 283
    .line 284
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-static {v1, v13}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    invoke-static {v4, v13}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    invoke-static {v3, v13}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 309
    .line 310
    .line 311
    move-result v3

    .line 312
    invoke-static {v1, v4, v3, v2, v8}, Lcom/sgscq/vpn/handler/b1;->L(IIILjava/lang/String;Ljava/util/Map;)V

    .line 313
    .line 314
    .line 315
    :cond_c
    invoke-static {v9, v8}, Lcom/sgscq/vpn/handler/b1;->e0(Ljava/lang/String;Ljava/util/Map;)V

    .line 316
    .line 317
    .line 318
    return-object v0

    .line 319
    :cond_d
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    if-nez v1, :cond_10

    .line 324
    .line 325
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/b1;->G(Ljava/util/Map;)Z

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-nez v1, :cond_e

    .line 330
    .line 331
    goto :goto_5

    .line 332
    :cond_e
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/b1;->I(Ljava/util/Map;)Z

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    if-eqz v1, :cond_f

    .line 337
    .line 338
    invoke-static {v9, v8}, Lcom/sgscq/vpn/handler/b1;->e0(Ljava/lang/String;Ljava/util/Map;)V

    .line 339
    .line 340
    .line 341
    return-object v0

    .line 342
    :cond_f
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-static {v1, v13}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    invoke-static {v4, v13}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 355
    .line 356
    .line 357
    move-result v4

    .line 358
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 359
    .line 360
    .line 361
    move-result v4

    .line 362
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-static {v3, v13}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 367
    .line 368
    .line 369
    move-result v3

    .line 370
    invoke-static {v1, v4, v3, v2, v8}, Lcom/sgscq/vpn/handler/b1;->L(IIILjava/lang/String;Ljava/util/Map;)V

    .line 371
    .line 372
    .line 373
    invoke-static {v9, v8}, Lcom/sgscq/vpn/handler/b1;->e0(Ljava/lang/String;Ljava/util/Map;)V

    .line 374
    .line 375
    .line 376
    :cond_10
    :goto_5
    return-object v0
.end method

.method public static g(Ljava/util/Map;)V
    .locals 5

    .line 1
    const-string v0, "tower_rank_reward_soul_pending"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    :cond_0
    const-string v3, "tower_having_integration"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static g0(Ljava/util/Map;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/handler/b1;->I(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "tower_point_progress"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v0

    if-gtz v0, :cond_1

    const-string v0, "tower_fight_times"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result p0

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public static h(Ljava/util/List;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 16

    .line 1
    move-object/from16 v10, p1

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, v10}, Lcom/sgscq/vpn/handler/b1;->f0(Ljava/util/List;Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;

    .line 8
    .line 9
    .line 10
    const-string v0, "tower_daily_fight_times"

    .line 11
    .line 12
    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

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
    rsub-int/lit8 v0, v0, 0x3

    .line 26
    .line 27
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-gtz v0, :cond_0

    .line 32
    .line 33
    const-string v0, "\u4eca\u65e5\u6311\u6218\u6b21\u6570\u5df2\u7528\u5b8c"

    .line 34
    .line 35
    invoke-static {v0}, Lcom/sgscq/vpn/handler/b1;->A(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0

    .line 40
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "tower_claimed_box_ids"

    .line 51
    .line 52
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v0, v2}, Lcom/sgscq/vpn/handler/b1;->b(Ljava/util/LinkedHashMap;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    const-string v2, "tower_last_run_claimed_box_ids"

    .line 60
    .line 61
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v0, v2}, Lcom/sgscq/vpn/handler/b1;->b(Ljava/util/LinkedHashMap;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    new-instance v2, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_5

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Ljava/lang/String;

    .line 92
    .line 93
    const/4 v3, -0x1

    .line 94
    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    const v4, 0x64190

    .line 99
    .line 100
    .line 101
    const v5, 0x668a0

    .line 102
    .line 103
    .line 104
    const v6, 0x68fb0

    .line 105
    .line 106
    .line 107
    const v7, 0x6b6c0

    .line 108
    .line 109
    .line 110
    filled-new-array {v4, v5, v6, v7}, [I

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    move v5, v1

    .line 115
    :goto_1
    const/4 v6, 0x4

    .line 116
    const/16 v7, 0x5a

    .line 117
    .line 118
    if-ge v5, v6, :cond_3

    .line 119
    .line 120
    aget v6, v4, v5

    .line 121
    .line 122
    sub-int v6, v2, v6

    .line 123
    .line 124
    add-int/2addr v6, v3

    .line 125
    if-ltz v6, :cond_2

    .line 126
    .line 127
    if-ge v6, v7, :cond_2

    .line 128
    .line 129
    move v3, v6

    .line 130
    goto :goto_2

    .line 131
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    :goto_2
    if-ltz v3, :cond_1

    .line 135
    .line 136
    if-lt v3, v7, :cond_4

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_4
    invoke-static {v3, v10}, Lcom/sgscq/vpn/handler/b1;->w0(ILjava/util/Map;)I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    invoke-static {v3, v2, v10}, Lcom/sgscq/vpn/handler/b1;->E(IILjava/util/Map;)Ljava/util/ArrayList;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_5
    const-string v0, "tower_point_progress"

    .line 152
    .line 153
    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-static {v2, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    const-string v3, "tower_run_coin_reward"

    .line 166
    .line 167
    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-static {v3}, Lcom/sgscq/vpn/handler/b1;->c0(Ljava/lang/Object;)J

    .line 172
    .line 173
    .line 174
    move-result-wide v3

    .line 175
    const-wide/16 v5, 0x0

    .line 176
    .line 177
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 178
    .line 179
    .line 180
    move-result-wide v3

    .line 181
    if-lez v2, :cond_6

    .line 182
    .line 183
    cmp-long v7, v3, v5

    .line 184
    .line 185
    if-lez v7, :cond_6

    .line 186
    .line 187
    move-object/from16 v12, p0

    .line 188
    .line 189
    goto/16 :goto_b

    .line 190
    .line 191
    :cond_6
    const-string v3, "tower_last_run_point_progress"

    .line 192
    .line 193
    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-static {v3, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    const-string v4, "tower_last_run_coin_reward"

    .line 206
    .line 207
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-static {v4}, Lcom/sgscq/vpn/handler/b1;->c0(Ljava/lang/Object;)J

    .line 212
    .line 213
    .line 214
    move-result-wide v7

    .line 215
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 216
    .line 217
    .line 218
    move-result-wide v7

    .line 219
    if-gtz v2, :cond_7

    .line 220
    .line 221
    if-lez v3, :cond_7

    .line 222
    .line 223
    cmp-long v4, v7, v5

    .line 224
    .line 225
    if-lez v4, :cond_7

    .line 226
    .line 227
    move-object/from16 v12, p0

    .line 228
    .line 229
    move-wide v3, v7

    .line 230
    goto/16 :goto_b

    .line 231
    .line 232
    :cond_7
    if-lez v2, :cond_8

    .line 233
    .line 234
    move v4, v2

    .line 235
    goto :goto_3

    .line 236
    :cond_8
    move v4, v3

    .line 237
    :goto_3
    if-gtz v2, :cond_9

    .line 238
    .line 239
    if-lez v3, :cond_9

    .line 240
    .line 241
    const/4 v3, 0x1

    .line 242
    goto :goto_4

    .line 243
    :cond_9
    move v3, v1

    .line 244
    :goto_4
    if-lez v2, :cond_a

    .line 245
    .line 246
    const-string v2, "tower_run_enemy_counts"

    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_a
    const-string v2, "tower_last_run_enemy_counts"

    .line 250
    .line 251
    :goto_5
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    instance-of v7, v2, Ljava/util/List;

    .line 256
    .line 257
    const/16 v8, 0x96

    .line 258
    .line 259
    if-nez v7, :cond_b

    .line 260
    .line 261
    goto :goto_7

    .line 262
    :cond_b
    check-cast v2, Ljava/util/List;

    .line 263
    .line 264
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 269
    .line 270
    .line 271
    move-result v9

    .line 272
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 273
    .line 274
    .line 275
    move-result v9

    .line 276
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    move v9, v1

    .line 281
    move-wide v12, v5

    .line 282
    :goto_6
    if-ge v9, v7, :cond_d

    .line 283
    .line 284
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v14

    .line 288
    invoke-static {v14, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 289
    .line 290
    .line 291
    move-result v14

    .line 292
    if-gtz v14, :cond_c

    .line 293
    .line 294
    :goto_7
    move-wide v12, v5

    .line 295
    goto :goto_8

    .line 296
    :cond_c
    add-int/lit8 v9, v9, 0x1

    .line 297
    .line 298
    invoke-static {v10, v9, v14, v3}, Lcom/sgscq/vpn/handler/b1;->q0(Ljava/util/Map;IIZ)J

    .line 299
    .line 300
    .line 301
    move-result-wide v14

    .line 302
    add-long/2addr v12, v14

    .line 303
    goto :goto_6

    .line 304
    :cond_d
    :goto_8
    cmp-long v2, v12, v5

    .line 305
    .line 306
    if-lez v2, :cond_f

    .line 307
    .line 308
    move-wide v5, v12

    .line 309
    :cond_e
    move-object/from16 v12, p0

    .line 310
    .line 311
    goto :goto_a

    .line 312
    :cond_f
    move v2, v1

    .line 313
    :goto_9
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    .line 314
    .line 315
    .line 316
    move-result v7

    .line 317
    if-ge v2, v7, :cond_e

    .line 318
    .line 319
    add-int/lit8 v7, v2, 0x1

    .line 320
    .line 321
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 322
    .line 323
    .line 324
    move-result-object v9

    .line 325
    move-object/from16 v12, p0

    .line 326
    .line 327
    invoke-static {v2, v12, v9}, Lcom/sgscq/vpn/handler/b1;->y(ILjava/util/List;Ljava/util/Map;)I

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    invoke-static {v10, v7, v2, v3}, Lcom/sgscq/vpn/handler/b1;->q0(Ljava/util/Map;IIZ)J

    .line 332
    .line 333
    .line 334
    move-result-wide v13

    .line 335
    add-long/2addr v5, v13

    .line 336
    move v2, v7

    .line 337
    goto :goto_9

    .line 338
    :goto_a
    move-wide v3, v5

    .line 339
    :goto_b
    invoke-static {v3, v4, v10}, Lcom/sgscq/vpn/p5;->b(JLjava/util/Map;)V

    .line 340
    .line 341
    .line 342
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/b1;->r(Ljava/util/Map;)V

    .line 343
    .line 344
    .line 345
    invoke-static {}, Lcom/sgscq/vpn/handler/b1;->m0()Ljava/util/LinkedHashMap;

    .line 346
    .line 347
    .line 348
    move-result-object v13

    .line 349
    const/4 v8, 0x1

    .line 350
    const/4 v2, 0x0

    .line 351
    const/4 v5, 0x0

    .line 352
    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 357
    .line 358
    .line 359
    move-result v7

    .line 360
    const/4 v9, 0x1

    .line 361
    move-object/from16 v0, p1

    .line 362
    .line 363
    move v1, v8

    .line 364
    move-object v6, v11

    .line 365
    invoke-static/range {v0 .. v9}, Lcom/sgscq/vpn/handler/b1;->l(Ljava/util/Map;ZIJILjava/util/ArrayList;III)Ljava/util/LinkedHashMap;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    const-string v1, "fight_result"

    .line 370
    .line 371
    invoke-interface {v13, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    invoke-static/range {p0 .. p1}, Lcom/sgscq/vpn/handler/b1;->m(Ljava/util/List;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    const-string v1, "add_list"

    .line 379
    .line 380
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    const-string v2, "return_info"

    .line 384
    .line 385
    invoke-interface {v13, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    invoke-interface {v13, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    invoke-static {v11, v13}, Lcom/sgscq/vpn/handler/b1;->T(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    .line 392
    .line 393
    .line 394
    return-object v13
.end method

.method public static h0(ILjava/util/Map;)Z
    .locals 2

    .line 1
    const-string v0, "info"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/List;

    if-ltz p0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_2

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const-string p1, "evolution_image_status"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static i([DID)D
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    array-length v0, p0

    if-le v0, p1, :cond_0

    aget-wide v0, p0, p1

    const-wide/16 p0, 0x0

    cmpl-double p0, v0, p0

    if-lez p0, :cond_0

    return-wide v0

    :cond_0
    return-wide p2
.end method

.method public static i0()Ljava/util/LinkedHashMap;
    .locals 32

    .line 1
    new-instance v11, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    new-instance v13, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v0, "hpCur"

    .line 28
    .line 29
    const/16 v1, 0x3e8

    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v2, "hpMax"

    .line 36
    .line 37
    const-string v4, "name"

    .line 38
    .line 39
    const-string v5, "Player"

    .line 40
    .line 41
    move-object v1, v3

    .line 42
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "112001"

    .line 47
    .line 48
    const-string v2, "id"

    .line 49
    .line 50
    invoke-static {v2, v1, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    const/16 v0, 0x66

    .line 58
    .line 59
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->i1(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v3, "hpCur"

    .line 64
    .line 65
    const/16 v1, 0x320

    .line 66
    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v17

    .line 71
    const-string v5, "hpMax"

    .line 72
    .line 73
    const-string v7, "name"

    .line 74
    .line 75
    const-string v8, "Tower"

    .line 76
    .line 77
    move-object/from16 v4, v17

    .line 78
    .line 79
    move-object/from16 v6, v17

    .line 80
    .line 81
    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    new-instance v9, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    const/4 v0, 0x1

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    const-string v0, "from"

    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    filled-new-array {v5}, [Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    const-string v3, "to"

    .line 118
    .line 119
    filled-new-array {v7}, [Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-static {v4}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    const-string v22, "skill"

    .line 128
    .line 129
    const-string v23, "Attack_Knife"

    .line 130
    .line 131
    const-string v24, "skillId"

    .line 132
    .line 133
    const-string v25, "0"

    .line 134
    .line 135
    const-string v26, "type"

    .line 136
    .line 137
    const-string v28, "params"

    .line 138
    .line 139
    const-string v14, "hpMax"

    .line 140
    .line 141
    const-string v16, "hp"

    .line 142
    .line 143
    const-string v18, "event"

    .line 144
    .line 145
    const-string v6, "death"

    .line 146
    .line 147
    filled-new-array {v6}, [Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    invoke-static {v6}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 152
    .line 153
    .line 154
    move-result-object v19

    .line 155
    const-string v20, "cure"

    .line 156
    .line 157
    move-object/from16 v15, v17

    .line 158
    .line 159
    move-object/from16 v21, v5

    .line 160
    .line 161
    filled-new-array/range {v14 .. v21}, [Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    const-string v8, "hpCur"

    .line 166
    .line 167
    invoke-static {v8, v5, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    new-instance v8, Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    new-array v1, v1, [Ljava/lang/Object;

    .line 180
    .line 181
    const-string v6, "to"

    .line 182
    .line 183
    invoke-static {v6, v8, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 184
    .line 185
    .line 186
    move-result-object v29

    .line 187
    move-object/from16 v18, v0

    .line 188
    .line 189
    move-object/from16 v19, v2

    .line 190
    .line 191
    move-object/from16 v20, v3

    .line 192
    .line 193
    move-object/from16 v21, v4

    .line 194
    .line 195
    move-object/from16 v27, v5

    .line 196
    .line 197
    filled-new-array/range {v18 .. v29}, [Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    const-string v1, "round"

    .line 202
    .line 203
    invoke-static {v1, v7, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    const-string v0, "roundMax"

    .line 211
    .line 212
    const/16 v1, 0xf

    .line 213
    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    const-string v2, "cards_size0"

    .line 219
    .line 220
    const-string v4, "cards_size1"

    .line 221
    .line 222
    const-string v6, "backups_size0"

    .line 223
    .line 224
    const-string v8, "backups_size1"

    .line 225
    .line 226
    const-string v10, "info"

    .line 227
    .line 228
    const-string v12, "cards"

    .line 229
    .line 230
    const-string v14, "roundCur"

    .line 231
    .line 232
    const-string v16, "skipRounds"

    .line 233
    .line 234
    move-object v3, v7

    .line 235
    move-object v15, v5

    .line 236
    move-object v5, v7

    .line 237
    move-object/from16 v17, v7

    .line 238
    .line 239
    move-object v7, v15

    .line 240
    move-object/from16 v30, v9

    .line 241
    .line 242
    move-object v9, v15

    .line 243
    move-object/from16 v31, v15

    .line 244
    .line 245
    move-object/from16 v15, v17

    .line 246
    .line 247
    filled-new-array/range {v0 .. v17}, [Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    const-string v1, "first"

    .line 252
    .line 253
    move-object/from16 v2, v31

    .line 254
    .line 255
    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    const-string v1, "rounds"

    .line 260
    .line 261
    move-object/from16 v2, v30

    .line 262
    .line 263
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    const-string v2, "init"

    .line 268
    .line 269
    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    return-object v0
.end method

.method public static j(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x1e

    if-lt p0, v0, :cond_0

    const-string p0, "genie_rank"

    return-object p0

    :cond_0
    const/16 v0, 0x19

    if-lt p0, v0, :cond_1

    const-string p0, "gold_rank"

    return-object p0

    :cond_1
    const/16 v0, 0x14

    if-lt p0, v0, :cond_2

    const-string p0, "silver_rank"

    return-object p0

    :cond_2
    const-string p0, "copper_rank"

    return-object p0
.end method

.method public static j0(ILjava/util/ArrayList;)V
    .locals 6

    .line 1
    new-instance v0, Lc/n;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lc/n;-><init>(I)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    add-int/lit8 v0, p0, 0x1

    mul-int/lit16 v0, v0, 0x190

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    add-int/lit8 v2, v2, 0x1

    const-string v4, "rank"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x14

    if-gt v2, v4, :cond_0

    rsub-int/lit8 v5, v2, 0x15

    mul-int/2addr v5, v0

    div-int/2addr v5, v4

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "reward_gold"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    mul-int/lit8 v4, p0, 0x3

    const-string v5, "total_integration"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "reward_point"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static k0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
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

.method public static l(Ljava/util/Map;ZIJILjava/util/ArrayList;III)Ljava/util/LinkedHashMap;
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p8

    move/from16 v3, p9

    .line 1
    invoke-static {v1, v2, v3}, Lcom/sgscq/vpn/battle/BattleStarCalculator;->calculate(ZII)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_1

    invoke-static/range {p8 .. p9}, Lcom/sgscq/vpn/battle/BattleStarCalculator;->ceilPercent(II)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v7, "is_win"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "fight_type"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "fight_calculate_info"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v12, "rounds"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "residue_team_num"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v16, "residue_team_percent"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-string v18, "extra_integration"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v20, "max_total_integration"

    const-string v2, "tower_total_integration"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const-string v22, "point_progress"

    move/from16 v4, p7

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const-string v24, "total_integration"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    filled-new-array/range {v12 .. v25}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "star_level"

    invoke-static {v4, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v12

    const-string v13, "player_info"

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/p5;->x(Ljava/util/Map;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "user_coin"

    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v14

    const-string v15, "drop_info"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "point"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v16

    const-string v17, "add_list"

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const-string v19, "add_list_other"

    const-string v21, "show_general_info"

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, p6

    filled-new-array/range {v7 .. v22}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "success"

    invoke-static {v1, v3, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public static l0(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 17

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
    const-string v2, "tower_having_integration"

    .line 9
    .line 10
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const-string v4, "tower_pending_stronger_batch"

    .line 20
    .line 21
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-static {v4, v3}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x1

    .line 30
    if-lez v4, :cond_0

    .line 31
    .line 32
    move v4, v5

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v4, v3

    .line 35
    :goto_0
    if-eqz v4, :cond_5

    .line 36
    .line 37
    const/4 v4, 0x3

    .line 38
    if-ge v2, v4, :cond_1

    .line 39
    .line 40
    goto/16 :goto_4

    .line 41
    .line 42
    :cond_1
    move v6, v3

    .line 43
    move v7, v6

    .line 44
    :goto_1
    sget-object v8, Lcom/sgscq/vpn/handler/b1;->b:[I

    .line 45
    .line 46
    const/16 v9, 0x8

    .line 47
    .line 48
    if-ge v6, v9, :cond_3

    .line 49
    .line 50
    aget v8, v8, v6

    .line 51
    .line 52
    if-gt v8, v2, :cond_2

    .line 53
    .line 54
    move v7, v6

    .line 55
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    add-int/lit8 v7, v7, -0x2

    .line 59
    .line 60
    const/4 v6, 0x5

    .line 61
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    aget v7, v8, v6

    .line 70
    .line 71
    add-int/lit8 v9, v6, 0x1

    .line 72
    .line 73
    aget v9, v8, v9

    .line 74
    .line 75
    const/4 v10, 0x2

    .line 76
    add-int/2addr v6, v10

    .line 77
    aget v6, v8, v6

    .line 78
    .line 79
    filled-new-array {v7, v9, v6}, [I

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    const/4 v7, 0x4

    .line 84
    filled-new-array {v5, v10, v4, v7}, [I

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    new-instance v8, Ljava/util/Random;

    .line 89
    .line 90
    const-wide/16 v11, 0x35

    .line 91
    .line 92
    int-to-long v13, v2

    .line 93
    mul-long/2addr v13, v11

    .line 94
    const-string v2, "tower_total_integration"

    .line 95
    .line 96
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    int-to-long v11, v2

    .line 105
    const-wide/16 v15, 0x61

    .line 106
    .line 107
    mul-long/2addr v11, v15

    .line 108
    add-long/2addr v11, v13

    .line 109
    const-string v2, "tower_point_progress"

    .line 110
    .line 111
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v0, v3}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    int-to-long v13, v0

    .line 120
    const-wide/16 v15, 0xc1

    .line 121
    .line 122
    mul-long/2addr v13, v15

    .line 123
    add-long/2addr v13, v11

    .line 124
    invoke-direct {v8, v13, v14}, Ljava/util/Random;-><init>(J)V

    .line 125
    .line 126
    .line 127
    move v0, v4

    .line 128
    :goto_2
    if-lez v0, :cond_4

    .line 129
    .line 130
    add-int/lit8 v2, v0, 0x1

    .line 131
    .line 132
    invoke-virtual {v8, v2}, Ljava/util/Random;->nextInt(I)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    aget v9, v7, v0

    .line 137
    .line 138
    aget v11, v7, v2

    .line 139
    .line 140
    aput v11, v7, v0

    .line 141
    .line 142
    aput v9, v7, v2

    .line 143
    .line 144
    add-int/lit8 v0, v0, -0x1

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_4
    aget v0, v7, v3

    .line 148
    .line 149
    aget v2, v7, v5

    .line 150
    .line 151
    aget v5, v7, v10

    .line 152
    .line 153
    filled-new-array {v0, v2, v5}, [I

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    :goto_3
    if-ge v3, v4, :cond_5

    .line 158
    .line 159
    add-int/lit8 v2, v3, 0x1

    .line 160
    .line 161
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    aget v7, v0, v3

    .line 166
    .line 167
    aget v3, v6, v3

    .line 168
    .line 169
    const-string v8, "stronger_type"

    .line 170
    .line 171
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    const-string v10, "need_integration"

    .line 176
    .line 177
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v11

    .line 181
    const-string v12, "incre_per"

    .line 182
    .line 183
    invoke-static {v3}, Lcom/sgscq/vpn/handler/b1;->O(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v13

    .line 187
    filled-new-array/range {v8 .. v13}, [Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    const-string v7, "id"

    .line 192
    .line 193
    invoke-static {v7, v5, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move v3, v2

    .line 201
    goto :goto_3

    .line 202
    :cond_5
    :goto_4
    return-object v1
.end method

.method public static m(Ljava/util/List;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/b1;->g0(Ljava/util/Map;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/16 v3, 0x1c

    .line 14
    .line 15
    new-array v3, v3, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const-string v5, "index_info"

    .line 19
    .line 20
    aput-object v5, v3, v4

    .line 21
    .line 22
    const-string v5, "tower_daily_fight_times"

    .line 23
    .line 24
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-static {v6, v4}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    const/4 v7, 0x3

    .line 37
    rsub-int/lit8 v6, v6, 0x3

    .line 38
    .line 39
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const-string v8, "fight_times"

    .line 48
    .line 49
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-static {v5, v4}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    const-string v10, "max_point_progress"

    .line 66
    .line 67
    const-string v5, "tower_max_point_progress"

    .line 68
    .line 69
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-static {v5, v4}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    const-string v12, "max_total_integration"

    .line 82
    .line 83
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/b1;->u(Ljava/util/Map;)I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v13

    .line 91
    const-string v14, "rank"

    .line 92
    .line 93
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/b1;->o(Ljava/util/Map;)I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v15

    .line 101
    filled-new-array/range {v8 .. v15}, [Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    const-string v8, "left_times"

    .line 106
    .line 107
    invoke-static {v8, v6, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    const/4 v6, 0x1

    .line 112
    aput-object v5, v3, v6

    .line 113
    .line 114
    const-string v5, "rank_info"

    .line 115
    .line 116
    const/4 v8, 0x2

    .line 117
    aput-object v5, v3, v8

    .line 118
    .line 119
    const/4 v5, 0x0

    .line 120
    invoke-static {v1, v5}, Lcom/sgscq/vpn/handler/b1;->V(Ljava/util/Map;Lcom/sgscq/vpn/p7;)Ljava/util/LinkedHashMap;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    aput-object v9, v3, v7

    .line 125
    .line 126
    const/4 v9, 0x4

    .line 127
    const-string v10, "tower_common_info"

    .line 128
    .line 129
    aput-object v10, v3, v9

    .line 130
    .line 131
    const-string v9, "tower_total_integration"

    .line 132
    .line 133
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    invoke-static {v9, v4}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    const-string v10, "tower_having_integration"

    .line 146
    .line 147
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    invoke-static {v10, v4}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 152
    .line 153
    .line 154
    move-result v10

    .line 155
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    const-string v11, "having_integration"

    .line 160
    .line 161
    filled-new-array {v11, v10}, [Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    const-string v11, "total_integration"

    .line 166
    .line 167
    invoke-static {v11, v9, v10}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    const-string v10, "tower_attack_percent"

    .line 172
    .line 173
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    invoke-static {v10, v4}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 178
    .line 179
    .line 180
    move-result v10

    .line 181
    invoke-static {v10}, Lcom/sgscq/vpn/handler/b1;->O(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    const-string v11, "defense_percent"

    .line 186
    .line 187
    const-string v12, "tower_defense_percent"

    .line 188
    .line 189
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v12

    .line 193
    invoke-static {v12, v4}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 194
    .line 195
    .line 196
    move-result v12

    .line 197
    invoke-static {v12}, Lcom/sgscq/vpn/handler/b1;->O(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v12

    .line 201
    const-string v13, "hp_percent"

    .line 202
    .line 203
    const-string v14, "tower_hp_percent"

    .line 204
    .line 205
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v14

    .line 209
    invoke-static {v14, v4}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 210
    .line 211
    .line 212
    move-result v14

    .line 213
    invoke-static {v14}, Lcom/sgscq/vpn/handler/b1;->O(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v14

    .line 217
    const-string v15, "wisdom_percent"

    .line 218
    .line 219
    const-string v5, "tower_wisdom_percent"

    .line 220
    .line 221
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    invoke-static {v5, v4}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    invoke-static {v5}, Lcom/sgscq/vpn/handler/b1;->O(I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v16

    .line 233
    filled-new-array/range {v11 .. v16}, [Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    const-string v11, "attack_percent"

    .line 238
    .line 239
    invoke-static {v11, v10, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    const-string v10, "property_stronger_info"

    .line 244
    .line 245
    filled-new-array {v10, v5}, [Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    const-string v10, "point_info"

    .line 250
    .line 251
    invoke-static {v10, v9, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    const/4 v9, 0x5

    .line 256
    aput-object v5, v3, v9

    .line 257
    .line 258
    const/4 v5, 0x6

    .line 259
    const-string v10, "robot_info"

    .line 260
    .line 261
    aput-object v10, v3, v5

    .line 262
    .line 263
    const-string v5, "tower_point_progress"

    .line 264
    .line 265
    if-eqz v0, :cond_4

    .line 266
    .line 267
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    .line 268
    .line 269
    .line 270
    move-result v10

    .line 271
    if-eqz v10, :cond_0

    .line 272
    .line 273
    goto/16 :goto_3

    .line 274
    .line 275
    :cond_0
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v10

    .line 279
    invoke-static {v10, v4}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 280
    .line 281
    .line 282
    move-result v10

    .line 283
    new-instance v11, Ljava/util/ArrayList;

    .line 284
    .line 285
    invoke-static {v10, v0}, Lcom/sgscq/vpn/handler/c1;->g(ILjava/util/List;)Ljava/util/List;

    .line 286
    .line 287
    .line 288
    move-result-object v10

    .line 289
    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 290
    .line 291
    .line 292
    new-instance v10, Ljava/util/ArrayList;

    .line 293
    .line 294
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .line 296
    .line 297
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v12

    .line 301
    invoke-static {v12, v4}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 302
    .line 303
    .line 304
    move-result v12

    .line 305
    add-int/2addr v12, v6

    .line 306
    move v13, v4

    .line 307
    :goto_0
    if-ge v13, v7, :cond_3

    .line 308
    .line 309
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 310
    .line 311
    .line 312
    move-result v14

    .line 313
    if-ge v13, v14, :cond_1

    .line 314
    .line 315
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v14

    .line 319
    check-cast v14, Ljava/util/Map;

    .line 320
    .line 321
    goto :goto_1

    .line 322
    :cond_1
    const/4 v14, 0x0

    .line 323
    :goto_1
    invoke-static {v13}, Lcom/sgscq/vpn/handler/b1;->t0(I)I

    .line 324
    .line 325
    .line 326
    move-result v15

    .line 327
    invoke-static {v15, v0, v14}, Lcom/sgscq/vpn/handler/b1;->v0(ILjava/util/List;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 328
    .line 329
    .line 330
    move-result-object v8

    .line 331
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 332
    .line 333
    .line 334
    move-result v18

    .line 335
    if-eqz v18, :cond_2

    .line 336
    .line 337
    invoke-static {v1, v12, v6, v4}, Lcom/sgscq/vpn/handler/b1;->q0(Ljava/util/Map;IIZ)J

    .line 338
    .line 339
    .line 340
    move-result-wide v14

    .line 341
    add-int/lit8 v8, v13, 0x1

    .line 342
    .line 343
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    invoke-static {v8}, Lcom/sgscq/vpn/p5;->j1(I)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v8

    .line 351
    invoke-static {v7, v8, v14, v15}, Lcom/sgscq/vpn/handler/b1;->Y(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/LinkedHashMap;

    .line 352
    .line 353
    .line 354
    move-result-object v7

    .line 355
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    goto :goto_2

    .line 359
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 360
    .line 361
    .line 362
    move-result v7

    .line 363
    invoke-static {v1, v12, v7, v4}, Lcom/sgscq/vpn/handler/b1;->q0(Ljava/util/Map;IIZ)J

    .line 364
    .line 365
    .line 366
    move-result-wide v18

    .line 367
    invoke-static {v14}, Lcom/sgscq/vpn/handler/c1;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v7

    .line 371
    const-string v20, "general_id"

    .line 372
    .line 373
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v21

    .line 377
    const-string v22, "general_ids"

    .line 378
    .line 379
    const-string v23, "front_info"

    .line 380
    .line 381
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 382
    .line 383
    .line 384
    move-result v9

    .line 385
    new-instance v4, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .line 389
    .line 390
    invoke-static {v15, v0, v1, v14}, Lcom/sgscq/vpn/handler/b1;->x0(ILjava/util/List;Ljava/util/Map;Ljava/util/Map;)I

    .line 391
    .line 392
    .line 393
    move-result v14

    .line 394
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    const-string v14, "v"

    .line 398
    .line 399
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    .line 403
    .line 404
    .line 405
    move-result v9

    .line 406
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    const-string v24, "coin"

    .line 414
    .line 415
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 416
    .line 417
    .line 418
    move-result-object v25

    .line 419
    const-string v26, "reward_info"

    .line 420
    .line 421
    new-instance v27, Ljava/util/ArrayList;

    .line 422
    .line 423
    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .line 425
    .line 426
    move-object/from16 v18, v20

    .line 427
    .line 428
    move-object/from16 v19, v21

    .line 429
    .line 430
    move-object/from16 v20, v22

    .line 431
    .line 432
    move-object/from16 v21, v8

    .line 433
    .line 434
    move-object/from16 v22, v23

    .line 435
    .line 436
    move-object/from16 v23, v4

    .line 437
    .line 438
    filled-new-array/range {v18 .. v27}, [Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    const-string v8, "id"

    .line 443
    .line 444
    invoke-static {v8, v7, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    :goto_2
    add-int/lit8 v13, v13, 0x1

    .line 452
    .line 453
    const/4 v4, 0x0

    .line 454
    const/4 v7, 0x3

    .line 455
    const/4 v8, 0x2

    .line 456
    const/4 v9, 0x5

    .line 457
    goto/16 :goto_0

    .line 458
    .line 459
    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    if-eqz v0, :cond_5

    .line 464
    .line 465
    :cond_4
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/b1;->Z(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 466
    .line 467
    .line 468
    move-result-object v10

    .line 469
    :cond_5
    const/4 v0, 0x7

    .line 470
    aput-object v10, v3, v0

    .line 471
    .line 472
    const/16 v0, 0x8

    .line 473
    .line 474
    const-string v4, "stronger_info"

    .line 475
    .line 476
    aput-object v4, v3, v0

    .line 477
    .line 478
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/b1;->l0(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    const/16 v4, 0x9

    .line 483
    .line 484
    aput-object v0, v3, v4

    .line 485
    .line 486
    const/16 v0, 0xa

    .line 487
    .line 488
    const-string v4, "box_info"

    .line 489
    .line 490
    aput-object v4, v3, v0

    .line 491
    .line 492
    new-instance v0, Ljava/util/ArrayList;

    .line 493
    .line 494
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 495
    .line 496
    .line 497
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/b1;->s(Ljava/util/Map;)I

    .line 498
    .line 499
    .line 500
    move-result v4

    .line 501
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/b1;->n(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 502
    .line 503
    .line 504
    move-result-object v7

    .line 505
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v5

    .line 509
    const/4 v8, 0x0

    .line 510
    invoke-static {v5, v8}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 511
    .line 512
    .line 513
    move-result v5

    .line 514
    const/4 v9, 0x5

    .line 515
    div-int/2addr v5, v9

    .line 516
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    .line 517
    .line 518
    .line 519
    move-result v5

    .line 520
    const/16 v9, 0x1d

    .line 521
    .line 522
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 523
    .line 524
    .line 525
    move-result v9

    .line 526
    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    .line 527
    .line 528
    .line 529
    move-result v5

    .line 530
    const/4 v9, 0x3

    .line 531
    mul-int/2addr v5, v9

    .line 532
    move v10, v8

    .line 533
    :goto_4
    const-string v11, "box_id"

    .line 534
    .line 535
    if-ge v10, v9, :cond_9

    .line 536
    .line 537
    add-int v12, v5, v10

    .line 538
    .line 539
    invoke-static {v12, v1}, Lcom/sgscq/vpn/handler/b1;->p0(ILjava/util/Map;)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v13

    .line 543
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    move-result v14

    .line 547
    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    .line 548
    .line 549
    .line 550
    move-result v12

    .line 551
    rem-int/2addr v12, v9

    .line 552
    sget-object v8, Lcom/sgscq/vpn/handler/b1;->c:[I

    .line 553
    .line 554
    aget v8, v8, v12

    .line 555
    .line 556
    if-lt v4, v8, :cond_6

    .line 557
    .line 558
    move v12, v6

    .line 559
    goto :goto_5

    .line 560
    :cond_6
    const/4 v12, 0x0

    .line 561
    :goto_5
    if-eqz v14, :cond_7

    .line 562
    .line 563
    move v12, v9

    .line 564
    goto :goto_6

    .line 565
    :cond_7
    if-eqz v12, :cond_8

    .line 566
    .line 567
    const/4 v12, 0x2

    .line 568
    goto :goto_6

    .line 569
    :cond_8
    move v12, v6

    .line 570
    :goto_6
    const-string v17, "box_condition"

    .line 571
    .line 572
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 573
    .line 574
    .line 575
    move-result-object v18

    .line 576
    const-string v19, "status"

    .line 577
    .line 578
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 579
    .line 580
    .line 581
    move-result-object v20

    .line 582
    const-string v21, "is_open"

    .line 583
    .line 584
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 585
    .line 586
    .line 587
    move-result-object v22

    .line 588
    filled-new-array/range {v17 .. v22}, [Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v8

    .line 592
    invoke-static {v11, v13, v8}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 593
    .line 594
    .line 595
    move-result-object v8

    .line 596
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    add-int/lit8 v10, v10, 0x1

    .line 600
    .line 601
    const/4 v8, 0x0

    .line 602
    goto :goto_4

    .line 603
    :cond_9
    const/16 v4, 0xb

    .line 604
    .line 605
    aput-object v0, v3, v4

    .line 606
    .line 607
    const/16 v0, 0xc

    .line 608
    .line 609
    aput-object v11, v3, v0

    .line 610
    .line 611
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/b1;->n(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    const/16 v4, 0xd

    .line 616
    .line 617
    aput-object v0, v3, v4

    .line 618
    .line 619
    const/16 v0, 0xe

    .line 620
    .line 621
    const-string v4, "box_integration"

    .line 622
    .line 623
    aput-object v4, v3, v0

    .line 624
    .line 625
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/b1;->s(Ljava/util/Map;)I

    .line 626
    .line 627
    .line 628
    move-result v0

    .line 629
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    const/16 v4, 0xf

    .line 634
    .line 635
    aput-object v0, v3, v4

    .line 636
    .line 637
    const/16 v0, 0x10

    .line 638
    .line 639
    const-string v4, "point_name"

    .line 640
    .line 641
    aput-object v4, v3, v0

    .line 642
    .line 643
    const/16 v0, 0x11

    .line 644
    .line 645
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/b1;->y0(Ljava/util/Map;)Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v4

    .line 649
    aput-object v4, v3, v0

    .line 650
    .line 651
    const/16 v0, 0x12

    .line 652
    .line 653
    const-string v4, "stage_name"

    .line 654
    .line 655
    aput-object v4, v3, v0

    .line 656
    .line 657
    const/16 v0, 0x13

    .line 658
    .line 659
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/b1;->y0(Ljava/util/Map;)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v4

    .line 663
    aput-object v4, v3, v0

    .line 664
    .line 665
    const/16 v0, 0x14

    .line 666
    .line 667
    const-string v4, "front_type"

    .line 668
    .line 669
    aput-object v4, v3, v0

    .line 670
    .line 671
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/b1;->o(Ljava/util/Map;)I

    .line 672
    .line 673
    .line 674
    move-result v0

    .line 675
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    const/16 v4, 0x15

    .line 680
    .line 681
    aput-object v0, v3, v4

    .line 682
    .line 683
    const/16 v0, 0x16

    .line 684
    .line 685
    const-string v4, "is_go_xiuluo"

    .line 686
    .line 687
    aput-object v4, v3, v0

    .line 688
    .line 689
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/b1;->g0(Ljava/util/Map;)Z

    .line 690
    .line 691
    .line 692
    move-result v0

    .line 693
    if-eqz v0, :cond_b

    .line 694
    .line 695
    const-string v0, "tower_xiuluo_ready"

    .line 696
    .line 697
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    const/4 v4, 0x0

    .line 702
    invoke-static {v0, v4}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 703
    .line 704
    .line 705
    move-result v0

    .line 706
    if-eqz v0, :cond_a

    .line 707
    .line 708
    move v8, v6

    .line 709
    goto :goto_7

    .line 710
    :cond_a
    const/4 v8, 0x0

    .line 711
    :goto_7
    if-eqz v8, :cond_b

    .line 712
    .line 713
    goto :goto_8

    .line 714
    :cond_b
    const/4 v6, 0x0

    .line 715
    :goto_8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    const/16 v4, 0x17

    .line 720
    .line 721
    aput-object v0, v3, v4

    .line 722
    .line 723
    const/16 v0, 0x18

    .line 724
    .line 725
    const-string v4, "is_in_xiuluo"

    .line 726
    .line 727
    aput-object v4, v3, v0

    .line 728
    .line 729
    const-string v0, "tower_is_in_xiuluo"

    .line 730
    .line 731
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    const/4 v1, 0x0

    .line 736
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 737
    .line 738
    .line 739
    move-result v0

    .line 740
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    const/16 v4, 0x19

    .line 745
    .line 746
    aput-object v0, v3, v4

    .line 747
    .line 748
    const/16 v0, 0x1a

    .line 749
    .line 750
    const-string v4, "xiuluo_add"

    .line 751
    .line 752
    aput-object v4, v3, v0

    .line 753
    .line 754
    new-instance v0, Ljava/util/ArrayList;

    .line 755
    .line 756
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .line 758
    .line 759
    new-array v1, v1, [Ljava/lang/Object;

    .line 760
    .line 761
    const-string v4, "add_list"

    .line 762
    .line 763
    invoke-static {v4, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 764
    .line 765
    .line 766
    move-result-object v0

    .line 767
    const/16 v1, 0x1b

    .line 768
    .line 769
    aput-object v0, v3, v1

    .line 770
    .line 771
    const-string v0, "is_start"

    .line 772
    .line 773
    invoke-static {v0, v2, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    return-object v0
.end method

.method public static m0()Ljava/util/LinkedHashMap;
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

.method public static n(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    const-string v0, "tower_claimed_box_ids"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_5

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method public static n0(Ljava/util/Map;)I
    .locals 5

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const-string v1, "team_position"

    .line 8
    .line 9
    const-string v2, "general_position"

    .line 10
    .line 11
    const-string v3, "position"

    .line 12
    .line 13
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    const/4 v4, 0x3

    .line 20
    if-ge v3, v4, :cond_2

    .line 21
    .line 22
    aget-object v4, v1, v3

    .line 23
    .line 24
    invoke-static {p0, v4, v2}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-lez v4, :cond_1

    .line 29
    .line 30
    return v4

    .line 31
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return v0
.end method

.method public static o(Ljava/util/Map;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/handler/b1;->U(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "genie_rank"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "gold_rank"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string v0, "silver_rank"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0
.end method

.method public static o0(Ljava/util/Map;)I
    .locals 2

    .line 1
    const-string v0, "tower_is_in_xiuluo"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x8

    return p0

    :cond_0
    invoke-static {p0}, Lcom/sgscq/vpn/handler/b1;->U(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "genie_rank"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    const-string v0, "gold_rank"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-string v0, "silver_rank"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static p(Ljava/util/LinkedHashMap;)[Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "cmn_modules"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array p0, v2, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static p0(ILjava/util/Map;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/sgscq/vpn/handler/b1;->U(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "genie_rank"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x64190

    goto :goto_0

    :cond_0
    const-string v0, "gold_rank"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x668a0

    goto :goto_0

    :cond_1
    const-string v0, "silver_rank"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x68fb0

    goto :goto_0

    :cond_2
    const p1, 0x6b6c0

    :goto_0
    add-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/util/Map;Ljava/util/Map;)I
    .locals 3

    .line 1
    const-string v0, "point_progress"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v1

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const-string v0, "total_integration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v1

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    const-string v0, "user_id"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static q0(Ljava/util/Map;IIZ)J
    .locals 4

    .line 1
    const/16 v0, 0x96

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    const-string v0, "tower_last_run_rank_board"

    .line 23
    .line 24
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/sgscq/vpn/handler/b1;->B0(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {p0}, Lcom/sgscq/vpn/handler/b1;->U(Ljava/util/Map;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    const-string v2, "genie_rank"

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    const/4 v0, 0x0

    .line 49
    if-eqz p3, :cond_2

    .line 50
    .line 51
    const-string p3, "tower_last_run_is_in_xiuluo"

    .line 52
    .line 53
    invoke-interface {p0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0, v0}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const-string p3, "tower_is_in_xiuluo"

    .line 71
    .line 72
    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0, v0}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_3

    .line 81
    .line 82
    :goto_1
    move v0, v1

    .line 83
    :cond_3
    if-eqz v0, :cond_4

    .line 84
    .line 85
    const/16 p1, 0x21c0

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    sget-object p0, Lcom/sgscq/vpn/handler/b1;->d:[I

    .line 89
    .line 90
    add-int/lit8 p1, p1, -0x1

    .line 91
    .line 92
    aget p1, p0, p1

    .line 93
    .line 94
    :goto_2
    const-wide/16 v2, 0x393

    .line 95
    .line 96
    int-to-long p0, p1

    .line 97
    mul-long/2addr p0, v2

    .line 98
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    int-to-long p2, p2

    .line 103
    mul-long/2addr p0, p2

    .line 104
    return-wide p0
.end method

.method public static r(Ljava/util/Map;)V
    .locals 5

    .line 1
    const-string v0, "tower_daily_fight_times"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v3, 0x1

    .line 17
    add-int/2addr v1, v3

    .line 18
    const/4 v4, 0x3

    .line 19
    if-le v1, v4, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const-string v0, "tower_total_challenge_times"

    .line 30
    .line 31
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    int-to-long v1, v1

    .line 40
    int-to-long v3, v3

    .line 41
    add-long/2addr v1, v3

    .line 42
    const-wide/32 v3, 0x7fffffff

    .line 43
    .line 44
    .line 45
    cmp-long v3, v1, v3

    .line 46
    .line 47
    if-lez v3, :cond_1

    .line 48
    .line 49
    const v1, 0x7fffffff

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    long-to-int v1, v1

    .line 54
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public static r0(J)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "Asia/Shanghai"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, p0

    const/4 p0, 0x5

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%04d%02d%02d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/util/Map;)I
    .locals 3

    .line 1
    const-string v0, "tower_board_integration"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    const-string v0, "tower_fight_times"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v1, "tower_total_integration"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-lez v0, :cond_1

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_1

    return v2

    :cond_1
    sget-object v0, Lcom/sgscq/vpn/handler/b1;->c:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    rem-int v1, p0, v0

    if-nez v1, :cond_2

    if-lez p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public static s0(ILjava/util/List;Ljava/util/Map;Ljava/util/Map;)I
    .locals 8

    .line 1
    const-string v0, "id"

    const-string v1, "1"

    invoke-static {v0, v1, p2}, Lcom/sgscq/vpn/handler/b1;->k0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "other_id"

    invoke-static {v1, v0, p2}, Lcom/sgscq/vpn/handler/b1;->k0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    invoke-static {p2, v0}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    if-gt v1, v2, :cond_0

    sub-int/2addr v1, v3

    invoke-static {v1}, Lcom/sgscq/vpn/handler/b1;->t0(I)I

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, p1}, Lcom/sgscq/vpn/handler/c1;->g(ILjava/util/List;)Ljava/util/List;

    move-result-object v4

    move v5, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-static {v6}, Lcom/sgscq/vpn/handler/c1;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v5}, Lcom/sgscq/vpn/handler/b1;->t0(I)I

    move-result p0

    return p0

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {p3}, Lcom/sgscq/vpn/handler/c1;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Lcom/sgscq/vpn/handler/b1;->t0(I)I

    move-result p0

    return p0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    const-string p3, "team_"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    const/4 p3, 0x5

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result p2

    sub-int/2addr p2, v3

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr p2, p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->floorMod(II)I

    move-result p0

    if-ltz p0, :cond_4

    if-ge p0, v2, :cond_4

    invoke-static {p0}, Lcom/sgscq/vpn/handler/b1;->t0(I)I

    move-result p0

    return p0

    :cond_4
    return v1
.end method

.method public static t(Ljava/util/Map;)I
    .locals 11

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/handler/b1;->U(Ljava/util/Map;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "genie_rank"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x2

    .line 12
    const/4 v3, 0x3

    .line 13
    const/4 v4, 0x4

    .line 14
    const/4 v5, 0x1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    move v0, v4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v1, "gold_rank"

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    move v0, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string v1, "silver_rank"

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    move v0, v2

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move v0, v5

    .line 40
    :goto_0
    if-ne v0, v4, :cond_3

    .line 41
    .line 42
    const/16 v1, 0x1e

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    if-ne v0, v3, :cond_4

    .line 46
    .line 47
    const/16 v1, 0x19

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_4
    if-ne v0, v2, :cond_5

    .line 51
    .line 52
    const/16 v1, 0x14

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_5
    const/16 v1, 0xf

    .line 56
    .line 57
    :goto_1
    const/4 v2, 0x0

    .line 58
    invoke-static {p0, v2}, Lcom/sgscq/vpn/handler/b1;->P(Ljava/util/Map;Z)Ljava/util/LinkedHashMap;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-static {v0, v1, v3}, Lcom/sgscq/vpn/handler/b1;->W(IILcom/sgscq/vpn/p7;)Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const/16 v3, 0x15

    .line 68
    .line 69
    :goto_2
    const/16 v4, 0x28

    .line 70
    .line 71
    if-gt v3, v4, :cond_6

    .line 72
    .line 73
    add-int/lit8 v6, v0, -0x1

    .line 74
    .line 75
    mul-int/2addr v6, v4

    .line 76
    add-int/2addr v6, v3

    .line 77
    sget-object v4, Lcom/sgscq/vpn/handler/p0;->a:[Ljava/lang/String;

    .line 78
    .line 79
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 80
    .line 81
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    invoke-static {v6}, Lcom/sgscq/vpn/handler/p0;->U(I)Lcom/sgscq/vpn/config/e;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-static {v6, v2, v7}, Lcom/sgscq/vpn/handler/p0;->s(IILcom/sgscq/vpn/config/e;)Ljava/util/LinkedHashMap;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-direct {v4, v6}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 94
    .line 95
    .line 96
    const-string v6, "user_id"

    .line 97
    .line 98
    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    rsub-int/lit8 v8, v3, 0x29

    .line 107
    .line 108
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    const-string v9, "point_progress"

    .line 113
    .line 114
    const-string v10, "total_integration"

    .line 115
    .line 116
    filled-new-array {v9, v7, v10, v8}, [Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    invoke-static {v6, v4, v7}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    add-int/lit8 v3, v3, 0x1

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_8

    .line 139
    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Ljava/util/Map;

    .line 145
    .line 146
    invoke-static {v1, p0}, Lcom/sgscq/vpn/handler/b1;->q(Ljava/util/Map;Ljava/util/Map;)I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-gez v1, :cond_7

    .line 151
    .line 152
    add-int/lit8 v5, v5, 0x1

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_8
    return v5
.end method

.method public static t0(I)I
    .locals 1

    .line 1
    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/sgscq/vpn/handler/b1;->g:[I

    aget p0, v0, p0

    return p0

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static u(Ljava/util/Map;)I
    .locals 4

    .line 1
    const-string v0, "tower_daily_max_total_integration"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/b1;->r0(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/sgscq/vpn/handler/b1;->a0(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "tower_total_integration"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    const-string v3, "tower_last_run_day"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sgscq/vpn/handler/b1;->C0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "tower_last_run_total_integration"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    return v0
.end method

.method public static u0(Ljava/util/Map;)I
    .locals 1

    .line 1
    const-string v0, "tower_point_progress"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x96

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static v([III)I
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    array-length p2, p0

    sub-int/2addr p2, v1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    aget p0, p0, p1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static v0(ILjava/util/List;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    invoke-static {p2}, Lcom/sgscq/vpn/handler/c1;->a(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const-string v2, "enemy_count"

    .line 17
    .line 18
    const-string v3, "enemy_available_count"

    .line 19
    .line 20
    const-string v4, "battle_count"

    .line 21
    .line 22
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    move v4, v3

    .line 30
    :goto_0
    const/4 v5, 0x3

    .line 31
    if-ge v4, v5, :cond_2

    .line 32
    .line 33
    aget-object v5, v2, v4

    .line 34
    .line 35
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-static {v5, v3}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-lez v5, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move v5, v3

    .line 50
    :goto_1
    const/4 p2, 0x1

    .line 51
    if-lez v5, :cond_3

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    invoke-static {p1}, Lcom/sgscq/vpn/handler/b1;->A0(Ljava/util/List;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    sget-object v2, Lcom/sgscq/vpn/handler/b1;->f:[I

    .line 61
    .line 62
    invoke-static {v2, p0, v1}, Lcom/sgscq/vpn/handler/b1;->v([III)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    goto :goto_2

    .line 67
    :cond_4
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    :goto_2
    invoke-static {p2, v5}, Ljava/lang/Math;->max(II)I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p0, :cond_5

    .line 76
    .line 77
    invoke-static {p1}, Lcom/sgscq/vpn/handler/b1;->A0(Ljava/util/List;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-nez p0, :cond_6

    .line 82
    .line 83
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    :cond_6
    new-instance p0, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    :goto_3
    if-ge v3, p2, :cond_7

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    rem-int p1, v3, p1

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    add-int/lit8 v3, v3, 0x1

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_7
    return-object p0
.end method

.method public static w(Ljava/util/Map;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "general_skin"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "0"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    const-string v2, "null"

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 41
    :cond_2
    if-eqz v0, :cond_3

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 45
    .line 46
    const-string v2, "TeamGeneral"

    .line 47
    .line 48
    invoke-static {v2, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Lc/n;

    .line 56
    .line 57
    const/16 v3, 0x8

    .line 58
    .line 59
    invoke-direct {v2, v3}, Lc/n;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    const-string v3, "112001"

    .line 74
    .line 75
    if-eqz v2, :cond_5

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Ljava/util/Map;

    .line 82
    .line 83
    const-string v4, "general_pk_id"

    .line 84
    .line 85
    const-string v5, ""

    .line 86
    .line 87
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v2, p0}, Lcom/sgscq/vpn/handler/b1;->C(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    if-eqz v2, :cond_4

    .line 100
    .line 101
    const-string p0, "id"

    .line 102
    .line 103
    const-string v0, "general_id"

    .line 104
    .line 105
    invoke-static {v2, p0, v3, v0}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0

    .line 110
    :cond_5
    const-string v0, "first_choose_general"

    .line 111
    .line 112
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    if-eqz p0, :cond_6

    .line 117
    .line 118
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_6

    .line 127
    .line 128
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_6

    .line 137
    .line 138
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0

    .line 143
    :cond_6
    return-object v3
.end method

.method public static w0(ILjava/util/Map;)I
    .locals 8

    .line 1
    new-instance v0, Ljava/util/Random;

    add-int/lit8 p0, p0, 0x1

    int-to-long v1, p0

    const-wide/16 v3, 0x1eef

    mul-long/2addr v1, v3

    const-string p0, "tower_total_integration"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result p0

    int-to-long v4, p0

    const-wide/16 v6, 0xdf3

    mul-long/2addr v4, v6

    add-long/2addr v4, v1

    const-string p0, "tower_point_progress"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result p0

    int-to-long p0, p0

    const-wide/16 v1, 0x607

    mul-long/2addr p0, v1

    add-long/2addr p0, v4

    invoke-direct {v0, p0, p1}, Ljava/util/Random;-><init>(J)V

    const/16 p0, 0x64

    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    return p0
.end method

.method public static x(Ljava/util/Random;)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/sgscq/vpn/w1;->h0()Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Lcom/sgscq/vpn/w1;->z0(Ljava/lang/String;)Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    const-string v5, "grade"

    .line 38
    .line 39
    const-string v6, "1"

    .line 40
    .line 41
    invoke-static {v4, v5, v6}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    :try_start_0
    const-string v5, "effect_value"

    .line 49
    .line 50
    const-string v6, "0"

    .line 51
    .line 52
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 61
    .line 62
    .line 63
    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    const-wide v6, 0x4060e00000000000L    # 135.0

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    cmpl-double v6, v4, v6

    .line 70
    .line 71
    if-ltz v6, :cond_0

    .line 72
    .line 73
    const-wide v6, 0x4062c00000000000L    # 150.0

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    cmpg-double v4, v4, v6

    .line 79
    .line 80
    if-gtz v4, :cond_0

    .line 81
    .line 82
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_3

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    check-cast p0, Ljava/lang/String;

    .line 108
    .line 109
    return-object p0

    .line 110
    :cond_3
    const-string p0, "211002"

    .line 111
    .line 112
    return-object p0
.end method

.method public static x0(ILjava/util/List;Ljava/util/Map;Ljava/util/Map;)I
    .locals 4

    .line 1
    const-string v0, "ally_count"

    .line 2
    .line 3
    const-string v1, "player_count"

    .line 4
    .line 5
    const-string v2, "player_available_count"

    .line 6
    .line 7
    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    move v2, v1

    .line 15
    :goto_0
    const/4 v3, 0x3

    .line 16
    if-ge v2, v3, :cond_1

    .line 17
    .line 18
    aget-object v3, v0, v2

    .line 19
    .line 20
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v3, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-lez v3, :cond_0

    .line 29
    .line 30
    move v1, v3

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    if-lez v1, :cond_2

    .line 36
    .line 37
    return v1

    .line 38
    :cond_2
    invoke-static {p1}, Lcom/sgscq/vpn/handler/b1;->A0(Ljava/util/List;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 p3, 0x1

    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    sget-object p1, Lcom/sgscq/vpn/handler/b1;->e:[I

    .line 46
    .line 47
    invoke-static {p2}, Lcom/sgscq/vpn/handler/b1;->Q(Ljava/util/Map;)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    invoke-static {p1, p0, p2}, Lcom/sgscq/vpn/handler/b1;->v([III)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    :cond_3
    invoke-static {p2}, Lcom/sgscq/vpn/handler/b1;->Q(Ljava/util/Map;)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    return p0
.end method

.method public static y(ILjava/util/List;Ljava/util/Map;)I
    .locals 1

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sgscq/vpn/handler/b1;->d0(ILjava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/sgscq/vpn/handler/b1;->s0(ILjava/util/List;Ljava/util/Map;Ljava/util/Map;)I

    move-result p0

    invoke-static {p0, p1, v0}, Lcom/sgscq/vpn/handler/b1;->v0(ILjava/util/List;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static y0(Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "tower_point_progress"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result p0

    const/4 v0, 0x1

    add-int/2addr p0, v0

    const/16 v1, 0x96

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "point_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "01"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static z()Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "item_id"

    const-string v2, "230001"

    const-string v3, "discount_gold_soul"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "discount_silver_soul"

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "pk_id"

    const-string v3, "1"

    invoke-static {v2, v3, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static z0(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "791491"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "600004"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "600005"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "600006"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x4

    return p0
.end method


# virtual methods
.method public final F(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 159

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_0

    const-string v3, "tower."

    .line 1
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-nez v3, :cond_1

    return-object v4

    .line 2
    :cond_1
    iget-object v3, v0, Lcom/sgscq/vpn/handler/b1;->a:Lcom/sgscq/vpn/handler/k0;

    invoke-virtual {v3, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    iget-object v6, v3, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-virtual {v6, v4}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_2
    :try_start_0
    const-string v8, "surrenders.json"

    .line 3
    invoke-static {v5, v8}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 4
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    new-instance v9, Lcom/sgscq/vpn/handler/TowerHandler$1;

    invoke-direct {v9}, Lcom/sgscq/vpn/handler/TowerHandler$1;-><init>()V

    invoke-virtual {v9}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    new-instance v10, La/o;

    invoke-direct {v10}, La/o;-><init>()V

    invoke-virtual {v10, v8, v9}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_4
    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    :goto_2
    move-object v15, v8

    .line 5
    invoke-static {v15, v7}, Lcom/sgscq/vpn/handler/b1;->f0(Ljava/util/List;Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;

    move-result-object v14

    invoke-virtual {v6, v4, v7}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    const-string v8, "tower.towerExchangeList"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v13, "type"

    const-string v11, "tower.towerFightPass"

    const-string v12, "tower.towerFight"

    const-string v9, "equipment_info"

    const-string v10, "surrender_changed_atlas"

    move-object/from16 v16, v15

    const-string v15, "surrender_changed_equipment_pieces"

    move-object/from16 v17, v15

    const-string v15, "EquipmentPiece"

    move-object/from16 v18, v15

    const-string v15, "surrender_changed_equipment"

    move-object/from16 v19, v15

    const-string v15, "surrender_changed_souls"

    move-object/from16 v20, v15

    const-string v15, "surrender_changed_items"

    move-object/from16 v21, v15

    const-string v15, "Item"

    move-object/from16 v22, v15

    const-string v15, "surrender_changed_skills"

    move-object/from16 v23, v15

    const-string v15, "surrender_changed_generals"

    move-object/from16 v24, v15

    const-string v15, "pk_id"

    move-object/from16 v25, v11

    const-string v11, "Equipment"

    move-object/from16 v26, v10

    const-string v10, "return_info"

    if-eqz v8, :cond_6

    .line 6
    invoke-static {}, Lcom/sgscq/vpn/handler/b1;->m0()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-static {}, Lcom/sgscq/vpn/handler/b1;->z()Ljava/util/ArrayList;

    move-result-object v8

    move-object/from16 v27, v12

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v8, v12}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v8

    invoke-interface {v2, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v29, v3

    move-object/from16 v28, v5

    move-object v5, v10

    move-object/from16 v144, v13

    move-object/from16 v145, v14

    move-object/from16 v156, v15

    move-object/from16 v148, v17

    move-object/from16 v13, v18

    move-object/from16 v150, v19

    move-object/from16 v151, v20

    move-object/from16 v152, v21

    move-object/from16 v8, v23

    move-object/from16 v0, v25

    move-object/from16 v157, v26

    move-object/from16 v143, v27

    move-object v10, v1

    move-object v1, v4

    move-object v15, v6

    move-object v14, v11

    move-object/from16 v11, v22

    :goto_3
    move-object/from16 v6, v24

    goto/16 :goto_3a

    :cond_6
    move-object/from16 v27, v12

    const-string v8, "tower.towerExchange"

    .line 7
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v12, "\u79ef\u5206\u4e0d\u8db3"

    move-object/from16 v28, v5

    const-string v5, "tower_having_integration"

    const-string v1, "1"

    move-object/from16 v29, v3

    const-string v3, "id"

    if-eqz v8, :cond_10

    .line 8
    invoke-static {v3, v1, v2}, Lcom/sgscq/vpn/handler/b1;->k0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1, v2}, Lcom/sgscq/vpn/handler/b1;->k0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sgscq/vpn/handler/b1;->z()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 9
    invoke-static {v3, v15, v1}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v1, 0x0

    goto :goto_4

    .line 10
    :cond_8
    invoke-static {}, Lcom/sgscq/vpn/handler/b1;->z()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/Map;

    move v1, v2

    :goto_4
    const-string v2, "discount_silver_soul"

    .line 11
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v2

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v1

    const-string v8, "changed_equipment_ids"

    if-ge v1, v2, :cond_9

    invoke-static {v12}, Lcom/sgscq/vpn/handler/b1;->A(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    goto :goto_5

    :cond_9
    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "item_id"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/sgscq/vpn/handler/b1;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-static {}, Lcom/sgscq/vpn/handler/b1;->m0()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-static {}, Lcom/sgscq/vpn/handler/b1;->z()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v9, v3, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v16, "id"

    const-string v5, "equipment_id"

    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    const-string v18, "num"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v20, "pk_id"

    invoke-virtual {v1, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    filled-new-array/range {v16 .. v21}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v13, v3, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "add_list"

    .line 13
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v15, v1, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cmn_modules"

    invoke-interface {v2, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 16
    :goto_5
    invoke-virtual {v6, v4, v7}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v14, v1}, Lcom/sgscq/vpn/handler/b1;->e(Lcom/sgscq/vpn/handler/j;Ljava/util/LinkedHashMap;)V

    .line 17
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v7}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/util/List;

    if-nez v6, :cond_a

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_8

    :cond_a
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/util/Map;

    if-eqz v9, :cond_c

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b

    goto :goto_7

    :cond_c
    if-eqz v8, :cond_b

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b

    :goto_7
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    move-object v5, v6

    .line 19
    :goto_8
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v11, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/sgscq/vpn/handler/b1;->B(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "upd"

    const-string v8, "add"

    filled-new-array {v7, v3, v8, v6}, [Ljava/lang/Object;

    move-result-object v3

    const-string v6, "del"

    invoke-static {v6, v5, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v2, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v14, v3}, Lcom/sgscq/vpn/handler/b1;->f(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Lcom/sgscq/vpn/handler/j;[Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sgscq/vpn/handler/b1;->p(Ljava/util/LinkedHashMap;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v3}, Lcom/sgscq/vpn/handler/b1;->k(Ljava/lang/String;Ljava/util/LinkedHashMap;[Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v3, "cmn"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v9, v29

    invoke-virtual {v9, v1}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1

    :cond_10
    move-object/from16 v9, v29

    const-string v8, "tower.towerFightBefore"

    move-object v9, v1

    move-object/from16 v1, p1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    move-object/from16 v30, v11

    const-string v11, "tower_fight_times"

    move-object/from16 v31, v12

    const-string v12, "tower_point_progress"

    move-object/from16 v32, v13

    const-string v13, "tower_run_ended"

    move-object/from16 v33, v14

    const/16 v14, 0x96

    if-eqz v8, :cond_15

    invoke-static/range {v28 .. v28}, Lcom/sgscq/vpn/handler/c1;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 21
    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->I(Ljava/util/Map;)Z

    move-result v3

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/sgscq/vpn/handler/b1;->f0(Ljava/util/List;Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;

    if-eqz v3, :cond_12

    .line 23
    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->I(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_a

    :cond_11
    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->X(Ljava/util/Map;)V

    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->g(Ljava/util/Map;)V

    const/4 v3, 0x0

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_12
    :goto_a
    invoke-static {}, Lcom/sgscq/vpn/handler/b1;->m0()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-static {v2, v7}, Lcom/sgscq/vpn/handler/b1;->m(Ljava/util/List;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v3, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, "leftTimes"

    const/4 v9, 0x0

    aput-object v8, v5, v9

    .line 26
    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->I(Ljava/util/Map;)Z

    move-result v8

    if-eqz v8, :cond_13

    const/4 v9, 0x5

    goto :goto_b

    :cond_13
    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v9}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v8

    if-lt v8, v14, :cond_14

    goto :goto_b

    :cond_14
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v9}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v8

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    rem-int/lit8 v8, v8, 0x5

    rsub-int/lit8 v9, v8, 0x5

    .line 27
    :goto_b
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v5, v9

    const-string v8, "canFight"

    invoke-static {v8, v2, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v5, "fight_before_info"

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    move-object v5, v10

    move-object/from16 v156, v15

    move-object/from16 v148, v17

    move-object/from16 v13, v18

    move-object/from16 v150, v19

    move-object/from16 v151, v20

    move-object/from16 v152, v21

    move-object/from16 v11, v22

    move-object/from16 v8, v23

    move-object/from16 v0, v25

    move-object/from16 v157, v26

    move-object/from16 v143, v27

    move-object/from16 v14, v30

    move-object/from16 v144, v32

    move-object/from16 v145, v33

    move-object v10, v1

    move-object v1, v4

    move-object v15, v6

    goto/16 :goto_3

    :cond_15
    move-object/from16 v14, v27

    .line 28
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4f

    invoke-static/range {v28 .. v28}, Lcom/sgscq/vpn/handler/c1;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    move-object/from16 v27, v10

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-static {v10, v7}, Lcom/sgscq/vpn/handler/b1;->f0(Ljava/util/List;Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;

    .line 30
    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->I(Ljava/util/Map;)Z

    move-result v10

    if-nez v10, :cond_16

    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->G(Ljava/util/Map;)Z

    move-result v10

    if-eqz v10, :cond_16

    move-object/from16 v34, v14

    goto :goto_c

    :cond_16
    const-string v10, "tower_daily_fight_times"

    .line 31
    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v34, v14

    const/4 v14, 0x0

    invoke-static {v10, v14}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v10

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    rsub-int/lit8 v10, v10, 0x3

    .line 32
    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-gtz v10, :cond_17

    goto :goto_d

    .line 33
    :cond_17
    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->X(Ljava/util/Map;)V

    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->g(Ljava/util/Map;)V

    .line 34
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :goto_c
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    move-result-wide v35

    invoke-static/range {v35 .. v36}, Lcom/sgscq/vpn/handler/b1;->r0(J)Ljava/lang/String;

    move-result-object v10

    const-string v14, "tower_run_day"

    invoke-interface {v7, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "tower_run_start_time"

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lcom/sgscq/vpn/handler/b1;->c0(Ljava/lang/Object;)J

    move-result-wide v35

    const-wide/16 v37, 0x0

    cmp-long v14, v35, v37

    if-gtz v14, :cond_18

    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v35

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v7, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    const-string v10, "tower_run_rank_board"

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lcom/sgscq/vpn/handler/b1;->B0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_19

    const-string v14, "user_level"

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    const/4 v0, 0x1

    invoke-static {v14, v0}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v0

    invoke-static {v0}, Lcom/sgscq/vpn/handler/b1;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    const/4 v14, 0x1

    :goto_d
    if-nez v14, :cond_1a

    const-string v0, "\u4eca\u65e5\u6311\u6218\u6b21\u6570\u5df2\u7528\u5b8c"

    .line 36
    invoke-static {v0}, Lcom/sgscq/vpn/handler/b1;->A(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object v2, v0

    move-object/from16 v35, v4

    move-object/from16 v36, v6

    move-object/from16 v156, v15

    move-object/from16 v15, v17

    move-object/from16 v3, v18

    move-object/from16 v13, v19

    move-object/from16 v12, v20

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    move-object/from16 v8, v23

    move-object/from16 v6, v24

    move-object/from16 v4, v26

    move-object/from16 v5, v27

    move-object/from16 v14, v30

    move-object/from16 v144, v32

    move-object/from16 v145, v33

    move-object/from16 v143, v34

    goto/16 :goto_31

    :cond_1a
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v10, 0x0

    invoke-static {v0, v10}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v0

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14, v10}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v14

    const-string v1, "tower_max_point_progress"

    move-object/from16 v35, v4

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v10}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v4

    move-object/from16 v36, v6

    const-string v6, "tower_total_integration"

    move-object/from16 v37, v13

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v10}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v13

    move-object/from16 v31, v6

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v10}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v6

    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->s(Ljava/util/Map;)I

    move-result v10

    move-object/from16 v38, v5

    const-string v5, "tower_pending_stronger_batch"

    move/from16 v39, v6

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v40, v5

    const/4 v5, 0x0

    invoke-static {v6, v5}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    add-int/lit8 v5, v14, 0x1

    add-int/lit8 v6, v0, 0x1

    move/from16 v41, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "General"

    if-eqz v8, :cond_39

    .line 37
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v42

    if-eqz v42, :cond_1b

    goto/16 :goto_22

    :cond_1b
    invoke-static {v3, v9, v2}, Lcom/sgscq/vpn/handler/b1;->k0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    move/from16 v42, v6

    const-string v6, "other_id"

    invoke-static {v6, v9, v2}, Lcom/sgscq/vpn/handler/b1;->k0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v43, v1

    const/4 v1, 0x0

    invoke-static {v9, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v8, v2}, Lcom/sgscq/vpn/handler/b1;->d0(ILjava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v1, v8, v2, v9}, Lcom/sgscq/vpn/handler/b1;->s0(ILjava/util/List;Ljava/util/Map;Ljava/util/Map;)I

    move-result v1

    invoke-static {v1, v8, v9}, Lcom/sgscq/vpn/handler/b1;->v0(ILjava/util/List;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v45

    if-eqz v45, :cond_1c

    invoke-static {}, Lcom/sgscq/vpn/handler/b1;->i0()Ljava/util/LinkedHashMap;

    move-result-object v47

    .line 38
    new-instance v1, Lcom/sgscq/vpn/handler/a1;

    const/16 v48, 0x1

    const/16 v49, 0x1

    const/16 v50, 0x1

    const/16 v51, 0x1

    move-object/from16 v46, v1

    invoke-direct/range {v46 .. v51}, Lcom/sgscq/vpn/handler/a1;-><init>(Ljava/util/Map;ZIII)V

    move-object/from16 v47, v0

    move/from16 v45, v4

    move/from16 v52, v5

    move-object/from16 v66, v8

    move/from16 v48, v10

    move-object/from16 v50, v11

    move-object/from16 v57, v12

    move/from16 v49, v13

    move/from16 v53, v14

    move-object/from16 v51, v15

    goto/16 :goto_23

    :cond_1c
    move/from16 v45, v4

    .line 39
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v46

    move-object/from16 v47, v0

    const-string v0, "general_pk_id"

    move/from16 v48, v10

    const-string v10, ""

    if-eqz v46, :cond_26

    .line 40
    invoke-interface/range {v46 .. v46}, Ljava/util/List;->isEmpty()Z

    move-result v49

    if-eqz v49, :cond_1d

    goto/16 :goto_13

    :cond_1d
    move/from16 v49, v13

    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface/range {v46 .. v46}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v50

    :goto_e
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    move/from16 v52, v5

    const-string v5, "bound_lieutenants"

    if-eqz v51, :cond_21

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    move/from16 v53, v14

    move-object/from16 v14, v51

    check-cast v14, Ljava/util/Map;

    if-nez v14, :cond_1e

    goto :goto_f

    :cond_1e
    invoke-interface {v14, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v14, v0, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v14, v15, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v51

    if-nez v51, :cond_1f

    move-object/from16 v51, v15

    const-string v15, "null"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_20

    invoke-interface {v13, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_1f
    :goto_f
    move-object/from16 v51, v15

    :cond_20
    :goto_10
    move-object/from16 v15, v51

    move/from16 v5, v52

    move/from16 v14, v53

    goto :goto_e

    :cond_21
    move/from16 v53, v14

    move-object/from16 v51, v15

    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_22

    goto :goto_14

    :cond_22
    invoke-interface/range {v46 .. v46}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_11
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_27

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    if-nez v15, :cond_23

    goto :goto_11

    :cond_23
    move-object/from16 v46, v14

    const-string v14, "major_pk_id"

    invoke-interface {v15, v14, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    if-nez v14, :cond_24

    move-object/from16 v14, v46

    goto :goto_11

    :cond_24
    move-object/from16 v50, v13

    invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    instance-of v2, v13, Ljava/util/List;

    if-eqz v2, :cond_25

    check-cast v13, Ljava/util/List;

    goto :goto_12

    :cond_25
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :goto_12
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v14, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p2

    move-object/from16 v14, v46

    move-object/from16 v13, v50

    goto :goto_11

    :cond_26
    :goto_13
    move/from16 v52, v5

    move/from16 v49, v13

    move/from16 v53, v14

    move-object/from16 v51, v15

    .line 41
    :cond_27
    :goto_14
    new-instance v2, Ljava/util/ArrayList;

    const-string v5, "TeamGeneral"

    invoke-static {v5, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Lc/n;

    const/4 v13, 0x7

    invoke-direct {v5, v13}, Lc/n;-><init>(I)V

    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v5, "tower_hp_percent"

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v13, 0x0

    invoke-static {v5, v13}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v5

    int-to-double v14, v5

    const-string v5, "tower_attack_percent"

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v13}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v5

    move-wide/from16 v54, v14

    int-to-double v13, v5

    const-string v5, "tower_defense_percent"

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v15, 0x0

    invoke-static {v5, v15}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v5

    move-object/from16 v46, v6

    int-to-double v5, v5

    move-object/from16 v50, v11

    const-string v11, "tower_wisdom_percent"

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v15}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v11

    move-object v15, v12

    int-to-double v11, v11

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    move-object/from16 v57, v15

    const-string v15, "general_id"

    move/from16 v58, v1

    const-string v1, "user_nickname"

    move-object/from16 v59, v8

    const-string v8, "\u73a9\u5bb6"

    if-eqz v56, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v56

    move-object/from16 v60, v2

    move-object/from16 v2, v56

    check-cast v2, Ljava/util/Map;

    move-object/from16 v56, v9

    invoke-static {v2}, Lcom/sgscq/vpn/handler/b1;->n0(Ljava/util/Map;)I

    move-result v9

    move-wide/from16 v61, v11

    const/4 v11, 0x1

    if-lt v9, v11, :cond_2a

    const v11, 0x7fffffff

    if-ne v9, v11, :cond_28

    goto :goto_16

    :cond_28
    invoke-interface {v2, v0, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/sgscq/vpn/handler/b1;->C(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_29

    goto :goto_16

    :cond_29
    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->w(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v15, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    const-string v12, "general_name"

    invoke-interface {v7, v1, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v12, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    .line 42
    invoke-static {v8, v11, v9}, Lcom/sgscq/vpn/handler/f;->h(IILjava/lang/String;)Lcom/sgscq/vpn/handler/e;

    move-result-object v8

    .line 43
    iput-object v2, v8, Lcom/sgscq/vpn/handler/e;->d:Ljava/util/Map;

    .line 44
    iput-object v7, v8, Lcom/sgscq/vpn/handler/e;->e:Ljava/util/Map;

    .line 45
    iput-object v1, v8, Lcom/sgscq/vpn/handler/e;->g:Ljava/lang/String;

    const-wide v64, 0x4072c00000000000L    # 300.0

    const-wide/high16 v66, 0x4059000000000000L    # 100.0

    const-wide/high16 v68, 0x4059000000000000L    # 100.0

    move-object/from16 v63, v8

    .line 46
    invoke-virtual/range {v63 .. v69}, Lcom/sgscq/vpn/handler/e;->a(DDD)V

    move-wide/from16 v11, v54

    .line 47
    iput-wide v11, v8, Lcom/sgscq/vpn/handler/e;->s:D

    iput-wide v13, v8, Lcom/sgscq/vpn/handler/e;->t:D

    iput-wide v5, v8, Lcom/sgscq/vpn/handler/e;->u:D

    move-wide/from16 v1, v61

    iput-wide v1, v8, Lcom/sgscq/vpn/handler/e;->v:D

    .line 48
    invoke-static {v8}, Lcom/sgscq/vpn/handler/f;->a(Lcom/sgscq/vpn/handler/e;)Lcom/sgscq/vpn/battle/BattleUnit;

    move-result-object v8

    .line 49
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2a
    :goto_16
    move-wide/from16 v11, v54

    move-wide/from16 v1, v61

    :goto_17
    move-wide/from16 v54, v11

    move-object/from16 v9, v56

    move-object/from16 v15, v57

    move-object/from16 v8, v59

    move-wide v11, v1

    move/from16 v1, v58

    move-object/from16 v2, v60

    goto/16 :goto_15

    :cond_2b
    move-object/from16 v56, v9

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->w(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v1, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v5, v5, v0, v2, v3}, Lcom/sgscq/vpn/handler/b1;->K(IILjava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Lcom/sgscq/vpn/battle/BattleUnit;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_2c
    const/4 v5, 0x0

    :goto_18
    move-object/from16 v2, v56

    move/from16 v3, v58

    move-object/from16 v0, v59

    .line 50
    invoke-static {v3, v0, v7, v2}, Lcom/sgscq/vpn/handler/b1;->x0(ILjava/util/List;Ljava/util/Map;Ljava/util/Map;)I

    move-result v3

    const/4 v6, 0x1

    .line 51
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v6, v3, :cond_2d

    goto :goto_19

    :cond_2d
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v4, v6

    :goto_19
    const/4 v3, 0x0

    .line 52
    invoke-static {v3}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->u0(Ljava/util/Map;)I

    move-result v6

    .line 53
    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->u0(Ljava/util/Map;)I

    move-result v9

    const/16 v10, 0x96

    .line 54
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x1

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-double v9, v9

    const-wide v11, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    add-double/2addr v9, v11

    .line 55
    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->o0(Ljava/util/Map;)I

    move-result v13

    int-to-double v13, v13

    mul-double/2addr v9, v13

    const/16 v13, 0x96

    if-ne v6, v13, :cond_2e

    const/16 v14, 0x95

    goto :goto_1a

    :cond_2e
    move v14, v6

    .line 56
    :goto_1a
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/4 v11, 0x1

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-double v11, v11

    const-wide v58, 0x3fc999999999999aL    # 0.2

    mul-double v11, v11, v58

    const-wide/high16 v54, 0x3ff0000000000000L    # 1.0

    add-double v11, v11, v54

    .line 57
    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->o0(Ljava/util/Map;)I

    move-result v13

    move-object/from16 v66, v0

    move-object/from16 v56, v1

    int-to-double v0, v13

    mul-double/2addr v11, v0

    const/16 v0, 0x96

    if-ne v6, v0, :cond_2f

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr v11, v0

    :cond_2f
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v44, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    move-object/from16 v67, v2

    invoke-virtual {v3, v1}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    move-result-object v2

    move-object/from16 v68, v7

    move-object/from16 v69, v8

    int-to-double v7, v0

    const-wide v58, 0x3f9eb851eb851eb8L    # 0.03

    mul-double v7, v7, v58

    const-wide/high16 v54, 0x3ff0000000000000L    # 1.0

    add-double v7, v7, v54

    invoke-interface {v13, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v70, v4

    move-object/from16 v60, v5

    const-wide v4, 0x408c200000000000L    # 900.0

    move-object/from16 v58, v15

    const/4 v15, 0x0

    invoke-static {v2, v15, v4, v5}, Lcom/sgscq/vpn/handler/b1;->i([DID)D

    move-result-wide v4

    mul-double/2addr v4, v7

    mul-int/lit8 v15, v14, 0x3c

    move/from16 v59, v14

    int-to-double v14, v15

    add-double/2addr v4, v14

    const-wide/high16 v14, 0x4089000000000000L    # 800.0

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    mul-double/2addr v4, v11

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "hp"

    invoke-interface {v13, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v4, 0x4070400000000000L    # 260.0

    const/4 v14, 0x1

    invoke-static {v2, v14, v4, v5}, Lcom/sgscq/vpn/handler/b1;->i([DID)D

    move-result-wide v4

    mul-double/2addr v4, v7

    mul-int/lit8 v14, v6, 0xa

    int-to-double v14, v14

    add-double/2addr v4, v14

    const-wide/high16 v14, 0x405e000000000000L    # 120.0

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    mul-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "atk"

    invoke-interface {v13, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-static {v2, v4, v14, v15}, Lcom/sgscq/vpn/handler/b1;->i([DID)D

    move-result-wide v4

    mul-double/2addr v4, v7

    mul-int/lit8 v14, v6, 0x5

    int-to-double v14, v14

    add-double/2addr v4, v14

    move-wide/from16 v61, v11

    const-wide/high16 v11, 0x4054000000000000L    # 80.0

    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    mul-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "def"

    invoke-interface {v13, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    const/4 v11, 0x3

    invoke-static {v2, v11, v4, v5}, Lcom/sgscq/vpn/handler/b1;->i([DID)D

    move-result-wide v4

    mul-double/2addr v4, v7

    add-double/2addr v4, v14

    const-wide/high16 v7, 0x4054000000000000L    # 80.0

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    mul-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v4, "wis"

    invoke-interface {v13, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v1}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4, v0, v1, v2, v13}, Lcom/sgscq/vpn/handler/b1;->K(IILjava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Lcom/sgscq/vpn/battle/BattleUnit;

    move-result-object v0

    move-object/from16 v1, v60

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v1

    move-object/from16 v0, v44

    move-object/from16 v15, v58

    move/from16 v14, v59

    move-wide/from16 v11, v61

    move-object/from16 v2, v67

    move-object/from16 v7, v68

    move-object/from16 v8, v69

    move-object/from16 v4, v70

    goto/16 :goto_1b

    :cond_30
    move-object/from16 v67, v2

    move-object/from16 v70, v4

    move-object v1, v5

    move-object/from16 v68, v7

    move-object/from16 v69, v8

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 58
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v68 .. v68}, Lcom/sgscq/vpn/w1;->B(Ljava/util/Map;)I

    move-result v0

    if-gtz v0, :cond_31

    invoke-interface/range {v70 .. v70}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {}, Lo/h;->a()Lo/h;

    move-result-object v3

    new-instance v4, Ljava/util/Random;

    move-object/from16 v5, v57

    move-object/from16 v7, v68

    .line 59
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v6

    int-to-long v9, v6

    const-wide/16 v11, 0x1f

    mul-long/2addr v9, v11

    move-object/from16 v6, v50

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v8

    int-to-long v11, v8

    const-wide/16 v13, 0x11

    mul-long/2addr v11, v13

    add-long/2addr v11, v9

    if-nez v46, :cond_32

    const/4 v8, 0x0

    goto :goto_1c

    :cond_32
    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->hashCode()I

    move-result v8

    :goto_1c
    int-to-long v8, v8

    add-long/2addr v11, v8

    .line 60
    invoke-direct {v4, v11, v12}, Ljava/util/Random;-><init>(J)V

    new-instance v4, Lcom/sgscq/vpn/battle/BattleScenario;

    const/16 v61, 0x0

    int-to-double v8, v0

    int-to-double v10, v2

    move-object/from16 v58, v4

    move-object/from16 v59, v70

    move-object/from16 v60, v1

    move-wide/from16 v62, v8

    move-wide/from16 v64, v10

    invoke-direct/range {v58 .. v65}, Lcom/sgscq/vpn/battle/BattleScenario;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;DD)V

    .line 61
    invoke-virtual {v3, v4}, Lo/h;->b(Lcom/sgscq/vpn/battle/BattleScenario;)Lcom/sgscq/vpn/battle/BattleResult;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/sgscq/vpn/battle/BattleResult;->getFightInfo()Ljava/util/Map;

    move-result-object v9

    const-string v3, "init"

    .line 63
    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v8, v4, Ljava/util/Map;

    if-nez v8, :cond_33

    const/4 v0, 0x1

    move-object/from16 v57, v5

    move-object/from16 v50, v6

    goto/16 :goto_1f

    :cond_33
    check-cast v4, Ljava/util/Map;

    move-object/from16 v8, v56

    move-object/from16 v10, v69

    invoke-interface {v7, v8, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->w(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v96

    invoke-static/range {v67 .. v67}, Lcom/sgscq/vpn/handler/c1;->a(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_34

    const-string v10, "112001"

    const/4 v11, 0x0

    goto :goto_1d

    :cond_34
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    :goto_1d
    move-object/from16 v132, v10

    const-string v10, "fighting"

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const-string v12, "fightPoint"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v11}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v11

    invoke-static {v10, v11}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v10

    .line 64
    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->u0(Ljava/util/Map;)I

    move-result v11

    const/4 v12, 0x1

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    mul-int/lit16 v11, v11, 0x118

    add-int/lit16 v11, v11, 0x708

    mul-int/2addr v11, v13

    int-to-double v13, v11

    .line 65
    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->u0(Ljava/util/Map;)I

    move-result v11

    const/16 v15, 0x96

    .line 66
    invoke-static {v15, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-double v11, v11

    const-wide v56, 0x3fc999999999999aL    # 0.2

    mul-double v11, v11, v56

    const-wide/high16 v54, 0x3ff0000000000000L    # 1.0

    add-double v11, v11, v54

    .line 67
    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->o0(Ljava/util/Map;)I

    move-result v15

    move-object/from16 v57, v5

    move-object/from16 v50, v6

    int-to-double v5, v15

    mul-double/2addr v11, v5

    mul-double/2addr v11, v13

    .line 68
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    const/4 v6, 0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const-string v6, "\u8fc7\u5173\u5b88\u5c06"

    if-nez v67, :cond_35

    goto :goto_1e

    :cond_35
    const-string v11, "team_name"

    move-object/from16 v12, v67

    .line 69
    invoke-interface {v12, v11, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_1e
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v108, v6

    move-object/from16 v110, v6

    move-object/from16 v112, v6

    const/4 v11, 0x0

    invoke-static {v11, v4}, Lcom/sgscq/vpn/handler/b1;->h0(ILjava/util/Map;)Z

    move-result v11

    const/4 v12, 0x1

    invoke-static {v12, v4}, Lcom/sgscq/vpn/handler/b1;->h0(ILjava/util/Map;)Z

    move-result v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/util/Map;

    const-string v71, "nickname"

    const-string v73, "player_name"

    const-string v75, "userName"

    const-string v77, "teamPoint"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    const-string v79, "fighting"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v80

    const-string v81, "fight_point"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v82

    const-string v83, "general_id"

    const-string v85, "general_skin"

    const-string v87, "user_general_skin"

    const-string v89, "teamLeader"

    const-string v91, "team_leader"

    const-string v93, "head"

    const-string v95, "avatar"

    const-string v97, "user_ability"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v98

    const-string v99, "leadership_num"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v100

    const-string v101, "leadershipNum"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v102

    const-string v103, "user_leadership_num"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v104

    const-string v105, "evolution_image_status"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v106

    move-object/from16 v72, v8

    move-object/from16 v74, v8

    move-object/from16 v76, v8

    move-object/from16 v84, v96

    move-object/from16 v86, v96

    move-object/from16 v88, v96

    move-object/from16 v90, v96

    move-object/from16 v92, v96

    move-object/from16 v94, v96

    filled-new-array/range {v71 .. v106}, [Ljava/lang/Object;

    move-result-object v0

    const-string v10, "name"

    invoke-static {v10, v8, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const/4 v8, 0x0

    aput-object v0, v13, v8

    const-string v107, "nickname"

    const-string v109, "player_name"

    const-string v111, "userName"

    const-string v113, "teamPoint"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v114

    const-string v115, "fighting"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v116

    const-string v117, "fight_point"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v118

    const-string v119, "general_id"

    const-string v121, "general_skin"

    const-string v123, "user_general_skin"

    const-string v125, "teamLeader"

    const-string v127, "team_leader"

    const-string v129, "head"

    const-string v131, "avatar"

    const-string v133, "user_ability"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v134

    const-string v135, "leadership_num"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v136

    const-string v137, "leadershipNum"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v138

    const-string v139, "user_leadership_num"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v140

    const-string v141, "evolution_image_status"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v142

    move-object/from16 v120, v132

    move-object/from16 v122, v132

    move-object/from16 v124, v132

    move-object/from16 v126, v132

    move-object/from16 v128, v132

    move-object/from16 v130, v132

    filled-new-array/range {v107 .. v142}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v6, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v13, v2

    invoke-static {v13}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v5, "info"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 70
    :goto_1f
    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/Map;

    if-nez v3, :cond_36

    goto :goto_20

    :cond_36
    check-cast v2, Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "skipRounds"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :goto_20
    invoke-interface/range {v70 .. v70}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v12, v2

    :cond_37
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sgscq/vpn/battle/BattleUnit;

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Lcom/sgscq/vpn/battle/BattleUnit;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_37

    add-int/lit8 v12, v12, 0x1

    goto :goto_21

    :cond_38
    new-instance v0, Lcom/sgscq/vpn/handler/a1;

    invoke-virtual {v1}, Lcom/sgscq/vpn/battle/BattleResult;->isSuccess()Z

    move-result v10

    invoke-virtual {v1}, Lcom/sgscq/vpn/battle/BattleResult;->getRoundCount()I

    move-result v11

    invoke-interface/range {v70 .. v70}, Ljava/util/List;->size()I

    move-result v13

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/sgscq/vpn/handler/a1;-><init>(Ljava/util/Map;ZIII)V

    move-object v1, v0

    goto :goto_23

    :cond_39
    :goto_22
    move-object/from16 v47, v0

    move-object/from16 v43, v1

    move/from16 v45, v4

    move/from16 v52, v5

    move/from16 v42, v6

    move-object/from16 v66, v8

    move/from16 v48, v10

    move-object/from16 v50, v11

    move-object/from16 v57, v12

    move/from16 v49, v13

    move/from16 v53, v14

    move-object/from16 v51, v15

    invoke-static {}, Lcom/sgscq/vpn/handler/b1;->i0()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 72
    new-instance v0, Lcom/sgscq/vpn/handler/a1;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sgscq/vpn/handler/a1;-><init>(Ljava/util/Map;ZIII)V

    .line 73
    :goto_23
    iget-boolean v0, v1, Lcom/sgscq/vpn/handler/a1;->b:Z

    if-eqz v0, :cond_3b

    move-object/from16 v2, v57

    .line 74
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v4, p2

    move-object/from16 v5, v66

    invoke-static {v3, v5, v4}, Lcom/sgscq/vpn/handler/b1;->d0(ILjava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v3, v5, v4, v6}, Lcom/sgscq/vpn/handler/b1;->s0(ILjava/util/List;Ljava/util/Map;Ljava/util/Map;)I

    move-result v3

    invoke-static {v3, v5, v6}, Lcom/sgscq/vpn/handler/b1;->v0(ILjava/util/List;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3a

    const/4 v3, 0x1

    goto :goto_24

    :cond_3a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_24

    :cond_3b
    move-object/from16 v4, p2

    move-object/from16 v2, v57

    move-object/from16 v5, v66

    const/4 v3, 0x0

    :goto_24
    move v13, v3

    if-eqz v0, :cond_3c

    move/from16 v3, v53

    .line 75
    invoke-static {v3, v5, v4}, Lcom/sgscq/vpn/handler/b1;->y(ILjava/util/List;Ljava/util/Map;)I

    move-result v6

    const/4 v8, 0x0

    move/from16 v14, v52

    invoke-static {v7, v14, v6, v8}, Lcom/sgscq/vpn/handler/b1;->q0(Ljava/util/Map;IIZ)J

    move-result-wide v8

    goto :goto_25

    :cond_3c
    move/from16 v14, v52

    move/from16 v3, v53

    const-wide/16 v8, 0x0

    :goto_25
    move-wide v11, v8

    if-eqz v0, :cond_3d

    .line 76
    invoke-static {v3, v5, v4}, Lcom/sgscq/vpn/handler/b1;->y(ILjava/util/List;Ljava/util/Map;)I

    move-result v4

    goto :goto_26

    :cond_3d
    const/4 v4, 0x0

    :goto_26
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "tower_board_integration"

    if-eqz v0, :cond_49

    add-int v0, v49, v13

    add-int v10, v48, v13

    move/from16 v9, v45

    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v15, v43

    invoke-interface {v7, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v6, v31

    invoke-interface {v7, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->u(Ljava/util/Map;)I

    move-result v2

    const/4 v6, 0x0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "tower_daily_max_total_integration"

    invoke-interface {v7, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int v6, v39, v13

    .line 78
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v6, v38

    invoke-interface {v7, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11, v12, v7}, Lcom/sgscq/vpn/p5;->b(JLjava/util/Map;)V

    const-string v2, "tower_run_coin_reward"

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v59, v5

    invoke-static {v6}, Lcom/sgscq/vpn/handler/b1;->c0(Ljava/lang/Object;)J

    move-result-wide v5

    move/from16 p2, v0

    move-object/from16 v31, v1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long/2addr v0, v11

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tower_run_enemy_counts"

    .line 79
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_3e

    new-instance v2, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_27

    :cond_3e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_27
    const/4 v1, 0x0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_28
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-gt v6, v5, :cond_3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_3f
    const/4 v6, 0x1

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v4, v50

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v0, v41

    .line 81
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    move/from16 v4, v42

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    if-le v5, v2, :cond_40

    mul-int/lit8 v5, v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v5, v40

    invoke-interface {v7, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v37

    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    div-int/lit8 v0, v0, 0x5

    .line 84
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move/from16 v1, v48

    if-gt v10, v1, :cond_41

    move/from16 v37, v13

    goto :goto_2b

    :cond_41
    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->n(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v2

    const/16 v5, 0x57

    const/4 v15, 0x3

    mul-int/2addr v0, v15

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v5, 0x0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v37, v13

    move v13, v15

    move v15, v5

    :goto_29
    if-ge v5, v13, :cond_45

    add-int v13, v0, v5

    move/from16 v38, v0

    const/4 v0, 0x0

    .line 85
    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    sget-object v39, Lcom/sgscq/vpn/handler/b1;->c:[I

    aget v0, v39, v0

    if-ge v1, v0, :cond_44

    if-ge v10, v0, :cond_42

    goto :goto_2a

    .line 86
    :cond_42
    invoke-static {v13, v7}, Lcom/sgscq/vpn/handler/b1;->p0(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_43

    goto :goto_2a

    :cond_43
    invoke-static {v13, v7}, Lcom/sgscq/vpn/handler/b1;->w0(ILjava/util/Map;)I

    move-result v15

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v13, v15, v7}, Lcom/sgscq/vpn/handler/b1;->E(IILjava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    move v15, v0

    :cond_44
    :goto_2a
    add-int/lit8 v5, v5, 0x1

    const/4 v13, 0x3

    move/from16 v0, v38

    goto :goto_29

    :cond_45
    if-eqz v15, :cond_46

    const-string v0, "tower_claimed_box_ids"

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_46
    :goto_2b
    rem-int/lit8 v0, v4, 0x5

    if-nez v0, :cond_47

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    const/16 v0, 0x96

    if-lt v14, v0, :cond_48

    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v1, "complete"

    move/from16 v13, p2

    invoke-static {v14, v0, v13, v1, v7}, Lcom/sgscq/vpn/handler/b1;->L(IIILjava/lang/String;Ljava/util/Map;)V

    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->r(Ljava/util/Map;)V

    const/4 v0, 0x1

    goto :goto_2c

    :cond_48
    const/4 v0, 0x0

    goto :goto_2c

    :cond_49
    move-object/from16 v59, v5

    move/from16 v37, v13

    move-object/from16 v10, v31

    move-object/from16 v0, v38

    move-object/from16 v5, v40

    move-object/from16 v15, v43

    move/from16 v9, v45

    move-object/from16 v4, v50

    move-object/from16 v31, v1

    move/from16 v1, v48

    const/4 v13, 0x0

    move-object/from16 p2, v6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fail"

    move/from16 v1, v49

    invoke-static {v3, v9, v1, v0, v7}, Lcom/sgscq/vpn/handler/b1;->L(IIILjava/lang/String;Ljava/util/Map;)V

    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->r(Ljava/util/Map;)V

    const/4 v0, 0x1

    move-object/from16 v6, p2

    :goto_2c
    invoke-static {}, Lcom/sgscq/vpn/handler/b1;->m0()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "fight_info"

    move-object/from16 v4, v31

    iget-object v5, v4, Lcom/sgscq/vpn/handler/a1;->a:Ljava/util/Map;

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v9, v4, Lcom/sgscq/vpn/handler/a1;->b:Z

    if-eqz v9, :cond_4a

    move v15, v14

    goto :goto_2d

    :cond_4a
    move v15, v3

    :goto_2d
    iget v10, v4, Lcom/sgscq/vpn/handler/a1;->c:I

    iget v2, v4, Lcom/sgscq/vpn/handler/a1;->d:I

    iget v3, v4, Lcom/sgscq/vpn/handler/a1;->e:I

    move-object/from16 v4, v59

    move-object v8, v7

    move-object/from16 v5, v29

    move-object/from16 v14, v26

    move-object/from16 v13, v27

    move-object/from16 v5, v30

    move-object/from16 v143, v34

    move-object v5, v13

    move-object/from16 v144, v32

    move/from16 v13, v37

    move-object/from16 v146, v14

    move-object/from16 v145, v33

    move-object v14, v6

    move-object/from16 v147, v16

    move-object/from16 v148, v17

    move-object/from16 v149, v18

    move-object/from16 v150, v19

    move-object/from16 v151, v20

    move-object/from16 v152, v21

    move-object/from16 v153, v22

    move-object/from16 v154, v23

    move-object/from16 v155, v24

    move-object/from16 v156, v51

    move/from16 v16, v2

    move/from16 v17, v3

    invoke-static/range {v8 .. v17}, Lcom/sgscq/vpn/handler/b1;->l(Ljava/util/Map;ZIJILjava/util/ArrayList;III)Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v3, "fight_result"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/sgscq/vpn/handler/b1;->m(Ljava/util/List;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6, v1}, Lcom/sgscq/vpn/handler/b1;->T(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    if-eqz v0, :cond_4d

    move-object/from16 v8, v147

    invoke-static {v8, v7}, Lcom/sgscq/vpn/handler/y0;->c(Ljava/util/List;Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/j;->c()Z

    move-result v2

    if-nez v2, :cond_4b

    goto :goto_2f

    :cond_4b
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/handler/j;->b(Ljava/util/Map;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0, v3, v2}, Lcom/sgscq/vpn/handler/j;->a(Ljava/util/Map;Ljava/util/AbstractCollection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/sgscq/vpn/handler/b1;->d(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    goto :goto_2e

    .line 89
    :cond_4c
    iget-object v0, v0, Lcom/sgscq/vpn/handler/j;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/handler/b0;

    .line 90
    iget-object v2, v0, Lcom/sgscq/vpn/handler/b0;->a:Ljava/util/ArrayList;

    move-object/from16 v3, v47

    move-object/from16 v6, v155

    invoke-static {v6, v3, v2, v1}, Lcom/sgscq/vpn/handler/b1;->R(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    iget-object v2, v0, Lcom/sgscq/vpn/handler/b0;->b:Ljava/util/ArrayList;

    const-string v3, "Skill"

    move-object/from16 v8, v154

    invoke-static {v8, v3, v2, v1}, Lcom/sgscq/vpn/handler/b1;->R(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    iget-object v2, v0, Lcom/sgscq/vpn/handler/b0;->c:Ljava/util/ArrayList;

    move-object/from16 v10, v152

    move-object/from16 v11, v153

    invoke-static {v10, v11, v2, v1}, Lcom/sgscq/vpn/handler/b1;->R(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    iget-object v2, v0, Lcom/sgscq/vpn/handler/b0;->d:Ljava/util/ArrayList;

    const-string v3, "GeneralSoul"

    move-object/from16 v12, v151

    invoke-static {v12, v3, v2, v1}, Lcom/sgscq/vpn/handler/b1;->R(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    iget-object v2, v0, Lcom/sgscq/vpn/handler/b0;->e:Ljava/util/ArrayList;

    move-object/from16 v14, v30

    move-object/from16 v13, v150

    invoke-static {v13, v14, v2, v1}, Lcom/sgscq/vpn/handler/b1;->R(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    iget-object v2, v0, Lcom/sgscq/vpn/handler/b0;->f:Ljava/util/ArrayList;

    move-object/from16 v15, v148

    move-object/from16 v3, v149

    invoke-static {v15, v3, v2, v1}, Lcom/sgscq/vpn/handler/b1;->R(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    iget-object v0, v0, Lcom/sgscq/vpn/handler/b0;->g:Ljava/util/ArrayList;

    const-string v2, "Atlas"

    move-object/from16 v4, v146

    invoke-static {v4, v2, v0, v1}, Lcom/sgscq/vpn/handler/b1;->R(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    goto :goto_30

    :cond_4d
    :goto_2f
    move-object/from16 v14, v30

    move-object/from16 v4, v146

    move-object/from16 v15, v148

    move-object/from16 v3, v149

    move-object/from16 v13, v150

    move-object/from16 v12, v151

    move-object/from16 v10, v152

    move-object/from16 v11, v153

    move-object/from16 v8, v154

    move-object/from16 v6, v155

    :goto_30
    move-object v2, v1

    .line 91
    :goto_31
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "result"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string v0, "111"

    invoke-static {v0, v7}, Lcom/sgscq/vpn/handler/p;->e(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4e
    move-object/from16 v1, v35

    move-object/from16 v0, v36

    invoke-virtual {v0, v1, v7}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v157, v4

    move-object/from16 v152, v10

    move-object/from16 v151, v12

    move-object/from16 v150, v13

    move-object/from16 v148, v15

    move-object/from16 v10, p1

    move-object v15, v0

    move-object v13, v3

    move-object/from16 v0, v25

    goto/16 :goto_3a

    :cond_4f
    move-object v1, v4

    move-object v0, v5

    move-object v5, v10

    move-object/from16 v143, v14

    move-object/from16 v156, v15

    move-object/from16 v148, v17

    move-object/from16 v150, v19

    move-object/from16 v151, v20

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    move-object/from16 v8, v23

    move-object/from16 v157, v26

    move-object/from16 v14, v30

    move-object/from16 v144, v32

    move-object/from16 v145, v33

    move-object v4, v2

    move-object v15, v6

    move-object v2, v13

    move-object/from16 v13, v18

    move-object/from16 v6, v24

    const-string v12, "tower.towerBeStronger"

    move-object/from16 v152, v10

    move-object/from16 v10, p1

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_59

    .line 92
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/sgscq/vpn/handler/b1;->f0(Ljava/util/List;Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;

    .line 93
    invoke-static {v3, v9, v4}, Lcom/sgscq/vpn/handler/b1;->k0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->l0(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_50
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 95
    invoke-static {v9, v3, v2}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_50

    goto :goto_32

    :cond_51
    const/4 v9, 0x0

    :goto_32
    if-nez v9, :cond_52

    const-string v12, "\u5956\u52b1\u5df2\u5237\u65b0"

    goto :goto_35

    :cond_52
    const-string v2, "stronger_type"

    .line 96
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v2

    const-string v3, "need_integration"

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v3

    const-string v4, "incre_per"

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_53

    const/4 v4, 0x0

    const/4 v9, 0x0

    goto :goto_34

    .line 97
    :cond_53
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v9, "%"

    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_54

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const/4 v12, 0x0

    invoke-virtual {v4, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move v9, v12

    goto :goto_33

    :cond_54
    const/4 v9, 0x0

    :goto_33
    invoke-static {v4, v9}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v4

    move/from16 v158, v9

    move v9, v4

    move/from16 v4, v158

    .line 98
    :goto_34
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v4}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v12

    if-ge v12, v3, :cond_55

    move-object/from16 v12, v31

    :goto_35
    invoke-static {v12}, Lcom/sgscq/vpn/handler/b1;->A(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    goto :goto_37

    :cond_55
    sub-int/2addr v12, v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tower_pending_stronger_batch"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    if-ne v2, v0, :cond_56

    const-string v0, "tower_defense_percent"

    goto :goto_36

    :cond_56
    const/4 v0, 0x3

    if-ne v2, v0, :cond_57

    const-string v0, "tower_hp_percent"

    goto :goto_36

    :cond_57
    const/4 v0, 0x4

    if-ne v2, v0, :cond_58

    const-string v0, "tower_wisdom_percent"

    goto :goto_36

    :cond_58
    const-string v0, "tower_attack_percent"

    :goto_36
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v2

    add-int/2addr v2, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sgscq/vpn/handler/b1;->m0()Ljava/util/LinkedHashMap;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v7}, Lcom/sgscq/vpn/handler/b1;->m(Ljava/util/List;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_37
    move-object v2, v0

    move-object/from16 v0, v25

    goto :goto_38

    :cond_59
    move-object/from16 v0, v25

    .line 99
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-static/range {v28 .. v28}, Lcom/sgscq/vpn/handler/c1;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/sgscq/vpn/handler/b1;->h(Ljava/util/List;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v2

    :goto_38
    invoke-virtual {v15, v1, v7}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3a

    :cond_5a
    invoke-static/range {v28 .. v28}, Lcom/sgscq/vpn/handler/c1;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 100
    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->I(Ljava/util/Map;)Z

    move-result v4

    .line 101
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-static {v9, v7}, Lcom/sgscq/vpn/handler/b1;->f0(Ljava/util/List;Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;

    if-eqz v4, :cond_5c

    .line 102
    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->I(Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_5b

    goto :goto_39

    :cond_5b
    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->X(Ljava/util/Map;)V

    invoke-static {v7}, Lcom/sgscq/vpn/handler/b1;->g(Ljava/util/Map;)V

    const/4 v4, 0x0

    .line 103
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_5c
    :goto_39
    invoke-static {}, Lcom/sgscq/vpn/handler/b1;->m0()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-static {v3, v7}, Lcom/sgscq/vpn/handler/b1;->m(Ljava/util/List;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "tower_info"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :goto_3a
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_60

    check-cast v3, Ljava/util/Map;

    const-string v4, "rank_info"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    goto :goto_3b

    :cond_5d
    invoke-static/range {v28 .. v28}, Lcom/sgscq/vpn/p7;->h(Landroid/content/Context;)Lcom/sgscq/vpn/p7;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sgscq/vpn/p7;->i()V

    .line 106
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v9, v5, Ljava/util/Map;

    if-nez v9, :cond_5e

    goto :goto_3b

    :cond_5e
    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5f

    goto :goto_3b

    :cond_5f
    invoke-static {v7, v3}, Lcom/sgscq/vpn/handler/b1;->V(Ljava/util/Map;Lcom/sgscq/vpn/p7;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_60
    :goto_3b
    invoke-virtual {v15, v1, v7}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v3, v145

    invoke-static {v3, v2}, Lcom/sgscq/vpn/handler/b1;->e(Lcom/sgscq/vpn/handler/j;Ljava/util/LinkedHashMap;)V

    move-object/from16 v4, v143

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    goto :goto_3c

    :cond_61
    const/4 v0, 0x0

    goto :goto_3d

    :cond_62
    :goto_3c
    const/4 v0, 0x1

    :goto_3d
    if-eqz v0, :cond_6b

    .line 108
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v7}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string v12, "fight_result"

    .line 109
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v15, v12, Ljava/util/Map;

    if-nez v15, :cond_63

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :goto_3e
    move-object/from16 v35, v1

    goto :goto_40

    :cond_63
    check-cast v12, Ljava/util/Map;

    const-string v15, "add_list_other"

    invoke-interface {v12, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v15, v12, Ljava/util/List;

    if-nez v15, :cond_64

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3e

    :cond_64
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    move-object/from16 v35, v1

    if-eqz v16, :cond_66

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 p1, v12

    instance-of v12, v1, Ljava/util/Map;

    if-eqz v12, :cond_65

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_65
    move-object/from16 v12, p1

    move-object/from16 v1, v35

    goto :goto_3f

    :cond_66
    move-object v12, v15

    .line 110
    :goto_40
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    const-string v15, ""

    move-object/from16 p1, v1

    move-object/from16 v1, v156

    invoke-interface {v12, v1, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_67

    goto :goto_42

    :cond_67
    move-object/from16 v1, v144

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/4 v1, 0x5

    invoke-static {v12, v1}, Lcom/sgscq/vpn/handler/b1;->b0(Ljava/lang/Object;I)I

    move-result v1

    const/4 v12, 0x3

    if-ne v1, v12, :cond_68

    invoke-static {v14, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/sgscq/vpn/handler/b1;->B(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/sgscq/vpn/handler/b1;->c(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_42

    :cond_68
    const/16 v12, 0x8

    if-ne v1, v12, :cond_69

    invoke-static {v13, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/sgscq/vpn/handler/b1;->B(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/sgscq/vpn/handler/b1;->c(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_42

    :cond_69
    invoke-static {v11, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/sgscq/vpn/handler/b1;->B(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/sgscq/vpn/handler/b1;->c(Ljava/util/List;Ljava/util/Map;)V

    :goto_42
    move-object/from16 v1, p1

    goto :goto_41

    :cond_6a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v12, "upd"

    const-string v15, "add"

    filled-new-array {v12, v5, v15, v7}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "del"

    invoke-static {v7, v1, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v4, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    filled-new-array {v12, v9, v15, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v1, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v4, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    filled-new-array {v12, v10, v15, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v1, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v4, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v5, "General"

    invoke-static {v1, v5, v4}, Lcom/sgscq/vpn/handler/b1;->S(Ljava/lang/Object;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v5, "Skill"

    invoke-static {v1, v5, v4}, Lcom/sgscq/vpn/handler/b1;->S(Ljava/lang/Object;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    move-object/from16 v1, v152

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v11, v4}, Lcom/sgscq/vpn/handler/b1;->S(Ljava/lang/Object;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    move-object/from16 v5, v151

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v9, "GeneralSoul"

    invoke-static {v7, v9, v4}, Lcom/sgscq/vpn/handler/b1;->S(Ljava/lang/Object;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    move-object/from16 v9, v150

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v14, v4}, Lcom/sgscq/vpn/handler/b1;->S(Ljava/lang/Object;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    move-object/from16 v10, v148

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v13, v4}, Lcom/sgscq/vpn/handler/b1;->S(Ljava/lang/Object;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    move-object/from16 v12, v157

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v15, "Atlas"

    invoke-static {v7, v15, v4}, Lcom/sgscq/vpn/handler/b1;->S(Ljava/lang/Object;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    goto :goto_43

    :cond_6b
    move-object/from16 v35, v1

    move-object/from16 v10, v148

    move-object/from16 v9, v150

    move-object/from16 v5, v151

    move-object/from16 v1, v152

    move-object/from16 v12, v157

    .line 112
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v7}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    :goto_43
    if-eqz v0, :cond_6c

    filled-new-array {v11, v14, v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v2, v3, v0}, Lcom/sgscq/vpn/handler/b1;->f(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Lcom/sgscq/vpn/handler/j;[Ljava/lang/String;)V

    goto :goto_44

    :cond_6c
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v4, v2, v3, v0}, Lcom/sgscq/vpn/handler/b1;->f(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Lcom/sgscq/vpn/handler/j;[Ljava/lang/String;)V

    :goto_44
    invoke-static {v2}, Lcom/sgscq/vpn/handler/b1;->p(Ljava/util/LinkedHashMap;)[Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, p0

    move-object/from16 v7, v35

    invoke-virtual {v3, v7, v4, v0}, Lcom/sgscq/vpn/handler/b1;->k(Ljava/lang/String;Ljava/util/LinkedHashMap;[Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v4, "cmn"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-interface {v2, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v29

    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final varargs k(Ljava/lang/String;Ljava/util/LinkedHashMap;[Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/handler/b1;->a:Lcom/sgscq/vpn/handler/k0;

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

    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-virtual {v0, p2, p1, p3}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    return-object p1
.end method
