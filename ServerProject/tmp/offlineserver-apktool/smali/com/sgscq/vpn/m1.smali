.class public abstract Lcom/sgscq/vpn/m1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:[[Ljava/lang/String;

.field public static final f:Ljava/util/LinkedHashSet;

.field public static final g:[[Ljava/lang/String;

.field public static final h:[[[Ljava/lang/String;

.field public static final i:[Ljava/lang/String;

.field public static final j:[Ljava/lang/String;

.field public static final k:[Ljava/lang/String;

.field public static final l:[Ljava/lang/String;

.field public static final m:[D

.field public static final n:Ljava/util/HashSet;

.field public static final o:[Ljava/lang/String;

.field public static final p:Ljava/util/LinkedHashSet;

.field public static final q:Ljava/util/LinkedHashSet;

.field public static volatile r:Ljava/util/LinkedHashSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sgscq/vpn/m1;->a:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sgscq/vpn/m1;->b:[I

    const-string v1, "141002"

    const-string v2, "111006"

    const-string v3, "111012"

    const-string v4, "111005"

    const-string v5, "131009"

    const-string v6, "131010"

    const-string v7, "121011"

    const-string v8, "114001"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/m1;->c:[Ljava/lang/String;

    const-string v1, "\u65e0\u53cc\u98de\u5c06\u00b7\u5415\u5e03"

    const-string v2, "\u6587\u6b66\u53cc\u5168\u00b7\u5f20\u8fbd"

    const-string v3, "\u4f50\u4e16\u4e4b\u624d\u00b7\u66f9\u4e15"

    const-string v4, "\u9e70\u89c6\u72fc\u987e\u00b7\u53f8\u9a6c\u61ff"

    const-string v5, "\u96c4\u59ff\u82f1\u53d1\u00b7\u9646\u900a"

    const-string v6, "\u6000\u529f\u8f85\u5f3c\u00b7\u9c81\u8083"

    const-string v7, "\u667a\u51a0\u5929\u4e0b\u00b7\u8bf8\u845b\u4eae"

    const-string v8, "\u5a01\u9707\u534e\u590f\u00b7\u9b4f\u6b66\u5e1d"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sgscq/vpn/m1;->d:[Ljava/lang/String;

    const-string v1, "331008"

    const-string v2, "351007"

    const-string v3, "351023"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "351005"

    const-string v6, "351015"

    filled-new-array {v5, v3, v6}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "351035"

    filled-new-array {v2, v3, v8}, [Ljava/lang/String;

    move-result-object v2

    const-string v8, "351036"

    filled-new-array {v8, v5, v5}, [Ljava/lang/String;

    move-result-object v8

    filled-new-array {v5, v6, v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v9, "342007"

    filled-new-array {v5, v5, v9}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "331001"

    const-string v11, "351011"

    filled-new-array {v10, v11, v1}, [Ljava/lang/String;

    move-result-object v10

    const-string v1, "311003"

    const-string v11, "351017"

    filled-new-array {v6, v1, v11, v6, v5}, [Ljava/lang/String;

    move-result-object v11

    move-object v5, v7

    move-object v6, v2

    move-object v7, v8

    move-object v8, v3

    filled-new-array/range {v4 .. v11}, [[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sgscq/vpn/m1;->e:[[Ljava/lang/String;

    new-instance v1, Ljava/util/LinkedHashSet;

    const-string v2, "331008"

    const-string v3, "351007"

    const-string v4, "351023"

    const-string v5, "351005"

    const-string v6, "351015"

    const-string v7, "351036"

    const-string v8, "351035"

    const-string v9, "342007"

    const-string v10, "331001"

    const-string v11, "351011"

    const-string v12, "351017"

    const-string v13, "311003"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/sgscq/vpn/m1;->f:Ljava/util/LinkedHashSet;

    const-string v1, "131011"

    const-string v2, "171015"

    const-string v3, "124001"

    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v1, "111025"

    const-string v2, "111029"

    const-string v3, "111013"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "111006"

    const-string v7, "121008"

    filled-new-array {v6, v2, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v8, "131008"

    const-string v9, "141021"

    filled-new-array {v1, v8, v9}, [Ljava/lang/String;

    move-result-object v1

    const-string v12, "121020"

    const-string v13, "111017"

    filled-new-array {v12, v13, v2}, [Ljava/lang/String;

    move-result-object v8

    const-string v2, "122014"

    const-string v9, "142013"

    const-string v10, "171003"

    filled-new-array {v9, v10, v2}, [Ljava/lang/String;

    move-result-object v9

    const-string v2, "121006"

    const-string v10, "131001"

    const-string v11, "121002"

    filled-new-array {v10, v11, v2}, [Ljava/lang/String;

    move-result-object v10

    const-string v2, "141024"

    const-string v11, "114001"

    const-string v14, "141003"

    const-string v15, "111008"

    filled-new-array {v2, v11, v14, v7, v15}, [Ljava/lang/String;

    move-result-object v11

    move-object v7, v1

    filled-new-array/range {v4 .. v11}, [[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sgscq/vpn/m1;->g:[[Ljava/lang/String;

    const-string v1, "141002"

    const-string v2, "111022"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "134001"

    filled-new-array {v13, v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "111004"

    const-string v6, "121011"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v6

    filled-new-array {v1, v4, v6}, [[Ljava/lang/String;

    move-result-object v13

    const-string v1, "131004"

    const-string v4, "111024"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const-string v6, "111030"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "142006"

    filled-new-array {v8, v12}, [Ljava/lang/String;

    move-result-object v8

    filled-new-array {v1, v7, v8}, [[Ljava/lang/String;

    move-result-object v14

    const-string v1, "111009"

    const-string v7, "111001"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v3}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "141014"

    filled-new-array {v9, v2}, [Ljava/lang/String;

    move-result-object v9

    filled-new-array {v7, v8, v9}, [[Ljava/lang/String;

    move-result-object v15

    const-string v7, "131020"

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "131009"

    const-string v10, "121014"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "141022"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v8, v10, v1}, [[Ljava/lang/String;

    move-result-object v16

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "141013"

    const-string v4, "111012"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v3, v4}, [[Ljava/lang/String;

    move-result-object v17

    const-string v1, "152002"

    const-string v3, "112012"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string v4, "171001"

    const-string v5, "111005"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "121005"

    const-string v6, "142008"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    filled-new-array {v1, v4, v5}, [[Ljava/lang/String;

    move-result-object v18

    const-string v1, "131010"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "141010"

    const-string v4, "121017"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v5, "131013"

    const-string v6, "142003"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    filled-new-array {v1, v3, v5}, [[Ljava/lang/String;

    move-result-object v19

    const-string v1, "131012"

    const-string v3, "141011"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "171014"

    const-string v5, "122011"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {v7, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "121010"

    filled-new-array {v5, v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v5, "141004"

    filled-new-array {v5, v9}, [Ljava/lang/String;

    move-result-object v5

    filled-new-array {v1, v3, v4, v2, v5}, [[Ljava/lang/String;

    move-result-object v20

    filled-new-array/range {v13 .. v20}, [[[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sgscq/vpn/m1;->h:[[[Ljava/lang/String;

    const-string v2, "141001"

    const-string v3, "121001"

    const-string v4, "121002"

    const-string v5, "121021"

    const-string v6, "131001"

    const-string v7, "131002"

    const-string v8, "111001"

    const-string v9, "111026"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sgscq/vpn/m1;->i:[Ljava/lang/String;

    const-string v1, "211002"

    const-string v2, "221002"

    const-string v3, ""

    const-string v4, "231007"

    const-string v5, "241005"

    filled-new-array {v3, v1, v2, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sgscq/vpn/m1;->j:[Ljava/lang/String;

    const-string v1, "601009"

    const-string v2, "602009"

    const-string v4, "603009"

    const-string v5, "604009"

    filled-new-array {v3, v1, v2, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sgscq/vpn/m1;->k:[Ljava/lang/String;

    const-string v2, "391001"

    const-string v3, "391002"

    const-string v4, "391003"

    const-string v5, "391004"

    const-string v6, "391005"

    const-string v7, "391006"

    const-string v8, "391007"

    const-string v9, "391008"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sgscq/vpn/m1;->l:[Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_2

    sput-object v1, Lcom/sgscq/vpn/m1;->m:[D

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/sgscq/vpn/m1;->n:Ljava/util/HashSet;

    const-string v2, "141002"

    const-string v3, "111012"

    const-string v4, "111005"

    const-string v5, "131009"

    const-string v6, "131010"

    const-string v7, "134001"

    const-string v8, "111006"

    const-string v9, "121006"

    const-string v10, "114001"

    const-string v11, "111003"

    const-string v12, "141012"

    const-string v13, "121011"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sgscq/vpn/m1;->o:[Ljava/lang/String;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/sgscq/vpn/m1;->p:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/sgscq/vpn/m1;->q:Ljava/util/LinkedHashSet;

    return-void

    :array_0
    .array-data 4
        0x64
        0x10e
        0x1b8
        0x262
        0x30c
        0x3b6
        0x460
        0x50a
    .end array-data

    :array_1
    .array-data 4
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_2
    .array-data 8
        0x40c25c0000000000L    # 9400.0
        0x40c0108000000000L    # 8225.0
        0x40c5508000000000L    # 10913.0
        0x40c25c0000000000L    # 9400.0
    .end array-data
.end method

.method public static a(Lcom/sgscq/vpn/w1;I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->i0()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sgscq/vpn/w1;->B0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->floorMod(II)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static b(I)Ljava/util/ArrayList;
    .locals 12

    .line 1
    const-string v0, "ms"

    .line 2
    .line 3
    const-string v1, "elite buildOne "

    .line 4
    .line 5
    const-string v2, "SGSCQ_ROSTER"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    sput-boolean v3, Lcom/sgscq/vpn/w1;->X:Z

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v3}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    sget-object v5, Lcom/sgscq/vpn/m1;->n:Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-nez v6, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {v4}, Lcom/sgscq/vpn/w1;->i0()Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-eqz v7, :cond_2

    .line 37
    .line 38
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    check-cast v7, Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v7}, Lcom/sgscq/vpn/handler/p0;->R(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    if-eqz v8, :cond_1

    .line 57
    .line 58
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    check-cast v8, Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    :goto_1
    sget-object v5, Lcom/sgscq/vpn/m1;->q:Ljava/util/LinkedHashSet;

    .line 69
    .line 70
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-nez v6, :cond_3

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    invoke-virtual {v4}, Lcom/sgscq/vpn/w1;->i0()Ljava/util/ArrayList;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-eqz v7, :cond_7

    .line 90
    .line 91
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    check-cast v7, Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v4, v7}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    if-eqz v8, :cond_4

    .line 102
    .line 103
    const-string v9, "\u795e\u00b7"

    .line 104
    .line 105
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    if-nez v8, :cond_5

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_5
    invoke-virtual {v4, v7}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    if-nez v7, :cond_6

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_6
    const-string v8, "general_naturalskill_id"

    .line 120
    .line 121
    const-string v9, ""

    .line 122
    .line 123
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    if-nez v8, :cond_4

    .line 140
    .line 141
    const-string v8, "null"

    .line 142
    .line 143
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-nez v8, :cond_4

    .line 148
    .line 149
    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_7
    :goto_3
    new-instance v5, Lcom/sgscq/vpn/n5;

    .line 154
    .line 155
    invoke-direct {v5, v3}, Lcom/sgscq/vpn/n5;-><init>(Landroid/content/Context;)V

    .line 156
    .line 157
    .line 158
    invoke-static {p0}, Lcom/sgscq/vpn/p5;->E0(I)I

    .line 159
    .line 160
    .line 161
    move-result p0

    .line 162
    new-instance v3, Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .line 166
    .line 167
    const/4 v5, 0x0

    .line 168
    :goto_4
    const/16 v6, 0x8

    .line 169
    .line 170
    if-ge v5, v6, :cond_8

    .line 171
    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 173
    .line 174
    .line 175
    move-result-wide v6

    .line 176
    :try_start_0
    invoke-static {v4, v5, p0}, Lcom/sgscq/vpn/m1;->c(Lcom/sgscq/vpn/w1;II)Lcom/sgscq/vpn/v5;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    new-instance v8, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-static {v5}, Lcom/sgscq/vpn/m1;->i(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v9, " ok took "

    .line 199
    .line 200
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 204
    .line 205
    .line 206
    move-result-wide v9

    .line 207
    sub-long/2addr v9, v6

    .line 208
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    invoke-static {v2, v8}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .line 220
    .line 221
    goto :goto_6

    .line 222
    :catch_0
    move-exception v8

    .line 223
    new-instance v9, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-static {v5}, Lcom/sgscq/vpn/m1;->i(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v10

    .line 232
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string v10, " failed took "

    .line 236
    .line 237
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 241
    .line 242
    .line 243
    move-result-wide v10

    .line 244
    sub-long/2addr v10, v6

    .line 245
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    sget-object v7, Lcom/sgscq/vpn/z2;->a:Ljava/text/SimpleDateFormat;

    .line 256
    .line 257
    new-instance v7, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v9, "\n"

    .line 266
    .line 267
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    :try_start_1
    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v9
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 274
    goto :goto_5

    .line 275
    :catch_1
    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v9

    .line 279
    :goto_5
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v7

    .line 286
    const-string v9, "W"

    .line 287
    .line 288
    invoke-static {v2, v9, v7}, Lcom/sgscq/vpn/z2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    :try_start_2
    invoke-static {v2, v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 292
    .line 293
    .line 294
    :catch_2
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 295
    .line 296
    goto/16 :goto_4

    .line 297
    .line 298
    :cond_8
    return-object v3
.end method

.method public static c(Lcom/sgscq/vpn/w1;II)Lcom/sgscq/vpn/v5;
    .locals 94

    move-object/from16 v8, p0

    move/from16 v9, p1

    sget-object v0, Lcom/sgscq/vpn/m1;->b:[I

    aget v10, v0, v9

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 1
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v15, v0, 0x4

    .line 2
    sget-object v0, Lcom/sgscq/vpn/m1;->a:[I

    aget v14, v0, v9

    sget-object v0, Lcom/sgscq/vpn/m1;->c:[Ljava/lang/String;

    aget-object v0, v0, v9

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/LinkedHashSet;

    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    sget-object v11, Lcom/sgscq/vpn/m1;->g:[[Ljava/lang/String;

    aget-object v2, v11, v9

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v12, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    sget-object v27, Lcom/sgscq/vpn/m1;->h:[[[Ljava/lang/String;

    aget-object v2, v27, v9

    array-length v3, v2

    move v5, v4

    :goto_2
    if-ge v4, v3, :cond_5

    aget-object v6, v2, v4

    move-object/from16 v16, v2

    array-length v2, v6

    :goto_3
    if-ge v5, v2, :cond_4

    move/from16 v17, v2

    aget-object v2, v6, v5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_3

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v17

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v2, v16

    goto :goto_2

    :cond_5
    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v12}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/sgscq/vpn/m1;->o:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_4
    const/16 v6, 0xb

    if-ge v5, v4, :cond_a

    move/from16 v16, v4

    aget-object v4, v3, v5

    move-object/from16 v17, v3

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v6, :cond_7

    goto :goto_6

    :cond_7
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_5

    :cond_8
    invoke-interface {v12, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v16

    move-object/from16 v3, v17

    goto :goto_4

    :cond_a
    :goto_6
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3, v12}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v8, v1, v3}, Lcom/sgscq/vpn/m1;->f(Lcom/sgscq/vpn/w1;Ljava/util/ArrayList;Ljava/util/LinkedHashSet;)Ljava/util/ArrayList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v6, :cond_b

    goto :goto_8

    :cond_b
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_7

    :cond_c
    invoke-interface {v12, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    :goto_8
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    rsub-int/lit8 v5, v5, 0xb

    invoke-static {v8, v4, v2, v5}, Lcom/sgscq/vpn/m1;->v(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/util/LinkedHashSet;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v6, :cond_f

    goto :goto_a

    :cond_f
    invoke-interface {v12, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    :goto_a
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v12}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8, v1, v2}, Lcom/sgscq/vpn/m1;->f(Lcom/sgscq/vpn/w1;Ljava/util/ArrayList;Ljava/util/LinkedHashSet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    move/from16 v16, v3

    const/16 v3, 0x8

    if-eqz v4, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v17, v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v3, :cond_12

    const/4 v1, 0x2

    goto :goto_d

    :cond_12
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_c

    :cond_13
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c
    const/4 v3, 0x2

    move-object/from16 v1, v17

    goto :goto_b

    :cond_14
    move/from16 v1, v16

    :goto_d
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x8

    invoke-static {v8, v0, v2, v1}, Lcom/sgscq/vpn/m1;->v(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/util/LinkedHashSet;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v3, :cond_15

    goto :goto_f

    :cond_15
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_16
    :goto_f
    invoke-interface {v12, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/m1;->i(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v7

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v7

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v7

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v7

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v7

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v21, v7

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v22, v7

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v23, v7

    .line 3
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/w1;->k0()Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_10
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    move/from16 v30, v10

    const-string v10, "0"

    move/from16 v31, v14

    const-string v14, "skill_type"

    move-object/from16 v32, v12

    const-string v12, "1"

    move-object/from16 v33, v5

    const-string v5, ""

    if-eqz v29, :cond_1f

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v34, v0

    move-object/from16 v0, v29

    check-cast v0, Ljava/lang/String;

    move-object/from16 v29, v1

    invoke-virtual {v8, v0}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    move-wide/from16 v35, v2

    if-nez v1, :cond_17

    goto :goto_11

    :cond_17
    const-string v2, "can_fit"

    .line 4
    invoke-static {v1, v2, v5, v12}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_11

    .line 5
    :cond_18
    :try_start_0
    invoke-interface {v1, v14, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1e

    const/4 v3, 0x4

    if-le v2, v3, :cond_19

    goto :goto_11

    :cond_19
    const-string v3, "39100"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_11

    :cond_1a
    sget-object v3, Lcom/sgscq/vpn/m1;->f:Ljava/util/LinkedHashSet;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_11

    .line 6
    :cond_1b
    sget-object v3, Lcom/sgscq/vpn/m1;->q:Ljava/util/LinkedHashSet;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_11

    .line 7
    :cond_1c
    invoke-static {v8, v0, v1}, Lcom/sgscq/vpn/m1;->j(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_11

    :cond_1d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ln/a;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ln/a;-><init>(I)V

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :catch_0
    :cond_1e
    :goto_11
    move-object/from16 v1, v29

    move/from16 v10, v30

    move/from16 v14, v31

    move-object/from16 v12, v32

    move-object/from16 v5, v33

    move-object/from16 v0, v34

    move-wide/from16 v2, v35

    goto/16 :goto_10

    :cond_1f
    move-object/from16 v34, v0

    move-object/from16 v29, v1

    move-wide/from16 v35, v2

    .line 8
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_12
    const-string v1, "position"

    const-string v0, "general_skills"

    move-object/from16 v24, v7

    const-string v7, "gSkill"

    move-object/from16 v37, v7

    const-string v7, "general_pk_id"

    const/16 v38, 0x0

    move-object/from16 v39, v7

    const-string v7, "pk_id"

    if-ge v2, v6, :cond_64

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    move-object/from16 v41, v7

    move-object/from16 v7, v40

    check-cast v7, Ljava/lang/String;

    move-object/from16 v40, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v42, v1

    const-string v1, "_g"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v43, v0

    if-ltz v9, :cond_21

    .line 9
    array-length v0, v11

    if-lt v9, v0, :cond_20

    goto :goto_13

    :cond_20
    aget-object v0, v11, v9

    array-length v0, v0

    goto :goto_14

    :cond_21
    :goto_13
    const/4 v0, 0x0

    :goto_14
    if-ge v2, v0, :cond_22

    const/4 v0, 0x1

    goto :goto_15

    :cond_22
    const/4 v0, 0x0

    :goto_15
    move/from16 v63, v0

    const/16 v44, 0x0

    const-string v45, ""

    const-string v46, "0"

    const/16 v47, 0x1

    move-object/from16 v64, v34

    move-object/from16 v65, v40

    move-object/from16 v34, v43

    move-object/from16 v0, p0

    move/from16 v68, v1

    move-object/from16 v66, v29

    move-object/from16 v67, v42

    move-object/from16 v1, v34

    move/from16 v71, v2

    move-wide/from16 v69, v35

    move-object v2, v7

    move-object/from16 v72, v3

    move v3, v15

    move-object/from16 v73, v4

    move/from16 v4, v44

    move-object/from16 v74, v5

    move-object/from16 v5, v45

    move/from16 v29, v6

    move-object/from16 v6, v46

    move-object/from16 v75, v16

    move-object/from16 v76, v18

    move-object/from16 v77, v19

    move-object/from16 v78, v21

    move-object/from16 v79, v22

    move-object/from16 v80, v23

    move-object/from16 v81, v37

    move-object/from16 v82, v39

    move-object/from16 v19, v11

    move-object/from16 v18, v12

    move/from16 v16, v15

    move-object/from16 v15, v17

    move-object/from16 v12, v24

    move-object/from16 v11, v41

    move-object/from16 v17, v13

    move-object v13, v7

    move/from16 v7, v47

    .line 10
    invoke-static/range {v0 .. v7}, Lcom/sgscq/vpn/t5;->f(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "general_name"

    invoke-virtual {v8, v13}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "is_new"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v7, "star_level"

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "general_star"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "insight_level"

    const-string v4, "6"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    if-eqz v63, :cond_24

    .line 11
    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/p5;->E0(I)I

    move-result v2

    if-lt v2, v1, :cond_23

    const/4 v1, 0x1

    goto :goto_16

    :cond_23
    const/4 v1, 0x0

    :goto_16
    if-eqz v1, :cond_24

    .line 12
    invoke-virtual {v8, v13}, Lcom/sgscq/vpn/w1;->B0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "evolution_image_status"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v35, Lcom/sgscq/vpn/p5;->d:[I

    if-eqz v63, :cond_25

    .line 14
    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/p5;->E0(I)I

    move-result v2

    aget v2, v35, v2

    goto :goto_17

    :cond_25
    const/4 v2, 0x0

    :goto_17
    move-object/from16 v3, v34

    .line 15
    invoke-static {v2, v8, v3, v13}, Lcom/sgscq/vpn/m1;->n(ILcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v34, v4

    const-string v4, "general_naturalskill_id"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8, v13}, Lcom/sgscq/vpn/m1;->q(Lcom/sgscq/vpn/w1;Ljava/lang/String;)I

    move-result v2

    if-eqz v63, :cond_26

    aget-object v4, v27, v9

    move-object/from16 v36, v5

    array-length v5, v4

    move-object/from16 v37, v7

    move/from16 v7, v71

    if-ge v7, v5, :cond_27

    aget-object v4, v4, v7

    goto :goto_18

    :cond_26
    move-object/from16 v36, v5

    move-object/from16 v37, v7

    move/from16 v7, v71

    :cond_27
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    :goto_18
    move-object v5, v4

    if-eqz v63, :cond_28

    sget-object v4, Lcom/sgscq/vpn/m1;->e:[[Ljava/lang/String;

    aget-object v4, v4, v9

    move-object/from16 v39, v6

    array-length v6, v4

    if-ge v7, v6, :cond_29

    aget-object v4, v4, v7

    goto :goto_19

    :cond_28
    move-object/from16 v39, v6

    :cond_29
    move-object/from16 v4, v74

    :goto_19
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    if-lez v2, :cond_2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2a
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2b

    move-object/from16 v9, v38

    goto :goto_1a

    :cond_2b
    invoke-virtual {v8, v4}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    :goto_1a
    if-nez v9, :cond_2c

    goto :goto_1b

    .line 16
    :cond_2c
    :try_start_1
    invoke-interface {v9, v14, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1c

    :catch_1
    :goto_1b
    const/16 v21, 0x0

    :goto_1c
    move-object/from16 v40, v10

    move/from16 v10, v21

    move-object/from16 v21, v14

    if-lez v10, :cond_2d

    .line 17
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2d
    array-length v14, v5

    const/16 v22, 0x0

    move-object/from16 v71, v0

    move/from16 v0, v22

    :goto_1d
    if-ge v0, v14, :cond_2f

    move/from16 v22, v14

    aget-object v14, v5, v0

    invoke-static {v8, v14}, Lcom/sgscq/vpn/m1;->q(Lcom/sgscq/vpn/w1;Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_2e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    move/from16 v14, v22

    goto :goto_1d

    :cond_2f
    if-lez v10, :cond_30

    move v0, v10

    goto :goto_1e

    :cond_30
    const/4 v0, 0x0

    :goto_1e
    if-nez v0, :cond_32

    const/4 v14, 0x4

    const/16 v22, 0x1

    move/from16 v93, v22

    move/from16 v22, v0

    move/from16 v0, v93

    :goto_1f
    if-gt v0, v14, :cond_33

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_31

    goto :goto_20

    :cond_31
    invoke-static {v0, v12}, Lcom/sgscq/vpn/m1;->r(ILjava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_34

    :goto_20
    add-int/lit8 v0, v0, 0x1

    const/4 v14, 0x4

    goto :goto_1f

    :cond_32
    move/from16 v22, v0

    :cond_33
    move/from16 v0, v22

    :cond_34
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x4

    const/16 v22, 0x1

    move-object/from16 v83, v5

    move/from16 v5, v22

    :goto_21
    if-gt v5, v14, :cond_36

    if-eq v5, v2, :cond_35

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    add-int/lit8 v5, v5, 0x1

    const/4 v14, 0x4

    goto :goto_21

    :cond_36
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-lez v0, :cond_37

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_37
    if-eqz v9, :cond_38

    if-lez v10, :cond_38

    invoke-static {v8, v4, v9}, Lcom/sgscq/vpn/m1;->j(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v6

    if-eqz v6, :cond_38

    move-object v9, v5

    move-wide/from16 v5, v69

    invoke-static {v3, v4, v10, v5, v6}, Lcom/sgscq/vpn/m1;->l(Ljava/lang/String;Ljava/lang/String;IJ)Ljava/util/LinkedHashMap;

    move-result-object v4

    goto :goto_22

    :cond_38
    move-object v9, v5

    move-wide/from16 v5, v69

    move-object/from16 v4, v38

    :goto_22
    if-nez v4, :cond_39

    if-lez v0, :cond_39

    invoke-static {v0, v12}, Lcom/sgscq/vpn/m1;->r(ILjava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_39

    invoke-static {v3, v10, v0, v5, v6}, Lcom/sgscq/vpn/m1;->l(Ljava/lang/String;Ljava/lang/String;IJ)Ljava/util/LinkedHashMap;

    move-result-object v4

    :cond_39
    if-eqz v4, :cond_3a

    const-string v10, "2"

    move-object/from16 v14, v67

    invoke-interface {v4, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "pos"

    invoke-interface {v4, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "skill_position"

    invoke-interface {v4, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    if-eqz v63, :cond_3d

    .line 18
    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/p5;->E0(I)I

    move-result v4

    const/4 v10, 0x3

    if-lt v4, v10, :cond_3b

    const/4 v4, 0x1

    goto :goto_23

    :cond_3b
    const/4 v4, 0x0

    :goto_23
    if-eqz v4, :cond_3d

    .line 19
    sget-object v4, Lcom/sgscq/vpn/m1;->l:[Ljava/lang/String;

    array-length v10, v4

    const/4 v14, 0x0

    :goto_24
    if-ge v14, v10, :cond_3c

    move/from16 v22, v10

    aget-object v10, v4, v14

    invoke-static {v3, v10, v5, v6}, Lcom/sgscq/vpn/m1;->m(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/LinkedHashMap;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move/from16 v10, v22

    goto :goto_24

    :cond_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v73

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "_mt"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v68

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v43, "general_pk_id"

    const-string v45, "user_general_id"

    const-string v47, "top_level"

    const-string v48, "8"

    const-string v49, "meridian_level"

    const-string v50, "8"

    const-string v51, "point_level"

    const-string v52, "30"

    const-string v53, "gong"

    sget-object v22, Lcom/sgscq/vpn/m1;->m:[D

    const/16 v23, 0x0

    aget-wide v23, v22, v23

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v54

    const-string v55, "fang"

    const/16 v23, 0x1

    aget-wide v23, v22, v23

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v56

    const-string v57, "xue"

    const/16 v23, 0x2

    aget-wide v23, v22, v23

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v58

    const-string v59, "zhi"

    const/16 v23, 0x3

    aget-wide v23, v22, v23

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v60

    const-string v61, "item_num"

    const-string v62, "0"

    move-object/from16 v44, v3

    move-object/from16 v46, v3

    move-wide/from16 v69, v5

    filled-new-array/range {v43 .. v62}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v11, v4, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v4

    move-object/from16 v5, v20

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_3d
    move-wide/from16 v69, v5

    move-object/from16 v5, v20

    move/from16 v14, v68

    move-object/from16 v10, v73

    :goto_25
    if-eqz v63, :cond_3e

    invoke-static {v13}, Lcom/sgscq/vpn/handler/t0;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v5

    const-string v5, "_me"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "magic_id"

    const-string v22, "general_id"

    const-string v23, "magic_level"

    const-string v24, "10"

    const-string v41, "magic_sub_level"

    .line 20
    sget-object v42, Lcom/sgscq/vpn/p5;->c:[Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/p5;->E0(I)I

    move-result v43

    aget-object v42, v42, v43

    const-string v43, "magic_vip_level"

    const-string v44, "0"

    const-string v45, "is_open"

    move-object/from16 v62, v9

    move-object v9, v11

    move-object/from16 v61, v19

    move-object v11, v6

    move-object/from16 v6, v18

    move-object/from16 v67, v32

    move-object/from16 v32, v12

    move-object v12, v4

    move-object v4, v13

    move-object/from16 v68, v17

    move-object/from16 v73, v20

    move-object/from16 v13, v22

    move/from16 v85, v0

    move v0, v14

    move/from16 v84, v31

    move-object/from16 v31, v21

    move-object v14, v4

    move/from16 v86, v2

    move-object/from16 v87, v15

    move/from16 v2, v16

    move-object/from16 v15, v23

    move-object/from16 v16, v24

    move-object/from16 v17, v41

    move-object/from16 v18, v42

    move-object/from16 v19, v43

    move-object/from16 v20, v44

    move-object/from16 v21, v45

    move-object/from16 v22, v25

    .line 21
    filled-new-array/range {v11 .. v22}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v5, v11}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v5

    move-object/from16 v15, v78

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_3e
    move/from16 v85, v0

    move/from16 v86, v2

    move-object/from16 v73, v5

    move-object/from16 v62, v9

    move-object v9, v11

    move-object v4, v13

    move v0, v14

    move-object/from16 v87, v15

    move/from16 v2, v16

    move-object/from16 v68, v17

    move-object/from16 v6, v18

    move-object/from16 v61, v19

    move/from16 v84, v31

    move-object/from16 v67, v32

    move-object/from16 v15, v78

    move-object/from16 v32, v12

    move-object/from16 v31, v21

    :goto_26
    if-eqz v63, :cond_41

    .line 22
    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/p5;->E0(I)I

    move-result v5

    const/4 v11, 0x3

    if-lt v5, v11, :cond_3f

    const/4 v5, 0x1

    goto :goto_27

    :cond_3f
    const/4 v5, 0x0

    :goto_27
    if-eqz v5, :cond_41

    .line 23
    invoke-virtual {v8, v4}, Lcom/sgscq/vpn/w1;->B0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_40

    invoke-static {v8, v7}, Lcom/sgscq/vpn/m1;->a(Lcom/sgscq/vpn/w1;I)Ljava/lang/String;

    move-result-object v5

    :cond_40
    move-object v12, v5

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_41

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_ev"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v11, "evolution_id"

    const-string v13, "general_id"

    const-string v16, "evolution_level"

    invoke-static {v12}, Lcom/sgscq/vpn/m1;->o(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-string v18, "sub_level"

    const-string v19, "7"

    const-string v20, "status"

    const-string v21, "surrender_status"

    const-string v23, "fate_ids"

    const-string v24, "[]"

    move-object v14, v4

    move-object/from16 v78, v10

    move-object v10, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v25

    move-object/from16 v22, v26

    filled-new-array/range {v11 .. v24}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v5, v11}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v5

    move-object/from16 v15, v79

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_41
    move-object/from16 v78, v10

    move-object v10, v15

    move-object/from16 v15, v79

    :goto_28
    move-object/from16 v5, v71

    move-object/from16 v14, v81

    invoke-interface {v5, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v13, v65

    invoke-interface {v5, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, v66

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v63, :cond_4a

    if-eqz v4, :cond_46

    .line 25
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_42

    goto :goto_2a

    :cond_42
    invoke-virtual {v8, v4}, Lcom/sgscq/vpn/w1;->T0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_43

    goto :goto_29

    :cond_43
    invoke-virtual {v8, v1}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v38

    :cond_44
    :goto_29
    move-object/from16 v1, v38

    if-nez v1, :cond_45

    goto :goto_2a

    :cond_45
    :try_start_2
    const-string v11, "major_property"

    invoke-interface {v1, v11, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v11, 0x1

    if-lt v1, v11, :cond_46

    const/4 v11, 0x4

    if-gt v1, v11, :cond_46

    goto :goto_2b

    :catch_2
    :cond_46
    :goto_2a
    const/4 v1, 0x1

    .line 26
    :goto_2b
    sget-object v11, Lcom/sgscq/vpn/handler/p0;->a:[Ljava/lang/String;

    const/16 v41, 0x0

    add-int/lit8 v11, v0, -0x1

    move-object/from16 v22, v6

    const/4 v6, 0x0

    .line 27
    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v42

    const/4 v6, 0x1

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v43

    const/16 v44, 0x64

    move-object/from16 v45, v4

    move-object/from16 v46, v3

    invoke-static/range {v41 .. v46}, Lcom/sgscq/vpn/handler/p0;->p(IIIILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 28
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_47

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v11

    move-object/from16 v11, v16

    check-cast v11, Ljava/util/Map;

    invoke-static {v11}, Lcom/sgscq/vpn/m1;->p(Ljava/util/Map;)V

    move-object/from16 v65, v10

    move-object/from16 v10, v77

    invoke-static {v1, v10, v11}, Lcom/sgscq/vpn/m1;->g(ILjava/util/ArrayList;Ljava/util/Map;)V

    move-object/from16 v11, v17

    move-object/from16 v10, v65

    goto :goto_2c

    :cond_47
    move-object/from16 v65, v10

    move-object/from16 v10, v77

    const/4 v11, 0x1

    move-object/from16 v66, v12

    :goto_2d
    const/4 v12, 0x4

    if-gt v11, v12, :cond_49

    sget-object v12, Lcom/sgscq/vpn/m1;->j:[Ljava/lang/String;

    aget-object v12, v12, v11

    move-object/from16 v79, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v23, v13

    const-string v13, "_div"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v15, 0xc

    new-array v15, v15, [Ljava/lang/Object;

    const-string v16, "equipment_id"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    const/16 v16, 0x1

    aput-object v12, v15, v16

    const/4 v12, 0x2

    move-object/from16 v81, v14

    move-object/from16 v14, v82

    aput-object v14, v15, v12

    const/4 v12, 0x3

    aput-object v3, v15, v12

    const-string v12, "equipment_level"

    const/16 v16, 0x4

    aput-object v12, v15, v16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v16, 0x5

    aput-object v12, v15, v16

    const/4 v12, 0x6

    const-string v16, "refine_level"

    aput-object v16, v15, v12

    const/16 v12, 0xa

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x7

    aput-object v12, v15, v16

    const-string v12, "refine_bonus_type"

    const/16 v16, 0x8

    aput-object v12, v15, v16

    const/16 v12, 0x9

    const-string v16, "shangshen_jinglian_up"

    aput-object v16, v15, v12

    const/16 v12, 0xa

    const-string v16, "bore_list"

    aput-object v16, v15, v12

    .line 29
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/16 v16, 0x5

    const/16 v17, 0x1

    move/from16 v71, v7

    move/from16 v14, v16

    move/from16 v7, v17

    :goto_2e
    if-gt v7, v14, :cond_48

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const-string v16, "gem_id"

    sget-object v17, Lcom/sgscq/vpn/m1;->k:[Ljava/lang/String;

    aget-object v17, v17, v1

    const-string v18, "bore_type"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v20, "is_lock"

    move-object/from16 v21, v26

    move/from16 v24, v1

    filled-new-array/range {v16 .. v21}, [Ljava/lang/Object;

    move-result-object v1

    const-string v8, "bore_id"

    invoke-static {v8, v14, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    const/4 v14, 0x5

    move-object/from16 v8, p0

    move/from16 v1, v24

    goto :goto_2e

    :cond_48
    move/from16 v24, v1

    const/16 v1, 0xb

    aput-object v12, v15, v1

    .line 30
    invoke-static {v9, v13, v15}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-static {v1}, Lcom/sgscq/vpn/m1;->p(Ljava/util/Map;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10, v1}, Lcom/sgscq/vpn/m1;->d(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, p0

    move-object/from16 v13, v23

    move/from16 v1, v24

    move/from16 v7, v71

    move-object/from16 v15, v79

    move-object/from16 v14, v81

    goto/16 :goto_2d

    :cond_49
    move/from16 v71, v7

    move-object/from16 v23, v13

    move-object/from16 v81, v14

    move-object/from16 v79, v15

    move-object v1, v6

    goto :goto_2f

    :cond_4a
    move-object/from16 v22, v6

    move/from16 v71, v7

    move-object/from16 v65, v10

    move-object/from16 v66, v12

    move-object/from16 v23, v13

    move-object/from16 v81, v14

    move-object/from16 v79, v15

    move-object/from16 v10, v77

    :goto_2f
    move-object/from16 v15, v76

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v41, "general_id"

    const-string v43, "general_pk_id"

    const-string v45, "position"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v46

    const-string v47, "general_position"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v48

    const-string v49, "level"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    const-string v51, "general_fighting"

    const-string v6, "fighting"

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v52

    const-string v53, "general_hp"

    const-string v6, "general_hp"

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    const-string v55, "general_attack"

    const-string v6, "general_attack"

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v56

    const-string v57, "general_defense"

    const-string v6, "general_defense"

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v58

    const-string v59, "general_wisdom"

    const-string v6, "general_wisdom"

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    move-object/from16 v42, v4

    move-object/from16 v44, v3

    filled-new-array/range {v41 .. v60}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v9, v3, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v14

    .line 31
    invoke-static {v1, v14}, Lcom/sgscq/vpn/handler/p0;->j(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    move-object/from16 v13, v64

    .line 32
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Ljava/util/LinkedHashSet;

    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static/range {v86 .. v86}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-lez v85, :cond_4b

    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4b
    const/4 v1, 0x2

    const/4 v5, 0x1

    move v11, v5

    :goto_30
    if-gt v11, v1, :cond_63

    add-int/lit8 v1, v11, -0x1

    invoke-virtual/range {v62 .. v62}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4c

    move-object/from16 v5, v62

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v7, v83

    goto :goto_31

    :cond_4c
    move-object/from16 v5, v62

    move-object/from16 v7, v83

    const/4 v6, 0x0

    :goto_31
    array-length v8, v7

    if-ge v1, v8, :cond_4d

    aget-object v8, v7, v1

    goto :goto_32

    :cond_4d
    move-object/from16 v8, v74

    :goto_32
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_4f

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4f

    move-object/from16 v83, v7

    move-object/from16 v7, v72

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4e

    const/16 v16, 0x5

    move-object/from16 v77, v10

    move-object/from16 v10, p0

    invoke-static {v10, v8}, Lcom/sgscq/vpn/m1;->q(Lcom/sgscq/vpn/w1;Ljava/lang/String;)I

    move-result v17

    move/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    const/4 v0, 0x1

    goto :goto_35

    :cond_4e
    move/from16 v18, v0

    move-object/from16 v77, v10

    :goto_33
    move-object/from16 v10, p0

    goto :goto_34

    :cond_4f
    move/from16 v18, v0

    move-object/from16 v83, v7

    move-object/from16 v77, v10

    move-object/from16 v7, v72

    goto :goto_33

    :goto_34
    const/4 v0, 0x5

    move/from16 v16, v0

    :cond_50
    const/4 v0, 0x0

    :goto_35
    if-nez v0, :cond_55

    new-instance v0, Ljava/util/LinkedHashSet;

    move-object/from16 v17, v8

    move-object/from16 v8, v67

    invoke-direct {v0, v8}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v76, v15

    move-object/from16 v15, v75

    invoke-interface {v0, v15}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v19, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_51

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_36

    :cond_51
    const/4 v0, 0x0

    :goto_36
    if-lez v0, :cond_52

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v41, v18

    move-object/from16 v0, p0

    move-object/from16 v17, v1

    move-object/from16 v1, v28

    move/from16 v42, v2

    move-object v2, v4

    move-object/from16 v75, v15

    move-object v15, v3

    move-object/from16 v3, v19

    move-object/from16 v64, v13

    move-object/from16 v18, v14

    move-object/from16 v13, v34

    move-object v14, v4

    move-object v4, v12

    move-object/from16 v20, v14

    move-object/from16 v14, v36

    move-wide/from16 v43, v69

    move-object/from16 v34, v83

    move-object/from16 v36, v5

    move-object/from16 v5, v17

    invoke-static/range {v0 .. v5}, Lcom/sgscq/vpn/m1;->s(Lcom/sgscq/vpn/w1;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    :cond_52
    move/from16 v42, v2

    move-object/from16 v20, v4

    move-object/from16 v64, v13

    move-object/from16 v75, v15

    move/from16 v41, v18

    move-object/from16 v13, v34

    move-wide/from16 v43, v69

    move-object/from16 v34, v83

    move-object v15, v3

    move-object/from16 v18, v14

    move-object/from16 v14, v36

    move-object/from16 v36, v5

    move-object/from16 v0, v17

    :goto_37
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_54

    if-lez v6, :cond_53

    mul-int/lit8 v0, p1, 0x4

    mul-int/lit8 v2, v71, 0x2

    add-int/2addr v2, v0

    add-int/2addr v2, v11

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v19

    invoke-static {v10, v0, v6, v2}, Lcom/sgscq/vpn/m1;->u(Lcom/sgscq/vpn/w1;Ljava/util/LinkedHashSet;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    :cond_53
    move-object/from16 v0, v19

    mul-int/lit8 v1, p1, 0x4

    mul-int/lit8 v2, v71, 0x2

    add-int/2addr v2, v1

    add-int/2addr v2, v11

    add-int/lit8 v2, v2, -0x1

    invoke-static {v10, v0, v12, v2}, Lcom/sgscq/vpn/m1;->t(Lcom/sgscq/vpn/w1;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;I)Ljava/lang/String;

    move-result-object v0

    :cond_54
    :goto_38
    move-object v6, v0

    goto :goto_39

    :cond_55
    move/from16 v42, v2

    move-object/from16 v20, v4

    move-object/from16 v17, v8

    move-object/from16 v64, v13

    move-object/from16 v76, v15

    move/from16 v41, v18

    move-object/from16 v13, v34

    move-object/from16 v8, v67

    move-wide/from16 v43, v69

    move-object/from16 v34, v83

    move-object v15, v3

    move-object/from16 v18, v14

    move-object/from16 v14, v36

    move-object/from16 v36, v5

    move-object/from16 v6, v17

    :goto_39
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_56

    const/4 v0, 0x2

    move v1, v0

    move-object/from16 v67, v8

    move-object/from16 v50, v12

    move-object/from16 v52, v13

    move-object/from16 v55, v14

    move-object/from16 v59, v15

    move-object/from16 v2, v18

    move-object/from16 v54, v20

    move-object/from16 v56, v23

    move-object/from16 v53, v37

    move-object/from16 v89, v39

    move-object/from16 v51, v64

    move-object/from16 v47, v65

    move-object/from16 v6, v66

    move/from16 v46, v71

    move-object/from16 v57, v75

    move-object/from16 v58, v76

    move-object/from16 v8, v79

    move-object/from16 v37, v7

    move v7, v11

    move-object/from16 v39, v22

    move-object/from16 v11, v87

    goto/16 :goto_41

    :cond_56
    invoke-interface {v8, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v10, v6}, Lcom/sgscq/vpn/m1;->q(Lcom/sgscq/vpn/w1;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_lt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x1

    const/16 v45, 0x2

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move/from16 v3, v42

    move-object/from16 v88, v5

    move-object v5, v15

    move-object/from16 v90, v6

    move-object/from16 v89, v39

    move-object/from16 v39, v22

    move-object/from16 v6, v17

    move-object/from16 v67, v8

    move-object/from16 v8, v37

    move/from16 v46, v71

    move-object/from16 v37, v7

    move/from16 v7, v19

    invoke-static/range {v0 .. v7}, Lcom/sgscq/vpn/t5;->f(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v89

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v63, :cond_57

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    if-eqz v63, :cond_59

    .line 33
    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/p5;->E0(I)I

    move-result v1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_58

    const/4 v1, 0x1

    goto :goto_3a

    :cond_58
    const/4 v1, 0x0

    :goto_3a
    if-eqz v1, :cond_59

    move-object/from16 v1, v90

    .line 34
    invoke-virtual {v10, v1}, Lcom/sgscq/vpn/w1;->B0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5a

    const-string v3, "evolution_image_status"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    :cond_59
    move-object/from16 v1, v90

    :cond_5a
    :goto_3b
    if-eqz v63, :cond_5b

    .line 36
    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/p5;->E0(I)I

    move-result v3

    aget v3, v35, v3

    move-object/from16 v4, v88

    goto :goto_3c

    :cond_5b
    move-object/from16 v4, v88

    const/4 v3, 0x0

    .line 37
    :goto_3c
    invoke-static {v3, v10, v4, v1}, Lcom/sgscq/vpn/m1;->n(ILcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "general_naturalskill_id"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/util/Map;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v6}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v7, v81

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v5, v5, [Ljava/util/Map;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v5}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v6, v23

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v89, v2

    move-object/from16 v5, v20

    invoke-static {v10, v5}, Lcom/sgscq/vpn/m1;->h(Lcom/sgscq/vpn/w1;Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x1

    if-lt v2, v5, :cond_5c

    const/4 v5, 0x4

    if-gt v2, v5, :cond_5c

    goto :goto_3d

    :cond_5c
    const/4 v2, 0x1

    :goto_3d
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "lieutenant_skill_id"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "skill_type_lieutenant"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ls_type"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v63, :cond_61

    invoke-static {v1}, Lcom/sgscq/vpn/handler/t0;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v23, v6

    const-string v6, "_me"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "magic_id"

    const-string v16, "general_id"

    const-string v17, "magic_level"

    const-string v19, "10"

    const-string v21, "magic_sub_level"

    .line 38
    sget-object v22, Lcom/sgscq/vpn/p5;->c:[Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/p5;->E0(I)I

    move-result v24

    aget-object v22, v22, v24

    const-string v24, "magic_vip_level"

    const-string v47, "0"

    const-string v48, "is_open"

    const/16 v49, 0x3

    move-object/from16 v81, v7

    move v7, v11

    move-object v11, v6

    move-object/from16 v50, v12

    move-object/from16 v6, v66

    move-object v12, v2

    move-object/from16 v52, v13

    move-object/from16 v2, v23

    move-object/from16 v51, v64

    move-object/from16 v13, v16

    move-object/from16 v56, v2

    move-object/from16 v53, v8

    move-object/from16 v55, v14

    move-object/from16 v2, v18

    move-object/from16 v54, v20

    move-object/from16 v8, v81

    move-object v14, v1

    move-object/from16 v59, v15

    move-object/from16 v57, v75

    move-object/from16 v58, v76

    move-object/from16 v8, v79

    move-object/from16 v15, v17

    move-object/from16 v16, v19

    move-object/from16 v17, v21

    move-object/from16 v18, v22

    move-object/from16 v19, v24

    move-object/from16 v20, v47

    move-object/from16 v21, v48

    move-object/from16 v22, v25

    .line 39
    filled-new-array/range {v11 .. v22}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v5, v11}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v5

    move-object/from16 v15, v65

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_5d
    move-object/from16 v56, v6

    move-object/from16 v81, v7

    move-object/from16 v53, v8

    move v7, v11

    move-object/from16 v50, v12

    move-object/from16 v52, v13

    move-object/from16 v55, v14

    move-object/from16 v59, v15

    move-object/from16 v2, v18

    move-object/from16 v54, v20

    move-object/from16 v51, v64

    move-object/from16 v15, v65

    move-object/from16 v6, v66

    move-object/from16 v57, v75

    move-object/from16 v58, v76

    move-object/from16 v8, v79

    const/16 v49, 0x3

    :goto_3e
    move/from16 v5, v49

    .line 40
    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/p5;->E0(I)I

    move-result v11

    if-lt v11, v5, :cond_5e

    const/4 v5, 0x1

    goto :goto_3f

    :cond_5e
    const/4 v5, 0x0

    :goto_3f
    if-eqz v5, :cond_60

    .line 41
    invoke-virtual {v10, v1}, Lcom/sgscq/vpn/w1;->B0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 42
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5f

    add-int v5, v46, v7

    invoke-static {v10, v5}, Lcom/sgscq/vpn/m1;->a(Lcom/sgscq/vpn/w1;I)Ljava/lang/String;

    move-result-object v5

    :cond_5f
    move-object v12, v5

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_60

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_ev"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v11, "evolution_id"

    const-string v13, "general_id"

    const-string v5, "evolution_level"

    invoke-static {v12}, Lcom/sgscq/vpn/m1;->o(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-string v17, "sub_level"

    const-string v18, "7"

    const-string v19, "status"

    const-string v21, "surrender_status"

    const-string v23, "fate_ids"

    const-string v24, "[]"

    move-object v14, v1

    move-object/from16 v47, v15

    move-object v15, v5

    move-object/from16 v20, v25

    move-object/from16 v22, v26

    filled-new-array/range {v11 .. v24}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v9, v4, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_60
    move-object/from16 v47, v15

    goto :goto_40

    :cond_61
    move-object/from16 v56, v6

    move-object/from16 v81, v7

    move-object/from16 v53, v8

    move v7, v11

    move-object/from16 v50, v12

    move-object/from16 v52, v13

    move-object/from16 v55, v14

    move-object/from16 v59, v15

    move-object/from16 v2, v18

    move-object/from16 v54, v20

    move-object/from16 v51, v64

    move-object/from16 v47, v65

    move-object/from16 v6, v66

    move-object/from16 v57, v75

    move-object/from16 v58, v76

    move-object/from16 v8, v79

    :goto_40
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, v87

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    if-ne v7, v0, :cond_62

    const-string v0, "deputy_general_id"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_62
    move/from16 v1, v45

    :goto_41
    add-int/lit8 v0, v7, 0x1

    move-object v14, v2

    move-object/from16 v66, v6

    move-object/from16 v79, v8

    move-object/from16 v87, v11

    move-object/from16 v83, v34

    move-object/from16 v62, v36

    move-object/from16 v72, v37

    move-object/from16 v22, v39

    move/from16 v2, v42

    move-wide/from16 v69, v43

    move/from16 v71, v46

    move-object/from16 v65, v47

    move-object/from16 v12, v50

    move-object/from16 v13, v51

    move-object/from16 v34, v52

    move-object/from16 v37, v53

    move-object/from16 v4, v54

    move-object/from16 v36, v55

    move-object/from16 v23, v56

    move-object/from16 v75, v57

    move-object/from16 v15, v58

    move-object/from16 v3, v59

    move-object/from16 v10, v77

    move-object/from16 v39, v89

    move v11, v0

    move/from16 v0, v41

    goto/16 :goto_30

    :cond_63
    move/from16 v41, v0

    move-object/from16 v77, v10

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v34, v13

    move-object/from16 v18, v15

    move-object/from16 v12, v22

    move/from16 v6, v29

    move-object/from16 v14, v31

    move-object/from16 v7, v32

    move-object/from16 v10, v40

    move-object/from16 v11, v61

    move-object/from16 v21, v65

    move-object/from16 v29, v66

    move-object/from16 v32, v67

    move-object/from16 v13, v68

    move-wide/from16 v35, v69

    move-object/from16 v3, v72

    move-object/from16 v20, v73

    move-object/from16 v5, v74

    move-object/from16 v16, v75

    move-object/from16 v19, v77

    move-object/from16 v4, v78

    move-object/from16 v22, v79

    move-object/from16 v23, v80

    move/from16 v31, v84

    move-object/from16 v17, v87

    move v15, v2

    move/from16 v2, v41

    goto/16 :goto_12

    :cond_64
    move-object/from16 v56, v0

    move-object v12, v1

    move-object/from16 v78, v4

    move-object/from16 v74, v5

    move-object v9, v7

    move-object v10, v8

    move-object/from16 v11, v17

    move-object/from16 v58, v18

    move-object/from16 v77, v19

    move-object/from16 v73, v20

    move-object/from16 v47, v21

    move-object/from16 v8, v22

    move-object/from16 v80, v23

    move-object/from16 v6, v29

    move/from16 v84, v31

    move-object/from16 v51, v34

    move-object/from16 v81, v37

    move-object/from16 v82, v39

    const/4 v0, 0x0

    :goto_42
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_65

    move-object/from16 v14, v33

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, v78

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_b"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v16, ""

    const-string v17, "0"

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v13, v56

    move-object/from16 v91, v5

    move-object/from16 v5, v16

    move-object/from16 v92, v6

    move-object/from16 v6, v17

    move/from16 v16, v7

    move/from16 v7, v18

    invoke-static/range {v0 .. v7}, Lcom/sgscq/vpn/t5;->f(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object/from16 v1, v81

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v92

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v82

    move-object/from16 v4, v91

    filled-new-array {v3, v4, v12, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v4, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object/from16 v4, v80

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v2

    move/from16 v0, v16

    goto :goto_42

    :cond_65
    move-object v2, v6

    move-object/from16 v15, v78

    move-object/from16 v4, v80

    move-object/from16 v3, v82

    invoke-static {}, Lcom/sgscq/vpn/cloud/m0;->c0()Ljava/util/ArrayList;

    move-result-object v0

    .line 43
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v2}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v5

    const-string v6, "General"

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v51 .. v51}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v5

    const-string v7, "TeamGeneral"

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v5

    const-string v12, "Skill"

    invoke-interface {v1, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v58 .. v58}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v5

    const-string v13, "Equipment"

    invoke-interface {v1, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v77 .. v77}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v5

    const-string v14, "Gem"

    invoke-interface {v1, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v5

    const-string v15, "Combat"

    invoke-interface {v1, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v5

    const-string v4, "BuddyGeneral"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v73 .. v73}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v5

    move-object/from16 v16, v4

    const-string v4, "MeridianTop"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v47 .. v47}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v5

    move-object/from16 v17, v15

    const-string v15, "MagicalEqu"

    invoke-interface {v1, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v5

    move-object/from16 v18, v0

    const-string v0, "EvolutionInfo"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_43
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_67

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v5

    move-object/from16 v5, v19

    check-cast v5, Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v74

    invoke-interface {v5, v9, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v79, v8

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_66

    invoke-virtual {v10, v8, v1}, Lcom/sgscq/vpn/w1;->F2(Ljava/lang/String;Ljava/util/Map;)Z

    :cond_66
    invoke-static {v5}, Lcom/sgscq/vpn/t5;->v(Ljava/util/Map;)V

    move-object/from16 v74, v0

    move-object/from16 v0, v19

    move-object/from16 v5, v20

    move-object/from16 v8, v79

    goto :goto_43

    :cond_67
    move-object/from16 v19, v0

    move-object/from16 v79, v8

    move-object/from16 v0, v74

    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 44
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_45
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_69

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 p0, v1

    move-object/from16 v1, v20

    check-cast v1, Ljava/util/Map;

    .line 45
    invoke-static {v1, v9, v0, v8}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_68

    goto :goto_46

    :cond_68
    move-object/from16 v1, p0

    goto :goto_45

    :cond_69
    move-object/from16 p0, v1

    move-object/from16 v1, v38

    :goto_46
    if-eqz v1, :cond_6a

    const-string v8, "fighting"

    .line 46
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v10, "general_fighting"

    invoke-interface {v5, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "general_hp"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v5, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "general_attack"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v5, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "general_defense"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v5, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "general_wisdom"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6a
    move-object/from16 v1, p0

    goto :goto_44

    .line 47
    :cond_6b
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v2}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v51 .. v51}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v58 .. v58}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v77 .. v77}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v73 .. v73}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v47 .. v47}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v79 .. v79}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v80 .. v80}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "general_fighting"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 48
    :try_start_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    long-to-int v2, v2

    goto :goto_48

    :catch_3
    const/4 v2, 0x0

    :goto_48
    add-int/2addr v6, v2

    goto :goto_47

    :cond_6c
    const-string v3, "user_level"

    const-string v5, "level"

    const-string v7, "user_fighting"

    move/from16 v1, v30

    move-object v2, v0

    move/from16 v4, v30

    .line 49
    invoke-static/range {v1 .. v7}, Lc/a;->s(ILjava/util/LinkedHashMap;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 50
    sget-object v1, Lcom/sgscq/vpn/m1;->d:[Ljava/lang/String;

    aget-object v1, v1, p1

    const-string v2, "user_nickname"

    const-string v3, "ladder_rank"

    move/from16 v4, v84

    .line 51
    invoke-static {v0, v2, v1, v4, v3}, Lcom/sgscq/vpn/handler/l;->b(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v1, v78

    .line 52
    invoke-static {v1, v0}, Lcom/sgscq/vpn/v5;->j(Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/v5;

    move-result-object v1

    .line 53
    iput-object v0, v1, Lcom/sgscq/vpn/v5;->r:Ljava/util/Map;

    return-object v1
.end method

.method public static d(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V
    .locals 4

    .line 1
    const-string v0, "bore_list"

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast v0, Ljava/util/Map;

    const-string v1, "gem_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    filled-new-array {v3, v0, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "pk_id"

    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static e(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Ljava/lang/Iterable;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-object v0
.end method

.method public static f(Lcom/sgscq/vpn/w1;Ljava/util/ArrayList;Ljava/util/LinkedHashSet;)Ljava/util/ArrayList;
    .locals 21

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
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const-string v5, ""

    .line 22
    .line 23
    if-eqz v4, :cond_11

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ljava/lang/String;

    .line 30
    .line 31
    new-instance v6, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v4}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    if-nez v7, :cond_1

    .line 41
    .line 42
    goto/16 :goto_8

    .line 43
    .line 44
    :cond_1
    const-string v8, "general_fate_id"

    .line 45
    .line 46
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    invoke-static {v7}, Lcom/sgscq/vpn/m1;->e(Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-eqz v8, :cond_f

    .line 63
    .line 64
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    invoke-virtual {v0, v10}, Lcom/sgscq/vpn/w1;->D0(Ljava/lang/String;)Ljava/util/Map;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    if-nez v8, :cond_2

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const-string v9, "fate_type"

    .line 80
    .line 81
    const-string v11, "1"

    .line 82
    .line 83
    invoke-static {v8, v9, v5, v11}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    if-nez v9, :cond_3

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    new-instance v12, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v9, "fate_object"

    .line 96
    .line 97
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    invoke-static {v9}, Lcom/sgscq/vpn/m1;->e(Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v13

    .line 113
    if-eqz v13, :cond_b

    .line 114
    .line 115
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v13

    .line 119
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v13

    .line 123
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v15

    .line 127
    if-nez v15, :cond_4

    .line 128
    .line 129
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v15

    .line 133
    if-eqz v15, :cond_5

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_5
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 137
    .line 138
    .line 139
    move-result v15

    .line 140
    const/4 v14, 0x6

    .line 141
    if-eq v15, v14, :cond_6

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_6
    invoke-virtual {v0, v13}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 145
    .line 146
    .line 147
    move-result-object v14

    .line 148
    if-nez v14, :cond_7

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_7
    const-string v15, "is_open"

    .line 152
    .line 153
    invoke-static {v14, v15, v5, v11}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result v15

    .line 157
    if-nez v15, :cond_8

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_8
    const-string v15, "resource_id"

    .line 161
    .line 162
    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v14

    .line 166
    if-eqz v14, :cond_9

    .line 167
    .line 168
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v14

    .line 172
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 173
    .line 174
    .line 175
    move-result v14

    .line 176
    if-nez v14, :cond_9

    .line 177
    .line 178
    const/4 v14, 0x1

    .line 179
    goto :goto_3

    .line 180
    :cond_9
    :goto_2
    const/4 v14, 0x0

    .line 181
    :goto_3
    if-nez v14, :cond_a

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_a
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_b
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    if-eqz v9, :cond_c

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_c
    const-string v9, "fate_limit"

    .line 197
    .line 198
    const-string v13, "2"

    .line 199
    .line 200
    invoke-static {v8, v9, v11, v13}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    xor-int/lit8 v16, v9, 0x1

    .line 205
    .line 206
    new-instance v14, Lcom/sgscq/vpn/l1;

    .line 207
    .line 208
    const-string v9, "fate_effect"

    .line 209
    .line 210
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    if-nez v9, :cond_d

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_d
    :try_start_0
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 222
    .line 223
    .line 224
    move-result-wide v17
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_5

    .line 226
    :catch_0
    :goto_4
    const-wide/16 v17, 0x0

    .line 227
    .line 228
    :goto_5
    const-string v9, "fate_effect_step"

    .line 229
    .line 230
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v8

    .line 234
    if-nez v8, :cond_e

    .line 235
    .line 236
    :catch_1
    const-wide/16 v8, 0x0

    .line 237
    .line 238
    :goto_6
    move-wide/from16 v19, v8

    .line 239
    .line 240
    goto :goto_7

    .line 241
    :cond_e
    :try_start_1
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 246
    .line 247
    .line 248
    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 249
    goto :goto_6

    .line 250
    :goto_7
    move-object v9, v14

    .line 251
    move-object v11, v12

    .line 252
    move-wide/from16 v12, v17

    .line 253
    .line 254
    move-object v8, v14

    .line 255
    move-wide/from16 v14, v19

    .line 256
    .line 257
    invoke-direct/range {v9 .. v16}, Lcom/sgscq/vpn/l1;-><init>(Ljava/lang/String;Ljava/util/ArrayList;DDZ)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    goto/16 :goto_0

    .line 264
    .line 265
    :cond_f
    :goto_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    :cond_10
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    if-eqz v5, :cond_0

    .line 274
    .line 275
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    check-cast v5, Lcom/sgscq/vpn/l1;

    .line 280
    .line 281
    iget-object v6, v5, Lcom/sgscq/vpn/l1;->a:Ljava/lang/String;

    .line 282
    .line 283
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v6

    .line 287
    if-eqz v6, :cond_10

    .line 288
    .line 289
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    goto :goto_9

    .line 293
    :cond_11
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 294
    .line 295
    move-object/from16 v2, p2

    .line 296
    .line 297
    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 298
    .line 299
    .line 300
    new-instance v2, Ljava/util/ArrayList;

    .line 301
    .line 302
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .line 304
    .line 305
    :goto_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    const-wide/16 v6, 0x0

    .line 310
    .line 311
    move-object v4, v5

    .line 312
    :cond_12
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 313
    .line 314
    .line 315
    move-result v8

    .line 316
    if-eqz v8, :cond_1b

    .line 317
    .line 318
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v8

    .line 322
    check-cast v8, Lcom/sgscq/vpn/l1;

    .line 323
    .line 324
    iget-object v9, v8, Lcom/sgscq/vpn/l1;->b:Ljava/util/List;

    .line 325
    .line 326
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 327
    .line 328
    .line 329
    move-result-object v10

    .line 330
    const/4 v11, 0x0

    .line 331
    :cond_13
    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 332
    .line 333
    .line 334
    move-result v12

    .line 335
    if-eqz v12, :cond_14

    .line 336
    .line 337
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v12

    .line 341
    check-cast v12, Ljava/lang/String;

    .line 342
    .line 343
    invoke-interface {v0, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v12

    .line 347
    if-nez v12, :cond_13

    .line 348
    .line 349
    add-int/lit8 v11, v11, 0x1

    .line 350
    .line 351
    goto :goto_c

    .line 352
    :cond_14
    if-gtz v11, :cond_15

    .line 353
    .line 354
    const-wide/16 v9, 0x0

    .line 355
    .line 356
    const-wide/16 v11, 0x0

    .line 357
    .line 358
    goto :goto_e

    .line 359
    :cond_15
    iget-wide v12, v8, Lcom/sgscq/vpn/l1;->d:D

    .line 360
    .line 361
    iget-boolean v10, v8, Lcom/sgscq/vpn/l1;->e:Z

    .line 362
    .line 363
    if-eqz v10, :cond_16

    .line 364
    .line 365
    const-wide/16 v14, 0x0

    .line 366
    .line 367
    cmpl-double v14, v12, v14

    .line 368
    .line 369
    if-lez v14, :cond_16

    .line 370
    .line 371
    move-wide v11, v12

    .line 372
    goto :goto_d

    .line 373
    :cond_16
    iget-wide v14, v8, Lcom/sgscq/vpn/l1;->c:D

    .line 374
    .line 375
    if-eqz v10, :cond_17

    .line 376
    .line 377
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 378
    .line 379
    .line 380
    move-result v9

    .line 381
    add-int/lit8 v9, v9, -0x1

    .line 382
    .line 383
    const/4 v10, 0x0

    .line 384
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    .line 385
    .line 386
    .line 387
    move-result v9

    .line 388
    int-to-double v9, v9

    .line 389
    mul-double/2addr v9, v12

    .line 390
    add-double/2addr v14, v9

    .line 391
    :cond_17
    int-to-double v9, v11

    .line 392
    div-double/2addr v14, v9

    .line 393
    move-wide v11, v14

    .line 394
    :goto_d
    const-wide/16 v9, 0x0

    .line 395
    .line 396
    :goto_e
    cmpg-double v9, v11, v9

    .line 397
    .line 398
    if-gtz v9, :cond_18

    .line 399
    .line 400
    goto :goto_b

    .line 401
    :cond_18
    iget-object v8, v8, Lcom/sgscq/vpn/l1;->b:Ljava/util/List;

    .line 402
    .line 403
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 404
    .line 405
    .line 406
    move-result-object v8

    .line 407
    :cond_19
    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 408
    .line 409
    .line 410
    move-result v9

    .line 411
    if-eqz v9, :cond_12

    .line 412
    .line 413
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v9

    .line 417
    check-cast v9, Ljava/lang/String;

    .line 418
    .line 419
    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result v10

    .line 423
    if-eqz v10, :cond_1a

    .line 424
    .line 425
    goto :goto_f

    .line 426
    :cond_1a
    cmpl-double v10, v11, v6

    .line 427
    .line 428
    if-lez v10, :cond_19

    .line 429
    .line 430
    move-object v4, v9

    .line 431
    move-wide v6, v11

    .line 432
    goto :goto_f

    .line 433
    :cond_1b
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 434
    .line 435
    .line 436
    move-result v3

    .line 437
    if-eqz v3, :cond_1c

    .line 438
    .line 439
    return-object v2

    .line 440
    :cond_1c
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    goto/16 :goto_a
.end method

.method public static g(ILjava/util/ArrayList;Ljava/util/Map;)V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    if-gt v2, v3, :cond_0

    sget-object v3, Lcom/sgscq/vpn/m1;->k:[Ljava/lang/String;

    aget-object v3, v3, p0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v4, "gem_id"

    const-string v6, "bore_type"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "is_lock"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v5, v3

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "bore_id"

    invoke-static {v5, v10, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    const-string v6, "gem_id"

    filled-new-array {v5, v3, v6, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "pk_id"

    invoke-static {v5, v4, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "bore_list"

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static h(Lcom/sgscq/vpn/w1;Ljava/lang/String;)I
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "general_fate_id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/sgscq/vpn/m1;->e(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    :catch_0
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sgscq/vpn/w1;->D0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v4, "fate_addition_type"

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "fate_effect"

    const-string v6, "-1"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-lt v4, v3, :cond_1

    const/4 v3, 0x4

    if-le v4, v3, :cond_3

    goto :goto_0

    :cond_3
    cmpl-double v3, v5, v1

    if-lez v3, :cond_1

    move v0, v4

    move-wide v1, v5

    goto :goto_0

    :cond_4
    return v0
.end method

.method public static i(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "elite_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const-string v0, "10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const-string v0, "300000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string v0, "name"

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->m1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "\u526f\u672c"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v2
.end method

.method public static k()Ljava/util/LinkedHashSet;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, "skill_advanced.json"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_3

    .line 20
    .line 21
    :cond_0
    new-instance v2, Ljava/io/File;

    .line 22
    .line 23
    const-string v3, "docs/game_data_json/skill_advanced.json"

    .line 24
    .line 25
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_2

    .line 33
    .line 34
    new-instance v4, Ljava/io/File;

    .line 35
    .line 36
    const-string v5, ""

    .line 37
    .line 38
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/4 v5, 0x0

    .line 46
    :goto_0
    const/4 v6, 0x5

    .line 47
    if-ge v5, v6, :cond_2

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-nez v6, :cond_2

    .line 54
    .line 55
    if-nez v4, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    new-instance v2, Ljava/io/File;

    .line 59
    .line 60
    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    add-int/lit8 v5, v5, 0x1

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    :try_start_0
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->W0(Ljava/io/File;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_2

    .line 81
    :catch_0
    return-object v0

    .line 82
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-nez v2, :cond_4

    .line 89
    .line 90
    :try_start_1
    new-instance v2, La/o;

    .line 91
    .line 92
    invoke-direct {v2}, La/o;-><init>()V

    .line 93
    .line 94
    .line 95
    new-instance v3, Lcom/sgscq/vpn/EliteLadderOpponents$1;

    .line 96
    .line 97
    invoke-direct {v3}, Lcom/sgscq/vpn/EliteLadderOpponents$1;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v2, v1, v3}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Ljava/util/Map;

    .line 109
    .line 110
    if-eqz v1, :cond_4

    .line 111
    .line 112
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    .line 118
    .line 119
    :catch_1
    :cond_4
    return-object v0
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;IJ)Ljava/util/LinkedHashMap;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, "_eq"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "pk_id"

    .line 27
    .line 28
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string v1, "general_pk_id"

    .line 32
    .line 33
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    const-string p0, "skill_id"

    .line 37
    .line 38
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const-string p0, "id"

    .line 42
    .line 43
    const-string v1, "skill_type"

    .line 44
    .line 45
    invoke-static {v0, p0, p1, p2, v1}, Lcom/sgscq/vpn/handler/l;->b(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string p0, "card_type"

    .line 49
    .line 50
    const-string p1, "4"

    .line 51
    .line 52
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    const/16 p0, 0x1e

    .line 56
    .line 57
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v1, "level"

    .line 62
    .line 63
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    const-string p1, "skill_level"

    .line 67
    .line 68
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    const-string p0, "position"

    .line 76
    .line 77
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    const-string p0, "pos"

    .line 85
    .line 86
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    const-string p0, "skill_position"

    .line 94
    .line 95
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    const-string p0, "get_time"

    .line 103
    .line 104
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    const-string p0, "is_natural"

    .line 112
    .line 113
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 114
    .line 115
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    const-string p0, "exp"

    .line 119
    .line 120
    const-string p1, "0"

    .line 121
    .line 122
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    const-string p0, "extra_level"

    .line 126
    .line 127
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    const-string p0, "advanced_level"

    .line 131
    .line 132
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    return-object v0
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/LinkedHashMap;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pk_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "general_pk_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "skill_id"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "id"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "skill_code"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "card_type"

    const-string p1, "4"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "level"

    const-string p1, "1"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "skill_level"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "position"

    const-string p1, "0"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pos"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "skill_position"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "get_time"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "is_natural"

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "exp"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "extra_level"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "advanced_level"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static n(ILcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3

    .line 1
    invoke-virtual {p1, p3}, Lcom/sgscq/vpn/w1;->Z1(Ljava/lang/String;)Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "skill_id"

    .line 6
    .line 7
    const-string v1, "id"

    .line 8
    .line 9
    invoke-virtual {p1, v1, p3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p1, v0, p3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    const-string v0, "pk_id"

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, "_nat"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const-string v0, "general_pk_id"

    .line 44
    .line 45
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const-string p2, "skill_id"

    .line 49
    .line 50
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    const-string p2, "id"

    .line 54
    .line 55
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    const-string p2, "is_natural"

    .line 59
    .line 60
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    const-string p2, "position"

    .line 66
    .line 67
    const-string v0, "1"

    .line 68
    .line 69
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    const-string p2, "pos"

    .line 73
    .line 74
    const-string v0, "1"

    .line 75
    .line 76
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    const-string p2, "skill_position"

    .line 80
    .line 81
    const-string v0, "1"

    .line 82
    .line 83
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    const-string p2, "skill_level"

    .line 87
    .line 88
    const/16 v0, 0x1e

    .line 89
    .line 90
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    const-string p2, "level"

    .line 98
    .line 99
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    const-string p2, "extra_level"

    .line 107
    .line 108
    const-string v0, "0"

    .line 109
    .line 110
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    if-lez p0, :cond_2

    .line 114
    .line 115
    sget-object p2, Lcom/sgscq/vpn/m1;->r:Ljava/util/LinkedHashSet;

    .line 116
    .line 117
    if-nez p2, :cond_1

    .line 118
    .line 119
    const-class v0, Lcom/sgscq/vpn/m1;

    .line 120
    .line 121
    monitor-enter v0

    .line 122
    :try_start_0
    sget-object p2, Lcom/sgscq/vpn/m1;->r:Ljava/util/LinkedHashSet;

    .line 123
    .line 124
    if-nez p2, :cond_0

    .line 125
    .line 126
    invoke-static {}, Lcom/sgscq/vpn/m1;->k()Ljava/util/LinkedHashSet;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    sput-object p2, Lcom/sgscq/vpn/m1;->r:Ljava/util/LinkedHashSet;

    .line 131
    .line 132
    :cond_0
    monitor-exit v0

    .line 133
    goto :goto_0

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    throw p0

    .line 137
    :cond_1
    :goto_0
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    if-eqz p2, :cond_2

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_2
    const/4 p0, 0x0

    .line 145
    :goto_1
    const-string p2, "advanced_level"

    .line 146
    .line 147
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    return-object p1
.end method

.method public static o(Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/sgscq/vpn/w1;->N1()V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/sgscq/vpn/w1;->u:Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    instance-of v1, v1, Ljava/util/Map;

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget-object v0, v0, Lcom/sgscq/vpn/w1;->u:Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    move v0, v2

    .line 48
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v1, v2}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-le v1, v0, :cond_2

    .line 65
    .line 66
    move v0, v1

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    move v2, v0

    .line 69
    :goto_1
    return v2
.end method

.method public static p(Ljava/util/Map;)V
    .locals 2

    .line 1
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "refine_level"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ""

    const-string v1, "refine_bonus_type"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "shangshen_jinglian_up"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static q(Lcom/sgscq/vpn/w1;Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->T0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    :try_start_0
    const-string p1, "skill_type"

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_3
    :goto_0
    return v0
.end method

.method public static r(ILjava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public static s(Lcom/sgscq/vpn/w1;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_6

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p2}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :cond_3
    const-string v3, "general_fate_id"

    .line 62
    .line 63
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v2}, Lcom/sgscq/vpn/m1;->e(Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_c

    .line 80
    .line 81
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {p0, v3}, Lcom/sgscq/vpn/w1;->D0(Ljava/lang/String;)Ljava/util/Map;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    if-nez v3, :cond_5

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    const-string v4, "fate_type"

    .line 97
    .line 98
    const-string v5, "1"

    .line 99
    .line 100
    invoke-static {v3, v4, v1, v5}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-nez v4, :cond_6

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_6
    const-string v4, "fate_object"

    .line 108
    .line 109
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-static {v3}, Lcom/sgscq/vpn/m1;->e(Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-eqz v4, :cond_4

    .line 126
    .line 127
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    const/4 v7, 0x6

    .line 140
    if-ne v6, v7, :cond_7

    .line 141
    .line 142
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-eqz v6, :cond_8

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_8
    invoke-virtual {p0, v4}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    if-nez v6, :cond_9

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_9
    const-string v7, "is_open"

    .line 157
    .line 158
    invoke-static {v6, v7, v1, v5}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    if-nez v7, :cond_a

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_a
    const-string v7, "resource_id"

    .line 166
    .line 167
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    if-eqz v6, :cond_7

    .line 172
    .line 173
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    if-eqz v6, :cond_b

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_b
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_c
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    :cond_d
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_e

    .line 197
    .line 198
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    check-cast v2, Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-nez v3, :cond_d

    .line 209
    .line 210
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    :cond_f
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_13

    .line 223
    .line 224
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Ljava/lang/String;

    .line 229
    .line 230
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    if-nez v2, :cond_f

    .line 235
    .line 236
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-eqz v2, :cond_10

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_10
    invoke-static {p0, v0}, Lcom/sgscq/vpn/m1;->q(Lcom/sgscq/vpn/w1;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-lez v2, :cond_f

    .line 248
    .line 249
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    if-nez v3, :cond_11

    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-interface {p4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-eqz v2, :cond_12

    .line 269
    .line 270
    goto :goto_5

    .line 271
    :cond_12
    return-object v0

    .line 272
    :cond_13
    :goto_6
    return-object v1
.end method

.method public static t(Lcom/sgscq/vpn/w1;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;I)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move-object v2, v0

    .line 5
    :goto_0
    sget-object v3, Lcom/sgscq/vpn/m1;->i:[Ljava/lang/String;

    .line 6
    .line 7
    array-length v4, v3

    .line 8
    sget-object v5, Lcom/sgscq/vpn/m1;->p:Ljava/util/LinkedHashSet;

    .line 9
    .line 10
    if-ge v1, v4, :cond_3

    .line 11
    .line 12
    add-int v4, p3, v1

    .line 13
    .line 14
    array-length v6, v3

    .line 15
    invoke-static {v4, v6}, Ljava/lang/Math;->floorMod(II)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    aget-object v3, v3, v4

    .line 20
    .line 21
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_2

    .line 26
    .line 27
    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-static {p0, v3}, Lcom/sgscq/vpn/m1;->q(Lcom/sgscq/vpn/w1;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    move-object v2, v3

    .line 56
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->i0()Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    :cond_4
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_b

    .line 72
    .line 73
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    const/4 v4, 0x6

    .line 84
    if-ne v3, v4, :cond_4

    .line 85
    .line 86
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_5

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_5
    invoke-virtual {p0, v1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    if-nez v3, :cond_6

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_6
    const-string v4, "is_open"

    .line 101
    .line 102
    const-string v6, "1"

    .line 103
    .line 104
    invoke-static {v3, v4, v0, v6}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-nez v4, :cond_7

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_7
    const-string v4, "resource_id"

    .line 112
    .line 113
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    if-eqz v3, :cond_4

    .line 118
    .line 119
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_8

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_8
    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_9

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_9
    invoke-static {p0, v1}, Lcom/sgscq/vpn/m1;->q(Lcom/sgscq/vpn/w1;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-nez v3, :cond_a

    .line 150
    .line 151
    return-object v1

    .line 152
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-eqz v3, :cond_4

    .line 157
    .line 158
    move-object v2, v1

    .line 159
    goto :goto_2

    .line 160
    :cond_b
    return-object v2
.end method

.method public static u(Lcom/sgscq/vpn/w1;Ljava/util/LinkedHashSet;II)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lcom/sgscq/vpn/m1;->i:[Ljava/lang/String;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    sget-object v3, Lcom/sgscq/vpn/m1;->p:Ljava/util/LinkedHashSet;

    .line 6
    .line 7
    if-ge v0, v2, :cond_2

    .line 8
    .line 9
    add-int v2, p3, v0

    .line 10
    .line 11
    array-length v4, v1

    .line 12
    invoke-static {v2, v4}, Ljava/lang/Math;->floorMod(II)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    aget-object v1, v1, v2

    .line 17
    .line 18
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-static {p0, v1}, Lcom/sgscq/vpn/m1;->q(Lcom/sgscq/vpn/w1;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-ne v2, p2, :cond_1

    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->i0()Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const-string v4, ""

    .line 59
    .line 60
    if-eqz v2, :cond_a

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    const/4 v6, 0x6

    .line 73
    if-ne v5, v6, :cond_3

    .line 74
    .line 75
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_4

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    invoke-virtual {p0, v2}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    if-nez v5, :cond_5

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    const-string v6, "is_open"

    .line 90
    .line 91
    const-string v7, "1"

    .line 92
    .line 93
    invoke-static {v5, v6, v4, v7}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-nez v4, :cond_6

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_6
    const-string v4, "resource_id"

    .line 101
    .line 102
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    if-eqz v4, :cond_3

    .line 107
    .line 108
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_7

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_7
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_8

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_8
    invoke-static {p0, v2}, Lcom/sgscq/vpn/m1;->q(Lcom/sgscq/vpn/w1;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eq v4, p2, :cond_9

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    if-eqz p0, :cond_b

    .line 142
    .line 143
    return-object v4

    .line 144
    :cond_b
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    invoke-static {p3, p0}, Ljava/lang/Math;->floorMod(II)I

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    check-cast p0, Ljava/lang/String;

    .line 160
    .line 161
    return-object p0
.end method

.method public static v(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/util/LinkedHashSet;I)Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->i0()Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_6

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x6

    .line 36
    if-ne v3, v4, :cond_0

    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-nez v3, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const-string v4, "is_open"

    .line 60
    .line 61
    const-string v5, ""

    .line 62
    .line 63
    const-string v6, "1"

    .line 64
    .line 65
    invoke-static {v3, v4, v5, v6}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_4

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    const-string v4, "resource_id"

    .line 73
    .line 74
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    if-eqz v3, :cond_0

    .line 79
    .line 80
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_5

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_6
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 96
    .line 97
    .line 98
    new-instance p0, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-eqz p2, :cond_8

    .line 112
    .line 113
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    check-cast p2, Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-lt v0, p3, :cond_7

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_7
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_8
    :goto_2
    return-object p0
.end method
