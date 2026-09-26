.class public final Lcom/sgscq/vpn/w1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final U:Ljava/util/HashSet;

.field public static final V:[Ljava/lang/String;

.field public static W:Lcom/sgscq/vpn/w1;

.field public static volatile X:Z


# instance fields
.field public A:Ljava/util/ArrayList;

.field public B:Ljava/util/HashMap;

.field public C:Ljava/util/HashMap;

.field public D:Ljava/util/Map;

.field public E:Ljava/util/ArrayList;

.field public F:Ljava/lang/Object;

.field public G:Ljava/util/HashMap;

.field public H:Ljava/util/LinkedHashMap;

.field public I:Ljava/util/Map;

.field public J:Ljava/util/HashMap;

.field public K:Ljava/util/HashMap;

.field public L:Ljava/util/HashMap;

.field public M:Ljava/util/HashMap;

.field public N:Ljava/util/HashMap;

.field public O:Ljava/util/HashMap;

.field public P:Ljava/util/HashMap;

.field public Q:Ljava/util/HashMap;

.field public R:Lcom/sgscq/vpn/a7;

.field public S:Ljava/util/HashMap;

.field public T:Ljava/util/HashMap;

.field public final a:Landroid/content/Context;

.field public final b:La/o;

.field public c:Lcom/sgscq/vpn/config/i;

.field public d:Lp/d;

.field public e:Ljava/util/HashMap;

.field public f:Ljava/util/ArrayList;

.field public g:Ljava/util/HashMap;

.field public h:Ljava/util/ArrayList;

.field public i:Ljava/util/Map;

.field public j:Ljava/util/Map;

.field public k:Ljava/util/HashMap;

.field public l:Ljava/util/ArrayList;

.field public m:Ljava/util/HashMap;

.field public n:Ljava/util/ArrayList;

.field public o:Ljava/util/HashMap;

.field public p:Ljava/util/Map;

.field public q:Ljava/util/HashMap;

.field public r:Ljava/util/HashMap;

.field public s:Ljava/util/HashMap;

.field public t:Ljava/util/LinkedHashMap;

.field public u:Ljava/util/LinkedHashMap;

.field public v:Ljava/util/ArrayList;

.field public w:Ljava/util/ArrayList;

.field public x:Ljava/util/ArrayList;

.field public y:Ljava/util/HashMap;

.field public z:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "131007"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sgscq/vpn/w1;->U:Ljava/util/HashSet;

    const-string v0, "111016"

    const-string v1, "121007"

    const-string v2, "111009"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/w1;->V:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/o;

    invoke-direct {v0}, La/o;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/w1;->b:La/o;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    return-void
.end method

.method public static A(Ljava/util/Map;)I
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "TeamGeneral"

    invoke-static {v1, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "fightPoint"

    const-string v5, "fighting"

    const-string v6, "fight_point"

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "general_id"

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "general_pk_id"

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "team_general_id"

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "pk_id"

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v7, "general_fighting"

    filled-new-array {v7, v5, v6, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sgscq/vpn/w1;->a0(Ljava/util/Map;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    return v2

    :cond_2
    const-string v0, "user_fighting"

    const-string v1, "user_ability"

    filled-new-array {v6, v0, v5, v4, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/w1;->a0(Ljava/util/Map;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static A1(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 4

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
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p0}, Lcom/sgscq/vpn/w1;->r1(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    return v3

    .line 27
    :cond_0
    const-string p0, "is_natural"

    .line 28
    .line 29
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lcom/sgscq/vpn/w1;->z1(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    return v3

    .line 40
    :cond_1
    const-string p0, "pos"

    .line 41
    .line 42
    const-string v0, "skill_position"

    .line 43
    .line 44
    const-string v2, "position"

    .line 45
    .line 46
    invoke-static {p1, p0, v1, v0, v2}, Lc/a;->k(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string p1, "1"

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    return p0
.end method

.method public static A2(ILjava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string p1, "num"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "item_num"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static B(Ljava/util/Map;)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "govern"

    .line 4
    .line 5
    const-string v2, "govern_value"

    .line 6
    .line 7
    const-string v3, "user_govern"

    .line 8
    .line 9
    const-string v4, "user_govern_value"

    .line 10
    .line 11
    const-string v5, "leadership"

    .line 12
    .line 13
    const-string v6, "leadership_num"

    .line 14
    .line 15
    const-string v7, "leadershipNum"

    .line 16
    .line 17
    const-string v8, "user_leadership"

    .line 18
    .line 19
    const-string v9, "user_leadership_num"

    .line 20
    .line 21
    const-string v10, "user_leadershipNum"

    .line 22
    .line 23
    const-string v11, "command"

    .line 24
    .line 25
    const-string v12, "user_command"

    .line 26
    .line 27
    const-string v13, "tongyu"

    .line 28
    .line 29
    const-string v14, "user_tongyu"

    .line 30
    .line 31
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/16 v2, 0xe

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    :cond_0
    move v5, v3

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v4, v3

    .line 43
    :goto_0
    if-ge v4, v2, :cond_0

    .line 44
    .line 45
    aget-object v5, v1, v4

    .line 46
    .line 47
    invoke-static {v5, v0}, Lcom/sgscq/vpn/w1;->b1(Ljava/lang/String;Ljava/util/Map;)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-lez v5, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :goto_1
    if-lez v5, :cond_3

    .line 58
    .line 59
    return v5

    .line 60
    :cond_3
    if-eqz v0, :cond_4

    .line 61
    .line 62
    const-string v1, "user_info"

    .line 63
    .line 64
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    goto :goto_2

    .line 69
    :cond_4
    const/4 v0, 0x0

    .line 70
    :goto_2
    instance-of v1, v0, Ljava/util/Map;

    .line 71
    .line 72
    if-eqz v1, :cond_7

    .line 73
    .line 74
    check-cast v0, Ljava/util/Map;

    .line 75
    .line 76
    const-string v4, "govern"

    .line 77
    .line 78
    const-string v5, "govern_value"

    .line 79
    .line 80
    const-string v6, "user_govern"

    .line 81
    .line 82
    const-string v7, "user_govern_value"

    .line 83
    .line 84
    const-string v8, "leadership"

    .line 85
    .line 86
    const-string v9, "leadership_num"

    .line 87
    .line 88
    const-string v10, "leadershipNum"

    .line 89
    .line 90
    const-string v11, "user_leadership"

    .line 91
    .line 92
    const-string v12, "user_leadership_num"

    .line 93
    .line 94
    const-string v13, "user_leadershipNum"

    .line 95
    .line 96
    const-string v14, "command"

    .line 97
    .line 98
    const-string v15, "user_command"

    .line 99
    .line 100
    const-string v16, "tongyu"

    .line 101
    .line 102
    const-string v17, "user_tongyu"

    .line 103
    .line 104
    filled-new-array/range {v4 .. v17}, [Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-nez v0, :cond_5

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_5
    move v4, v3

    .line 112
    :goto_3
    if-ge v4, v2, :cond_7

    .line 113
    .line 114
    aget-object v5, v1, v4

    .line 115
    .line 116
    invoke-static {v5, v0}, Lcom/sgscq/vpn/w1;->b1(Ljava/lang/String;Ljava/util/Map;)I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-lez v5, :cond_6

    .line 121
    .line 122
    move v3, v5

    .line 123
    goto :goto_4

    .line 124
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_7
    :goto_4
    return v3
.end method

.method public static B1(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

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

    const-string v1, "general_pk_id"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static B2(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public static C(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v2, 0x31

    if-ne p0, v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/16 v2, 0x32

    if-ne p0, v2, :cond_2

    return v0

    :cond_2
    const/16 v0, 0x33

    if-ne p0, v0, :cond_3

    return v1

    :cond_3
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method public static C2(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static D1(Ljava/util/Map;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "insight_grow_type"

    .line 6
    .line 7
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "upgrade_exp_type"

    .line 16
    .line 17
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "insight_upgrade_exp_type"

    .line 26
    .line 27
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v3}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v4, "eated_exp_type"

    .line 36
    .line 37
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v4}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const-string v5, "zhanjicailiao"

    .line 46
    .line 47
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    return v0

    .line 54
    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    return v0

    .line 61
    :cond_2
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    return v0

    .line 68
    :cond_3
    const-string v1, "zhanji"

    .line 69
    .line 70
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    return v0

    .line 77
    :cond_4
    const-string v1, "insight_max_level"

    .line 78
    .line 79
    const-string v2, "0"

    .line 80
    .line 81
    invoke-static {p0, v1, v2, v0}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-lez p0, :cond_5

    .line 86
    .line 87
    const/4 v0, 0x1

    .line 88
    :cond_5
    return v0
.end method

.method public static D2(Ljava/util/Map;)Z
    .locals 15

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "General"

    .line 7
    .line 8
    invoke-static {v1, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const-string v3, ""

    .line 21
    .line 22
    const-string v4, "general_id"

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/util/Map;

    .line 31
    .line 32
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Lcom/sgscq/vpn/w1;->i2(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v2, "surrender_progress"

    .line 56
    .line 57
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    instance-of v5, v2, Ljava/util/Map;

    .line 62
    .line 63
    if-nez v5, :cond_2

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_2
    check-cast v2, Ljava/util/Map;

    .line 67
    .line 68
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_6

    .line 81
    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Ljava/util/Map$Entry;

    .line 87
    .line 88
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    check-cast v6, Ljava/lang/String;

    .line 93
    .line 94
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    if-eqz v6, :cond_4

    .line 99
    .line 100
    const-string v7, "claimed_"

    .line 101
    .line 102
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_4

    .line 107
    .line 108
    invoke-static {v5}, Lcom/sgscq/vpn/w1;->F1(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-eqz v7, :cond_4

    .line 113
    .line 114
    const/16 v5, 0x8

    .line 115
    .line 116
    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-static {v5}, Lcom/sgscq/vpn/w1;->i2(Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    goto :goto_2

    .line 125
    :cond_4
    instance-of v7, v5, Ljava/util/Map;

    .line 126
    .line 127
    if-eqz v7, :cond_3

    .line 128
    .line 129
    check-cast v5, Ljava/util/Map;

    .line 130
    .line 131
    const-string v7, "claimed"

    .line 132
    .line 133
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    const-string v8, "rewarded"

    .line 138
    .line 139
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-static {v7}, Lcom/sgscq/vpn/w1;->F1(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    if-nez v7, :cond_5

    .line 148
    .line 149
    invoke-static {v5}, Lcom/sgscq/vpn/w1;->F1(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-eqz v5, :cond_3

    .line 154
    .line 155
    :cond_5
    invoke-static {v6}, Lcom/sgscq/vpn/w1;->i2(Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    :goto_2
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_6
    :goto_3
    const/4 v2, 0x0

    .line 164
    invoke-static {v2}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v2}, Lcom/sgscq/vpn/w1;->V1()Lcom/sgscq/vpn/a7;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    new-instance v5, Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v6, "Atlas"

    .line 178
    .line 179
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    instance-of v7, v6, Ljava/util/Map;

    .line 184
    .line 185
    if-nez v7, :cond_7

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_7
    check-cast v6, Ljava/util/Map;

    .line 189
    .line 190
    const-string v7, "add"

    .line 191
    .line 192
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    invoke-static {v7, v5}, Lcom/sgscq/vpn/w1;->n(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 197
    .line 198
    .line 199
    const-string v7, "upd"

    .line 200
    .line 201
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    invoke-static {v6, v5}, Lcom/sgscq/vpn/w1;->n(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 206
    .line 207
    .line 208
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    const/4 v6, 0x0

    .line 213
    move v7, v6

    .line 214
    :cond_8
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 215
    .line 216
    .line 217
    move-result v8

    .line 218
    if-eqz v8, :cond_f

    .line 219
    .line 220
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    check-cast v8, Ljava/util/Map;

    .line 225
    .line 226
    const-string v9, "type"

    .line 227
    .line 228
    const-string v10, "0"

    .line 229
    .line 230
    invoke-static {v8, v9, v10, v6}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 231
    .line 232
    .line 233
    move-result v9

    .line 234
    const/4 v11, 0x1

    .line 235
    if-eq v9, v11, :cond_9

    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_9
    const-string v9, "pk_id"

    .line 239
    .line 240
    invoke-interface {v8, v9, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v9

    .line 244
    invoke-interface {v8, v4, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v9

    .line 248
    invoke-static {v9}, Lcom/sgscq/vpn/w1;->i2(Ljava/lang/Object;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v9

    .line 252
    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v12

    .line 256
    const-string v13, "general_status"

    .line 257
    .line 258
    if-eqz v12, :cond_e

    .line 259
    .line 260
    invoke-virtual {v2, v9}, Lcom/sgscq/vpn/a7;->b(Ljava/lang/String;)Ljava/util/Map;

    .line 261
    .line 262
    .line 263
    move-result-object v12

    .line 264
    invoke-virtual {v1, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v9

    .line 268
    if-eqz v9, :cond_b

    .line 269
    .line 270
    if-eqz v12, :cond_a

    .line 271
    .line 272
    invoke-static {p0, v12}, Lcom/sgscq/vpn/handler/d0;->R(Ljava/util/Map;Ljava/util/Map;)Z

    .line 273
    .line 274
    .line 275
    move-result v9

    .line 276
    goto :goto_6

    .line 277
    :cond_a
    move v9, v11

    .line 278
    goto :goto_6

    .line 279
    :cond_b
    move v9, v6

    .line 280
    :goto_6
    const-string v12, "1"

    .line 281
    .line 282
    if-eqz v9, :cond_c

    .line 283
    .line 284
    move-object v14, v10

    .line 285
    goto :goto_7

    .line 286
    :cond_c
    move-object v14, v12

    .line 287
    :goto_7
    invoke-static {v13, v14, v8}, Lcom/sgscq/vpn/w1;->o2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 288
    .line 289
    .line 290
    move-result v13

    .line 291
    or-int/2addr v7, v13

    .line 292
    const-string v13, "atlas_status"

    .line 293
    .line 294
    if-eqz v9, :cond_d

    .line 295
    .line 296
    const-string v9, "2"

    .line 297
    .line 298
    invoke-static {v13, v9, v8}, Lcom/sgscq/vpn/w1;->o2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 299
    .line 300
    .line 301
    move-result v8

    .line 302
    goto :goto_8

    .line 303
    :cond_d
    invoke-static {v8, v13, v10, v6}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 304
    .line 305
    .line 306
    move-result v9

    .line 307
    if-ge v9, v11, :cond_8

    .line 308
    .line 309
    invoke-static {v13, v12, v8}, Lcom/sgscq/vpn/w1;->o2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 310
    .line 311
    .line 312
    move-result v8

    .line 313
    goto :goto_8

    .line 314
    :cond_e
    invoke-static {v13, v10, v8}, Lcom/sgscq/vpn/w1;->o2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 315
    .line 316
    .line 317
    move-result v8

    .line 318
    :goto_8
    or-int/2addr v7, v8

    .line 319
    goto :goto_5

    .line 320
    :cond_f
    return v7
.end method

.method public static E1(Ljava/util/Map;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    const-string v0, "skill_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static F(Ljava/util/Map;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;)V
    .locals 7

    .line 1
    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "Atlas"

    invoke-static {v0, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "pk_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "general_id"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sgscq/vpn/w1;->i2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const-string v5, "atlas_status"

    const-string v6, "0"

    if-nez v4, :cond_3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5, v6, v0}, Lcom/sgscq/vpn/w1;->o2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    const-string v1, "general_status"

    invoke-static {v1, v6, v0}, Lcom/sgscq/vpn/w1;->o2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    goto :goto_0

    :cond_3
    const-string v3, "skill_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sgscq/vpn/w1;->i2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v5, v6, v0}, Lcom/sgscq/vpn/w1;->o2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static F1(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-ne p0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public static G(Ljava/lang/Object;ILjava/util/LinkedHashMap;)V
    .locals 4

    .line 1
    instance-of v0, p0, Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    check-cast p0, Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_5

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/String;

    .line 33
    .line 34
    const/4 v2, -0x1

    .line 35
    invoke-static {v1, v2}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-lez v1, :cond_1

    .line 40
    .line 41
    if-le v1, p1, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    instance-of v1, v1, Ljava/util/Map;

    .line 49
    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/util/Map;

    .line 58
    .line 59
    const-string v1, "buff_type"

    .line 60
    .line 61
    const-string v2, "0"

    .line 62
    .line 63
    const-string v3, "7"

    .line 64
    .line 65
    invoke-static {v0, v1, v2, v3}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_4

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    const-string v1, "buff_effect"

    .line 73
    .line 74
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    instance-of v1, v0, Ljava/util/List;

    .line 79
    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    check-cast v0, Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const/4 v2, 0x2

    .line 89
    if-lt v1, v2, :cond_1

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const/4 v2, 0x1

    .line 101
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-nez v2, :cond_1

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-nez v2, :cond_1

    .line 120
    .line 121
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_5
    return-void
.end method

.method public static H(Ljava/lang/Object;Ljava/util/LinkedHashMap;)V
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p0, Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0, p1}, Lcom/sgscq/vpn/w1;->H(Ljava/lang/Object;Ljava/util/LinkedHashMap;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    check-cast p0, Ljava/util/Map;

    .line 32
    .line 33
    const-string v0, "value"

    .line 34
    .line 35
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0, p1}, Lcom/sgscq/vpn/w1;->H(Ljava/lang/Object;Ljava/util/LinkedHashMap;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    const-string v0, "buff_type"

    .line 50
    .line 51
    const-string v1, "0"

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-static {p0, v0, v1, v2}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v1, 0x7

    .line 59
    if-eq v0, v1, :cond_4

    .line 60
    .line 61
    return-void

    .line 62
    :cond_4
    const-string v0, "buff_effect"

    .line 63
    .line 64
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    instance-of v0, p0, Ljava/util/List;

    .line 69
    .line 70
    if-nez v0, :cond_5

    .line 71
    .line 72
    return-void

    .line 73
    :cond_5
    check-cast p0, Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const/4 v1, 0x2

    .line 80
    if-lt v0, v1, :cond_6

    .line 81
    .line 82
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const/4 v1, 0x1

    .line 91
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    :cond_6
    return-void
.end method

.method public static H2(Ljava/util/Map;)I
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/w1;->A(Ljava/util/Map;)I

    move-result v0

    const-string v1, "fightPoint"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fight_point"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "user_ability"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "user_fighting"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fighting"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public static I(Ljava/lang/Object;ILjava/util/LinkedHashMap;)V
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    if-le v1, p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sgscq/vpn/w1;->H(Ljava/lang/Object;Ljava/util/LinkedHashMap;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static I2(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2

    .line 1
    const-string v0, "general_pk_id"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {p1, v0, v1, p0}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "pk_id"

    .line 12
    .line 13
    invoke-static {p1, v0, v1, p0}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-string v0, "general_id"

    .line 20
    .line 21
    invoke-static {p1, v0, v1, p0}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 31
    :goto_1
    return p0
.end method

.method public static J(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static J2(ILjava/util/ArrayList;)Ljava/util/Map;
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr p0, v0

    if-ltz p0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static K(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "null"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static K2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)D
    .locals 1

    .line 1
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :cond_0
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_1
    if-eqz p0, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    move-object p0, p2

    .line 25
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :try_start_0
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 30
    .line 31
    .line 32
    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_1

    .line 34
    :catch_0
    const-wide/16 p1, 0x0

    .line 35
    .line 36
    :goto_1
    :try_start_1
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 37
    .line 38
    .line 39
    move-result-wide p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    :catch_1
    return-wide p1
.end method

.method public static L(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1

    .line 1
    const-string v0, "0"

    invoke-static {p0, v0, p3}, Lcom/sgscq/vpn/w1;->K(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static M(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V
    .locals 2

    .line 1
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static N(Ljava/util/List;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dungeon"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "boss"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static O(Ljava/lang/String;Ljava/util/Map;)D
    .locals 6

    .line 1
    const-string v0, "culture_attr_"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "cultivate_attr_"

    .line 8
    .line 9
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "training_attr_"

    .line 14
    .line 15
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    filled-new-array {v0, v1, p0}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 v0, 0x0

    .line 24
    :goto_0
    const/4 v1, 0x3

    .line 25
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    if-ge v0, v1, :cond_1

    .line 28
    .line 29
    aget-object v1, p0, v0

    .line 30
    .line 31
    invoke-static {v1, p1}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    cmpl-double v1, v4, v2

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    move-wide v2, v4

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :goto_1
    return-wide v2
.end method

.method public static P(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "3"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static Q(Ljava/util/Map;Ljava/util/Map;)D
    .locals 8

    .line 1
    const-string v0, "general_pk_id"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "pk_id"

    .line 8
    .line 9
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "TeamGeneral"

    .line 18
    .line 19
    invoke-static {v1, v0, p0}, Lcom/sgscq/vpn/w1;->B1(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-wide v4, v2

    .line 34
    :goto_0
    const-string v1, "BuddyGeneral"

    .line 35
    .line 36
    invoke-static {v1, v0, p0}, Lcom/sgscq/vpn/w1;->B1(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    const-wide v0, 0x411e848000000000L    # 500000.0

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    add-double/2addr v4, v0

    .line 48
    :cond_1
    const/4 p0, 0x0

    .line 49
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "fight_point"

    .line 54
    .line 55
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v1, "fighting"

    .line 60
    .line 61
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "general_fighting"

    .line 66
    .line 67
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-nez v0, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 79
    .line 80
    .line 81
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :catch_0
    :goto_1
    add-double/2addr v4, v2

    .line 83
    const/4 v0, 0x1

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string v2, "level"

    .line 89
    .line 90
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v2, "general_level"

    .line 95
    .line 96
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v1, v0}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    int-to-double v1, v1

    .line 109
    const-wide v6, 0x40c3880000000000L    # 10000.0

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    mul-double/2addr v1, v6

    .line 115
    add-double/2addr v1, v4

    .line 116
    const-string v3, "breachLevel"

    .line 117
    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    const-string v4, "insight_level"

    .line 127
    .line 128
    invoke-interface {p1, v4, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-static {v3}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-static {v3, v0}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    int-to-double v3, v0

    .line 141
    const-wide v5, 0x408f400000000000L    # 1000.0

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    mul-double/2addr v3, v5

    .line 147
    add-double/2addr v3, v1

    .line 148
    const-string v0, "talent_point"

    .line 149
    .line 150
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v0, p0}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    int-to-double v0, v0

    .line 167
    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    .line 168
    .line 169
    mul-double/2addr v0, v5

    .line 170
    add-double/2addr v0, v3

    .line 171
    const-string v2, "ganoderma_num"

    .line 172
    .line 173
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-static {p1}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-static {p1, p0}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    int-to-double p0, p0

    .line 190
    add-double/2addr v0, p0

    .line 191
    return-wide v0
.end method

.method public static U(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 4

    .line 1
    const-string v0, "user_general_id"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "general_id"

    .line 6
    .line 7
    const-string v3, "general_pk_id"

    .line 8
    .line 9
    invoke-static {p1, v0, v1, v2, v3}, Lc/a;->k(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static V(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 v1, 0x4

    if-ne p0, v1, :cond_3

    return v0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public static X(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "General"

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/util/Map;

    .line 33
    .line 34
    const-string v1, "pk_id"

    .line 35
    .line 36
    invoke-static {v0, v1, p0}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 44
    return-object p0
.end method

.method public static varargs Z(Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)D
    .locals 6

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    if-ge v1, v0, :cond_2

    .line 6
    .line 7
    aget-object v4, p2, v1

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 26
    .line 27
    .line 28
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :catch_0
    return-wide v2

    .line 30
    :cond_0
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    :try_start_1
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 47
    .line 48
    .line 49
    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    :catch_1
    return-wide v2

    .line 51
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return-wide v2
.end method

.method public static Z0()Lcom/sgscq/vpn/w1;
    .locals 2

    .line 1
    sget-object v0, Lcom/sgscq/vpn/w1;->W:Lcom/sgscq/vpn/w1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GameDataManager not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)I
    .locals 9

    .line 1
    const-string v0, "pk_id"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {p1, v0, v1, p0}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {p2, v0, v1, p0}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/util/Map;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v1, v0

    .line 24
    :goto_0
    if-eqz p3, :cond_1

    .line 25
    .line 26
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    move-object v0, p3

    .line 31
    check-cast v0, Ljava/util/Map;

    .line 32
    .line 33
    :cond_1
    invoke-static {p1, v1}, Lcom/sgscq/vpn/w1;->p(Ljava/util/Map;Ljava/util/Map;)I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    const/4 v3, 0x4

    .line 38
    const/4 v4, 0x3

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x2

    .line 41
    const/4 v7, 0x1

    .line 42
    if-ne p3, v7, :cond_2

    .line 43
    .line 44
    move p3, v5

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    if-ne p3, v6, :cond_3

    .line 47
    .line 48
    move p3, v7

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    if-ne p3, v4, :cond_4

    .line 51
    .line 52
    move p3, v6

    .line 53
    goto :goto_1

    .line 54
    :cond_4
    if-ne p3, v3, :cond_5

    .line 55
    .line 56
    move p3, v4

    .line 57
    goto :goto_1

    .line 58
    :cond_5
    move p3, v3

    .line 59
    :goto_1
    invoke-static {p2, v0}, Lcom/sgscq/vpn/w1;->p(Ljava/util/Map;Ljava/util/Map;)I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-ne v8, v7, :cond_6

    .line 64
    .line 65
    move v3, v5

    .line 66
    goto :goto_2

    .line 67
    :cond_6
    if-ne v8, v6, :cond_7

    .line 68
    .line 69
    move v3, v7

    .line 70
    goto :goto_2

    .line 71
    :cond_7
    if-ne v8, v4, :cond_8

    .line 72
    .line 73
    move v3, v6

    .line 74
    goto :goto_2

    .line 75
    :cond_8
    if-ne v8, v3, :cond_9

    .line 76
    .line 77
    move v3, v4

    .line 78
    :cond_9
    :goto_2
    invoke-static {p3, v3}, Ljava/lang/Integer;->compare(II)I

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    if-eqz p3, :cond_a

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_a
    invoke-static {p2, v0}, Lcom/sgscq/vpn/w1;->o(Ljava/util/Map;Ljava/util/Map;)D

    .line 86
    .line 87
    .line 88
    move-result-wide p2

    .line 89
    invoke-static {p1, v1}, Lcom/sgscq/vpn/w1;->o(Ljava/util/Map;Ljava/util/Map;)D

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    if-eqz p3, :cond_b

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_b
    invoke-virtual {v2, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    :goto_3
    return p3
.end method

.method public static varargs a0(Ljava/util/Map;[Ljava/lang/String;)I
    .locals 5

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    :cond_1
    :try_start_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, p0

    return p0

    :catch_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static declared-synchronized a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;
    .locals 2

    .line 1
    const-class v0, Lcom/sgscq/vpn/w1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sgscq/vpn/w1;->W:Lcom/sgscq/vpn/w1;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sgscq/vpn/w1;

    invoke-direct {v1, p0}, Lcom/sgscq/vpn/w1;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sgscq/vpn/w1;->W:Lcom/sgscq/vpn/w1;

    :cond_0
    sget-object p0, Lcom/sgscq/vpn/w1;->W:Lcom/sgscq/vpn/w1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v1, "general_id"

    .line 7
    .line 8
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const-string v1, "skill_id"

    .line 15
    .line 16
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_1
    if-nez v1, :cond_2

    .line 21
    .line 22
    const-string v1, "equipment_id"

    .line 23
    .line 24
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_2
    if-nez v1, :cond_3

    .line 29
    .line 30
    const-string v1, "godness_id"

    .line 31
    .line 32
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :cond_3
    if-nez v1, :cond_4

    .line 37
    .line 38
    const-string v1, "pk_id"

    .line 39
    .line 40
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :cond_4
    if-nez v1, :cond_5

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_0
    return-object v0
.end method

.method public static b1(Ljava/lang/String;Ljava/util/Map;)I
    .locals 2

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    double-to-int p0, v0

    return p0

    :cond_2
    :goto_0
    return p1

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    double-to-int p0, v0

    return p0

    :catch_0
    :cond_5
    :goto_1
    return p1
.end method

.method public static b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 3

    .line 1
    if-eqz p3, :cond_7

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_7

    .line 8
    .line 9
    if-eqz p1, :cond_7

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    const-string v0, "Atlas"

    .line 19
    .line 20
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    instance-of v0, p3, Ljava/util/Map;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    check-cast p3, Ljava/util/Map;

    .line 30
    .line 31
    const-string v0, "add"

    .line 32
    .line 33
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    instance-of v0, p3, Ljava/util/List;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    check-cast p3, Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_7

    .line 53
    .line 54
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Ljava/util/Map;

    .line 59
    .line 60
    const-string v1, ""

    .line 61
    .line 62
    invoke-static {v0, p0, v1, p1}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const-string p0, "atlas_status"

    .line 70
    .line 71
    const-string p1, "1"

    .line 72
    .line 73
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->u1(Ljava/util/Map;)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_4

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    const-string p1, "0"

    .line 84
    .line 85
    :goto_1
    const-string p0, "general_status"

    .line 86
    .line 87
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    if-eqz p2, :cond_7

    .line 91
    .line 92
    const-string p0, "pk_id"

    .line 93
    .line 94
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    :cond_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_6

    .line 111
    .line 112
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Ljava/util/Map;

    .line 117
    .line 118
    invoke-static {v2, p0, v1, p1}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_5

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_6
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    :cond_7
    :goto_2
    return-void
.end method

.method public static c(Ljava/lang/Object;[D)V
    .locals 6

    .line 1
    instance-of v0, p0, Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p0, Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0, p1}, Lcom/sgscq/vpn/w1;->c(Ljava/lang/Object;[D)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    check-cast p0, Ljava/util/Map;

    .line 32
    .line 33
    const-string v0, "value"

    .line 34
    .line 35
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0, p1}, Lcom/sgscq/vpn/w1;->c(Ljava/lang/Object;[D)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    const-string v0, "buff_type"

    .line 50
    .line 51
    const-string v1, "0"

    .line 52
    .line 53
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-static {v0, v2}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->V(I)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-gez v0, :cond_4

    .line 71
    .line 72
    return-void

    .line 73
    :cond_4
    aget-wide v2, p1, v0

    .line 74
    .line 75
    const-string v4, "buff_effect"

    .line 76
    .line 77
    invoke-interface {p0, v4, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 86
    .line 87
    .line 88
    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_1

    .line 90
    :catch_0
    const-wide/16 v4, 0x0

    .line 91
    .line 92
    :goto_1
    add-double/2addr v2, v4

    .line 93
    aput-wide v2, p1, v0

    .line 94
    .line 95
    return-void
.end method

.method public static c2(ILjava/util/ArrayList;)I
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    move v2, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    :goto_0
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    move v2, v0

    .line 20
    :goto_1
    if-ge v1, p0, :cond_3

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/util/Map;

    .line 27
    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    const-string v4, "team_num"

    .line 32
    .line 33
    const-string v5, "1"

    .line 34
    .line 35
    invoke-static {v3, v4, v5, v0}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-le v3, v2, :cond_2

    .line 40
    .line 41
    move v2, v3

    .line 42
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[D[D)V
    .locals 7

    .line 1
    instance-of v0, p0, Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p0, Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0, p1, p2, p3, p4}, Lcom/sgscq/vpn/w1;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[D[D)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    check-cast p0, Ljava/util/Map;

    .line 32
    .line 33
    const-string v0, "value"

    .line 34
    .line 35
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sgscq/vpn/w1;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[D[D)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    const-string v0, "buff_type"

    .line 50
    .line 51
    const-string v1, "0"

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-static {p0, v0, v1, v2}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const-string v1, "buff_effect"

    .line 59
    .line 60
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const/4 v1, 0x1

    .line 65
    const-wide/16 v3, 0x0

    .line 66
    .line 67
    if-lt v0, v1, :cond_4

    .line 68
    .line 69
    const/4 v5, 0x4

    .line 70
    if-gt v0, v5, :cond_4

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_4

    .line 77
    .line 78
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->V(I)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    aget-wide v0, p3, p1

    .line 83
    .line 84
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 89
    .line 90
    .line 91
    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :catch_0
    add-double/2addr v0, v3

    .line 93
    aput-wide v0, p3, p1

    .line 94
    .line 95
    goto/16 :goto_1

    .line 96
    .line 97
    :cond_4
    const/4 v5, 0x7

    .line 98
    if-ne v0, v5, :cond_5

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_5

    .line 105
    .line 106
    aget-wide p1, p4, v2

    .line 107
    .line 108
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    :try_start_1
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 113
    .line 114
    .line 115
    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    :catch_1
    add-double/2addr p1, v3

    .line 117
    aput-wide p1, p4, v2

    .line 118
    .line 119
    goto/16 :goto_1

    .line 120
    .line 121
    :cond_5
    const/16 v5, 0x8

    .line 122
    .line 123
    const/4 v6, 0x2

    .line 124
    if-ne v0, v5, :cond_6

    .line 125
    .line 126
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_6

    .line 131
    .line 132
    aget-wide p1, p4, v6

    .line 133
    .line 134
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    :try_start_2
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 139
    .line 140
    .line 141
    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 142
    :catch_2
    add-double/2addr p1, v3

    .line 143
    aput-wide p1, p4, v6

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_6
    const/16 v5, 0x9

    .line 147
    .line 148
    if-ne v0, v5, :cond_7

    .line 149
    .line 150
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_7

    .line 155
    .line 156
    aget-wide p1, p4, v1

    .line 157
    .line 158
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    :try_start_3
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 163
    .line 164
    .line 165
    move-result-wide v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 166
    :catch_3
    add-double/2addr p1, v3

    .line 167
    aput-wide p1, p4, v1

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_7
    const/16 p1, 0xc

    .line 171
    .line 172
    if-ne v0, p1, :cond_9

    .line 173
    .line 174
    instance-of p1, p0, Ljava/util/List;

    .line 175
    .line 176
    if-eqz p1, :cond_9

    .line 177
    .line 178
    check-cast p0, Ljava/util/List;

    .line 179
    .line 180
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    const/4 p4, 0x3

    .line 185
    if-lt p1, p4, :cond_9

    .line 186
    .line 187
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-nez p1, :cond_8

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_8
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-static {p1, v2}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    invoke-static {p1}, Lcom/sgscq/vpn/w1;->V(I)I

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    if-ltz p1, :cond_9

    .line 219
    .line 220
    aget-wide v0, p3, p1

    .line 221
    .line 222
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    :try_start_4
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 231
    .line 232
    .line 233
    move-result-wide v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 234
    :catch_4
    add-double/2addr v0, v3

    .line 235
    aput-wide v0, p3, p1

    .line 236
    .line 237
    :cond_9
    :goto_1
    return-void
.end method

.method public static d0(Ljava/lang/String;Ljava/util/Map;)I
    .locals 4

    .line 1
    const-string v0, "\u795e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "\u754c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "\u58d5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const-string v0, "\u9b54"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x3

    if-eqz p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x0

    invoke-static {p0, p1}, Lcom/sgscq/vpn/w1;->p(Ljava/util/Map;Ljava/util/Map;)I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v3, 0x4

    if-ne p0, v1, :cond_5

    return v3

    :cond_5
    if-ne p0, v2, :cond_6

    return p1

    :cond_6
    if-ne p0, v0, :cond_7

    const/4 p0, 0x6

    return p0

    :cond_7
    if-ne p0, v3, :cond_8

    const/4 p0, 0x7

    return p0

    :cond_8
    const/16 p0, 0x8

    return p0
.end method

.method public static d2(Ljava/util/Map;)Ljava/lang/String;
    .locals 11

    .line 1
    const-string v0, "next_pk_General"

    .line 2
    .line 3
    const-string v1, "0"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {p0, v0, v1, v2}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    new-instance v4, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v5, "Skill"

    .line 16
    .line 17
    const-string v6, "TeamGeneral"

    .line 18
    .line 19
    const-string v7, "General"

    .line 20
    .line 21
    filled-new-array {v7, v5, v6}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    const v6, 0xdbba0

    .line 26
    .line 27
    .line 28
    move v7, v2

    .line 29
    :goto_0
    const/4 v8, 0x3

    .line 30
    if-ge v7, v8, :cond_3

    .line 31
    .line 32
    aget-object v8, v5, v7

    .line 33
    .line 34
    invoke-static {v8, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    if-eqz v9, :cond_2

    .line 47
    .line 48
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    check-cast v9, Ljava/util/Map;

    .line 53
    .line 54
    const-string v10, "pk_id"

    .line 55
    .line 56
    invoke-static {v9, v10, v1, v2}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    if-le v9, v6, :cond_1

    .line 61
    .line 62
    move v6, v9

    .line 63
    :cond_1
    if-lez v9, :cond_0

    .line 64
    .line 65
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 77
    .line 78
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_4

    .line 91
    .line 92
    add-int/lit8 v1, v1, 0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .line 96
    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0
.end method

.method public static e(Ljava/lang/Object;I[D)V
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    if-le v1, p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sgscq/vpn/w1;->c(Ljava/lang/Object;[D)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static e0(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-gtz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-gt v1, p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%03d01"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static e2(Ljava/lang/String;Ljava/util/Map;)I
    .locals 11

    .line 1
    const-string v0, "next_pk_"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "0"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {p1, v0, v1, v2}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    new-instance v4, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v5, "update_list"

    .line 20
    .line 21
    const-string v6, "add"

    .line 22
    .line 23
    const-string v7, "upd"

    .line 24
    .line 25
    filled-new-array {v6, v7, v5}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    move v6, v2

    .line 30
    move v7, v6

    .line 31
    :goto_0
    const/4 v8, 0x3

    .line 32
    if-ge v6, v8, :cond_5

    .line 33
    .line 34
    aget-object v8, v5, v6

    .line 35
    .line 36
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    instance-of v10, v9, Ljava/util/Map;

    .line 41
    .line 42
    if-nez v10, :cond_0

    .line 43
    .line 44
    new-instance v8, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    check-cast v9, Ljava/util/Map;

    .line 51
    .line 52
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    instance-of v9, v8, Ljava/util/List;

    .line 57
    .line 58
    if-nez v9, :cond_1

    .line 59
    .line 60
    new-instance v8, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    check-cast v8, Ljava/util/List;

    .line 67
    .line 68
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    if-eqz v9, :cond_4

    .line 77
    .line 78
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    check-cast v9, Ljava/util/Map;

    .line 83
    .line 84
    const-string v10, "pk_id"

    .line 85
    .line 86
    invoke-static {v9, v10, v1, v2}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-le v9, v7, :cond_3

    .line 91
    .line 92
    move v7, v9

    .line 93
    :cond_3
    if-lez v9, :cond_2

    .line 94
    .line 95
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 107
    .line 108
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    :goto_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_6

    .line 121
    .line 122
    add-int/lit8 p0, p0, 0x1

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_6
    add-int/lit8 v1, p0, 0x1

    .line 126
    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    return p0
.end method

.method public static f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/util/Map;

    const-string p1, "add"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static h2(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "insight_grow_type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "0"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "null"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    return v0
.end method

.method public static i2(Ljava/lang/Object;)Ljava/lang/String;
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

.method public static j(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p3}, Lcom/sgscq/vpn/w1;->r1(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/sgscq/vpn/v1;

    .line 23
    .line 24
    iget-object v2, v1, Lcom/sgscq/vpn/v1;->a:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    iget-object v2, v1, Lcom/sgscq/vpn/v1;->b:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    iget-object v1, v1, Lcom/sgscq/vpn/v1;->c:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    new-instance v0, Lcom/sgscq/vpn/v1;

    .line 50
    .line 51
    invoke-direct {v0, p1, p2, p3}, Lcom/sgscq/vpn/v1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public static j2(Ljava/util/Map;)Z
    .locals 10

    .line 1
    const-string v0, "Skill"

    invoke-static {v0, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "is_natural"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sgscq/vpn/w1;->z1(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "general_pk_id"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Number;

    const/4 v6, 0x1

    const-string v7, "0"

    if-eqz v5, :cond_2

    move-object v8, v4

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-nez v8, :cond_4

    goto :goto_2

    :cond_2
    if-nez v4, :cond_3

    const-string v8, ""

    goto :goto_1

    :cond_3
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "null"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    move v8, v0

    goto :goto_3

    :cond_5
    :goto_2
    move v8, v6

    :goto_3
    if-nez v8, :cond_6

    goto :goto_0

    :cond_6
    if-eqz v5, :cond_7

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v6

    :cond_8
    const-string v3, "position"

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v6

    :cond_9
    const-string v3, "pos"

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v6

    :cond_a
    const-string v3, "skill_position"

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v6

    goto/16 :goto_0

    :cond_b
    return v1
.end method

.method public static k(ILjava/lang/String;Ljava/util/Map;)V
    .locals 5

    .line 1
    const-string v0, "GeneralSoul"

    .line 2
    .line 3
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/util/Map;

    .line 8
    .line 9
    const-string v2, "add"

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v3, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    new-instance v3, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v4, "del"

    .line 32
    .line 33
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    new-instance v3, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v4, "upd"

    .line 42
    .line 43
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    check-cast p2, Ljava/util/List;

    .line 54
    .line 55
    if-nez p2, :cond_1

    .line 56
    .line 57
    invoke-static {v1, v2}, Lc/a;->o(Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    const-string v2, "general_id"

    .line 70
    .line 71
    const-string v3, "num"

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Ljava/util/Map;

    .line 80
    .line 81
    invoke-static {v1, v2, p1}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_2

    .line 86
    .line 87
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const/4 p2, 0x0

    .line 96
    invoke-static {p1, p2}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    add-int/2addr p1, p0

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-interface {v1, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_3
    const-string v0, "id"

    .line 110
    .line 111
    invoke-static {v0, p1, v2, p1}, Lc/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-string v1, "pk_id"

    .line 116
    .line 117
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    const/4 p0, 0x1

    .line 128
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    const-string p1, "card_type"

    .line 133
    .line 134
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public static k2(Ljava/lang/Object;)Ljava/util/List;
    .locals 6

    .line 1
    instance-of v0, p0, Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    check-cast p0, Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_4

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->J(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x2

    .line 40
    if-ge v2, v3, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    sub-int/2addr v2, v3

    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2, v4}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    sub-int/2addr v5, v3

    .line 62
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-lez v2, :cond_1

    .line 71
    .line 72
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->w1(C)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-nez v3, :cond_3

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v3, ""

    .line 84
    .line 85
    invoke-static {v2, v4, v1, v3, v3}, Lcom/sgscq/vpn/w1;->B2(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    return-object v0
.end method

.method public static l(Ljava/lang/String;Ljava/util/Map;Ljava/util/HashMap;)V
    .locals 2

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
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Ljava/util/Map;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :goto_0
    const-string p0, "add"

    .line 21
    .line 22
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/util/List;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    invoke-static {v0, p0}, Lc/a;->o(Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static l2(Ljava/lang/String;I)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :try_start_1
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    double-to-int p0, p0

    return p0

    :catch_1
    return p1
.end method

.method public static m2(Ljava/lang/Object;I)I
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static n(Ljava/lang/Object;Ljava/util/ArrayList;)V
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

.method public static n2(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    instance-of v1, p0, Ljava/util/List;

    const-string v2, "null"

    if-eqz v1, :cond_1

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/util/Map;

    const-string v1, "guests"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/w1;->n2(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static o(Ljava/util/Map;Ljava/util/Map;)D
    .locals 2

    .line 1
    const-string v0, "fighting"

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-nez v1, :cond_1

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    const-string v1, "fighting_point"

    .line 16
    .line 17
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_1
    if-nez v1, :cond_2

    .line 22
    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    const-string v1, "fight_point"

    .line 26
    .line 27
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_2
    if-nez v1, :cond_3

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_3
    instance-of p0, v1, Ljava/lang/Number;

    .line 40
    .line 41
    if-eqz p0, :cond_4

    .line 42
    .line 43
    check-cast v1, Ljava/lang/Number;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    .line 46
    .line 47
    .line 48
    move-result-wide p0

    .line 49
    goto :goto_1

    .line 50
    :cond_4
    const-wide/16 p0, 0x0

    .line 51
    .line 52
    if-nez v1, :cond_5

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_5
    :try_start_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 60
    .line 61
    .line 62
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :catch_0
    :goto_1
    return-wide p0
.end method

.method public static o2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p2, p0, v0, p1}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public static p(Ljava/util/Map;Ljava/util/Map;)I
    .locals 1

    .line 1
    const-string v0, "grade"

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    if-nez p0, :cond_1

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_1
    instance-of p1, p0, Ljava/lang/Number;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    check-cast p0, Ljava/lang/Number;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    const/4 p1, 0x0

    .line 31
    if-nez p0, :cond_3

    .line 32
    .line 33
    :catch_0
    move p0, p1

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 40
    .line 41
    .line 42
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    double-to-int p0, p0

    .line 44
    :goto_1
    return p0
.end method

.method public static p1(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3

    .line 1
    const-string v0, "source"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/util/Map;

    const-string v2, "source_type"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static p2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2

    .line 1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static q(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "display_name"

    const-string v1, "general_name"

    if-eqz p0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_2
    if-eqz p1, :cond_4

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_3
    move-object v2, p0

    if-nez v2, :cond_4

    const-string p0, "name"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    const-string p0, ""

    goto :goto_1

    :cond_5
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static q0(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr p0, v0

    rem-int/lit8 p0, p0, 0x3c

    add-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "1640%02d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static q1(Ljava/util/Map;)Ljava/util/List;
    .locals 5

    .line 1
    const-string v0, "nodes"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/Map;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    check-cast v2, Ljava/util/Map;

    const-string v3, "type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dungeon"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "boss"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "hidden"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3

    .line 1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public static r1(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NaN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method public static r2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2

    .line 1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "NaN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public static s(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method public static s0(Ljava/lang/String;Ljava/util/Map;)D
    .locals 3

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_3

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-wide p0

    :cond_2
    :goto_0
    return-wide v0

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    return-wide p0

    :catch_0
    :cond_5
    :goto_1
    return-wide v0
.end method

.method public static s2(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "user.dir"

    const-string v2, "."

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    new-instance p0, Ljava/lang/String;

    invoke-static {v2}, Lcom/sgscq/vpn/q1;->e(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/q1;->m(Ljava/nio/file/Path;)[B

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public static u1(Ljava/util/Map;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    const-string v0, "general_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "skill_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static u2(Ljava/util/Map;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 2

    .line 1
    invoke-static {p1, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "pk_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "general_pk_id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static v1(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1

    .line 1
    const-string v0, "TeamGeneral"

    invoke-static {v0, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/sgscq/vpn/w1;->I2(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static v2(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 4

    .line 1
    invoke-static {p0, p2}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    :cond_0
    :goto_0
    add-int/lit8 p2, p2, -0x1

    .line 10
    .line 11
    if-ltz p2, :cond_4

    .line 12
    .line 13
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/util/Map;

    .line 18
    .line 19
    const-string v1, "pk_id"

    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "user_general_id"

    .line 30
    .line 31
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "general_pk_id"

    .line 36
    .line 37
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_3

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_0

    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Ljava/lang/String;

    .line 82
    .line 83
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-static {v3}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_2

    .line 96
    .line 97
    const-string v3, "0"

    .line 98
    .line 99
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    :goto_2
    invoke-interface {p0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[DD)Ljava/util/HashMap;
    .locals 2

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    const-string v1, "general_id"

    .line 4
    .line 5
    invoke-static {v0, p0, v1, p0}, Lc/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "general_name"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    const-string p2, "fighting"

    .line 15
    .line 16
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const-string p2, "fighting_point"

    .line 24
    .line 25
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const-string p2, "fight_point"

    .line 33
    .line 34
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    invoke-virtual {v0, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const-string p2, "grade"

    .line 42
    .line 43
    invoke-static {p2, p1}, Lcom/sgscq/vpn/w1;->b1(Ljava/lang/String;Ljava/util/Map;)I

    .line 44
    .line 45
    .line 46
    move-result p4

    .line 47
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p4

    .line 51
    invoke-virtual {v0, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const-string p2, "resource_id"

    .line 55
    .line 56
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {v0, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    if-eqz p3, :cond_0

    .line 68
    .line 69
    array-length p0, p3

    .line 70
    const/4 p2, 0x3

    .line 71
    if-le p0, p2, :cond_0

    .line 72
    .line 73
    const/4 p0, 0x0

    .line 74
    aget-wide p4, p3, p0

    .line 75
    .line 76
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string p4, "general_hp"

    .line 81
    .line 82
    invoke-virtual {v0, p4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    const/4 p0, 0x1

    .line 86
    aget-wide p4, p3, p0

    .line 87
    .line 88
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const-string p4, "general_attack"

    .line 93
    .line 94
    invoke-virtual {v0, p4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    const/4 p0, 0x2

    .line 98
    aget-wide p4, p3, p0

    .line 99
    .line 100
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    const-string p4, "general_defense"

    .line 105
    .line 106
    invoke-virtual {v0, p4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    aget-wide p2, p3, p2

    .line 110
    .line 111
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    const-string p2, "general_wisdom"

    .line 116
    .line 117
    invoke-virtual {v0, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    :cond_0
    const-string p0, "star"

    .line 121
    .line 122
    invoke-static {p0, p1}, Lcom/sgscq/vpn/w1;->b1(Ljava/lang/String;Ljava/util/Map;)I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    const-string p0, "general_sex"

    .line 134
    .line 135
    invoke-static {p0, p1}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    .line 136
    .line 137
    .line 138
    move-result-wide p2

    .line 139
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    const-string p0, "general_orbit"

    .line 147
    .line 148
    invoke-static {p0, p1}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    .line 149
    .line 150
    .line 151
    move-result-wide p1

    .line 152
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    return-object v0
.end method

.method public static w1(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x55

    if-eq p0, v0, :cond_1

    const/16 v0, 0x44

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x52

    if-ne p0, v0, :cond_0

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

.method public static w2(Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 4

    .line 1
    const-string v0, "Skill"

    invoke-static {v0, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "pk_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "general_pk_id"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static x(DDDD)D
    .locals 0

    .line 1
    double-to-int p2, p2

    double-to-int p3, p4

    add-int/2addr p2, p3

    int-to-double p2, p2

    double-to-int p0, p0

    int-to-double p0, p0

    const-wide p4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr p0, p4

    add-double/2addr p0, p2

    double-to-int p2, p6

    int-to-double p2, p2

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static x1(Ljava/util/Map;)Z
    .locals 3

    .line 1
    const-string v0, "skill_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "skill_code"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x6

    if-ne p0, v1, :cond_2

    const-string p0, "39100"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x5

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-lt v1, v2, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x38

    if-gt p0, v0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static x2(Ljava/util/Map;)Z
    .locals 8

    .line 1
    const-string v0, "Skill"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "General"

    .line 8
    .line 9
    invoke-static {v1, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const-string v3, "pk_id"

    .line 27
    .line 28
    const-string v4, ""

    .line 29
    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/util/Map;

    .line 37
    .line 38
    const-string v5, "is_natural"

    .line 39
    .line 40
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-static {v5}, Lcom/sgscq/vpn/w1;->z1(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-nez v5, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const-string v5, "general_pk_id"

    .line 52
    .line 53
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-nez v6, :cond_0

    .line 66
    .line 67
    const-string v6, "0"

    .line 68
    .line 69
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eqz v7, :cond_2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-nez v3, :cond_0

    .line 89
    .line 90
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-nez v3, :cond_0

    .line 95
    .line 96
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    const/4 v0, 0x0

    .line 105
    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_6

    .line 110
    .line 111
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Ljava/util/Map;

    .line 116
    .line 117
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    check-cast v5, Ljava/lang/String;

    .line 130
    .line 131
    if-nez v5, :cond_5

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_5
    const-string v6, "general_naturalskill_id"

    .line 135
    .line 136
    invoke-static {v2, v6, v5}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    if-nez v7, :cond_4

    .line 141
    .line 142
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    const/4 v0, 0x1

    .line 146
    goto :goto_1

    .line 147
    :cond_6
    return v0
.end method

.method public static z1(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method


# virtual methods
.method public final A0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->z0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const-string p1, "name"

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->Y0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final B0(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p1, :cond_5

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 13
    .line 14
    const-string v2, "evolutions.json"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    :cond_1
    sget-boolean v2, Lcom/sgscq/vpn/w1;->X:Z

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    const-string v1, "docs/game_data_json/evolutions.json"

    .line 33
    .line 34
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->s2(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_2
    if-eqz v1, :cond_5

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->b:La/o;

    .line 48
    .line 49
    new-instance v3, Lcom/sgscq/vpn/GameDataManager$25;

    .line 50
    .line 51
    invoke-direct {v3}, Lcom/sgscq/vpn/GameDataManager$25;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v2, v1, v3}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/util/List;

    .line 63
    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Ljava/util/Map;

    .line 81
    .line 82
    const-string v3, "general_id"

    .line 83
    .line 84
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_4

    .line 97
    .line 98
    const-string p1, "evolution_id"

    .line 99
    .line 100
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    return-object p1

    .line 109
    :catch_0
    :cond_5
    :goto_0
    return-object v0
.end method

.method public final C0(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p1, :cond_5

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 13
    .line 14
    const-string v2, "evolutions.json"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    :cond_1
    sget-boolean v2, Lcom/sgscq/vpn/w1;->X:Z

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    const-string v1, "docs/game_data_json/evolutions.json"

    .line 33
    .line 34
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->s2(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_2
    if-eqz v1, :cond_5

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->b:La/o;

    .line 48
    .line 49
    new-instance v3, Lcom/sgscq/vpn/GameDataManager$26;

    .line 50
    .line 51
    invoke-direct {v3}, Lcom/sgscq/vpn/GameDataManager$26;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v2, v1, v3}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/util/List;

    .line 63
    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Ljava/util/Map;

    .line 81
    .line 82
    const-string v3, "general_id"

    .line 83
    .line 84
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_4

    .line 97
    .line 98
    const-string p1, "resource_id"

    .line 99
    .line 100
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    return-object p1

    .line 109
    :catch_0
    :cond_5
    :goto_0
    return-object v0
.end method

.method public final C1(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_5

    .line 8
    .line 9
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->e:Ljava/util/HashMap;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->f:Ljava/util/ArrayList;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    :cond_0
    move v0, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v0, v2

    .line 36
    :goto_0
    if-eqz v0, :cond_4

    .line 37
    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "100000"

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    const-string v0, "1\\d{5}"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    move p1, v1

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    :goto_1
    move p1, v2

    .line 64
    :goto_2
    if-eqz p1, :cond_4

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_4
    move v1, v2

    .line 68
    :goto_3
    return v1

    .line 69
    :cond_5
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->D1(Ljava/util/Map;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_6

    .line 74
    .line 75
    invoke-virtual {p0, p1, v0}, Lcom/sgscq/vpn/w1;->o1(Ljava/lang/String;Ljava/util/Map;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_6

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_6
    move v1, v2

    .line 83
    :goto_4
    return v1
.end method

.method public final D(Ljava/util/Map;)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "General"

    invoke-static {v1, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :cond_2
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_7

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v6, "story_guest"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    const-string v5, "id"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "general_id"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "0"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v5}, Lcom/sgscq/vpn/w1;->C1(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0, v5}, Lcom/sgscq/vpn/w1;->s1(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_0

    :cond_5
    const-string v5, "general_pk_id"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "pk_id"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    return v0

    :cond_8
    invoke-static {v2, p1}, Lcom/sgscq/vpn/w1;->w2(Ljava/util/ArrayList;Ljava/util/Map;)V

    const-string v0, "TeamGeneral"

    invoke-static {v0, v2, p1}, Lcom/sgscq/vpn/w1;->v2(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    const-string v0, "BuddyGeneral"

    invoke-static {v0, v2, p1}, Lcom/sgscq/vpn/w1;->v2(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method public final D0(Ljava/lang/String;)Ljava/util/Map;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->q:Ljava/util/HashMap;

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->q:Ljava/util/HashMap;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 13
    .line 14
    const-string v1, "fates.json"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    :cond_0
    sget-boolean v1, Lcom/sgscq/vpn/w1;->X:Z

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const-string v0, "docs/game_data_json/fates.json"

    .line 33
    .line 34
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->s2(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_1
    if-eqz v0, :cond_4

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    :try_start_0
    new-instance v1, Lcom/sgscq/vpn/GameDataManager$12;

    .line 48
    .line 49
    invoke-direct {v1}, Lcom/sgscq/vpn/GameDataManager$12;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->b:La/o;

    .line 57
    .line 58
    invoke-virtual {v2, v0, v1}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/util/Map;

    .line 63
    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Ljava/util/Map$Entry;

    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Ljava/util/Map;

    .line 91
    .line 92
    if-nez v2, :cond_3

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    const-string v3, "id"

    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    iget-object v3, p0, Lcom/sgscq/vpn/w1;->q:Ljava/util/HashMap;

    .line 105
    .line 106
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v2, "[GameDataManager] loadFatesConfig failed: "

    .line 120
    .line 121
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const-string v2, "SGSCQ_SRV"

    .line 125
    .line 126
    invoke-static {v0, v1, v2}, Lc/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->q:Ljava/util/HashMap;

    .line 130
    .line 131
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Ljava/util/Map;

    .line 136
    .line 137
    return-object p1
.end method

.method public final E(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 5

    .line 1
    const-string v0, ""

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sgscq/vpn/w1;->r1(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    :cond_0
    return v3

    :cond_1
    invoke-virtual {p0, v1}, Lcom/sgscq/vpn/w1;->e1(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    return v3

    :cond_2
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v4
.end method

.method public final E0(Ljava/lang/String;)Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->J:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->t()V

    :cond_1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->J:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public final E2(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Lcom/sgscq/vpn/w1;->z2(Ljava/util/Map;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->r1(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, ""

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/w1;->e1(Ljava/lang/String;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v0, v2

    .line 21
    :goto_0
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->r1(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const-string p1, "0"

    .line 28
    .line 29
    const-string v0, "ls_type"

    .line 30
    .line 31
    invoke-static {p1, v0, p2}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    or-int/lit8 v0, v0, 0x0

    .line 36
    .line 37
    const-string v1, "ls_value"

    .line 38
    .line 39
    invoke-static {p1, v1, p2}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    or-int/2addr p1, v0

    .line 44
    return p1

    .line 45
    :cond_1
    if-eqz p1, :cond_2

    .line 46
    .line 47
    const-string v1, "general_id"

    .line 48
    .line 49
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p0, v1, p1}, Lcom/sgscq/vpn/w1;->y(Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/s1;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-wide v1, p1, Lcom/sgscq/vpn/s1;->k:D

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const-wide/16 v1, 0x0

    .line 65
    .line 66
    :goto_1
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/sgscq/vpn/w1;->G2(Ljava/util/Map;Ljava/lang/String;D)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    return p1
.end method

.method public final F0(Ljava/lang/String;)Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->K:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->t()V

    :cond_1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->K:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public final F2(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p2

    invoke-static/range {p1 .. p2}, Lcom/sgscq/vpn/w1;->X(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual/range {p0 .. p2}, Lcom/sgscq/vpn/w1;->z(Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/t1;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-wide v4, v2, Lcom/sgscq/vpn/t1;->a:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    const-string v5, "base_hp"

    invoke-static {v4, v5, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v4

    or-int/2addr v3, v4

    iget-wide v4, v2, Lcom/sgscq/vpn/t1;->b:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    const-string v5, "base_attack"

    invoke-static {v4, v5, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v4

    or-int/2addr v3, v4

    iget-wide v4, v2, Lcom/sgscq/vpn/t1;->c:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    const-string v5, "base_defense"

    invoke-static {v4, v5, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v4

    or-int/2addr v3, v4

    iget-wide v4, v2, Lcom/sgscq/vpn/t1;->d:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    const-string v5, "base_wisdom"

    invoke-static {v4, v5, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v4

    or-int/2addr v3, v4

    iget-wide v4, v2, Lcom/sgscq/vpn/t1;->a:D

    iget-wide v6, v2, Lcom/sgscq/vpn/t1;->b:D

    iget-wide v8, v2, Lcom/sgscq/vpn/t1;->c:D

    iget-wide v10, v2, Lcom/sgscq/vpn/t1;->d:D

    invoke-static/range {v4 .. v11}, Lcom/sgscq/vpn/w1;->x(DDDD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    const-string v5, "base_fighting"

    invoke-static {v4, v5, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v4

    or-int/2addr v3, v4

    iget-wide v4, v2, Lcom/sgscq/vpn/t1;->e:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    const-string v7, "attr_hp"

    invoke-static {v6, v7, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v6

    or-int/2addr v3, v6

    iget-wide v6, v2, Lcom/sgscq/vpn/t1;->f:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    const-string v9, "attr_attack"

    invoke-static {v8, v9, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v8

    or-int/2addr v3, v8

    iget-wide v8, v2, Lcom/sgscq/vpn/t1;->g:D

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    const-string v11, "attr_defense"

    invoke-static {v10, v11, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v10

    or-int/2addr v3, v10

    iget-wide v10, v2, Lcom/sgscq/vpn/t1;->h:D

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v12

    const-string v13, "attr_wisdom"

    invoke-static {v12, v13, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v12

    or-int/2addr v3, v12

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v12

    const-string v13, "general_hp"

    invoke-static {v12, v13, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v12

    or-int/2addr v3, v12

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v12

    const-string v14, "general_attack"

    invoke-static {v12, v14, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v12

    or-int/2addr v3, v12

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v12

    const-string v15, "general_defense"

    invoke-static {v12, v15, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v12

    or-int/2addr v3, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v15

    const-string v15, "general_wisdom"

    invoke-static {v12, v15, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v12

    or-int/2addr v3, v12

    const-string v12, "general_hp_attr"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v12, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v4

    or-int/2addr v3, v4

    const-string v4, "general_attack_attr"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v4

    or-int/2addr v3, v4

    const-string v4, "general_defense_attr"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v4

    or-int/2addr v3, v4

    const-string v4, "general_wisdom_attr"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v4

    or-int/2addr v3, v4

    iget-wide v4, v2, Lcom/sgscq/vpn/t1;->m:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    const-string v5, "fighting"

    invoke-static {v4, v5, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v6

    or-int/2addr v3, v6

    const-string v6, "fight_point"

    invoke-static {v4, v6, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v7

    or-int/2addr v3, v7

    const-string v7, "fighting_point"

    invoke-static {v4, v7, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v7

    or-int/2addr v3, v7

    const-string v7, "general_fighting"

    invoke-static {v4, v7, v1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v8

    or-int/2addr v3, v8

    move-object/from16 v8, p0

    invoke-virtual {v8, v0, v1}, Lcom/sgscq/vpn/w1;->E2(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v1

    or-int/2addr v1, v3

    const-string v3, "TeamGeneral"

    invoke-static {v3, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    move-object/from16 v9, p1

    invoke-static {v9, v3}, Lcom/sgscq/vpn/w1;->I2(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v10, v2, Lcom/sgscq/vpn/t1;->i:D

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v13, v3}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v10

    or-int/2addr v1, v10

    iget-wide v10, v2, Lcom/sgscq/vpn/t1;->j:D

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v14, v3}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v10

    or-int/2addr v1, v10

    iget-wide v10, v2, Lcom/sgscq/vpn/t1;->k:D

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, v16

    invoke-static {v10, v11, v3}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v10

    or-int/2addr v1, v10

    iget-wide v8, v2, Lcom/sgscq/vpn/t1;->l:D

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v15, v3}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v8

    or-int/2addr v1, v8

    invoke-static {v4, v7, v3}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v8

    or-int/2addr v1, v8

    invoke-static {v4, v5, v3}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v8

    or-int/2addr v1, v8

    invoke-static {v4, v6, v3}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v3

    or-int/2addr v1, v3

    move-object/from16 v8, p0

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v3
.end method

.method public final G0(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->N:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->M1()V

    :cond_1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->N:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final G1(Lp/a;)Ljava/util/Map;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/sgscq/vpn/w1;->w:Ljava/util/ArrayList;

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    iget-object v3, p1, Lp/a;->c:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Ljava/util/Map;

    .line 28
    .line 29
    const-string v5, "id"

    .line 30
    .line 31
    const-string v6, "general_id"

    .line 32
    .line 33
    invoke-static {v4, v5, v2, v6, v3}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move-object v4, v0

    .line 41
    :goto_0
    if-nez v4, :cond_9

    .line 42
    .line 43
    if-eqz v3, :cond_8

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    invoke-virtual {p0, v3}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    if-eqz v4, :cond_8

    .line 57
    .line 58
    const-string v1, "grade"

    .line 59
    .line 60
    invoke-static {v1, v4}, Lcom/sgscq/vpn/w1;->b1(Ljava/lang/String;Ljava/util/Map;)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const/4 v5, 0x1

    .line 65
    if-eq v1, v5, :cond_4

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    const-string v1, "resource_id"

    .line 69
    .line 70
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_8

    .line 83
    .line 84
    const-string v2, "0"

    .line 85
    .line 86
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_5
    invoke-virtual {p0, v3}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-nez v0, :cond_6

    .line 98
    .line 99
    move-object v5, v3

    .line 100
    goto :goto_1

    .line 101
    :cond_6
    move-object v5, v0

    .line 102
    :goto_1
    invoke-virtual {p0, v3}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    if-eqz v6, :cond_7

    .line 107
    .line 108
    array-length v0, v6

    .line 109
    const/4 v1, 0x4

    .line 110
    if-le v0, v1, :cond_7

    .line 111
    .line 112
    aget-wide v0, v6, v1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_7
    const-wide/16 v0, 0x0

    .line 116
    .line 117
    :goto_2
    move-wide v7, v0

    .line 118
    invoke-static/range {v3 .. v8}, Lcom/sgscq/vpn/w1;->w(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[DD)Ljava/util/HashMap;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    :cond_8
    :goto_3
    move-object v4, v0

    .line 123
    :cond_9
    if-eqz v4, :cond_c

    .line 124
    .line 125
    iget-object p1, p1, Lp/a;->d:Ljava/lang/String;

    .line 126
    .line 127
    if-eqz p1, :cond_c

    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_a

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_a
    const-string v0, "general_name"

    .line 137
    .line 138
    invoke-static {v4, v0, p1}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_b

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_b
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 146
    .line 147
    invoke-direct {v1, v4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-object v4, v1

    .line 154
    :cond_c
    :goto_4
    return-object v4
.end method

.method public final G2(Ljava/util/Map;Ljava/lang/String;D)Z
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    const-string v0, "0"

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_6

    .line 15
    .line 16
    const-string v2, "null"

    .line 17
    .line 18
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sgscq/vpn/w1;->e1(Ljava/lang/String;)Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-nez p2, :cond_1

    .line 31
    .line 32
    return v1

    .line 33
    :cond_1
    const-string v2, "first_attr_type"

    .line 34
    .line 35
    invoke-interface {p2, v2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v3, "skill_grow"

    .line 44
    .line 45
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    instance-of v3, p2, Ljava/util/Map;

    .line 50
    .line 51
    if-eqz v3, :cond_4

    .line 52
    .line 53
    const-string v3, "breachLevel"

    .line 54
    .line 55
    const-string v4, "1"

    .line 56
    .line 57
    const-string v5, "insight_level"

    .line 58
    .line 59
    const/4 v6, 0x1

    .line 60
    invoke-static {p1, v3, v4, v5, v6}, Lc/a;->g(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-gtz v3, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move v6, v3

    .line 68
    :goto_0
    check-cast p2, Ljava/util/Map;

    .line 69
    .line 70
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    instance-of v5, v3, Ljava/util/Map;

    .line 79
    .line 80
    if-nez v5, :cond_3

    .line 81
    .line 82
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    :cond_3
    instance-of p2, v3, Ljava/util/Map;

    .line 87
    .line 88
    if-eqz p2, :cond_4

    .line 89
    .line 90
    check-cast v3, Ljava/util/Map;

    .line 91
    .line 92
    const-string p2, "first_attr_value"

    .line 93
    .line 94
    invoke-interface {v3, p2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :cond_4
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    .line 103
    .line 104
    .line 105
    move-result-wide v3

    .line 106
    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    cmpl-double p2, v3, v5

    .line 112
    .line 113
    if-ltz p2, :cond_5

    .line 114
    .line 115
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 116
    .line 117
    .line 118
    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_1

    .line 120
    :catch_0
    const-wide/16 v3, 0x0

    .line 121
    .line 122
    :goto_1
    add-double/2addr v3, p3

    .line 123
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :cond_5
    const-string p2, "ls_type"

    .line 128
    .line 129
    invoke-static {v2, p2, p1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    or-int/2addr p2, v1

    .line 134
    const-string p3, "ls_value"

    .line 135
    .line 136
    invoke-static {v0, p3, p1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    or-int/2addr p1, p2

    .line 141
    return p1

    .line 142
    :cond_6
    :goto_2
    return v1
.end method

.method public final H0(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->O:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->M1()V

    :cond_1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->O:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final H1()Lp/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->d:Lp/d;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lp/d;->c:Lp/d;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {v0}, Lp/d;->b(Landroid/content/Context;)Lp/d;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->d:Lp/d;

    .line 17
    .line 18
    :cond_1
    return-object v0
.end method

.method public final I0(Ljava/lang/String;)Ljava/util/Map;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->r:Ljava/util/HashMap;

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->r:Ljava/util/HashMap;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 13
    .line 14
    const-string v1, "gems.json"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    :cond_0
    sget-boolean v1, Lcom/sgscq/vpn/w1;->X:Z

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const-string v0, "docs/game_data_json/gems.json"

    .line 33
    .line 34
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->s2(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_1
    if-eqz v0, :cond_4

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    :try_start_0
    new-instance v1, Lcom/sgscq/vpn/GameDataManager$13;

    .line 48
    .line 49
    invoke-direct {v1}, Lcom/sgscq/vpn/GameDataManager$13;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->b:La/o;

    .line 57
    .line 58
    invoke-virtual {v2, v0, v1}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/util/List;

    .line 63
    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Ljava/util/Map;

    .line 81
    .line 82
    const-string v2, "id"

    .line 83
    .line 84
    const-string v3, "resource_id"

    .line 85
    .line 86
    const-string v4, ""

    .line 87
    .line 88
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-nez v3, :cond_3

    .line 105
    .line 106
    iget-object v3, p0, Lcom/sgscq/vpn/w1;->r:Ljava/util/HashMap;

    .line 107
    .line 108
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v2, "[GameDataManager] loadGemsConfig failed: "

    .line 116
    .line 117
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string v2, "SGSCQ_SRV"

    .line 121
    .line 122
    invoke-static {v0, v1, v2}, Lc/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->r:Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Ljava/util/Map;

    .line 132
    .line 133
    return-object p1
.end method

.method public final I1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->I:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->I:Ljava/util/Map;

    .line 12
    .line 13
    const-string v0, "chapter_battle_layouts.json"

    .line 14
    .line 15
    iget-object v1, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sgscq/vpn/w1;->b:La/o;

    .line 31
    .line 32
    const-class v2, Ljava/util/Map;

    .line 33
    .line 34
    invoke-virtual {v1, v0, v2}, La/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/util/Map;

    .line 39
    .line 40
    const-string v1, "chapters"

    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/util/Map;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->I:Ljava/util/Map;

    .line 49
    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    new-instance v0, Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->I:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v2, "[chapterLayout] load failed: "

    .line 64
    .line 65
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v2, "SGSCQ_SRV"

    .line 69
    .line 70
    invoke-static {v0, v1, v2}, Lc/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_0
    return-void
.end method

.method public final J0(Ljava/lang/String;)Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->e:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->O1()V

    :cond_0
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public final J1()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->C:Ljava/util/HashMap;

    .line 7
    .line 8
    const-string v0, "plots.json"

    .line 9
    .line 10
    iget-object v1, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v1, v0}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_0
    new-instance v1, Lcom/sgscq/vpn/GameDataManager$16;

    .line 26
    .line 27
    invoke-direct {v1}, Lcom/sgscq/vpn/GameDataManager$16;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->b:La/o;

    .line 35
    .line 36
    invoke-virtual {v2, v0, v1}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/util/Map;

    .line 57
    .line 58
    const-string v2, "before_dialog_id"

    .line 59
    .line 60
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v3, "after_dialog_id"

    .line 65
    .line 66
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-nez v2, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    iget-object v3, p0, Lcom/sgscq/vpn/w1;->C:Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    const/4 v1, 0x0

    .line 87
    :goto_1
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v1, "[loadDungeonPlots] \u52a0\u8f7d "

    .line 94
    .line 95
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/sgscq/vpn/w1;->C:Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v1, " \u6761\u5267\u60c5\u914d\u7f6e"

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-string v1, "SGSCQ_SRV"

    .line 117
    .line 118
    invoke-static {v1, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_4
    :goto_2
    return-void
.end method

.method public final K0(Ljava/lang/String;)[D
    .locals 18

    .line 1
    invoke-virtual/range {p0 .. p1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "general_hp"

    invoke-static {v1, v0}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    move-result-wide v10

    const-string v1, "general_attack"

    invoke-static {v1, v0}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    move-result-wide v12

    const-string v1, "general_defense"

    invoke-static {v1, v0}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    move-result-wide v14

    const-string v1, "general_wisdom"

    invoke-static {v1, v0}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    move-result-wide v16

    move-wide v2, v10

    move-wide v4, v12

    move-wide v6, v14

    move-wide/from16 v8, v16

    invoke-static/range {v2 .. v9}, Lcom/sgscq/vpn/w1;->x(DDDD)D

    move-result-wide v1

    const/16 v3, 0xd

    new-array v3, v3, [D

    const/4 v4, 0x0

    aput-wide v10, v3, v4

    const/4 v4, 0x1

    aput-wide v12, v3, v4

    const/4 v4, 0x2

    aput-wide v14, v3, v4

    const/4 v4, 0x3

    aput-wide v16, v3, v4

    const/4 v4, 0x4

    aput-wide v1, v3, v4

    const-string v1, "general_hp_step"

    invoke-static {v1, v0}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    move-result-wide v1

    const/4 v4, 0x5

    aput-wide v1, v3, v4

    const-string v1, "general_attack_step"

    invoke-static {v1, v0}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    move-result-wide v1

    const/4 v4, 0x6

    aput-wide v1, v3, v4

    const-string v1, "general_defense_step"

    invoke-static {v1, v0}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    move-result-wide v1

    const/4 v4, 0x7

    aput-wide v1, v3, v4

    const-string v1, "general_wisdom_step"

    invoke-static {v1, v0}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    move-result-wide v1

    const/16 v4, 0x8

    aput-wide v1, v3, v4

    const-string v1, "fighting_step"

    invoke-static {v1, v0}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    move-result-wide v1

    const/16 v4, 0x9

    aput-wide v1, v3, v4

    const-string v1, "grade"

    invoke-static {v1, v0}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    move-result-wide v1

    const/16 v4, 0xa

    aput-wide v1, v3, v4

    const-string v1, "general_sex"

    invoke-static {v1, v0}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    move-result-wide v1

    const/16 v4, 0xb

    aput-wide v1, v3, v4

    const-string v1, "general_orbit"

    invoke-static {v1, v0}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    move-result-wide v0

    const/16 v2, 0xc

    aput-wide v0, v3, v2

    return-object v3
.end method

.method public final K1()V
    .locals 7

    .line 1
    const-string v0, "dungeons.json"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_7

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    new-instance v1, Lcom/sgscq/vpn/GameDataManager$14;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/sgscq/vpn/GameDataManager$14;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->b:La/o;

    .line 29
    .line 30
    invoke-virtual {v2, v0, v1}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/util/List;

    .line 35
    .line 36
    new-instance v1, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/sgscq/vpn/w1;->y:Ljava/util/HashMap;

    .line 42
    .line 43
    new-instance v1, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/sgscq/vpn/w1;->z:Ljava/util/HashMap;

    .line 49
    .line 50
    new-instance v1, Ljava/util/TreeSet;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_5

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Ljava/util/Map;

    .line 70
    .line 71
    const-string v3, "dungeon_name"

    .line 72
    .line 73
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Ljava/lang/String;

    .line 78
    .line 79
    if-eqz v3, :cond_1

    .line 80
    .line 81
    iget-object v4, p0, Lcom/sgscq/vpn/w1;->y:Ljava/util/HashMap;

    .line 82
    .line 83
    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    const/4 v4, 0x3

    .line 91
    if-ge v2, v4, :cond_2

    .line 92
    .line 93
    move-object v2, v3

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    const-string v2, "105"

    .line 96
    .line 97
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    const/4 v5, 0x0

    .line 102
    if-eqz v2, :cond_3

    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    const/4 v6, 0x5

    .line 109
    if-lt v2, v6, :cond_3

    .line 110
    .line 111
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    goto :goto_1

    .line 116
    :cond_3
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    iget-object v4, p0, Lcom/sgscq/vpn/w1;->z:Ljava/util/HashMap;

    .line 124
    .line 125
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-nez v4, :cond_4

    .line 130
    .line 131
    iget-object v4, p0, Lcom/sgscq/vpn/w1;->z:Ljava/util/HashMap;

    .line 132
    .line 133
    new-instance v5, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    :cond_4
    iget-object v4, p0, Lcom/sgscq/vpn/w1;->z:Ljava/util/HashMap;

    .line 142
    .line 143
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Ljava/util/List;

    .line 148
    .line 149
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_5
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->z:Ljava/util/HashMap;

    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_6

    .line 168
    .line 169
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    check-cast v2, Ljava/util/List;

    .line 174
    .line 175
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 182
    .line 183
    .line 184
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->A:Ljava/util/ArrayList;

    .line 185
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string v1, "[loadDungeons] \u52a0\u8f7d "

    .line 189
    .line 190
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object v1, p0, Lcom/sgscq/vpn/w1;->y:Ljava/util/HashMap;

    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v1, " \u526f\u672c, "

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    iget-object v1, p0, Lcom/sgscq/vpn/w1;->A:Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v1, " \u7ae0\u8282"

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    const-string v1, "SGSCQ_SRV"

    .line 226
    .line 227
    invoke-static {v1, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :cond_7
    :goto_3
    new-instance v0, Ljava/util/HashMap;

    .line 232
    .line 233
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 234
    .line 235
    .line 236
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->y:Ljava/util/HashMap;

    .line 237
    .line 238
    new-instance v0, Ljava/util/HashMap;

    .line 239
    .line 240
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 241
    .line 242
    .line 243
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->z:Ljava/util/HashMap;

    .line 244
    .line 245
    new-instance v0, Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .line 249
    .line 250
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->A:Ljava/util/ArrayList;

    .line 251
    .line 252
    return-void
.end method

.method public final L0(Ljava/lang/String;I)[D
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p1}, Lcom/sgscq/vpn/w1;->M0(IILjava/lang/String;)[D

    move-result-object p1

    return-object p1
.end method

.method public final L1()V
    .locals 5

    .line 1
    const-string v0, "equipments.json"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_0
    new-instance v1, Lcom/sgscq/vpn/GameDataManager$8;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/sgscq/vpn/GameDataManager$8;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->b:La/o;

    .line 29
    .line 30
    invoke-virtual {v2, v0, v1}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/util/List;

    .line 35
    .line 36
    new-instance v1, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/sgscq/vpn/w1;->k:Ljava/util/HashMap;

    .line 42
    .line 43
    new-instance v1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/sgscq/vpn/w1;->l:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x0

    .line 55
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Ljava/util/Map;

    .line 66
    .line 67
    const-string v3, "id"

    .line 68
    .line 69
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Ljava/lang/String;

    .line 74
    .line 75
    if-nez v3, :cond_1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const-string v4, "200000"

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_2

    .line 85
    .line 86
    add-int/lit8 v1, v1, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    iget-object v4, p0, Lcom/sgscq/vpn/w1;->k:Ljava/util/HashMap;

    .line 90
    .line 91
    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->l:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v2, "[loadEquipments] \u52a0\u8f7d "

    .line 103
    .line 104
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->l:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v2, " \u6761\u88c5\u5907, \u8fc7\u6ee4 "

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, " \u6761"

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const-string v1, "SGSCQ_SRV"

    .line 134
    .line 135
    invoke-static {v1, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_4
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    .line 140
    .line 141
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 142
    .line 143
    .line 144
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->k:Ljava/util/HashMap;

    .line 145
    .line 146
    new-instance v0, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .line 150
    .line 151
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->l:Ljava/util/ArrayList;

    .line 152
    .line 153
    return-void
.end method

.method public final M0(IILjava/lang/String;)[D
    .locals 6

    .line 1
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/w1;->N0(Ljava/lang/String;IID)[D

    move-result-object p1

    return-object p1
.end method

.method public final M1()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->e:Ljava/util/HashMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->O1()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->N:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->O:Ljava/util/HashMap;

    .line 21
    .line 22
    new-instance v0, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->M:Ljava/util/HashMap;

    .line 28
    .line 29
    const-string v0, "fates.json"

    .line 30
    .line 31
    iget-object v1, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v1, v0}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "SGSCQ_SRV"

    .line 38
    .line 39
    if-eqz v0, :cond_1a

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    goto/16 :goto_a

    .line 48
    .line 49
    :cond_1
    new-instance v2, Lcom/sgscq/vpn/GameDataManager$1;

    .line 50
    .line 51
    invoke-direct {v2}, Lcom/sgscq/vpn/GameDataManager$1;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-object v3, p0, Lcom/sgscq/vpn/w1;->b:La/o;

    .line 59
    .line 60
    invoke-virtual {v3, v0, v2}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/util/Map;

    .line 65
    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->f:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_18

    .line 80
    .line 81
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Ljava/lang/String;

    .line 86
    .line 87
    iget-object v4, p0, Lcom/sgscq/vpn/w1;->e:Ljava/util/HashMap;

    .line 88
    .line 89
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Ljava/util/Map;

    .line 94
    .line 95
    if-nez v4, :cond_4

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    const-string v5, "general_fate_id"

    .line 99
    .line 100
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    instance-of v5, v4, Ljava/util/List;

    .line 105
    .line 106
    if-nez v5, :cond_5

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_5
    check-cast v4, Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_3

    .line 120
    .line 121
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    check-cast v5, Ljava/lang/String;

    .line 126
    .line 127
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    check-cast v5, Ljava/util/Map;

    .line 132
    .line 133
    if-nez v5, :cond_7

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_7
    const-string v6, "fate_type"

    .line 137
    .line 138
    const-string v7, ""

    .line 139
    .line 140
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    const-string v7, "3"

    .line 149
    .line 150
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    const-string v8, "0"

    .line 155
    .line 156
    const-string v9, "\\d{6}"

    .line 157
    .line 158
    const-string v10, "fate_object"

    .line 159
    .line 160
    if-eqz v7, :cond_10

    .line 161
    .line 162
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    iget-object v6, p0, Lcom/sgscq/vpn/w1;->k:Ljava/util/HashMap;

    .line 167
    .line 168
    if-nez v6, :cond_8

    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->L1()V

    .line 171
    .line 172
    .line 173
    :cond_8
    new-instance v6, Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .line 177
    .line 178
    instance-of v7, v5, Ljava/util/List;

    .line 179
    .line 180
    if-eqz v7, :cond_9

    .line 181
    .line 182
    check-cast v5, Ljava/util/List;

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_9
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    :cond_a
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    if-eqz v7, :cond_d

    .line 198
    .line 199
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    if-nez v7, :cond_b

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_b
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 211
    .line 212
    .line 213
    move-result-object v10

    .line 214
    invoke-virtual {v10, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    :cond_c
    :goto_4
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    .line 219
    .line 220
    .line 221
    move-result v10

    .line 222
    if-eqz v10, :cond_a

    .line 223
    .line 224
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    iget-object v11, p0, Lcom/sgscq/vpn/w1;->k:Ljava/util/HashMap;

    .line 229
    .line 230
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v11

    .line 234
    if-eqz v11, :cond_c

    .line 235
    .line 236
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v11

    .line 240
    if-nez v11, :cond_c

    .line 241
    .line 242
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_d
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    :cond_e
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    if-eqz v6, :cond_6

    .line 255
    .line 256
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    check-cast v6, Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 263
    .line 264
    .line 265
    move-result v7

    .line 266
    if-nez v7, :cond_e

    .line 267
    .line 268
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v7

    .line 272
    if-nez v7, :cond_e

    .line 273
    .line 274
    iget-object v7, p0, Lcom/sgscq/vpn/w1;->N:Ljava/util/HashMap;

    .line 275
    .line 276
    new-instance v9, Ln/a;

    .line 277
    .line 278
    const/4 v10, 0x4

    .line 279
    invoke-direct {v9, v10}, Ln/a;-><init>(I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v7, v3, v9}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v7

    .line 286
    check-cast v7, Ljava/util/List;

    .line 287
    .line 288
    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v9

    .line 292
    if-nez v9, :cond_f

    .line 293
    .line 294
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    :cond_f
    iget-object v7, p0, Lcom/sgscq/vpn/w1;->M:Ljava/util/HashMap;

    .line 298
    .line 299
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v7

    .line 303
    if-nez v7, :cond_e

    .line 304
    .line 305
    iget-object v7, p0, Lcom/sgscq/vpn/w1;->M:Ljava/util/HashMap;

    .line 306
    .line 307
    invoke-virtual {v7, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    goto :goto_5

    .line 311
    :cond_10
    const-string v7, "4"

    .line 312
    .line 313
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v6

    .line 317
    if-eqz v6, :cond_6

    .line 318
    .line 319
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    iget-object v6, p0, Lcom/sgscq/vpn/w1;->g:Ljava/util/HashMap;

    .line 324
    .line 325
    if-nez v6, :cond_11

    .line 326
    .line 327
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->U1()V

    .line 328
    .line 329
    .line 330
    :cond_11
    new-instance v6, Ljava/util/ArrayList;

    .line 331
    .line 332
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .line 334
    .line 335
    instance-of v7, v5, Ljava/util/List;

    .line 336
    .line 337
    if-eqz v7, :cond_12

    .line 338
    .line 339
    check-cast v5, Ljava/util/List;

    .line 340
    .line 341
    goto :goto_6

    .line 342
    :cond_12
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    :goto_6
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    :cond_13
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 351
    .line 352
    .line 353
    move-result v7

    .line 354
    if-eqz v7, :cond_16

    .line 355
    .line 356
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    if-nez v7, :cond_14

    .line 361
    .line 362
    goto :goto_7

    .line 363
    :cond_14
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 368
    .line 369
    .line 370
    move-result-object v10

    .line 371
    invoke-virtual {v10, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 372
    .line 373
    .line 374
    move-result-object v7

    .line 375
    :cond_15
    :goto_8
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    .line 376
    .line 377
    .line 378
    move-result v10

    .line 379
    if-eqz v10, :cond_13

    .line 380
    .line 381
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v10

    .line 385
    iget-object v11, p0, Lcom/sgscq/vpn/w1;->g:Ljava/util/HashMap;

    .line 386
    .line 387
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v11

    .line 391
    if-eqz v11, :cond_15

    .line 392
    .line 393
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result v11

    .line 397
    if-nez v11, :cond_15

    .line 398
    .line 399
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    goto :goto_8

    .line 403
    :cond_16
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 404
    .line 405
    .line 406
    move-result-object v5

    .line 407
    :cond_17
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 408
    .line 409
    .line 410
    move-result v6

    .line 411
    if-eqz v6, :cond_6

    .line 412
    .line 413
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v6

    .line 417
    check-cast v6, Ljava/lang/String;

    .line 418
    .line 419
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 420
    .line 421
    .line 422
    move-result v7

    .line 423
    if-nez v7, :cond_17

    .line 424
    .line 425
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    move-result v7

    .line 429
    if-nez v7, :cond_17

    .line 430
    .line 431
    iget-object v7, p0, Lcom/sgscq/vpn/w1;->O:Ljava/util/HashMap;

    .line 432
    .line 433
    new-instance v9, Ln/a;

    .line 434
    .line 435
    const/4 v10, 0x5

    .line 436
    invoke-direct {v9, v10}, Ln/a;-><init>(I)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v7, v3, v9}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v7

    .line 443
    check-cast v7, Ljava/util/List;

    .line 444
    .line 445
    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v9

    .line 449
    if-nez v9, :cond_17

    .line 450
    .line 451
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    goto :goto_9

    .line 455
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    const-string v2, "[FateEquip] \u52a0\u8f7d "

    .line 458
    .line 459
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->N:Ljava/util/HashMap;

    .line 463
    .line 464
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 465
    .line 466
    .line 467
    move-result v2

    .line 468
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    const-string v2, " \u6761\u6b66\u5c06\u7f18\u5206\u88c5\u5907\u6620\u5c04"

    .line 472
    .line 473
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-static {v1, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->N:Ljava/util/HashMap;

    .line 484
    .line 485
    const-string v2, "131021"

    .line 486
    .line 487
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    check-cast v0, Ljava/util/List;

    .line 492
    .line 493
    if-eqz v0, :cond_19

    .line 494
    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    .line 496
    .line 497
    const-string v3, "[FateEquip] \u5927\u5c0f\u4e54(131021) \u7f18\u5206\u88c5\u5907: "

    .line 498
    .line 499
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    const-string v3, " ("

    .line 506
    .line 507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    const-string v0, "\u4ef6)"

    .line 518
    .line 519
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-static {v1, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    :cond_19
    return-void

    .line 530
    :cond_1a
    :goto_a
    const-string v0, "[FateEquip] fates.json empty"

    .line 531
    .line 532
    invoke-static {v1, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    return-void
.end method

.method public final N0(Ljava/lang/String;IID)[D
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x4

    .line 16
    const/4 v5, 0x3

    .line 17
    const/4 v6, 0x2

    .line 18
    const/4 v7, 0x1

    .line 19
    const/4 v8, 0x0

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    new-array v2, v4, [D

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    add-int/lit8 v9, p3, -0x1

    .line 26
    .line 27
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result v9

    .line 31
    if-gtz v9, :cond_2

    .line 32
    .line 33
    new-array v2, v4, [D

    .line 34
    .line 35
    :goto_0
    fill-array-data v2, :array_0

    .line 36
    .line 37
    .line 38
    goto/16 :goto_5

    .line 39
    .line 40
    :cond_2
    const-string v10, "insight_grow_type"

    .line 41
    .line 42
    const-string v11, ""

    .line 43
    .line 44
    invoke-interface {v3, v10, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iget-object v10, v0, Lcom/sgscq/vpn/w1;->p:Ljava/util/Map;

    .line 53
    .line 54
    if-nez v10, :cond_5

    .line 55
    .line 56
    const-string v10, "insight_grow_types.json"

    .line 57
    .line 58
    iget-object v11, v0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 59
    .line 60
    invoke-static {v11, v10}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    if-eqz v10, :cond_4

    .line 65
    .line 66
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v11

    .line 70
    if-eqz v11, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    new-instance v11, Lcom/sgscq/vpn/GameDataManager$4;

    .line 74
    .line 75
    invoke-direct {v11}, Lcom/sgscq/vpn/GameDataManager$4;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v11}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    iget-object v12, v0, Lcom/sgscq/vpn/w1;->b:La/o;

    .line 83
    .line 84
    invoke-virtual {v12, v10, v11}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    check-cast v10, Ljava/util/Map;

    .line 89
    .line 90
    iput-object v10, v0, Lcom/sgscq/vpn/w1;->p:Ljava/util/Map;

    .line 91
    .line 92
    if-nez v10, :cond_5

    .line 93
    .line 94
    new-instance v10, Ljava/util/HashMap;

    .line 95
    .line 96
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    :goto_1
    new-instance v10, Ljava/util/HashMap;

    .line 101
    .line 102
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 103
    .line 104
    .line 105
    :goto_2
    iput-object v10, v0, Lcom/sgscq/vpn/w1;->p:Ljava/util/Map;

    .line 106
    .line 107
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    if-nez v10, :cond_a

    .line 112
    .line 113
    iget-object v10, v0, Lcom/sgscq/vpn/w1;->p:Ljava/util/Map;

    .line 114
    .line 115
    if-nez v10, :cond_6

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_6
    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    instance-of v10, v3, Ljava/util/List;

    .line 127
    .line 128
    if-eqz v10, :cond_8

    .line 129
    .line 130
    check-cast v3, Ljava/util/List;

    .line 131
    .line 132
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    if-eqz v10, :cond_7

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    add-int/lit8 v10, v10, -0x1

    .line 144
    .line 145
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    instance-of v9, v3, Ljava/util/Map;

    .line 154
    .line 155
    if-eqz v9, :cond_a

    .line 156
    .line 157
    move-object v2, v3

    .line 158
    check-cast v2, Ljava/util/Map;

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_8
    instance-of v10, v3, Ljava/util/Map;

    .line 162
    .line 163
    if-eqz v10, :cond_a

    .line 164
    .line 165
    check-cast v3, Ljava/util/Map;

    .line 166
    .line 167
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    if-nez v9, :cond_9

    .line 176
    .line 177
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result v10

    .line 181
    if-nez v10, :cond_9

    .line 182
    .line 183
    const-string v9, "0"

    .line 184
    .line 185
    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    :cond_9
    instance-of v3, v9, Ljava/util/Map;

    .line 190
    .line 191
    if-eqz v3, :cond_a

    .line 192
    .line 193
    move-object v2, v9

    .line 194
    check-cast v2, Ljava/util/Map;

    .line 195
    .line 196
    :cond_a
    :goto_3
    new-array v3, v4, [D

    .line 197
    .line 198
    if-nez v2, :cond_b

    .line 199
    .line 200
    fill-array-data v3, :array_1

    .line 201
    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_b
    const-string v9, "attr_hp"

    .line 205
    .line 206
    invoke-static {v9, v2}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    .line 207
    .line 208
    .line 209
    move-result-wide v9

    .line 210
    aput-wide v9, v3, v8

    .line 211
    .line 212
    const-string v9, "attr_attack"

    .line 213
    .line 214
    invoke-static {v9, v2}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    .line 215
    .line 216
    .line 217
    move-result-wide v9

    .line 218
    aput-wide v9, v3, v7

    .line 219
    .line 220
    const-string v9, "attr_defense"

    .line 221
    .line 222
    invoke-static {v9, v2}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    .line 223
    .line 224
    .line 225
    move-result-wide v9

    .line 226
    aput-wide v9, v3, v6

    .line 227
    .line 228
    const-string v9, "attr_wisdom"

    .line 229
    .line 230
    invoke-static {v9, v2}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    .line 231
    .line 232
    .line 233
    move-result-wide v9

    .line 234
    aput-wide v9, v3, v5

    .line 235
    .line 236
    :goto_4
    move-object v2, v3

    .line 237
    :goto_5
    array-length v3, v1

    .line 238
    const/4 v11, 0x5

    .line 239
    if-le v3, v11, :cond_c

    .line 240
    .line 241
    aget-wide v12, v1, v11

    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_c
    const-wide/16 v12, 0x0

    .line 245
    .line 246
    :goto_6
    array-length v3, v1

    .line 247
    const/4 v14, 0x6

    .line 248
    if-le v3, v14, :cond_d

    .line 249
    .line 250
    aget-wide v14, v1, v14

    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_d
    const-wide/16 v14, 0x0

    .line 254
    .line 255
    :goto_7
    array-length v3, v1

    .line 256
    const/4 v9, 0x7

    .line 257
    if-le v3, v9, :cond_e

    .line 258
    .line 259
    aget-wide v9, v1, v9

    .line 260
    .line 261
    goto :goto_8

    .line 262
    :cond_e
    const-wide/16 v9, 0x0

    .line 263
    .line 264
    :goto_8
    array-length v3, v1

    .line 265
    const/16 v4, 0x8

    .line 266
    .line 267
    if-le v3, v4, :cond_f

    .line 268
    .line 269
    aget-wide v3, v1, v4

    .line 270
    .line 271
    move-wide/from16 v16, v3

    .line 272
    .line 273
    goto :goto_9

    .line 274
    :cond_f
    const-wide/16 v16, 0x0

    .line 275
    .line 276
    :goto_9
    add-int/lit8 v3, p2, -0x1

    .line 277
    .line 278
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    aget-wide v18, v1, v8

    .line 283
    .line 284
    int-to-double v3, v3

    .line 285
    mul-double/2addr v12, v3

    .line 286
    add-double v12, v12, v18

    .line 287
    .line 288
    aget-wide v18, v2, v8

    .line 289
    .line 290
    add-double v18, v18, p4

    .line 291
    .line 292
    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    .line 293
    .line 294
    div-double v18, v18, v20

    .line 295
    .line 296
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    .line 297
    .line 298
    add-double v18, v18, v22

    .line 299
    .line 300
    mul-double v18, v18, v12

    .line 301
    .line 302
    aget-wide v12, v1, v7

    .line 303
    .line 304
    mul-double/2addr v14, v3

    .line 305
    add-double/2addr v14, v12

    .line 306
    aget-wide v12, v2, v7

    .line 307
    .line 308
    add-double v12, v12, p4

    .line 309
    .line 310
    div-double v12, v12, v20

    .line 311
    .line 312
    add-double v12, v12, v22

    .line 313
    .line 314
    mul-double/2addr v12, v14

    .line 315
    aget-wide v14, v1, v6

    .line 316
    .line 317
    mul-double/2addr v9, v3

    .line 318
    add-double/2addr v9, v14

    .line 319
    aget-wide v14, v2, v6

    .line 320
    .line 321
    add-double v14, v14, p4

    .line 322
    .line 323
    div-double v14, v14, v20

    .line 324
    .line 325
    add-double v14, v14, v22

    .line 326
    .line 327
    mul-double/2addr v14, v9

    .line 328
    aget-wide v9, v1, v5

    .line 329
    .line 330
    mul-double v3, v3, v16

    .line 331
    .line 332
    add-double/2addr v3, v9

    .line 333
    aget-wide v1, v2, v5

    .line 334
    .line 335
    add-double v1, v1, p4

    .line 336
    .line 337
    div-double v1, v1, v20

    .line 338
    .line 339
    add-double v1, v1, v22

    .line 340
    .line 341
    mul-double/2addr v1, v3

    .line 342
    move-wide/from16 v24, v18

    .line 343
    .line 344
    move-wide/from16 v26, v12

    .line 345
    .line 346
    move-wide/from16 v28, v14

    .line 347
    .line 348
    move-wide/from16 v30, v1

    .line 349
    .line 350
    invoke-static/range {v24 .. v31}, Lcom/sgscq/vpn/w1;->x(DDDD)D

    .line 351
    .line 352
    .line 353
    move-result-wide v3

    .line 354
    new-array v9, v11, [D

    .line 355
    .line 356
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    .line 357
    .line 358
    mul-double v18, v18, v10

    .line 359
    .line 360
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    .line 361
    .line 362
    .line 363
    move-result-wide v5

    .line 364
    long-to-double v5, v5

    .line 365
    div-double/2addr v5, v10

    .line 366
    aput-wide v5, v9, v8

    .line 367
    .line 368
    mul-double/2addr v12, v10

    .line 369
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    .line 370
    .line 371
    .line 372
    move-result-wide v5

    .line 373
    long-to-double v5, v5

    .line 374
    div-double/2addr v5, v10

    .line 375
    aput-wide v5, v9, v7

    .line 376
    .line 377
    mul-double/2addr v14, v10

    .line 378
    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    .line 379
    .line 380
    .line 381
    move-result-wide v5

    .line 382
    long-to-double v5, v5

    .line 383
    div-double/2addr v5, v10

    .line 384
    const/4 v7, 0x2

    .line 385
    aput-wide v5, v9, v7

    .line 386
    .line 387
    mul-double/2addr v1, v10

    .line 388
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    .line 389
    .line 390
    .line 391
    move-result-wide v1

    .line 392
    long-to-double v1, v1

    .line 393
    div-double/2addr v1, v10

    .line 394
    const/4 v5, 0x3

    .line 395
    aput-wide v1, v9, v5

    .line 396
    .line 397
    mul-double/2addr v3, v10

    .line 398
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    .line 399
    .line 400
    .line 401
    move-result-wide v1

    .line 402
    long-to-double v1, v1

    .line 403
    div-double/2addr v1, v10

    .line 404
    const/4 v3, 0x4

    .line 405
    aput-wide v1, v9, v3

    .line 406
    .line 407
    return-object v9

    .line 408
    nop

    .line 409
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final declared-synchronized N1()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->t:Ljava/util/LinkedHashMap;

    .line 3
    .line 4
    if-nez v0, :cond_4

    .line 5
    .line 6
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->X(Landroid/content/Context;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    :cond_0
    sget-boolean v1, Lcom/sgscq/vpn/w1;->X:Z

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const-string v0, "docs/game_data_json/magic_buffs.json"

    .line 25
    .line 26
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->s2(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    :goto_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    :goto_1
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->t:Ljava/util/LinkedHashMap;

    .line 50
    .line 51
    :cond_4
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->u:Ljava/util/LinkedHashMap;

    .line 52
    .line 53
    if-nez v0, :cond_9

    .line 54
    .line 55
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 56
    .line 57
    const-string v1, "evolution_buffs.json"

    .line 58
    .line 59
    invoke-static {v0, v1}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_6

    .line 70
    .line 71
    :cond_5
    const-string v0, "docs/game_data_json/evolution_buffs.json"

    .line 72
    .line 73
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->s2(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :cond_6
    if-eqz v0, :cond_8

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_7

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_7
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    goto :goto_3

    .line 91
    :cond_8
    :goto_2
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 94
    .line 95
    .line 96
    :goto_3
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->u:Ljava/util/LinkedHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    :cond_9
    monitor-exit p0

    .line 99
    return-void

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    monitor-exit p0

    .line 102
    throw v0
.end method

.method public final O0(Ljava/lang/String;I)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const-string v1, "insight_upgrade_exp_type"

    .line 10
    .line 11
    const-string v2, ""

    .line 12
    .line 13
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    return v0

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->W1()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/sgscq/vpn/w1;->G:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Ljava/util/List;

    .line 38
    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 49
    .line 50
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-lt p2, v1, :cond_3

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    add-int/lit8 p2, p2, -0x1

    .line 65
    .line 66
    :cond_3
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Ljava/util/Map;

    .line 71
    .line 72
    const-string p2, "num"

    .line 73
    .line 74
    const-string v1, "0"

    .line 75
    .line 76
    invoke-static {p1, p2, v1, v0}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    return p1

    .line 81
    :cond_4
    :goto_0
    return v0
.end method

.method public final O1()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "generals.json"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    :cond_0
    sget-boolean v1, Lcom/sgscq/vpn/w1;->X:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const-string v0, "docs/game_data_json/generals.json"

    .line 22
    .line 23
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->s2(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "[GameDataManager] loadGenerals: json="

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v3, " chars"

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const-string v2, "null"

    .line 59
    .line 60
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v2, "SGSCQ_SRV"

    .line 68
    .line 69
    invoke-static {v2, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    if-eqz v0, :cond_8

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    goto/16 :goto_3

    .line 81
    .line 82
    :cond_3
    new-instance v1, Lcom/sgscq/vpn/GameDataManager$3;

    .line 83
    .line 84
    invoke-direct {v1}, Lcom/sgscq/vpn/GameDataManager$3;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object v3, p0, Lcom/sgscq/vpn/w1;->b:La/o;

    .line 92
    .line 93
    invoke-virtual {v3, v0, v1}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Ljava/util/List;

    .line 98
    .line 99
    new-instance v1, Ljava/util/HashMap;

    .line 100
    .line 101
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v1, p0, Lcom/sgscq/vpn/w1;->e:Ljava/util/HashMap;

    .line 105
    .line 106
    new-instance v1, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v1, p0, Lcom/sgscq/vpn/w1;->f:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const/4 v1, 0x0

    .line 118
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_7

    .line 123
    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    check-cast v3, Ljava/util/Map;

    .line 129
    .line 130
    const-string v4, "id"

    .line 131
    .line 132
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    check-cast v4, Ljava/lang/String;

    .line 137
    .line 138
    const-string v5, "resource_id"

    .line 139
    .line 140
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    check-cast v5, Ljava/lang/String;

    .line 145
    .line 146
    if-eqz v4, :cond_6

    .line 147
    .line 148
    if-eqz v5, :cond_6

    .line 149
    .line 150
    const-string v6, "0"

    .line 151
    .line 152
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-nez v7, :cond_6

    .line 157
    .line 158
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-eqz v5, :cond_4

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_4
    const-string v5, "surrender_gift_id"

    .line 166
    .line 167
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    if-eqz v5, :cond_5

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_5
    iget-object v5, p0, Lcom/sgscq/vpn/w1;->e:Ljava/util/HashMap;

    .line 183
    .line 184
    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    iget-object v3, p0, Lcom/sgscq/vpn/w1;->f:Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string v3, "[loadGenerals] \u52a0\u8f7d "

    .line 199
    .line 200
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object v3, p0, Lcom/sgscq/vpn/w1;->f:Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v3, " \u6761\u6b66\u5c06, \u8fc7\u6ee4 "

    .line 213
    .line 214
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v1, " \u6761\uff08\u65e0resource_id\u6216\u65e0\u81e3\u670d\uff09"

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-static {v2, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->M1()V

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :cond_8
    :goto_3
    const-string v0, "[GameDataManager] loadGenerals: EMPTY!"

    .line 237
    .line 238
    invoke-static {v2, v0}, Lcom/sgscq/vpn/z2;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    new-instance v0, Ljava/util/HashMap;

    .line 242
    .line 243
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 244
    .line 245
    .line 246
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->e:Ljava/util/HashMap;

    .line 247
    .line 248
    new-instance v0, Ljava/util/ArrayList;

    .line 249
    .line 250
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .line 252
    .line 253
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->f:Ljava/util/ArrayList;

    .line 254
    .line 255
    return-void
.end method

.method public final P0(ILjava/lang/String;J)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->W1()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->G:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const-string v1, ""

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v2, "upgrade_exp_type"

    .line 16
    .line 17
    invoke-interface {p2, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Ljava/util/List;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    if-eqz p2, :cond_5

    .line 33
    .line 34
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    goto :goto_4

    .line 41
    :cond_1
    const/4 v1, 0x0

    .line 42
    move v2, v0

    .line 43
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-ge v1, v3, :cond_3

    .line 48
    .line 49
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Ljava/util/Map;

    .line 54
    .line 55
    const-string v4, "total_num"

    .line 56
    .line 57
    const-string v5, "0"

    .line 58
    .line 59
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    :try_start_0
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 68
    .line 69
    .line 70
    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_2

    .line 72
    :catch_0
    const-wide/16 v3, 0x0

    .line 73
    .line 74
    :goto_2
    double-to-long v3, v3

    .line 75
    const-wide/16 v5, 0x0

    .line 76
    .line 77
    cmp-long v5, v3, v5

    .line 78
    .line 79
    if-gtz v5, :cond_2

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_2
    cmp-long v3, p3, v3

    .line 83
    .line 84
    if-ltz v3, :cond_3

    .line 85
    .line 86
    add-int/lit8 v2, v1, 0x2

    .line 87
    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    :goto_3
    if-lez p1, :cond_4

    .line 92
    .line 93
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    :cond_4
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    return p1

    .line 102
    :cond_5
    :goto_4
    return v0
.end method

.method public final P1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->H:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "global_conf.json"

    .line 7
    .line 8
    iget-object v1, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->H:Ljava/util/LinkedHashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->H:Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :cond_2
    :goto_1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->H:Ljava/util/LinkedHashMap;

    .line 44
    .line 45
    return-void
.end method

.method public final Q0(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string v1, "insight_max_level"

    .line 9
    .line 10
    const-string v2, "0"

    .line 11
    .line 12
    invoke-static {p1, v1, v2, v0}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    :cond_0
    const/4 p1, 0x5

    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v0, p1

    .line 21
    :goto_0
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    add-int/2addr p1, v0

    .line 31
    return p1
.end method

.method public final Q1()V
    .locals 7

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sgscq/vpn/w1;->b:La/o;

    .line 4
    .line 5
    const-string v2, "godness.json"

    .line 6
    .line 7
    iget-object v3, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v3, v2}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v3, p0, Lcom/sgscq/vpn/w1;->o:Ljava/util/HashMap;

    .line 19
    .line 20
    new-instance v3, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v3, p0, Lcom/sgscq/vpn/w1;->x:Ljava/util/ArrayList;

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_0
    :try_start_0
    new-instance v3, Lcom/sgscq/vpn/GameDataManager$10;

    .line 38
    .line 39
    invoke-direct {v3}, Lcom/sgscq/vpn/GameDataManager$10;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v1, v2, v3}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Ljava/util/Map;

    .line 67
    .line 68
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    check-cast v5, Ljava/lang/String;

    .line 73
    .line 74
    if-eqz v5, :cond_1

    .line 75
    .line 76
    iget-object v6, p0, Lcom/sgscq/vpn/w1;->o:Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    iget-object v4, p0, Lcom/sgscq/vpn/w1;->x:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_0
    :try_start_1
    new-instance v3, Lcom/sgscq/vpn/GameDataManager$11;

    .line 88
    .line 89
    invoke-direct {v3}, Lcom/sgscq/vpn/GameDataManager$11;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v1, v2, v3}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Ljava/util/Map;

    .line 101
    .line 102
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_2

    .line 115
    .line 116
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Ljava/util/Map$Entry;

    .line 121
    .line 122
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    check-cast v3, Ljava/util/Map;

    .line 127
    .line 128
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    iget-object v4, p0, Lcom/sgscq/vpn/w1;->o:Ljava/util/HashMap;

    .line 136
    .line 137
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    check-cast v5, Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    iget-object v3, p0, Lcom/sgscq/vpn/w1;->x:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    check-cast v2, Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :catch_1
    move-exception v0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string v2, "[GameDataManager] loadGoddess failed: "

    .line 162
    .line 163
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const-string v2, "SGSCQ_SRV"

    .line 167
    .line 168
    invoke-static {v0, v1, v2}, Lc/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :cond_2
    :goto_2
    return-void
.end method

.method public final R(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 9

    .line 1
    if-eqz p1, :cond_6

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
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    const-string v0, "equipment_id"

    .line 12
    .line 13
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const-string v0, "equip_id"

    .line 17
    .line 18
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-string v0, "id"

    .line 22
    .line 23
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    const-string v0, "eid"

    .line 27
    .line 28
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "level"

    .line 37
    .line 38
    invoke-static {v1, v2, p2}, Lcom/sgscq/vpn/w1;->p2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 39
    .line 40
    .line 41
    const-string v1, "equipment_level"

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v2, v1, p2}, Lcom/sgscq/vpn/w1;->p2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 48
    .line 49
    .line 50
    const-string v1, "refine_level"

    .line 51
    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v2, v1, p2}, Lcom/sgscq/vpn/w1;->p2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 57
    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v3, "refine_exp"

    .line 65
    .line 66
    invoke-static {v2, v3, p2}, Lcom/sgscq/vpn/w1;->p2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 67
    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    const-string v3, "general_pk_id"

    .line 71
    .line 72
    invoke-static {v2, v3, p2}, Lcom/sgscq/vpn/w1;->p2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 73
    .line 74
    .line 75
    const-string v3, "general_id"

    .line 76
    .line 77
    invoke-static {v2, v3, p2}, Lcom/sgscq/vpn/w1;->p2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 78
    .line 79
    .line 80
    const-string v3, "user_general_id"

    .line 81
    .line 82
    invoke-static {v2, v3, p2}, Lcom/sgscq/vpn/w1;->p2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 83
    .line 84
    .line 85
    const-string v2, "0"

    .line 86
    .line 87
    const-string v3, "is_wear"

    .line 88
    .line 89
    invoke-static {v2, v3, p2}, Lcom/sgscq/vpn/w1;->p2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 90
    .line 91
    .line 92
    const-string v3, "wear"

    .line 93
    .line 94
    invoke-static {v2, v3, p2}, Lcom/sgscq/vpn/w1;->p2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 95
    .line 96
    .line 97
    const-string v3, "bore_list"

    .line 98
    .line 99
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    instance-of v4, v4, Ljava/util/List;

    .line 104
    .line 105
    if-nez v4, :cond_1

    .line 106
    .line 107
    new-instance v4, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->z0(Ljava/lang/String;)Ljava/util/Map;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    const-string v4, "fighting"

    .line 120
    .line 121
    const-string v5, "grade"

    .line 122
    .line 123
    const-string v6, "equipment_type"

    .line 124
    .line 125
    const-string v7, "equipment_pos"

    .line 126
    .line 127
    if-eqz v3, :cond_2

    .line 128
    .line 129
    invoke-static {v7, p2, v3}, Lcom/sgscq/vpn/w1;->M(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v6, p2, v3}, Lcom/sgscq/vpn/w1;->M(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v5, p2, v3}, Lcom/sgscq/vpn/w1;->M(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v4, p2, v3}, Lcom/sgscq/vpn/w1;->M(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V

    .line 139
    .line 140
    .line 141
    const-string v8, "fighting_step"

    .line 142
    .line 143
    invoke-static {v8, p2, v3}, Lcom/sgscq/vpn/w1;->M(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V

    .line 144
    .line 145
    .line 146
    const-string v8, "effect_value"

    .line 147
    .line 148
    invoke-static {v8, p2, v3}, Lcom/sgscq/vpn/w1;->M(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V

    .line 149
    .line 150
    .line 151
    const-string v8, "effect_step"

    .line 152
    .line 153
    invoke-static {v8, p2, v3}, Lcom/sgscq/vpn/w1;->M(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V

    .line 154
    .line 155
    .line 156
    const-string v8, "refine_upgrade_exp_type"

    .line 157
    .line 158
    invoke-static {v8, p2, v3}, Lcom/sgscq/vpn/w1;->M(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V

    .line 159
    .line 160
    .line 161
    const-string v8, "refine_eaten_exp_type"

    .line 162
    .line 163
    invoke-static {v8, p2, v3}, Lcom/sgscq/vpn/w1;->M(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V

    .line 164
    .line 165
    .line 166
    const-string v8, "refine_bonus_type"

    .line 167
    .line 168
    invoke-static {v8, p2, v3}, Lcom/sgscq/vpn/w1;->M(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V

    .line 169
    .line 170
    .line 171
    const-string v8, "upgrade_coin_type"

    .line 172
    .line 173
    invoke-static {v8, p2, v3}, Lcom/sgscq/vpn/w1;->M(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V

    .line 174
    .line 175
    .line 176
    const-string v8, "sell_type"

    .line 177
    .line 178
    invoke-static {v8, p2, v3}, Lcom/sgscq/vpn/w1;->M(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V

    .line 179
    .line 180
    .line 181
    const-string v8, "can_fit"

    .line 182
    .line 183
    invoke-static {v8, p2, v3}, Lcom/sgscq/vpn/w1;->M(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V

    .line 184
    .line 185
    .line 186
    const-string v8, "is_version"

    .line 187
    .line 188
    invoke-static {v8, p2, v3}, Lcom/sgscq/vpn/w1;->M(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V

    .line 189
    .line 190
    .line 191
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    const/4 v8, 0x2

    .line 196
    if-ge v3, v8, :cond_3

    .line 197
    .line 198
    goto :goto_0

    .line 199
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    const/16 v3, 0x32

    .line 204
    .line 205
    if-ne v1, v3, :cond_4

    .line 206
    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    const/16 v0, 0x31

    .line 212
    .line 213
    if-lt p1, v0, :cond_4

    .line 214
    .line 215
    const/16 v0, 0x34

    .line 216
    .line 217
    if-gt p1, v0, :cond_4

    .line 218
    .line 219
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    goto :goto_1

    .line 224
    :cond_4
    :goto_0
    const-string p1, ""

    .line 225
    .line 226
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-nez v0, :cond_5

    .line 231
    .line 232
    invoke-static {p1, v7, p2}, Lcom/sgscq/vpn/w1;->p2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 233
    .line 234
    .line 235
    invoke-static {p1, v6, p2}, Lcom/sgscq/vpn/w1;->p2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 236
    .line 237
    .line 238
    :cond_5
    invoke-static {v2, v5, p2}, Lcom/sgscq/vpn/w1;->p2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 239
    .line 240
    .line 241
    invoke-static {v2, v4, p2}, Lcom/sgscq/vpn/w1;->p2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 242
    .line 243
    .line 244
    :cond_6
    :goto_2
    return-void
.end method

.method public final R0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "name"

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/w1;->Y0(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_0
    const-string v0, "itemname"

    .line 41
    .line 42
    invoke-static {v0, p1}, Lc/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/w1;->Y0(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    return-object v1

    .line 63
    :cond_1
    return-object p1
.end method

.method public final R1()V
    .locals 13

    .line 1
    const-string v0, "items.json"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_a

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    new-instance v1, Lcom/sgscq/vpn/GameDataManager$9;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/sgscq/vpn/GameDataManager$9;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->b:La/o;

    .line 29
    .line 30
    invoke-virtual {v2, v0, v1}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/util/List;

    .line 35
    .line 36
    new-instance v1, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/sgscq/vpn/w1;->m:Ljava/util/HashMap;

    .line 42
    .line 43
    new-instance v1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/sgscq/vpn/w1;->n:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const-string v2, "id"

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Ljava/util/Map;

    .line 67
    .line 68
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Ljava/lang/String;

    .line 73
    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    iget-object v3, p0, Lcom/sgscq/vpn/w1;->m:Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/sgscq/vpn/w1;->n:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->m:Ljava/util/HashMap;

    .line 88
    .line 89
    const-string v1, "600045"

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Ljava/util/Map;

    .line 96
    .line 97
    if-nez v0, :cond_3

    .line 98
    .line 99
    goto/16 :goto_2

    .line 100
    .line 101
    :cond_3
    iget-object v3, p0, Lcom/sgscq/vpn/w1;->J:Ljava/util/HashMap;

    .line 102
    .line 103
    if-eqz v3, :cond_4

    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_5

    .line 110
    .line 111
    :cond_4
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->t()V

    .line 112
    .line 113
    .line 114
    :cond_5
    iget-object v3, p0, Lcom/sgscq/vpn/w1;->J:Ljava/util/HashMap;

    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    const/4 v4, 0x0

    .line 125
    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-eqz v5, :cond_9

    .line 130
    .line 131
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    check-cast v5, Ljava/util/Map;

    .line 136
    .line 137
    const-string v6, "box_id"

    .line 138
    .line 139
    const-string v7, ""

    .line 140
    .line 141
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    const-string v9, "fate_equip_id"

    .line 150
    .line 151
    invoke-interface {v5, v9, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 160
    .line 161
    .line 162
    move-result v10

    .line 163
    if-nez v10, :cond_6

    .line 164
    .line 165
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 166
    .line 167
    .line 168
    move-result v10

    .line 169
    if-eqz v10, :cond_7

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_7
    iget-object v10, p0, Lcom/sgscq/vpn/w1;->m:Ljava/util/HashMap;

    .line 173
    .line 174
    invoke-virtual {v10, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v10

    .line 178
    if-eqz v10, :cond_8

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_8
    new-instance v10, Ljava/util/HashMap;

    .line 182
    .line 183
    invoke-direct {v10, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v10, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    const-string v11, "resource_id"

    .line 190
    .line 191
    invoke-interface {v0, v11, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v12

    .line 195
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v12

    .line 199
    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    const-string v11, "name"

    .line 203
    .line 204
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v12

    .line 208
    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    const-string v11, "desc"

    .line 212
    .line 213
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v12

    .line 217
    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v10, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    const-string v9, "related_equipment_id"

    .line 224
    .line 225
    invoke-virtual {v10, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v10, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    const/4 v6, 0x2

    .line 232
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    const-string v9, "item_type"

    .line 237
    .line 238
    invoke-virtual {v10, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    const-string v6, "7"

    .line 242
    .line 243
    const-string v9, "style_id"

    .line 244
    .line 245
    invoke-interface {v5, v9, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    invoke-virtual {v10, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    const-string v6, "9"

    .line 257
    .line 258
    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v9

    .line 262
    const-string v11, "style_desc"

    .line 263
    .line 264
    invoke-interface {v5, v11, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v9

    .line 268
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    const-string v7, "related_id"

    .line 280
    .line 281
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    invoke-virtual {v10, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    iget-object v5, p0, Lcom/sgscq/vpn/w1;->m:Ljava/util/HashMap;

    .line 293
    .line 294
    invoke-virtual {v5, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    iget-object v5, p0, Lcom/sgscq/vpn/w1;->n:Ljava/util/ArrayList;

    .line 298
    .line 299
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    add-int/lit8 v4, v4, 0x1

    .line 303
    .line 304
    goto/16 :goto_1

    .line 305
    .line 306
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    const-string v1, "[FateBoxItems] injected="

    .line 309
    .line 310
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    const-string v1, "SGSCQ_SRV"

    .line 321
    .line 322
    invoke-static {v1, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    :goto_2
    return-void

    .line 326
    :cond_a
    :goto_3
    new-instance v0, Ljava/util/HashMap;

    .line 327
    .line 328
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 329
    .line 330
    .line 331
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->m:Ljava/util/HashMap;

    .line 332
    .line 333
    new-instance v0, Ljava/util/ArrayList;

    .line 334
    .line 335
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .line 337
    .line 338
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->n:Ljava/util/ArrayList;

    .line 339
    .line 340
    return-void
.end method

.method public final S(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "skill_type"

    invoke-static {v0, p2, p1}, Lcom/sgscq/vpn/w1;->M(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V

    const-string v0, "upgrade_exp_type"

    invoke-static {v0, p2, p1}, Lcom/sgscq/vpn/w1;->M(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V

    const-string v0, "upgrade_coin_type"

    invoke-static {v0, p2, p1}, Lcom/sgscq/vpn/w1;->M(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V

    const-string v0, "eated_exp_type"

    invoke-static {v0, p2, p1}, Lcom/sgscq/vpn/w1;->M(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V

    const-string v0, "grade"

    invoke-static {v0, p2, p1}, Lcom/sgscq/vpn/w1;->M(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V

    const-string v0, "fighting"

    invoke-static {v0, p2, p1}, Lcom/sgscq/vpn/w1;->M(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V

    const-string v0, "fighting_step"

    invoke-static {v0, p2, p1}, Lcom/sgscq/vpn/w1;->M(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V

    const-string v0, "major_property"

    invoke-static {v0, p2, p1}, Lcom/sgscq/vpn/w1;->M(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;)V

    const-string v0, "skill_code"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public final S0(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const-string v1, "reincarnate_num"

    .line 10
    .line 11
    const-string v2, "0"

    .line 12
    .line 13
    invoke-static {p1, v1, v2, v0}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final S1()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->S:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->T:Ljava/util/HashMap;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->S:Ljava/util/HashMap;

    .line 16
    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->T:Ljava/util/HashMap;

    .line 23
    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 25
    .line 26
    const-string v1, "meridians.json"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ljava/util/Map$Entry;

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    instance-of v2, v2, Ljava/util/Map;

    .line 61
    .line 62
    if-nez v2, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Ljava/util/Map;

    .line 75
    .line 76
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_3

    .line 89
    .line 90
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Ljava/util/Map$Entry;

    .line 95
    .line 96
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    instance-of v5, v5, Ljava/util/Map;

    .line 101
    .line 102
    if-eqz v5, :cond_2

    .line 103
    .line 104
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    check-cast v5, Ljava/lang/String;

    .line 109
    .line 110
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    iget-object v3, p0, Lcom/sgscq/vpn/w1;->S:Ljava/util/HashMap;

    .line 119
    .line 120
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :catch_0
    new-instance v0, Ljava/util/HashMap;

    .line 131
    .line 132
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    .line 134
    .line 135
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->S:Ljava/util/HashMap;

    .line 136
    .line 137
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 138
    .line 139
    const-string v1, "meridian_tops.json"

    .line 140
    .line 141
    invoke-static {v0, v1}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_6

    .line 162
    .line 163
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    check-cast v1, Ljava/util/Map$Entry;

    .line 168
    .line 169
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    instance-of v2, v2, Ljava/util/Map;

    .line 174
    .line 175
    if-eqz v2, :cond_5

    .line 176
    .line 177
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->T:Ljava/util/HashMap;

    .line 178
    .line 179
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    check-cast v3, Ljava/lang/String;

    .line 184
    .line 185
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    check-cast v1, Ljava/util/Map;

    .line 190
    .line 191
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :catch_1
    new-instance v0, Ljava/util/HashMap;

    .line 196
    .line 197
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 198
    .line 199
    .line 200
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->T:Ljava/util/HashMap;

    .line 201
    .line 202
    :cond_6
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->T:Ljava/util/HashMap;

    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_8

    .line 209
    .line 210
    sget-boolean v0, Lcom/sgscq/vpn/w1;->X:Z

    .line 211
    .line 212
    if-eqz v0, :cond_8

    .line 213
    .line 214
    new-instance v0, La/o;

    .line 215
    .line 216
    invoke-direct {v0}, La/o;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string v1, "docs/game_data_json/meridian_tops.json"

    .line 220
    .line 221
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->s2(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    new-instance v2, Lcom/sgscq/vpn/GameDataManager$24;

    .line 226
    .line 227
    invoke-direct {v2}, Lcom/sgscq/vpn/GameDataManager$24;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-virtual {v0, v1, v2}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    check-cast v0, Ljava/util/Map;

    .line 239
    .line 240
    if-eqz v0, :cond_8

    .line 241
    .line 242
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-eqz v1, :cond_8

    .line 255
    .line 256
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    check-cast v1, Ljava/util/Map$Entry;

    .line 261
    .line 262
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    instance-of v2, v2, Ljava/util/Map;

    .line 267
    .line 268
    if-eqz v2, :cond_7

    .line 269
    .line 270
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->T:Ljava/util/HashMap;

    .line 271
    .line 272
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    check-cast v3, Ljava/lang/String;

    .line 277
    .line 278
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    check-cast v1, Ljava/util/Map;

    .line 283
    .line 284
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_8
    return-void
.end method

.method public final T(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/sgscq/vpn/g2;->b()Lcom/sgscq/vpn/config/i;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sgscq/vpn/w1;->v:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sgscq/vpn/w1;->w:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sgscq/vpn/w1;->c:Lcom/sgscq/vpn/config/i;

    if-eq p1, v0, :cond_3

    :cond_2
    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/w1;->v(Lcom/sgscq/vpn/config/i;)V

    :cond_3
    return-void
.end method

.method public final T0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "general_naturalskill_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/sgscq/vpn/w1;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final T1()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->L:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "meridian_points.json"

    .line 7
    .line 8
    iget-object v1, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_8

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/sgscq/vpn/w1;->L:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_7

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Ljava/util/Map$Entry;

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    instance-of v2, v2, Ljava/util/Map;

    .line 60
    .line 61
    if-nez v2, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Ljava/util/Map;

    .line 69
    .line 70
    new-instance v3, Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_6

    .line 88
    .line 89
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Ljava/util/Map$Entry;

    .line 94
    .line 95
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    instance-of v5, v5, Ljava/util/Map;

    .line 100
    .line 101
    if-nez v5, :cond_3

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    check-cast v5, Ljava/util/Map;

    .line 109
    .line 110
    new-instance v6, Ljava/util/HashMap;

    .line 111
    .line 112
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-eqz v7, :cond_5

    .line 128
    .line 129
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    check-cast v7, Ljava/util/Map$Entry;

    .line 134
    .line 135
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    instance-of v8, v8, Ljava/util/Map;

    .line 140
    .line 141
    if-eqz v8, :cond_4

    .line 142
    .line 143
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    check-cast v8, Ljava/lang/String;

    .line 148
    .line 149
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    check-cast v4, Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_6
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->L:Ljava/util/HashMap;

    .line 168
    .line 169
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    check-cast v1, Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :catch_0
    new-instance v0, Ljava/util/HashMap;

    .line 181
    .line 182
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 183
    .line 184
    .line 185
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->L:Ljava/util/HashMap;

    .line 186
    .line 187
    :cond_7
    return-void

    .line 188
    :cond_8
    :goto_3
    new-instance v0, Ljava/util/HashMap;

    .line 189
    .line 190
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 191
    .line 192
    .line 193
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->L:Ljava/util/HashMap;

    .line 194
    .line 195
    return-void
.end method

.method public final U0(Ljava/lang/String;I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->P1()V

    iget-object v0, p0, Lcom/sgscq/vpn/w1;->H:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map;

    const-string v0, "value"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "logical_data"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final U1()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "skills.json"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    :cond_0
    sget-boolean v1, Lcom/sgscq/vpn/w1;->X:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const-string v0, "docs/game_data_json/skills.json"

    .line 22
    .line 23
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->s2(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_1
    if-eqz v0, :cond_c

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    goto/16 :goto_4

    .line 36
    .line 37
    :cond_2
    new-instance v1, Lcom/sgscq/vpn/GameDataManager$5;

    .line 38
    .line 39
    invoke-direct {v1}, Lcom/sgscq/vpn/GameDataManager$5;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->b:La/o;

    .line 47
    .line 48
    invoke-virtual {v2, v0, v1}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Ljava/util/List;

    .line 53
    .line 54
    new-instance v1, Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/sgscq/vpn/w1;->g:Ljava/util/HashMap;

    .line 60
    .line 61
    new-instance v1, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/sgscq/vpn/w1;->h:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const/4 v1, 0x0

    .line 73
    move v2, v1

    .line 74
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_b

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Ljava/util/Map;

    .line 85
    .line 86
    const-string v4, "id"

    .line 87
    .line 88
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Ljava/lang/String;

    .line 93
    .line 94
    if-nez v4, :cond_3

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    const-string v5, "warlord_general_id"

    .line 98
    .line 99
    const-string v6, "0"

    .line 100
    .line 101
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    const-string v7, "skill_code"

    .line 110
    .line 111
    const-string v8, ""

    .line 112
    .line 113
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    const-string v8, "resource_id"

    .line 122
    .line 123
    invoke-interface {v3, v8, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    const/4 v10, 0x1

    .line 136
    const-string v11, "null"

    .line 137
    .line 138
    if-nez v9, :cond_5

    .line 139
    .line 140
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-eqz v7, :cond_4

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_4
    move v7, v1

    .line 148
    goto :goto_2

    .line 149
    :cond_5
    :goto_1
    move v7, v10

    .line 150
    :goto_2
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    if-nez v9, :cond_7

    .line 155
    .line 156
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v9

    .line 160
    if-nez v9, :cond_7

    .line 161
    .line 162
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    if-eqz v8, :cond_6

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_6
    move v10, v1

    .line 170
    :cond_7
    :goto_3
    if-eqz v10, :cond_8

    .line 171
    .line 172
    if-nez v7, :cond_9

    .line 173
    .line 174
    :cond_8
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_a

    .line 179
    .line 180
    if-eqz v7, :cond_a

    .line 181
    .line 182
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_a
    iget-object v5, p0, Lcom/sgscq/vpn/w1;->g:Ljava/util/HashMap;

    .line 186
    .line 187
    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    iget-object v3, p0, Lcom/sgscq/vpn/w1;->h:Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string v1, "[loadSkills] \u52a0\u8f7d "

    .line 199
    .line 200
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object v1, p0, Lcom/sgscq/vpn/w1;->h:Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v1, " \u6761\u6280\u80fd, \u8fc7\u6ee4 "

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v1, " \u6761"

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    const-string v1, "SGSCQ_SRV"

    .line 230
    .line 231
    invoke-static {v1, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :cond_c
    :goto_4
    new-instance v0, Ljava/util/HashMap;

    .line 236
    .line 237
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 238
    .line 239
    .line 240
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->g:Ljava/util/HashMap;

    .line 241
    .line 242
    new-instance v0, Ljava/util/ArrayList;

    .line 243
    .line 244
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .line 246
    .line 247
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->h:Ljava/util/ArrayList;

    .line 248
    .line 249
    return-void
.end method

.method public final V0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->P1()V

    iget-object v0, p0, Lcom/sgscq/vpn/w1;->H:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map;

    const-string v0, "value"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "logical_data"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p2

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, p1

    :goto_0
    return-object p2
.end method

.method public final V1()Lcom/sgscq/vpn/a7;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "SGSCQ_SRV"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->R:Lcom/sgscq/vpn/a7;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return-object v2

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    :try_start_0
    const-string v3, "surrenders.json"

    .line 12
    .line 13
    invoke-static {v0, v3}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_5

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_1
    new-instance v4, La/o;

    .line 28
    .line 29
    invoke-direct {v4}, La/o;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v5, Lcom/sgscq/vpn/GameDataManager$18;

    .line 33
    .line 34
    invoke-direct {v5}, Lcom/sgscq/vpn/GameDataManager$18;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v4, v3, v5}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Ljava/util/List;

    .line 46
    .line 47
    new-instance v4, Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_2

    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    check-cast v5, Ljava/util/Map;

    .line 67
    .line 68
    const-string v6, "general_id"

    .line 69
    .line 70
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    .line 83
    .line 84
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    .line 86
    .line 87
    :try_start_1
    const-string v5, "evolution_surrenders.json"

    .line 88
    .line 89
    invoke-static {v0, v5}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-nez v5, :cond_4

    .line 100
    .line 101
    new-instance v5, La/o;

    .line 102
    .line 103
    invoke-direct {v5}, La/o;-><init>()V

    .line 104
    .line 105
    .line 106
    new-instance v6, Lcom/sgscq/vpn/GameDataManager$19;

    .line 107
    .line 108
    invoke-direct {v6}, Lcom/sgscq/vpn/GameDataManager$19;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-virtual {v5, v0, v6}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Ljava/util/List;

    .line 120
    .line 121
    if-eqz v0, :cond_4

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz v5, :cond_4

    .line 132
    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    check-cast v5, Ljava/util/Map;

    .line 138
    .line 139
    const-string v6, "surrender_id"

    .line 140
    .line 141
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    if-eqz v5, :cond_3

    .line 146
    .line 147
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-nez v6, :cond_3

    .line 156
    .line 157
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v6, "[GameDataManager] loadSurrenderData evolution map FAILED: "

    .line 172
    .line 173
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-static {v1, v0}, Lcom/sgscq/vpn/z2;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :cond_4
    invoke-virtual {p0, v4}, Lcom/sgscq/vpn/w1;->r(Ljava/util/HashMap;)V

    .line 191
    .line 192
    .line 193
    new-instance v0, Lcom/sgscq/vpn/a7;

    .line 194
    .line 195
    invoke-direct {v0, v4, v3}, Lcom/sgscq/vpn/a7;-><init>(Ljava/util/HashMap;Ljava/util/Set;)V

    .line 196
    .line 197
    .line 198
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->R:Lcom/sgscq/vpn/a7;

    .line 199
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    const-string v3, "[GameDataManager] loadSurrenderData: "

    .line 206
    .line 207
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v3, " generals"

    .line 218
    .line 219
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-static {v1, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_5
    :goto_2
    new-instance v0, Lcom/sgscq/vpn/a7;

    .line 231
    .line 232
    invoke-direct {v0, v2}, Lcom/sgscq/vpn/a7;-><init>(I)V

    .line 233
    .line 234
    .line 235
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->R:Lcom/sgscq/vpn/a7;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 236
    .line 237
    return-object v0

    .line 238
    :catch_1
    move-exception v0

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string v4, "[GameDataManager] loadSurrenderData FAILED: "

    .line 242
    .line 243
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-static {v1, v0}, Lcom/sgscq/vpn/z2;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    new-instance v0, Lcom/sgscq/vpn/a7;

    .line 261
    .line 262
    invoke-direct {v0, v2}, Lcom/sgscq/vpn/a7;-><init>(I)V

    .line 263
    .line 264
    .line 265
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->R:Lcom/sgscq/vpn/a7;

    .line 266
    .line 267
    :goto_3
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->R:Lcom/sgscq/vpn/a7;

    .line 268
    .line 269
    return-object v0
.end method

.method public final W(Ljava/util/Map;Ljava/util/Map;DDDD)V
    .locals 4

    .line 1
    invoke-static/range {p3 .. p10}, Lcom/sgscq/vpn/w1;->x(DDDD)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "fighting"

    .line 10
    .line 11
    invoke-static {v1, v0, p2}, Lcom/sgscq/vpn/w1;->K(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "base_hp"

    .line 16
    .line 17
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const-string v2, "base_attack"

    .line 25
    .line 26
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const-string v2, "base_defense"

    .line 34
    .line 35
    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    const-string v2, "base_wisdom"

    .line 43
    .line 44
    invoke-static {p9, p10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    const-string v2, "attr_hp"

    .line 52
    .line 53
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-interface {p1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    const-string p3, "attr_attack"

    .line 61
    .line 62
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    const-string p3, "attr_defense"

    .line 70
    .line 71
    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p4

    .line 75
    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    const-string p3, "attr_wisdom"

    .line 79
    .line 80
    invoke-static {p9, p10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p4

    .line 84
    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    const-string p3, "base_fighting"

    .line 88
    .line 89
    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    const-string p3, "fighting_point"

    .line 96
    .line 97
    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    const-string p3, "fight_point"

    .line 101
    .line 102
    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    const-string p3, "general_fighting"

    .line 106
    .line 107
    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    const-string p3, "general_hp_step"

    .line 111
    .line 112
    const-string p4, "hp_step"

    .line 113
    .line 114
    invoke-static {p3, p4, p1, p2}, Lcom/sgscq/vpn/w1;->L(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 115
    .line 116
    .line 117
    const-string p3, "general_attack_step"

    .line 118
    .line 119
    const-string p4, "attack_step"

    .line 120
    .line 121
    invoke-static {p3, p4, p1, p2}, Lcom/sgscq/vpn/w1;->L(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 122
    .line 123
    .line 124
    const-string p3, "general_defense_step"

    .line 125
    .line 126
    const-string p4, "defense_step"

    .line 127
    .line 128
    invoke-static {p3, p4, p1, p2}, Lcom/sgscq/vpn/w1;->L(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 129
    .line 130
    .line 131
    const-string p3, "general_wisdom_step"

    .line 132
    .line 133
    const-string p4, "wisdom_step"

    .line 134
    .line 135
    invoke-static {p3, p4, p1, p2}, Lcom/sgscq/vpn/w1;->L(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 136
    .line 137
    .line 138
    const-string p3, "fighting_step"

    .line 139
    .line 140
    const-string p4, "0"

    .line 141
    .line 142
    invoke-static {p3, p4, p2}, Lcom/sgscq/vpn/w1;->K(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p5

    .line 146
    invoke-interface {p1, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    const-string p3, "lieutenant_skill_id"

    .line 150
    .line 151
    invoke-interface {p2, p3, p4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-static {p2}, Lcom/sgscq/vpn/w1;->r1(Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result p5

    .line 163
    const-string p6, "skill_type_lieutenant"

    .line 164
    .line 165
    if-nez p5, :cond_1

    .line 166
    .line 167
    invoke-virtual {p0, p2}, Lcom/sgscq/vpn/w1;->e1(Ljava/lang/String;)Ljava/util/Map;

    .line 168
    .line 169
    .line 170
    move-result-object p5

    .line 171
    if-nez p5, :cond_0

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_0
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    invoke-interface {p1, p6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    const-wide/16 p3, 0x0

    .line 181
    .line 182
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sgscq/vpn/w1;->G2(Ljava/util/Map;Ljava/lang/String;D)Z

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :cond_1
    :goto_0
    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    invoke-interface {p1, p6, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    const-string p2, "ls_type"

    .line 193
    .line 194
    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    const-string p2, "ls_value"

    .line 198
    .line 199
    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    return-void
.end method

.method public final W0()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->X1()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->E:Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    move v2, v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_3

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Ljava/util/Map;

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string v4, "team_num"

    .line 30
    .line 31
    const-string v5, "1"

    .line 32
    .line 33
    invoke-static {v3, v4, v5, v1}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-le v3, v2, :cond_0

    .line 38
    .line 39
    move v2, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move v2, v1

    .line 42
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    return v0
.end method

.method public final W1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->G:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->G:Ljava/util/HashMap;

    .line 12
    .line 13
    const-string v0, "upgrade_exps.json"

    .line 14
    .line 15
    iget-object v1, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/util/Map$Entry;

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    instance-of v2, v2, Ljava/util/List;

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->G:Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Ljava/lang/String;

    .line 69
    .line 70
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Ljava/util/List;

    .line 75
    .line 76
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_0
    :cond_3
    :goto_1
    return-void
.end method

.method public final X0(Ljava/lang/String;)Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->o:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->Q1()V

    :cond_0
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public final X1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->E:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "user_levels.json"

    .line 7
    .line 8
    iget-object v1, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->t1(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->E:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->E:Ljava/util/ArrayList;

    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :cond_2
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->E:Ljava/util/ArrayList;

    .line 44
    .line 45
    return-void
.end method

.method public final Y(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 11

    .line 1
    const-string v0, "general_pk_id"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "pk_id"

    .line 6
    .line 7
    invoke-static {p2, v0, v1, v2}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "general_naturalskill_id"

    .line 12
    .line 13
    invoke-interface {p2, v3, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string v5, "Skill"

    .line 22
    .line 23
    invoke-static {v5, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    move-object v5, v1

    .line 32
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    const-string v7, "skill_code"

    .line 37
    .line 38
    const-string v8, "skill_id"

    .line 39
    .line 40
    const-string v9, "id"

    .line 41
    .line 42
    if-eqz v6, :cond_4

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    check-cast v6, Ljava/util/Map;

    .line 49
    .line 50
    invoke-static {v6, v0, v1, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v10

    .line 54
    if-nez v10, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-static {v6, v7, v1, v9, v8}, Lc/a;->k(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-static {v7}, Lcom/sgscq/vpn/w1;->r1(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-eqz v8, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-static {v4, v6}, Lcom/sgscq/vpn/w1;->A1(Ljava/lang/String;Ljava/util/Map;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_3

    .line 73
    .line 74
    return-object v7

    .line 75
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_0

    .line 80
    .line 81
    move-object v5, v7

    .line 82
    goto :goto_0

    .line 83
    :cond_4
    const-string p1, "gSkill"

    .line 84
    .line 85
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    instance-of v0, p1, Ljava/util/List;

    .line 90
    .line 91
    if-eqz v0, :cond_9

    .line 92
    .line 93
    check-cast p1, Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_9

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    instance-of v2, v0, Ljava/util/Map;

    .line 110
    .line 111
    if-nez v2, :cond_6

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_6
    check-cast v0, Ljava/util/Map;

    .line 115
    .line 116
    invoke-static {v0, v7, v1, v9, v8}, Lc/a;->k(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {v2}, Lcom/sgscq/vpn/w1;->r1(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    if-eqz v6, :cond_7

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_7
    invoke-static {v4, v0}, Lcom/sgscq/vpn/w1;->A1(Ljava/lang/String;Ljava/util/Map;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_8

    .line 132
    .line 133
    return-object v2

    .line 134
    :cond_8
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_5

    .line 139
    .line 140
    move-object v5, v2

    .line 141
    goto :goto_1

    .line 142
    :cond_9
    const-string p1, "general_id"

    .line 143
    .line 144
    invoke-interface {p2, v9, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-nez p1, :cond_a

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_a
    invoke-interface {p1, v3, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    :goto_2
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->r1(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-nez p1, :cond_b

    .line 176
    .line 177
    move-object v5, v1

    .line 178
    :cond_b
    return-object v5
.end method

.method public final Y0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-eqz p1, :cond_6

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
    goto :goto_3

    .line 10
    :cond_0
    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->D:Ljava/util/Map;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 17
    .line 18
    const-string v1, "i18n.json"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    :try_start_1
    new-instance v1, Lcom/sgscq/vpn/GameDataManager$17;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/sgscq/vpn/GameDataManager$17;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->b:La/o;

    .line 43
    .line 44
    invoke-virtual {v2, v0, v1}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/util/Map;

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :cond_3
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->D:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catch_0
    :cond_4
    :goto_0
    :try_start_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->D:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    .line 65
    :goto_1
    monitor-exit p0

    .line 66
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->D:Ljava/util/Map;

    .line 67
    .line 68
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Ljava/lang/String;

    .line 73
    .line 74
    if-nez v0, :cond_5

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    move-object p1, v0

    .line 78
    :goto_2
    return-object p1

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    monitor-exit p0

    .line 81
    throw p1

    .line 82
    :cond_6
    :goto_3
    const-string p1, ""

    .line 83
    .line 84
    return-object p1
.end method

.method public final Y1(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const v3, 0x1b592

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    aget-wide v5, v4, v5

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 28
    .line 29
    :goto_1
    const/4 v7, 0x1

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    aget-wide v7, v4, v7

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    .line 36
    .line 37
    :goto_2
    move-wide v15, v7

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    const/4 v7, 0x2

    .line 41
    aget-wide v7, v4, v7

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_2
    const-wide/high16 v7, 0x403e000000000000L    # 30.0

    .line 45
    .line 46
    :goto_3
    move-wide/from16 v17, v7

    .line 47
    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    const/4 v7, 0x3

    .line 51
    aget-wide v7, v4, v7

    .line 52
    .line 53
    goto :goto_4

    .line 54
    :cond_3
    const-wide/high16 v7, 0x4034000000000000L    # 20.0

    .line 55
    .line 56
    :goto_4
    move-wide/from16 v19, v7

    .line 57
    .line 58
    if-eqz v4, :cond_4

    .line 59
    .line 60
    const/4 v7, 0x4

    .line 61
    aget-wide v7, v4, v7

    .line 62
    .line 63
    goto :goto_5

    .line 64
    :cond_4
    move-wide v7, v5

    .line 65
    move-wide v9, v15

    .line 66
    move-wide/from16 v11, v17

    .line 67
    .line 68
    move-wide/from16 v13, v19

    .line 69
    .line 70
    invoke-static/range {v7 .. v14}, Lcom/sgscq/vpn/w1;->x(DDDD)D

    .line 71
    .line 72
    .line 73
    move-result-wide v7

    .line 74
    :goto_5
    if-eqz v4, :cond_5

    .line 75
    .line 76
    const/4 v9, 0x5

    .line 77
    aget-wide v9, v4, v9

    .line 78
    .line 79
    goto :goto_6

    .line 80
    :cond_5
    const-wide/16 v9, 0x0

    .line 81
    .line 82
    :goto_6
    if-eqz v4, :cond_6

    .line 83
    .line 84
    const/4 v11, 0x6

    .line 85
    aget-wide v11, v4, v11

    .line 86
    .line 87
    goto :goto_7

    .line 88
    :cond_6
    const-wide/16 v11, 0x0

    .line 89
    .line 90
    :goto_7
    if-eqz v4, :cond_7

    .line 91
    .line 92
    const/4 v13, 0x7

    .line 93
    aget-wide v13, v4, v13

    .line 94
    .line 95
    goto :goto_8

    .line 96
    :cond_7
    const-wide/16 v13, 0x0

    .line 97
    .line 98
    :goto_8
    if-eqz v4, :cond_8

    .line 99
    .line 100
    const/16 v21, 0x8

    .line 101
    .line 102
    aget-wide v21, v4, v21

    .line 103
    .line 104
    goto :goto_9

    .line 105
    :cond_8
    const-wide/16 v21, 0x0

    .line 106
    .line 107
    :goto_9
    move/from16 v23, v3

    .line 108
    .line 109
    if-eqz v4, :cond_9

    .line 110
    .line 111
    array-length v3, v4

    .line 112
    const/16 v0, 0xa

    .line 113
    .line 114
    move-wide/from16 v24, v7

    .line 115
    .line 116
    if-le v3, v0, :cond_a

    .line 117
    .line 118
    aget-wide v7, v4, v0

    .line 119
    .line 120
    double-to-int v0, v7

    .line 121
    goto :goto_a

    .line 122
    :cond_9
    move-wide/from16 v24, v7

    .line 123
    .line 124
    :cond_a
    const/4 v0, 0x1

    .line 125
    :goto_a
    const-string v3, "pk_id"

    .line 126
    .line 127
    const-string v7, "general_pk_id"

    .line 128
    .line 129
    invoke-static {v3, v1, v7, v1}, Lc/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    move/from16 v26, v0

    .line 134
    .line 135
    const-string v0, "general_id"

    .line 136
    .line 137
    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    const-string v0, "id"

    .line 141
    .line 142
    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-object/from16 v27, v0

    .line 146
    .line 147
    const-string v0, "general_name"

    .line 148
    .line 149
    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    const-string v0, "general_level"

    .line 153
    .line 154
    const-string v2, "1"

    .line 155
    .line 156
    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    const-string v0, "level"

    .line 160
    .line 161
    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-object/from16 v28, v0

    .line 165
    .line 166
    const-string v0, "exp"

    .line 167
    .line 168
    move-object/from16 v29, v3

    .line 169
    .line 170
    const-string v3, "0"

    .line 171
    .line 172
    invoke-virtual {v8, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    const-string v0, "card_type"

    .line 176
    .line 177
    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-object/from16 v30, v0

    .line 181
    .line 182
    const-string v0, "general_talent"

    .line 183
    .line 184
    invoke-virtual {v8, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    const-string v0, "talent_point"

    .line 188
    .line 189
    invoke-virtual {v8, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    new-instance v0, Ljava/util/HashMap;

    .line 193
    .line 194
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 195
    .line 196
    .line 197
    move-object/from16 v31, v7

    .line 198
    .line 199
    const-string v7, "culture_info"

    .line 200
    .line 201
    invoke-virtual {v8, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    const-string v0, "ganoderma_num"

    .line 205
    .line 206
    invoke-virtual {v8, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    const-string v0, "base_hp"

    .line 210
    .line 211
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    const-string v0, "base_attack"

    .line 219
    .line 220
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    const-string v0, "base_defense"

    .line 228
    .line 229
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    const-string v0, "base_wisdom"

    .line 237
    .line 238
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    const-string v0, "general_hp_attr"

    .line 246
    .line 247
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    const-string v0, "general_attack_attr"

    .line 255
    .line 256
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    const-string v0, "general_defense_attr"

    .line 264
    .line 265
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    const-string v0, "general_wisdom_attr"

    .line 273
    .line 274
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    const-string v0, "attr_hp"

    .line 282
    .line 283
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    const-string v0, "attr_attack"

    .line 291
    .line 292
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    const-string v0, "attr_defense"

    .line 300
    .line 301
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    const-string v0, "attr_wisdom"

    .line 309
    .line 310
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    const-string v0, "general_hp_step"

    .line 318
    .line 319
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    const-string v0, "general_attack_step"

    .line 327
    .line 328
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    const-string v0, "general_defense_step"

    .line 336
    .line 337
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    const-string v0, "general_wisdom_step"

    .line 345
    .line 346
    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    const-string v0, "base_fighting"

    .line 354
    .line 355
    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v5

    .line 359
    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    const-string v0, "fighting"

    .line 363
    .line 364
    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    const-string v0, "fight_point"

    .line 372
    .line 373
    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    const-string v0, "fighting_point"

    .line 381
    .line 382
    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    const-string v0, "general_fighting"

    .line 390
    .line 391
    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v5

    .line 395
    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    if-eqz v4, :cond_b

    .line 399
    .line 400
    array-length v0, v4

    .line 401
    const/16 v5, 0x9

    .line 402
    .line 403
    if-le v0, v5, :cond_b

    .line 404
    .line 405
    aget-wide v5, v4, v5

    .line 406
    .line 407
    goto :goto_b

    .line 408
    :cond_b
    const-wide/16 v5, 0x0

    .line 409
    .line 410
    :goto_b
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    const-string v5, "fighting_step"

    .line 415
    .line 416
    invoke-virtual {v8, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 420
    .line 421
    if-eqz v4, :cond_c

    .line 422
    .line 423
    array-length v0, v4

    .line 424
    const/16 v7, 0xc

    .line 425
    .line 426
    if-le v0, v7, :cond_c

    .line 427
    .line 428
    aget-wide v9, v4, v7

    .line 429
    .line 430
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(DD)D

    .line 431
    .line 432
    .line 433
    move-result-wide v5

    .line 434
    :cond_c
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    const-string v4, "general_orbit"

    .line 439
    .line 440
    invoke-virtual {v8, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    invoke-virtual/range {p0 .. p1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-static {v8, v0}, Lcom/sgscq/vpn/w1;->h2(Ljava/util/Map;Ljava/util/Map;)Z

    .line 448
    .line 449
    .line 450
    const-string v0, "breachLevel"

    .line 451
    .line 452
    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    const-string v0, "insight_level"

    .line 456
    .line 457
    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    const-string v0, "general_naturalskill_id"

    .line 461
    .line 462
    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    const-string v0, "major_pk_id"

    .line 466
    .line 467
    const-string v4, ""

    .line 468
    .line 469
    invoke-virtual {v8, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    invoke-virtual/range {p0 .. p1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    const-string v5, "lieutenant_skill_id"

    .line 477
    .line 478
    if-nez v0, :cond_d

    .line 479
    .line 480
    move-object v0, v3

    .line 481
    goto :goto_c

    .line 482
    :cond_d
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    :goto_c
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->r1(Ljava/lang/String;)Z

    .line 491
    .line 492
    .line 493
    move-result v6

    .line 494
    const-string v7, "skill_type_lieutenant"

    .line 495
    .line 496
    if-nez v6, :cond_f

    .line 497
    .line 498
    move-object/from16 v6, p0

    .line 499
    .line 500
    invoke-virtual {v6, v0}, Lcom/sgscq/vpn/w1;->e1(Ljava/lang/String;)Ljava/util/Map;

    .line 501
    .line 502
    .line 503
    move-result-object v9

    .line 504
    if-nez v9, :cond_e

    .line 505
    .line 506
    goto :goto_d

    .line 507
    :cond_e
    invoke-virtual {v8, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v8, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    const-wide/16 v4, 0x0

    .line 514
    .line 515
    invoke-virtual {v6, v8, v0, v4, v5}, Lcom/sgscq/vpn/w1;->G2(Ljava/util/Map;Ljava/lang/String;D)Z

    .line 516
    .line 517
    .line 518
    goto :goto_e

    .line 519
    :cond_f
    move-object/from16 v6, p0

    .line 520
    .line 521
    :goto_d
    invoke-virtual {v8, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v8, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    const-string v0, "ls_type"

    .line 528
    .line 529
    invoke-virtual {v8, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    const-string v0, "ls_value"

    .line 533
    .line 534
    invoke-virtual {v8, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    :goto_e
    const-string v0, "position"

    .line 538
    .line 539
    invoke-virtual {v8, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 543
    .line 544
    .line 545
    move-result-wide v4

    .line 546
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v4

    .line 550
    const-string v5, "get_time"

    .line 551
    .line 552
    invoke-virtual {v8, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    const-string v4, "reincarnate_num"

    .line 556
    .line 557
    invoke-virtual {v8, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    const-string v4, "status"

    .line 561
    .line 562
    invoke-virtual {v8, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    invoke-virtual/range {p0 .. p1}, Lcom/sgscq/vpn/w1;->T0(Ljava/lang/String;)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    new-instance v4, Ljava/util/ArrayList;

    .line 570
    .line 571
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 572
    .line 573
    .line 574
    move-object/from16 v5, v29

    .line 575
    .line 576
    move-object/from16 v7, v31

    .line 577
    .line 578
    invoke-static {v5, v1, v7, v1}, Lc/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    const-string v5, "skill_id"

    .line 583
    .line 584
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-object/from16 v5, v27

    .line 588
    .line 589
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    const-string v5, "skill_code"

    .line 593
    .line 594
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    const-string v3, "pos"

    .line 598
    .line 599
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    const-string v0, "skill_position"

    .line 606
    .line 607
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    const-string v0, "is_natural"

    .line 611
    .line 612
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 613
    .line 614
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-object/from16 v0, v28

    .line 618
    .line 619
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    const-string v0, "4"

    .line 623
    .line 624
    move-object/from16 v3, v30

    .line 625
    .line 626
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    .line 631
    .line 632
    const-string v0, "gSkill"

    .line 633
    .line 634
    invoke-virtual {v8, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    const-string v0, "general_skills"

    .line 638
    .line 639
    invoke-virtual {v8, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    new-instance v0, Ljava/util/ArrayList;

    .line 643
    .line 644
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 645
    .line 646
    .line 647
    const-string v1, "_fates"

    .line 648
    .line 649
    invoke-virtual {v8, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    const-string v0, "general_painting_id"

    .line 653
    .line 654
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 655
    .line 656
    .line 657
    move-result-object v1

    .line 658
    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    const-string v0, "general_painting"

    .line 662
    .line 663
    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v1

    .line 667
    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    const-string v0, "general_avatar"

    .line 671
    .line 672
    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    const-string v0, "star_level"

    .line 680
    .line 681
    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    const-string v0, "general_star"

    .line 685
    .line 686
    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    const-string v0, "grade"

    .line 690
    .line 691
    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v1

    .line 695
    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    const-string v0, "general_quality"

    .line 699
    .line 700
    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v1

    .line 704
    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    return-object v8
.end method

.method public final Z1(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->T0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pk_id"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "general_pk_id"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "skill_id"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "id"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "skill_code"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "card_type"

    const-string v2, "4"

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "level"

    const-string v2, "1"

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "skill_level"

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "position"

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pos"

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "skill_position"

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v2, "get_time"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "is_natural"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "exp"

    const-string v2, "0"

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "extra_level"

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "advanced_level"

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/sgscq/vpn/w1;->S(Ljava/lang/String;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public final a2(Ljava/lang/String;I)Ljava/util/HashMap;
    .locals 20

    .line 1
    move-object/from16 v0, p1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p1}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    goto :goto_0

    :cond_0
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    :goto_0
    if-eqz v3, :cond_1

    const/4 v6, 0x1

    aget-wide v6, v3, v6

    goto :goto_1

    :cond_1
    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    :goto_1
    move-wide v14, v6

    if-eqz v3, :cond_2

    const/4 v6, 0x2

    aget-wide v6, v3, v6

    goto :goto_2

    :cond_2
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    :goto_2
    move-wide/from16 v16, v6

    if-eqz v3, :cond_3

    const/4 v6, 0x3

    aget-wide v6, v3, v6

    goto :goto_3

    :cond_3
    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    :goto_3
    move-wide/from16 v18, v6

    if-eqz v3, :cond_4

    const/4 v6, 0x4

    aget-wide v6, v3, v6

    goto :goto_4

    :cond_4
    move-wide v6, v4

    move-wide v8, v14

    move-wide/from16 v10, v16

    move-wide/from16 v12, v18

    invoke-static/range {v6 .. v13}, Lcom/sgscq/vpn/w1;->x(DDDD)D

    move-result-wide v6

    :goto_4
    const-string v3, "pk_id"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "id"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "general_id"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "general_pk_id"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "team_id"

    const-string v3, "1"

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "team_position"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "general_position"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "position"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "general_hp"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "general_attack"

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "general_defense"

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "general_wisdom"

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "general_fighting"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fighting"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final b0(Ljava/util/Map;)Z
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "id"

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    const-string v3, "general_id"

    .line 10
    .line 11
    invoke-static {p1, v1, v2, v3}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-nez v5, :cond_14

    .line 20
    .line 21
    const-string v5, "null"

    .line 22
    .line 23
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-eqz v6, :cond_1

    .line 28
    .line 29
    goto/16 :goto_7

    .line 30
    .line 31
    :cond_1
    invoke-static {v4, v3, p1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    or-int/2addr v3, v0

    .line 36
    invoke-static {v4, v1, p1}, Lcom/sgscq/vpn/w1;->r2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    or-int/2addr v1, v3

    .line 41
    invoke-virtual {p0, v4}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const/4 v6, 0x1

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    aget-wide v7, v3, v0

    .line 49
    .line 50
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    const-string v8, "base_hp"

    .line 55
    .line 56
    invoke-static {v7, v8, p1}, Lcom/sgscq/vpn/w1;->r2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    or-int/2addr v1, v7

    .line 61
    aget-wide v7, v3, v6

    .line 62
    .line 63
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    const-string v8, "base_attack"

    .line 68
    .line 69
    invoke-static {v7, v8, p1}, Lcom/sgscq/vpn/w1;->r2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    or-int/2addr v1, v7

    .line 74
    const/4 v7, 0x2

    .line 75
    aget-wide v8, v3, v7

    .line 76
    .line 77
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    const-string v9, "base_defense"

    .line 82
    .line 83
    invoke-static {v8, v9, p1}, Lcom/sgscq/vpn/w1;->r2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    or-int/2addr v1, v8

    .line 88
    const/4 v8, 0x3

    .line 89
    aget-wide v9, v3, v8

    .line 90
    .line 91
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    const-string v10, "base_wisdom"

    .line 96
    .line 97
    invoke-static {v9, v10, p1}, Lcom/sgscq/vpn/w1;->r2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    or-int/2addr v1, v9

    .line 102
    const/4 v9, 0x4

    .line 103
    aget-wide v9, v3, v9

    .line 104
    .line 105
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    const-string v10, "base_fighting"

    .line 110
    .line 111
    invoke-static {v9, v10, p1}, Lcom/sgscq/vpn/w1;->r2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    or-int/2addr v1, v9

    .line 116
    aget-wide v9, v3, v0

    .line 117
    .line 118
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    const-string v10, "general_hp_attr"

    .line 123
    .line 124
    invoke-static {v9, v10, p1}, Lcom/sgscq/vpn/w1;->r2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    or-int/2addr v1, v9

    .line 129
    aget-wide v9, v3, v6

    .line 130
    .line 131
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    const-string v10, "general_attack_attr"

    .line 136
    .line 137
    invoke-static {v9, v10, p1}, Lcom/sgscq/vpn/w1;->r2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    or-int/2addr v1, v9

    .line 142
    aget-wide v9, v3, v7

    .line 143
    .line 144
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    const-string v10, "general_defense_attr"

    .line 149
    .line 150
    invoke-static {v9, v10, p1}, Lcom/sgscq/vpn/w1;->r2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    or-int/2addr v1, v9

    .line 155
    aget-wide v9, v3, v8

    .line 156
    .line 157
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    const-string v10, "general_wisdom_attr"

    .line 162
    .line 163
    invoke-static {v9, v10, p1}, Lcom/sgscq/vpn/w1;->r2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    or-int/2addr v1, v9

    .line 168
    aget-wide v9, v3, v0

    .line 169
    .line 170
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    const-string v10, "attr_hp"

    .line 175
    .line 176
    invoke-static {v9, v10, p1}, Lcom/sgscq/vpn/w1;->r2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    or-int/2addr v1, v9

    .line 181
    aget-wide v9, v3, v6

    .line 182
    .line 183
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    const-string v10, "attr_attack"

    .line 188
    .line 189
    invoke-static {v9, v10, p1}, Lcom/sgscq/vpn/w1;->r2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 190
    .line 191
    .line 192
    move-result v9

    .line 193
    or-int/2addr v1, v9

    .line 194
    aget-wide v9, v3, v7

    .line 195
    .line 196
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    const-string v9, "attr_defense"

    .line 201
    .line 202
    invoke-static {v7, v9, p1}, Lcom/sgscq/vpn/w1;->r2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    or-int/2addr v1, v7

    .line 207
    aget-wide v7, v3, v8

    .line 208
    .line 209
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    const-string v8, "attr_wisdom"

    .line 214
    .line 215
    invoke-static {v7, v8, p1}, Lcom/sgscq/vpn/w1;->r2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 216
    .line 217
    .line 218
    move-result v7

    .line 219
    or-int/2addr v1, v7

    .line 220
    array-length v7, v3

    .line 221
    const/16 v8, 0x8

    .line 222
    .line 223
    if-le v7, v8, :cond_2

    .line 224
    .line 225
    const/4 v7, 0x5

    .line 226
    aget-wide v9, v3, v7

    .line 227
    .line 228
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    const-string v9, "general_hp_step"

    .line 233
    .line 234
    invoke-static {v7, v9, p1}, Lcom/sgscq/vpn/w1;->r2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 235
    .line 236
    .line 237
    move-result v7

    .line 238
    or-int/2addr v1, v7

    .line 239
    const/4 v7, 0x6

    .line 240
    aget-wide v9, v3, v7

    .line 241
    .line 242
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    const-string v9, "general_attack_step"

    .line 247
    .line 248
    invoke-static {v7, v9, p1}, Lcom/sgscq/vpn/w1;->r2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 249
    .line 250
    .line 251
    move-result v7

    .line 252
    or-int/2addr v1, v7

    .line 253
    const/4 v7, 0x7

    .line 254
    aget-wide v9, v3, v7

    .line 255
    .line 256
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    const-string v9, "general_defense_step"

    .line 261
    .line 262
    invoke-static {v7, v9, p1}, Lcom/sgscq/vpn/w1;->r2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 263
    .line 264
    .line 265
    move-result v7

    .line 266
    or-int/2addr v1, v7

    .line 267
    aget-wide v7, v3, v8

    .line 268
    .line 269
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    const-string v8, "general_wisdom_step"

    .line 274
    .line 275
    invoke-static {v7, v8, p1}, Lcom/sgscq/vpn/w1;->r2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 276
    .line 277
    .line 278
    move-result v7

    .line 279
    or-int/2addr v1, v7

    .line 280
    :cond_2
    const-string v7, "1"

    .line 281
    .line 282
    if-eqz v3, :cond_3

    .line 283
    .line 284
    array-length v8, v3

    .line 285
    const/16 v9, 0xc

    .line 286
    .line 287
    if-le v8, v9, :cond_3

    .line 288
    .line 289
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 290
    .line 291
    aget-wide v8, v3, v9

    .line 292
    .line 293
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    .line 294
    .line 295
    .line 296
    move-result-wide v8

    .line 297
    double-to-int v3, v8

    .line 298
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    goto :goto_0

    .line 303
    :cond_3
    move-object v3, v7

    .line 304
    :goto_0
    const-string v8, "general_orbit"

    .line 305
    .line 306
    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v9

    .line 310
    const-string v10, "NaN"

    .line 311
    .line 312
    const-string v11, "0"

    .line 313
    .line 314
    if-eqz v9, :cond_4

    .line 315
    .line 316
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v12

    .line 320
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 321
    .line 322
    .line 323
    move-result v12

    .line 324
    if-nez v12, :cond_4

    .line 325
    .line 326
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v12

    .line 330
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v12

    .line 334
    if-nez v12, :cond_4

    .line 335
    .line 336
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v12

    .line 340
    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 341
    .line 342
    .line 343
    move-result v12

    .line 344
    if-nez v12, :cond_4

    .line 345
    .line 346
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v9

    .line 350
    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 351
    .line 352
    .line 353
    move-result v9

    .line 354
    if-eqz v9, :cond_5

    .line 355
    .line 356
    :cond_4
    invoke-interface {p1, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move v1, v6

    .line 360
    :cond_5
    invoke-virtual {p0, v4}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    if-eqz v3, :cond_8

    .line 365
    .line 366
    const-string v4, "resource_id"

    .line 367
    .line 368
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v8

    .line 372
    if-eqz v8, :cond_6

    .line 373
    .line 374
    invoke-static {v8, v4, p1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 375
    .line 376
    .line 377
    move-result v4

    .line 378
    or-int/2addr v1, v4

    .line 379
    :cond_6
    const-string v4, "general_sex"

    .line 380
    .line 381
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v8

    .line 385
    if-eqz v8, :cond_7

    .line 386
    .line 387
    invoke-static {v8, v4, p1}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 388
    .line 389
    .line 390
    move-result v4

    .line 391
    or-int/2addr v1, v4

    .line 392
    :cond_7
    invoke-static {p1, v3}, Lcom/sgscq/vpn/w1;->h2(Ljava/util/Map;Ljava/util/Map;)Z

    .line 393
    .line 394
    .line 395
    move-result v3

    .line 396
    or-int/2addr v1, v3

    .line 397
    :cond_8
    const-string v3, "major_pk_id"

    .line 398
    .line 399
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    if-nez v4, :cond_9

    .line 404
    .line 405
    move-object v8, v2

    .line 406
    goto :goto_1

    .line 407
    :cond_9
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v8

    .line 411
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 412
    .line 413
    .line 414
    move-result v9

    .line 415
    if-nez v9, :cond_a

    .line 416
    .line 417
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v9

    .line 421
    if-nez v9, :cond_a

    .line 422
    .line 423
    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 424
    .line 425
    .line 426
    move-result v9

    .line 427
    if-nez v9, :cond_a

    .line 428
    .line 429
    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 430
    .line 431
    .line 432
    move-result v9

    .line 433
    if-eqz v9, :cond_b

    .line 434
    .line 435
    :cond_a
    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    if-eqz v4, :cond_c

    .line 439
    .line 440
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result v4

    .line 444
    if-nez v4, :cond_b

    .line 445
    .line 446
    goto :goto_2

    .line 447
    :cond_b
    move v4, v0

    .line 448
    goto :goto_3

    .line 449
    :cond_c
    :goto_2
    move v4, v6

    .line 450
    :goto_3
    or-int/2addr v1, v4

    .line 451
    const-string v4, "lieutenant_skill_id"

    .line 452
    .line 453
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v8

    .line 457
    if-nez v8, :cond_d

    .line 458
    .line 459
    move-object v9, v2

    .line 460
    goto :goto_4

    .line 461
    :cond_d
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v9

    .line 465
    :goto_4
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 466
    .line 467
    .line 468
    move-result v12

    .line 469
    if-nez v12, :cond_e

    .line 470
    .line 471
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    move-result v12

    .line 475
    if-nez v12, :cond_e

    .line 476
    .line 477
    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 478
    .line 479
    .line 480
    move-result v12

    .line 481
    if-nez v12, :cond_e

    .line 482
    .line 483
    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 484
    .line 485
    .line 486
    move-result v10

    .line 487
    if-eqz v10, :cond_10

    .line 488
    .line 489
    :cond_e
    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    if-eqz v8, :cond_f

    .line 493
    .line 494
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v4

    .line 498
    if-nez v4, :cond_10

    .line 499
    .line 500
    :cond_f
    move v0, v6

    .line 501
    :cond_10
    or-int/2addr v0, v1

    .line 502
    invoke-interface {p1, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    const-string v3, "position"

    .line 511
    .line 512
    invoke-interface {p1, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 521
    .line 522
    .line 523
    move-result v4

    .line 524
    if-nez v4, :cond_11

    .line 525
    .line 526
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 527
    .line 528
    .line 529
    move-result v1

    .line 530
    if-eqz v1, :cond_12

    .line 531
    .line 532
    :cond_11
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    move-result v1

    .line 536
    if-nez v1, :cond_13

    .line 537
    .line 538
    const-string v1, "2"

    .line 539
    .line 540
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    move-result v1

    .line 544
    if-eqz v1, :cond_12

    .line 545
    .line 546
    goto :goto_5

    .line 547
    :cond_12
    move v6, v0

    .line 548
    goto :goto_6

    .line 549
    :cond_13
    :goto_5
    invoke-interface {p1, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    :goto_6
    return v6

    .line 553
    :cond_14
    :goto_7
    return v0
.end method

.method public final c0(Ljava/lang/String;I)J
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    if-gt p2, v2, :cond_0

    .line 5
    .line 6
    return-wide v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->W1()V

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lcom/sgscq/vpn/w1;->G:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v4, ""

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-string v5, "upgrade_exp_type"

    .line 22
    .line 23
    invoke-interface {p1, v5, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    :goto_0
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/util/List;

    .line 36
    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    add-int/lit8 p2, p2, -0x2

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    sub-int/2addr v3, v2

    .line 53
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-gez p2, :cond_3

    .line 58
    .line 59
    return-wide v0

    .line 60
    :cond_3
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Ljava/util/Map;

    .line 65
    .line 66
    const-string p2, "total_num"

    .line 67
    .line 68
    const-string v0, "0"

    .line 69
    .line 70
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 79
    .line 80
    .line 81
    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_1

    .line 83
    :catch_0
    const-wide/16 p1, 0x0

    .line 84
    .line 85
    :goto_1
    double-to-long p1, p1

    .line 86
    return-wide p1

    .line 87
    :cond_4
    :goto_2
    return-wide v0
.end method

.method public final c1(Ljava/lang/String;)Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->m:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->R1()V

    :cond_0
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public final d1(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->c1(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "\u7269\u54c1"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/w1;->Y0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e1(Ljava/lang/String;)Ljava/util/Map;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->j:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "lieutenant_skills.json"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    :cond_0
    sget-boolean v1, Lcom/sgscq/vpn/w1;->X:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const-string v0, "docs/game_data_json/lieutenant_skills.json"

    .line 26
    .line 27
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->s2(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_1
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    new-instance v1, Lcom/sgscq/vpn/GameDataManager$7;

    .line 41
    .line 42
    invoke-direct {v1}, Lcom/sgscq/vpn/GameDataManager$7;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->b:La/o;

    .line 50
    .line 51
    invoke-virtual {v2, v0, v1}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Ljava/util/Map;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->j:Ljava/util/Map;

    .line 58
    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    new-instance v0, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    .line 71
    .line 72
    :goto_1
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->j:Ljava/util/Map;

    .line 73
    .line 74
    :cond_4
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->j:Ljava/util/Map;

    .line 75
    .line 76
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Ljava/util/Map;

    .line 81
    .line 82
    return-object p1
.end method

.method public final f(Ljava/util/Map;[D)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v3, "Combat"

    .line 10
    .line 11
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :goto_0
    instance-of v3, v1, Ljava/util/List;

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    instance-of v3, v1, Ljava/util/Map;

    .line 21
    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    check-cast v1, Ljava/util/Map;

    .line 25
    .line 26
    const-string v3, "add"

    .line 27
    .line 28
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    instance-of v3, v1, Ljava/util/List;

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    :goto_1
    check-cast v1, Ljava/util/List;

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_19

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Ljava/util/Map;

    .line 58
    .line 59
    const-string v4, "id"

    .line 60
    .line 61
    const-string v5, "0"

    .line 62
    .line 63
    const-string v6, "type"

    .line 64
    .line 65
    const-string v7, "combat_type"

    .line 66
    .line 67
    invoke-static {v3, v4, v5, v6, v7}, Lc/a;->k(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    const/4 v6, 0x0

    .line 72
    invoke-static {v4, v6}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    invoke-static {v4}, Lcom/sgscq/vpn/w1;->s(I)I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-gez v7, :cond_3

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_3
    const-string v8, "combat_level"

    .line 84
    .line 85
    const-string v9, "1"

    .line 86
    .line 87
    const-string v10, "level"

    .line 88
    .line 89
    const/4 v11, 0x1

    .line 90
    invoke-static {v3, v8, v9, v10, v11}, Lc/a;->g(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    aget-wide v8, p2, v7

    .line 95
    .line 96
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    const/4 v10, 0x3

    .line 105
    if-ne v4, v10, :cond_4

    .line 106
    .line 107
    int-to-double v3, v3

    .line 108
    const-wide/high16 v5, 0x401c000000000000L    # 7.0

    .line 109
    .line 110
    mul-double/2addr v3, v5

    .line 111
    goto/16 :goto_d

    .line 112
    .line 113
    :cond_4
    iget-object v10, v0, Lcom/sgscq/vpn/w1;->F:Ljava/lang/Object;

    .line 114
    .line 115
    if-eqz v10, :cond_5

    .line 116
    .line 117
    goto :goto_7

    .line 118
    :cond_5
    const-string v10, "combat_levels.json"

    .line 119
    .line 120
    iget-object v12, v0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 121
    .line 122
    invoke-static {v12, v10}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    if-eqz v10, :cond_8

    .line 127
    .line 128
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    if-eqz v12, :cond_6

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_6
    :try_start_0
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v12

    .line 143
    const-string v13, "["

    .line 144
    .line 145
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    move-result v12

    .line 149
    if-eqz v12, :cond_7

    .line 150
    .line 151
    invoke-static {v10}, Lcom/sgscq/vpn/p5;->t1(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    goto :goto_4

    .line 156
    :cond_7
    invoke-static {v10}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    :goto_4
    iput-object v10, v0, Lcom/sgscq/vpn/w1;->F:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .line 162
    goto :goto_7

    .line 163
    :catch_0
    new-instance v10, Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_8
    :goto_5
    new-instance v10, Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .line 173
    .line 174
    :goto_6
    iput-object v10, v0, Lcom/sgscq/vpn/w1;->F:Ljava/lang/Object;

    .line 175
    .line 176
    :goto_7
    iget-object v10, v0, Lcom/sgscq/vpn/w1;->F:Ljava/lang/Object;

    .line 177
    .line 178
    const-string v12, "extra_buff"

    .line 179
    .line 180
    if-nez v10, :cond_9

    .line 181
    .line 182
    goto/16 :goto_a

    .line 183
    .line 184
    :cond_9
    instance-of v13, v10, Ljava/util/Map;

    .line 185
    .line 186
    const-string v14, "exp_need"

    .line 187
    .line 188
    if-eqz v13, :cond_e

    .line 189
    .line 190
    move-object v13, v10

    .line 191
    check-cast v13, Ljava/util/Map;

    .line 192
    .line 193
    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v15

    .line 197
    if-nez v15, :cond_a

    .line 198
    .line 199
    invoke-interface {v13, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v15

    .line 203
    if-eqz v15, :cond_b

    .line 204
    .line 205
    :cond_a
    move v6, v11

    .line 206
    :cond_b
    if-eqz v6, :cond_c

    .line 207
    .line 208
    goto/16 :goto_b

    .line 209
    .line 210
    :cond_c
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    invoke-interface {v13, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    move/from16 p1, v3

    .line 219
    .line 220
    if-nez v6, :cond_d

    .line 221
    .line 222
    int-to-double v2, v4

    .line 223
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    :cond_d
    if-eqz v6, :cond_f

    .line 232
    .line 233
    move/from16 v2, p1

    .line 234
    .line 235
    move-object v10, v6

    .line 236
    goto :goto_8

    .line 237
    :cond_e
    move/from16 p1, v3

    .line 238
    .line 239
    :cond_f
    move/from16 v2, p1

    .line 240
    .line 241
    :goto_8
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    instance-of v3, v10, Ljava/util/List;

    .line 246
    .line 247
    if-eqz v3, :cond_11

    .line 248
    .line 249
    check-cast v10, Ljava/util/List;

    .line 250
    .line 251
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    if-eqz v3, :cond_10

    .line 256
    .line 257
    goto :goto_a

    .line 258
    :cond_10
    add-int/lit8 v2, v2, -0x1

    .line 259
    .line 260
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    sub-int/2addr v3, v11

    .line 265
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    instance-of v3, v2, Ljava/util/Map;

    .line 274
    .line 275
    if-eqz v3, :cond_17

    .line 276
    .line 277
    move-object v13, v2

    .line 278
    check-cast v13, Ljava/util/Map;

    .line 279
    .line 280
    goto :goto_b

    .line 281
    :cond_11
    instance-of v3, v10, Ljava/util/Map;

    .line 282
    .line 283
    if-eqz v3, :cond_17

    .line 284
    .line 285
    move-object v13, v10

    .line 286
    check-cast v13, Ljava/util/Map;

    .line 287
    .line 288
    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    if-nez v3, :cond_13

    .line 293
    .line 294
    invoke-interface {v13, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    if-eqz v3, :cond_12

    .line 299
    .line 300
    goto :goto_9

    .line 301
    :cond_12
    const/4 v11, 0x0

    .line 302
    :cond_13
    :goto_9
    if-eqz v11, :cond_14

    .line 303
    .line 304
    goto :goto_b

    .line 305
    :cond_14
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    if-nez v3, :cond_15

    .line 314
    .line 315
    int-to-double v3, v2

    .line 316
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    :cond_15
    if-nez v3, :cond_16

    .line 325
    .line 326
    add-int/lit8 v2, v2, -0x1

    .line 327
    .line 328
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    :cond_16
    instance-of v2, v3, Ljava/util/Map;

    .line 337
    .line 338
    if-eqz v2, :cond_17

    .line 339
    .line 340
    move-object v13, v3

    .line 341
    check-cast v13, Ljava/util/Map;

    .line 342
    .line 343
    goto :goto_b

    .line 344
    :cond_17
    :goto_a
    const/4 v13, 0x0

    .line 345
    :goto_b
    if-nez v13, :cond_18

    .line 346
    .line 347
    goto :goto_c

    .line 348
    :cond_18
    invoke-interface {v13, v12, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    :try_start_1
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 357
    .line 358
    .line 359
    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 360
    goto :goto_d

    .line 361
    :catch_1
    :goto_c
    const-wide/16 v3, 0x0

    .line 362
    .line 363
    :goto_d
    add-double/2addr v8, v3

    .line 364
    aput-wide v8, p2, v7

    .line 365
    .line 366
    goto/16 :goto_3

    .line 367
    .line 368
    :cond_19
    return-void
.end method

.method public final f1(JLjava/util/Set;)Ljava/util/Map;
    .locals 5

    .line 1
    sget-boolean v0, Lcom/sgscq/vpn/c7;->i:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/w1;->T(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->H1()Lp/d;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    const-wide/16 v3, 0x3e8

    .line 19
    .line 20
    mul-long/2addr p1, v3

    .line 21
    invoke-virtual {v2}, Lp/d;->a()Lp/b;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    move-object p1, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget-object v2, v2, Lp/b;->e:Lm/e;

    .line 30
    .line 31
    invoke-static {v2, p1, p2}, Lp/d;->c(Lm/e;J)Lp/a;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    if-eqz p1, :cond_3

    .line 36
    .line 37
    if-eqz p3, :cond_3

    .line 38
    .line 39
    iget-object p2, p1, Lp/a;->c:Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_3

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    :cond_3
    if-eqz v0, :cond_4

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_4
    move-object v1, p1

    .line 52
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sgscq/vpn/w1;->G1(Lp/a;)Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1
.end method

.method public final f2(Ljava/util/List;)V
    .locals 18

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    new-instance v13, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/w1;->i0()Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const-string v14, "display_name"

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v11, v1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v11, v1}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v3, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v13, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v15

    .line 59
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const-string v1, ""

    .line 64
    .line 65
    const-string v2, "pk_id"

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    move-object v3, v0

    .line 74
    check-cast v3, Ljava/util/Map;

    .line 75
    .line 76
    invoke-static {v3}, Lcom/sgscq/vpn/w1;->u1(Ljava/util/Map;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_2

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v1, "general_id"

    .line 88
    .line 89
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    move-object v2, v0

    .line 102
    check-cast v2, Ljava/util/Map;

    .line 103
    .line 104
    if-nez v2, :cond_3

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    const-string v0, "general_hp"

    .line 108
    .line 109
    invoke-static {v0, v2}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    .line 110
    .line 111
    .line 112
    move-result-wide v4

    .line 113
    const-string v0, "general_attack"

    .line 114
    .line 115
    invoke-static {v0, v2}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    .line 116
    .line 117
    .line 118
    move-result-wide v6

    .line 119
    const-string v0, "general_defense"

    .line 120
    .line 121
    invoke-static {v0, v2}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    .line 122
    .line 123
    .line 124
    move-result-wide v8

    .line 125
    const-string v0, "general_wisdom"

    .line 126
    .line 127
    invoke-static {v0, v2}, Lcom/sgscq/vpn/w1;->s0(Ljava/lang/String;Ljava/util/Map;)D

    .line 128
    .line 129
    .line 130
    move-result-wide v16

    .line 131
    move-object/from16 v0, p0

    .line 132
    .line 133
    move-object v1, v3

    .line 134
    move-wide v3, v4

    .line 135
    move-wide v5, v6

    .line 136
    move-wide v7, v8

    .line 137
    move-wide/from16 v9, v16

    .line 138
    .line 139
    invoke-virtual/range {v0 .. v10}, Lcom/sgscq/vpn/w1;->W(Ljava/util/Map;Ljava/util/Map;DDDD)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    .line 144
    .line 145
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/w1;->h0()Ljava/util/ArrayList;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-eqz v4, :cond_6

    .line 161
    .line 162
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    check-cast v4, Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v11, v4}, Lcom/sgscq/vpn/w1;->z0(Ljava/lang/String;)Ljava/util/Map;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    if-nez v5, :cond_5

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_5
    new-instance v6, Ljava/util/HashMap;

    .line 176
    .line 177
    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v11, v4}, Lcom/sgscq/vpn/w1;->A0(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {v6, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_6
    new-instance v3, Ljava/util/HashMap;

    .line 192
    .line 193
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/w1;->k0()Ljava/util/ArrayList;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    if-eqz v5, :cond_8

    .line 209
    .line 210
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    check-cast v5, Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v11, v5}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    if-nez v6, :cond_7

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_7
    new-instance v7, Ljava/util/HashMap;

    .line 224
    .line 225
    invoke-direct {v7, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v11, v5}, Lcom/sgscq/vpn/w1;->m1(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    invoke-virtual {v7, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    :cond_9
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    const/4 v6, 0x0

    .line 248
    if-eqz v5, :cond_f

    .line 249
    .line 250
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    check-cast v5, Ljava/util/Map;

    .line 255
    .line 256
    invoke-static {v5}, Lcom/sgscq/vpn/w1;->E1(Ljava/util/Map;)Z

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    if-nez v7, :cond_a

    .line 261
    .line 262
    move v7, v6

    .line 263
    goto :goto_5

    .line 264
    :cond_a
    const-string v7, "skill_id"

    .line 265
    .line 266
    invoke-static {v5, v2, v1, v7}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    const-string v8, "300000"

    .line 271
    .line 272
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v8

    .line 276
    if-eqz v8, :cond_b

    .line 277
    .line 278
    const/4 v7, 0x1

    .line 279
    goto :goto_5

    .line 280
    :cond_b
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    check-cast v7, Ljava/util/Map;

    .line 285
    .line 286
    invoke-static {v5, v7}, Lcom/sgscq/vpn/w1;->q(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v7

    .line 290
    const-string v8, "\u795e\u79d8\u6280\u80fd"

    .line 291
    .line 292
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v7

    .line 296
    :goto_5
    if-eqz v7, :cond_c

    .line 297
    .line 298
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 299
    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_c
    invoke-static {v5}, Lcom/sgscq/vpn/w1;->E1(Ljava/util/Map;)Z

    .line 303
    .line 304
    .line 305
    move-result v7

    .line 306
    const-string v8, "general_status"

    .line 307
    .line 308
    const-string v9, "0"

    .line 309
    .line 310
    if-eqz v7, :cond_d

    .line 311
    .line 312
    const-string v6, "type"

    .line 313
    .line 314
    const-string v7, "4"

    .line 315
    .line 316
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    goto :goto_4

    .line 323
    :cond_d
    invoke-static {v5}, Lcom/sgscq/vpn/w1;->u1(Ljava/util/Map;)Z

    .line 324
    .line 325
    .line 326
    move-result v7

    .line 327
    if-eqz v7, :cond_9

    .line 328
    .line 329
    const-string v7, "atlas_status"

    .line 330
    .line 331
    invoke-static {v5, v7, v9, v6}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 332
    .line 333
    .line 334
    move-result v6

    .line 335
    if-lez v6, :cond_e

    .line 336
    .line 337
    const-string v9, "1"

    .line 338
    .line 339
    :cond_e
    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    goto :goto_4

    .line 343
    :cond_f
    new-instance v1, Lcom/sgscq/vpn/r1;

    .line 344
    .line 345
    invoke-direct {v1, v13, v0, v3}, Lcom/sgscq/vpn/r1;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 346
    .line 347
    .line 348
    invoke-static {v12, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 349
    .line 350
    .line 351
    :goto_6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    if-ge v6, v0, :cond_10

    .line 356
    .line 357
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    check-cast v0, Ljava/util/Map;

    .line 362
    .line 363
    add-int/lit8 v6, v6, 0x1

    .line 364
    .line 365
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    const-string v2, "relation_model"

    .line 370
    .line 371
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    goto :goto_6

    .line 375
    :cond_10
    return-void
.end method

.method public final g(IILjava/util/Map;)V
    .locals 8

    .line 1
    if-gt p2, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    const-string v0, "talent_point"

    .line 5
    .line 6
    const-string v1, "0"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p3, v0, v1, v2}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const-string v4, "general_talent_point_step"

    .line 14
    .line 15
    invoke-static {p3, v4, v1, v2}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-lez v5, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string v5, "id"

    .line 23
    .line 24
    const-string v6, ""

    .line 25
    .line 26
    const-string v7, "general_id"

    .line 27
    .line 28
    invoke-static {p3, v5, v6, v7}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-nez v6, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0, v5}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    if-eqz v5, :cond_2

    .line 43
    .line 44
    invoke-static {v5, v4, v1, v2}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-lez v5, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/16 v5, 0xf

    .line 52
    .line 53
    :goto_0
    sub-int/2addr p2, p1

    .line 54
    mul-int/2addr p2, v5

    .line 55
    add-int/2addr p2, v3

    .line 56
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :goto_1
    return-void
.end method

.method public final g0()Ljava/util/ArrayList;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->I1()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sgscq/vpn/w1;->I:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, "105\\d{2}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public final g1(J)Ljava/util/List;
    .locals 5

    .line 1
    sget-boolean v0, Lcom/sgscq/vpn/c7;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/w1;->T(Z)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->H1()Lp/d;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    const/4 v2, 0x2

    .line 22
    invoke-static {v2, v2}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const-wide/16 v3, 0x3e8

    .line 27
    .line 28
    mul-long/2addr p1, v3

    .line 29
    invoke-virtual {v1, p1, p2}, Lp/d;->d(J)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_3

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Lp/a;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-lt v1, v2, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {p0, p2}, Lcom/sgscq/vpn/w1;->G1(Lp/a;)Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    :goto_1
    return-object v0

    .line 67
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1
.end method

.method public final g2(Ljava/util/Map;)Z
    .locals 2

    .line 1
    const-string v0, "Atlas"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map;

    const-string v0, "add"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/sgscq/vpn/w1;->b:La/o;

    invoke-virtual {v0, p1}, La/o;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->f2(Ljava/util/List;)V

    invoke-virtual {v0, p1}, La/o;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final h(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 8

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    move-object p1, v0

    .line 6
    :cond_0
    const-string v1, ":"

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v1, 0x0

    .line 19
    aget-object p1, p1, v1

    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sgscq/vpn/w1;->D(Ljava/util/Map;)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->C1(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v0, "[GeneralReward] skip non-surrenderable general_id="

    .line 33
    .line 34
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string p2, "SGSCQ_SRV"

    .line 45
    .line 46
    invoke-static {p2, p1}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    return-object p1

    .line 51
    :cond_2
    const-string v1, "General"

    .line 52
    .line 53
    invoke-static {v1, p2}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    const-string v4, "general_pk_id"

    .line 66
    .line 67
    const-string v5, "pk_id"

    .line 68
    .line 69
    if-eqz v3, :cond_5

    .line 70
    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Ljava/util/Map;

    .line 76
    .line 77
    const-string v6, "id"

    .line 78
    .line 79
    const-string v7, "general_id"

    .line 80
    .line 81
    invoke-static {v3, v6, v0, v7, p1}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-nez v6, :cond_3

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    invoke-static {v3, v4, v0, v5}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-nez p2, :cond_4

    .line 97
    .line 98
    const-string p2, "null"

    .line 99
    .line 100
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    if-nez p2, :cond_4

    .line 105
    .line 106
    invoke-interface {v3, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    const-string p2, "general_naturalskill_id"

    .line 113
    .line 114
    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1, v3}, Lcom/sgscq/vpn/w1;->t2(Ljava/lang/String;Ljava/util/Map;)Z

    .line 118
    .line 119
    .line 120
    :cond_4
    const-string p1, "general_status"

    .line 121
    .line 122
    const-string p2, "1"

    .line 123
    .line 124
    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    const-string p1, "status"

    .line 128
    .line 129
    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    return-object v3

    .line 133
    :cond_5
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->Y1(Ljava/lang/String;)Ljava/util/HashMap;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {p2}, Lcom/sgscq/vpn/w1;->d2(Ljava/util/Map;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v2, v0}, Lcom/sgscq/vpn/w1;->t2(Ljava/lang/String;Ljava/util/Map;)Z

    .line 148
    .line 149
    .line 150
    invoke-static {v1, p2, v0}, Lcom/sgscq/vpn/w1;->l(Ljava/lang/String;Ljava/util/Map;Ljava/util/HashMap;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->Z1(Ljava/lang/String;)Ljava/util/HashMap;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    const-string v1, "Skill"

    .line 164
    .line 165
    invoke-static {v1, p2, p1}, Lcom/sgscq/vpn/w1;->l(Ljava/lang/String;Ljava/util/Map;Ljava/util/HashMap;)V

    .line 166
    .line 167
    .line 168
    return-object v0
.end method

.method public final h0()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->L1()V

    :cond_0
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final h1(I)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->X1()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v1, p0, Lcom/sgscq/vpn/w1;->E:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v1, 0x0

    .line 20
    move v2, v0

    .line 21
    :goto_0
    if-ge v1, p1, :cond_1

    .line 22
    .line 23
    iget-object v3, p0, Lcom/sgscq/vpn/w1;->E:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/util/Map;

    .line 30
    .line 31
    const-string v4, "team_num"

    .line 32
    .line 33
    const-string v5, "1"

    .line 34
    .line 35
    invoke-static {v3, v4, v5, v0}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-le v3, v2, :cond_0

    .line 40
    .line 41
    move v2, v3

    .line 42
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    return p1
.end method

.method public final i(Ljava/util/Map;Ljava/lang/String;[D[D)V
    .locals 23

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
    invoke-static {v2, v1}, Lcom/sgscq/vpn/w1;->v1(Ljava/lang/String;Ljava/util/Map;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v4, "TeamGeneral"

    .line 20
    .line 21
    invoke-static {v4, v1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const-string v6, "pk_id"

    .line 34
    .line 35
    const-string v7, "general_pk_id"

    .line 36
    .line 37
    const-string v8, ""

    .line 38
    .line 39
    const-string v9, "0"

    .line 40
    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Ljava/util/Map;

    .line 48
    .line 49
    invoke-static {v5, v6, v8, v7}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-nez v6, :cond_1

    .line 58
    .line 59
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-nez v6, :cond_1

    .line 64
    .line 65
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const-string v4, "BuddyGeneral"

    .line 70
    .line 71
    invoke-static {v4, v1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_4

    .line 84
    .line 85
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    check-cast v5, Ljava/util/Map;

    .line 90
    .line 91
    invoke-static {v5, v6, v8, v7}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    if-nez v10, :cond_3

    .line 100
    .line 101
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    if-nez v10, :cond_3

    .line 106
    .line 107
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-eqz v4, :cond_17

    .line 120
    .line 121
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    check-cast v4, Ljava/lang/String;

    .line 126
    .line 127
    new-instance v5, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v10, "Skill"

    .line 133
    .line 134
    invoke-static {v10, v1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v12

    .line 146
    const-string v13, "skill_id"

    .line 147
    .line 148
    const-string v14, "id"

    .line 149
    .line 150
    const-string v15, "skill_code"

    .line 151
    .line 152
    if-eqz v12, :cond_6

    .line 153
    .line 154
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v12

    .line 158
    check-cast v12, Ljava/util/Map;

    .line 159
    .line 160
    invoke-static {v12, v7, v8, v4}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v16

    .line 164
    if-nez v16, :cond_5

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_5
    invoke-static {v12, v15, v8, v14, v13}, Lc/a;->k(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    invoke-static {v5, v4, v4, v12}, Lcom/sgscq/vpn/w1;->j(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_6
    const-string v11, "General"

    .line 176
    .line 177
    invoke-static {v11, v1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v11

    .line 181
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object v11

    .line 185
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v12

    .line 189
    if-eqz v12, :cond_8

    .line 190
    .line 191
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v12

    .line 195
    check-cast v12, Ljava/util/Map;

    .line 196
    .line 197
    move-object/from16 v16, v3

    .line 198
    .line 199
    const-string v3, "major_pk_id"

    .line 200
    .line 201
    invoke-static {v12, v3, v8, v4}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-nez v3, :cond_7

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_7
    invoke-static {v12, v7, v8, v6}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-virtual {v0, v1, v12}, Lcom/sgscq/vpn/w1;->Y(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v12

    .line 216
    invoke-static {v5, v4, v3, v12}, Lcom/sgscq/vpn/w1;->j(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :goto_5
    move-object/from16 v3, v16

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_8
    move-object/from16 v16, v3

    .line 223
    .line 224
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    if-eqz v4, :cond_16

    .line 233
    .line 234
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    check-cast v4, Lcom/sgscq/vpn/v1;

    .line 239
    .line 240
    iget-object v5, v4, Lcom/sgscq/vpn/v1;->c:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v0, v5}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    if-nez v5, :cond_9

    .line 247
    .line 248
    goto :goto_6

    .line 249
    :cond_9
    const-string v11, "skill_effect"

    .line 250
    .line 251
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    instance-of v11, v5, Ljava/util/List;

    .line 256
    .line 257
    if-nez v11, :cond_a

    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_a
    invoke-static {v10, v1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 261
    .line 262
    .line 263
    move-result-object v11

    .line 264
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 265
    .line 266
    .line 267
    move-result-object v11

    .line 268
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 269
    .line 270
    .line 271
    move-result v12

    .line 272
    const-string v1, "1"

    .line 273
    .line 274
    if-eqz v12, :cond_d

    .line 275
    .line 276
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v12

    .line 280
    check-cast v12, Ljava/util/Map;

    .line 281
    .line 282
    invoke-interface {v12, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v17

    .line 286
    move-object/from16 v18, v3

    .line 287
    .line 288
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    move-object/from16 v17, v6

    .line 293
    .line 294
    iget-object v6, v4, Lcom/sgscq/vpn/v1;->b:Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    if-nez v3, :cond_b

    .line 301
    .line 302
    goto :goto_8

    .line 303
    :cond_b
    invoke-static {v12, v15, v8, v14, v13}, Lc/a;->k(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    iget-object v6, v4, Lcom/sgscq/vpn/v1;->c:Ljava/lang/String;

    .line 308
    .line 309
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    if-nez v3, :cond_c

    .line 314
    .line 315
    :goto_8
    move-object/from16 v1, p1

    .line 316
    .line 317
    move-object/from16 v6, v17

    .line 318
    .line 319
    move-object/from16 v3, v18

    .line 320
    .line 321
    goto :goto_7

    .line 322
    :cond_c
    const-string v3, "level"

    .line 323
    .line 324
    const-string v6, "skill_level"

    .line 325
    .line 326
    const/4 v11, 0x1

    .line 327
    invoke-static {v12, v3, v1, v6, v11}, Lc/a;->g(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    const-string v6, "extra_level"

    .line 332
    .line 333
    invoke-interface {v12, v6, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    const/4 v11, 0x0

    .line 342
    invoke-static {v6, v11}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 343
    .line 344
    .line 345
    move-result v6

    .line 346
    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    .line 347
    .line 348
    .line 349
    move-result v6

    .line 350
    add-int/2addr v6, v3

    .line 351
    goto :goto_9

    .line 352
    :cond_d
    move-object/from16 v18, v3

    .line 353
    .line 354
    move-object/from16 v17, v6

    .line 355
    .line 356
    const/4 v6, 0x1

    .line 357
    :goto_9
    check-cast v5, Ljava/util/List;

    .line 358
    .line 359
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 364
    .line 365
    .line 366
    move-result v5

    .line 367
    if-eqz v5, :cond_15

    .line 368
    .line 369
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    invoke-virtual {v0, v5}, Lcom/sgscq/vpn/w1;->l1(Ljava/lang/String;)Ljava/util/Map;

    .line 378
    .line 379
    .line 380
    move-result-object v5

    .line 381
    if-nez v5, :cond_e

    .line 382
    .line 383
    goto :goto_a

    .line 384
    :cond_e
    const-string v11, "effect_target"

    .line 385
    .line 386
    const/4 v12, 0x0

    .line 387
    invoke-static {v5, v11, v9, v12}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 388
    .line 389
    .line 390
    move-result v11

    .line 391
    if-nez v11, :cond_f

    .line 392
    .line 393
    iget-object v12, v4, Lcom/sgscq/vpn/v1;->a:Ljava/lang/String;

    .line 394
    .line 395
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v12

    .line 399
    if-nez v12, :cond_f

    .line 400
    .line 401
    goto :goto_a

    .line 402
    :cond_f
    if-eqz v11, :cond_10

    .line 403
    .line 404
    const/4 v12, 0x1

    .line 405
    if-eq v11, v12, :cond_10

    .line 406
    .line 407
    goto :goto_a

    .line 408
    :cond_10
    const-string v11, "attr_type"

    .line 409
    .line 410
    invoke-interface {v5, v11, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v11

    .line 414
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v11

    .line 418
    const/4 v12, 0x0

    .line 419
    invoke-static {v11, v12}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 420
    .line 421
    .line 422
    move-result v11

    .line 423
    invoke-static {v11}, Lcom/sgscq/vpn/w1;->s(I)I

    .line 424
    .line 425
    .line 426
    move-result v11

    .line 427
    if-gez v11, :cond_11

    .line 428
    .line 429
    goto :goto_a

    .line 430
    :cond_11
    const-string v12, "effect_value"

    .line 431
    .line 432
    invoke-interface {v5, v12, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v12

    .line 436
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v12

    .line 440
    const-wide/16 v19, 0x0

    .line 441
    .line 442
    :try_start_0
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 443
    .line 444
    .line 445
    move-result-wide v21
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    goto :goto_b

    .line 447
    :catch_0
    move-wide/from16 v21, v19

    .line 448
    .line 449
    :goto_b
    add-int/lit8 v12, v6, -0x1

    .line 450
    .line 451
    const/4 v0, 0x0

    .line 452
    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    move-object v12, v3

    .line 457
    int-to-double v2, v0

    .line 458
    const-string v0, "effect_value_step"

    .line 459
    .line 460
    invoke-interface {v5, v0, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    :try_start_1
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 469
    .line 470
    .line 471
    move-result-wide v19
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 472
    :catch_1
    mul-double v2, v2, v19

    .line 473
    .line 474
    add-double v2, v2, v21

    .line 475
    .line 476
    const-string v0, "value_type"

    .line 477
    .line 478
    move-object/from16 v19, v4

    .line 479
    .line 480
    const/4 v4, 0x0

    .line 481
    invoke-static {v5, v0, v9, v4}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    const/4 v4, 0x1

    .line 486
    if-ne v0, v4, :cond_12

    .line 487
    .line 488
    aget-wide v20, p3, v11

    .line 489
    .line 490
    mul-double v20, v20, v2

    .line 491
    .line 492
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 493
    .line 494
    div-double v2, v20, v2

    .line 495
    .line 496
    goto :goto_c

    .line 497
    :cond_12
    const/4 v4, 0x2

    .line 498
    if-ne v0, v4, :cond_14

    .line 499
    .line 500
    :goto_c
    const-string v0, "is_gain"

    .line 501
    .line 502
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    if-nez v0, :cond_13

    .line 515
    .line 516
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 517
    .line 518
    mul-double/2addr v2, v4

    .line 519
    :cond_13
    aget-wide v4, p4, v11

    .line 520
    .line 521
    add-double/2addr v4, v2

    .line 522
    aput-wide v4, p4, v11

    .line 523
    .line 524
    :cond_14
    move-object/from16 v0, p0

    .line 525
    .line 526
    move-object/from16 v2, p2

    .line 527
    .line 528
    move-object v3, v12

    .line 529
    move-object/from16 v4, v19

    .line 530
    .line 531
    goto/16 :goto_a

    .line 532
    .line 533
    :cond_15
    move-object/from16 v0, p0

    .line 534
    .line 535
    move-object/from16 v1, p1

    .line 536
    .line 537
    move-object/from16 v2, p2

    .line 538
    .line 539
    move-object/from16 v6, v17

    .line 540
    .line 541
    move-object/from16 v3, v18

    .line 542
    .line 543
    goto/16 :goto_6

    .line 544
    .line 545
    :cond_16
    move-object/from16 v0, p0

    .line 546
    .line 547
    move-object/from16 v1, p1

    .line 548
    .line 549
    move-object/from16 v2, p2

    .line 550
    .line 551
    move-object/from16 v3, v16

    .line 552
    .line 553
    goto/16 :goto_2

    .line 554
    .line 555
    :cond_17
    return-void
.end method

.method public final i0()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->O1()V

    :cond_0
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final i1(III)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->T1()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->L:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/util/Map;

    .line 15
    .line 16
    const/4 v0, -0x1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/util/Map;

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    return v0

    .line 33
    :cond_1
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    instance-of p2, p1, Ljava/util/Map;

    .line 42
    .line 43
    if-nez p2, :cond_2

    .line 44
    .line 45
    return v0

    .line 46
    :cond_2
    check-cast p1, Ljava/util/Map;

    .line 47
    .line 48
    const-string p2, "item_num"

    .line 49
    .line 50
    const-string p3, "-1"

    .line 51
    .line 52
    invoke-static {p1, p2, p3, v0}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    return p1
.end method

.method public final j0()Ljava/util/ArrayList;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->I1()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sgscq/vpn/w1;->I:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, "5\\d{2}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit16 v3, v3, -0x1f4

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public final j1(I)Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->S1()V

    iget-object v0, p0, Lcom/sgscq/vpn/w1;->T:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final k0()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->U1()V

    :cond_0
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final k1(Ljava/lang/String;)Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->g:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->U1()V

    :cond_0
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public final l0(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->z:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->K1()V

    :cond_0
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->z:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object p1
.end method

.method public final l1(Ljava/lang/String;)Ljava/util/Map;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->i:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const-string v0, "skill_effects.json"

    .line 6
    .line 7
    iget-object v1, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lcom/sgscq/vpn/GameDataManager$6;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/sgscq/vpn/GameDataManager$6;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->b:La/o;

    .line 32
    .line 33
    invoke-virtual {v2, v0, v1}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/util/Map;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->i:Ljava/util/Map;

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    new-instance v0, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    .line 53
    .line 54
    :goto_1
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->i:Ljava/util/Map;

    .line 55
    .line 56
    :cond_2
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->i:Ljava/util/Map;

    .line 57
    .line 58
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Ljava/util/Map;

    .line 63
    .line 64
    return-object p1
.end method

.method public final m(III)Ll/c;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->X1()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->E:Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    add-int/2addr p3, p2

    .line 21
    :goto_0
    invoke-static {p1, v0}, Lcom/sgscq/vpn/w1;->J2(ILjava/util/ArrayList;)Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    move p2, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const-string v2, "exp_need"

    .line 30
    .line 31
    const-string v3, "0"

    .line 32
    .line 33
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p2, v1}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    :goto_1
    if-lez p2, :cond_3

    .line 50
    .line 51
    if-ge p3, p2, :cond_1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-lt p1, v2, :cond_2

    .line 61
    .line 62
    move p3, p2

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    sub-int/2addr p3, p2

    .line 65
    add-int/lit8 p1, p1, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    :goto_2
    new-instance p2, Ll/c;

    .line 69
    .line 70
    invoke-direct {p2, p1, p3}, Ll/c;-><init>(II)V

    .line 71
    .line 72
    .line 73
    return-object p2
.end method

.method public final m0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->z:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->K1()V

    :cond_0
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->z:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/sgscq/vpn/w1;->z:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sgscq/vpn/w1;->z:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object p1
.end method

.method public final m1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const-string p1, "name"

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->Y0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final n0(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->I1()V

    iget-object v0, p0, Lcom/sgscq/vpn/w1;->I:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast v0, Ljava/util/Map;

    const-string v1, "nodes"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/sgscq/vpn/w1;->N(Ljava/util/List;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/sgscq/vpn/w1;->e0(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final n1(Ljava/lang/String;)Ljava/util/List;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->Q:Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, ""

    .line 5
    .line 6
    const/4 v3, 0x6

    .line 7
    if-nez v0, :cond_9

    .line 8
    .line 9
    const-string v4, "SGSCQ_SRV"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->Q:Ljava/util/HashMap;

    .line 21
    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 23
    .line 24
    const-string v5, "story_guests.json"

    .line 25
    .line 26
    invoke-static {v0, v5}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v5, 0x0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v6, p0, Lcom/sgscq/vpn/w1;->b:La/o;

    .line 41
    .line 42
    const-class v7, Ljava/util/Map;

    .line 43
    .line 44
    invoke-virtual {v6, v0, v7}, La/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/util/Map;

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    move-object v0, v5

    .line 52
    :goto_1
    if-eqz v0, :cond_3

    .line 53
    .line 54
    const-string v5, "story_guests"

    .line 55
    .line 56
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    :cond_3
    instance-of v0, v5, Ljava/util/Map;

    .line 61
    .line 62
    if-eqz v0, :cond_7

    .line 63
    .line 64
    check-cast v5, Ljava/util/Map;

    .line 65
    .line 66
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_7

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Ljava/util/Map$Entry;

    .line 85
    .line 86
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-static {v6}, Lcom/sgscq/vpn/w1;->n2(Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-nez v7, :cond_4

    .line 99
    .line 100
    iget-object v7, p0, Lcom/sgscq/vpn/w1;->Q:Ljava/util/HashMap;

    .line 101
    .line 102
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    check-cast v5, Ljava/lang/String;

    .line 107
    .line 108
    if-nez v5, :cond_5

    .line 109
    .line 110
    move-object v5, v2

    .line 111
    goto :goto_3

    .line 112
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    if-lt v8, v3, :cond_6

    .line 117
    .line 118
    invoke-virtual {v5, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    :cond_6
    :goto_3
    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :catch_0
    move-exception v0

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v6, "[loadStoryGuests] \u5931\u8d25: "

    .line 130
    .line 131
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-static {v0, v5, v4}, Lc/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :cond_7
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->Q:Ljava/util/HashMap;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_8

    .line 144
    .line 145
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->Q:Ljava/util/HashMap;

    .line 146
    .line 147
    const-string v5, "121011"

    .line 148
    .line 149
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    const-string v7, "501003"

    .line 154
    .line 155
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->Q:Ljava/util/HashMap;

    .line 159
    .line 160
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    const-string v7, "501004"

    .line 165
    .line 166
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->Q:Ljava/util/HashMap;

    .line 170
    .line 171
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    const-string v7, "501005"

    .line 176
    .line 177
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->Q:Ljava/util/HashMap;

    .line 181
    .line 182
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    const-string v6, "501006"

    .line 187
    .line 188
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->Q:Ljava/util/HashMap;

    .line 192
    .line 193
    const-string v5, "121007"

    .line 194
    .line 195
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    const-string v6, "502001"

    .line 200
    .line 201
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->Q:Ljava/util/HashMap;

    .line 205
    .line 206
    const-string v5, "121006"

    .line 207
    .line 208
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    const-string v6, "502002"

    .line 213
    .line 214
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->Q:Ljava/util/HashMap;

    .line 218
    .line 219
    const-string v5, "141003"

    .line 220
    .line 221
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    const-string v7, "502003"

    .line 226
    .line 227
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->Q:Ljava/util/HashMap;

    .line 231
    .line 232
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    const-string v7, "502004"

    .line 237
    .line 238
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->Q:Ljava/util/HashMap;

    .line 242
    .line 243
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    const-string v7, "502005"

    .line 248
    .line 249
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->Q:Ljava/util/HashMap;

    .line 253
    .line 254
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    const-string v7, "502006"

    .line 259
    .line 260
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->Q:Ljava/util/HashMap;

    .line 264
    .line 265
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    const-string v6, "502007"

    .line 270
    .line 271
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    const-string v5, "[loadStoryGuests] \u52a0\u8f7d "

    .line 277
    .line 278
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget-object v5, p0, Lcom/sgscq/vpn/w1;->Q:Ljava/util/HashMap;

    .line 282
    .line 283
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string v5, " \u526f\u672c\u5ba2\u4e32\u6620\u5c04"

    .line 291
    .line 292
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-static {v4, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->Q:Ljava/util/HashMap;

    .line 303
    .line 304
    if-nez p1, :cond_a

    .line 305
    .line 306
    goto :goto_5

    .line 307
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    if-lt v2, v3, :cond_b

    .line 312
    .line 313
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    :cond_b
    move-object v2, p1

    .line 318
    :goto_5
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    check-cast p1, Ljava/util/List;

    .line 323
    .line 324
    if-nez p1, :cond_c

    .line 325
    .line 326
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    goto :goto_6

    .line 331
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    .line 332
    .line 333
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 334
    .line 335
    .line 336
    move-object p1, v0

    .line 337
    :goto_6
    return-object p1
.end method

.method public final o0(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->I1()V

    iget-object v0, p0, Lcom/sgscq/vpn/w1;->I:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p1, Ljava/util/Map;

    const-string v0, "hidden_rewards"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/sgscq/vpn/w1;->k2(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final o1(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "surrender_gift_id"

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "null"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->V1()Lcom/sgscq/vpn/a7;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/sgscq/vpn/a7;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final p0(Ljava/lang/String;)Ljava/util/List;
    .locals 16

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/w1;->I1()V

    .line 2
    .line 3
    .line 4
    move-object/from16 v0, p0

    .line 5
    .line 6
    iget-object v1, v0, Lcom/sgscq/vpn/w1;->I:Ljava/util/Map;

    .line 7
    .line 8
    move-object/from16 v2, p1

    .line 9
    .line 10
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    instance-of v2, v1, Ljava/util/Map;

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    return-object v1

    .line 23
    :cond_0
    check-cast v1, Ljava/util/Map;

    .line 24
    .line 25
    new-instance v2, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "rewards"

    .line 31
    .line 32
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    instance-of v4, v3, Ljava/util/List;

    .line 37
    .line 38
    const-string v5, ""

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    const-string v7, "item_num"

    .line 42
    .line 43
    const-string v8, "num"

    .line 44
    .line 45
    const-string v9, "item_id"

    .line 46
    .line 47
    const-string v10, "direction"

    .line 48
    .line 49
    const-string v11, "dir"

    .line 50
    .line 51
    const-string v12, "0"

    .line 52
    .line 53
    if-nez v4, :cond_1

    .line 54
    .line 55
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :cond_1
    check-cast v3, Ljava/util/List;

    .line 62
    .line 63
    new-instance v4, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v13

    .line 76
    if-eqz v13, :cond_8

    .line 77
    .line 78
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v13

    .line 82
    instance-of v14, v13, Ljava/util/Map;

    .line 83
    .line 84
    if-eqz v14, :cond_3

    .line 85
    .line 86
    check-cast v13, Ljava/util/Map;

    .line 87
    .line 88
    const-string v14, "position"

    .line 89
    .line 90
    const-string v15, "node"

    .line 91
    .line 92
    invoke-static {v13, v14, v12, v15, v6}, Lc/a;->g(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    invoke-static {v13, v11, v5, v10}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v14

    .line 100
    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 101
    .line 102
    invoke-virtual {v14, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v14

    .line 106
    if-lez v6, :cond_6

    .line 107
    .line 108
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 109
    .line 110
    .line 111
    move-result v15

    .line 112
    const/4 v0, 0x1

    .line 113
    if-ne v15, v0, :cond_6

    .line 114
    .line 115
    const/4 v0, 0x0

    .line 116
    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->w1(C)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_2

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    invoke-interface {v13, v9, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const/4 v15, 0x0

    .line 136
    invoke-static {v13, v8, v12, v7, v15}, Lc/a;->g(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 137
    .line 138
    .line 139
    move-result v13

    .line 140
    invoke-static {v6, v13, v14, v0, v5}, Lcom/sgscq/vpn/w1;->B2(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    goto :goto_2

    .line 145
    :cond_3
    invoke-static {v13}, Lcom/sgscq/vpn/w1;->J(Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    const/4 v13, 0x2

    .line 154
    if-ge v6, v13, :cond_4

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    add-int/lit8 v6, v6, -0x1

    .line 162
    .line 163
    const/4 v13, 0x0

    .line 164
    invoke-virtual {v0, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-static {v6, v13}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 173
    .line 174
    .line 175
    move-result v14

    .line 176
    add-int/lit8 v14, v14, -0x1

    .line 177
    .line 178
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-lez v6, :cond_6

    .line 187
    .line 188
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->w1(C)Z

    .line 189
    .line 190
    .line 191
    move-result v14

    .line 192
    if-nez v14, :cond_5

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-static {v6, v13, v0, v5, v5}, Lcom/sgscq/vpn/w1;->B2(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    goto :goto_2

    .line 204
    :cond_6
    :goto_1
    const/4 v0, 0x0

    .line 205
    :goto_2
    if-eqz v0, :cond_7

    .line 206
    .line 207
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    :cond_7
    const/4 v6, 0x0

    .line 211
    move-object/from16 v0, p0

    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_8
    move-object v3, v4

    .line 216
    :goto_3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 217
    .line 218
    .line 219
    const-string v0, "hidden_rewards"

    .line 220
    .line 221
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->q1(Ljava/util/Map;)Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    instance-of v3, v0, Ljava/util/List;

    .line 230
    .line 231
    if-eqz v3, :cond_10

    .line 232
    .line 233
    if-eqz v1, :cond_10

    .line 234
    .line 235
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    if-eqz v3, :cond_9

    .line 240
    .line 241
    goto/16 :goto_7

    .line 242
    .line 243
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .line 247
    .line 248
    check-cast v0, Ljava/util/List;

    .line 249
    .line 250
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    const/4 v4, 0x0

    .line 255
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    if-eqz v6, :cond_11

    .line 260
    .line 261
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    instance-of v13, v6, Ljava/util/Map;

    .line 266
    .line 267
    const-string v14, "hidden"

    .line 268
    .line 269
    if-eqz v13, :cond_c

    .line 270
    .line 271
    check-cast v6, Ljava/util/Map;

    .line 272
    .line 273
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 274
    .line 275
    .line 276
    move-result v13

    .line 277
    if-lt v4, v13, :cond_a

    .line 278
    .line 279
    move-object/from16 p1, v0

    .line 280
    .line 281
    goto/16 :goto_6

    .line 282
    .line 283
    :cond_a
    invoke-static {v6, v11, v5, v10}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v13

    .line 287
    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 288
    .line 289
    invoke-virtual {v13, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v13

    .line 293
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 294
    .line 295
    .line 296
    move-result v15

    .line 297
    move-object/from16 p1, v0

    .line 298
    .line 299
    const/4 v0, 0x1

    .line 300
    if-ne v15, v0, :cond_f

    .line 301
    .line 302
    const/4 v0, 0x0

    .line 303
    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->w1(C)Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-nez v0, :cond_b

    .line 312
    .line 313
    goto :goto_6

    .line 314
    :cond_b
    invoke-interface {v6, v9, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    const/4 v15, 0x0

    .line 323
    invoke-static {v6, v8, v12, v7, v15}, Lc/a;->g(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 324
    .line 325
    .line 326
    move-result v6

    .line 327
    add-int/lit8 v15, v4, 0x1

    .line 328
    .line 329
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    check-cast v4, Ljava/lang/Integer;

    .line 334
    .line 335
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    invoke-static {v4, v6, v13, v0, v14}, Lcom/sgscq/vpn/w1;->B2(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    goto :goto_5

    .line 344
    :cond_c
    move-object/from16 p1, v0

    .line 345
    .line 346
    invoke-static {v6}, Lcom/sgscq/vpn/w1;->J(Ljava/lang/Object;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 351
    .line 352
    .line 353
    move-result v6

    .line 354
    const/4 v13, 0x3

    .line 355
    if-lt v6, v13, :cond_f

    .line 356
    .line 357
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 358
    .line 359
    .line 360
    move-result v6

    .line 361
    if-lt v4, v6, :cond_d

    .line 362
    .line 363
    goto :goto_6

    .line 364
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 365
    .line 366
    .line 367
    move-result v6

    .line 368
    add-int/lit8 v6, v6, -0x1

    .line 369
    .line 370
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->w1(C)Z

    .line 379
    .line 380
    .line 381
    move-result v6

    .line 382
    if-nez v6, :cond_e

    .line 383
    .line 384
    goto :goto_6

    .line 385
    :cond_e
    add-int/lit8 v15, v4, 0x1

    .line 386
    .line 387
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    check-cast v4, Ljava/lang/Integer;

    .line 392
    .line 393
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    const/4 v6, 0x0

    .line 402
    invoke-static {v4, v6, v0, v5, v14}, Lcom/sgscq/vpn/w1;->B2(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    :goto_5
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move v4, v15

    .line 410
    :cond_f
    :goto_6
    move-object/from16 v0, p1

    .line 411
    .line 412
    goto/16 :goto_4

    .line 413
    .line 414
    :cond_10
    :goto_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    :cond_11
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 419
    .line 420
    .line 421
    return-object v2
.end method

.method public final r(Ljava/util/HashMap;)V
    .locals 9

    .line 1
    const-string v0, "add_list"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->b:La/o;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    goto/16 :goto_6

    .line 16
    .line 17
    :cond_0
    :try_start_0
    const-string v4, "evolutions.json"

    .line 18
    .line 19
    invoke-static {v3, v4}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    if-eqz v4, :cond_b

    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    goto/16 :goto_5

    .line 32
    .line 33
    :cond_1
    new-instance v5, Lcom/sgscq/vpn/GameDataManager$20;

    .line 34
    .line 35
    invoke-direct {v5}, Lcom/sgscq/vpn/GameDataManager$20;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v2, v4, v5}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Ljava/util/List;

    .line 47
    .line 48
    new-instance v5, Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 51
    .line 52
    .line 53
    if-eqz v4, :cond_3

    .line 54
    .line 55
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_3

    .line 64
    .line 65
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Ljava/util/Map;

    .line 70
    .line 71
    const-string v7, "general_id"

    .line 72
    .line 73
    invoke-interface {v6, v7, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    const-string v8, "surrender_gift_id"

    .line 82
    .line 83
    invoke-interface {v6, v8, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    if-nez v8, :cond_2

    .line 96
    .line 97
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    if-nez v8, :cond_2

    .line 102
    .line 103
    const-string v8, "null"

    .line 104
    .line 105
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    if-nez v8, :cond_2

    .line 110
    .line 111
    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_3
    const-string v1, "gift_box_contents.json"

    .line 116
    .line 117
    invoke-static {v3, v1}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    if-eqz v1, :cond_5

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_4

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    new-instance v3, Lcom/sgscq/vpn/GameDataManager$21;

    .line 131
    .line 132
    invoke-direct {v3}, Lcom/sgscq/vpn/GameDataManager$21;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v2, v1, v3}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Ljava/util/Map;

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_5
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    :goto_2
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_c

    .line 163
    .line 164
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Ljava/util/Map$Entry;

    .line 169
    .line 170
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    check-cast v3, Ljava/lang/String;

    .line 179
    .line 180
    if-nez v3, :cond_7

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    check-cast v2, Ljava/util/Map;

    .line 188
    .line 189
    const-string v4, "evolution_surrender_gift_id"

    .line 190
    .line 191
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    check-cast v3, Ljava/util/Map;

    .line 199
    .line 200
    if-eqz v3, :cond_6

    .line 201
    .line 202
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    instance-of v4, v4, Ljava/util/List;

    .line 207
    .line 208
    if-nez v4, :cond_8

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    check-cast v3, Ljava/util/List;

    .line 221
    .line 222
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    :cond_9
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    if-eqz v6, :cond_a

    .line 231
    .line 232
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    instance-of v7, v6, Ljava/util/Map;

    .line 237
    .line 238
    if-eqz v7, :cond_9

    .line 239
    .line 240
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 241
    .line 242
    check-cast v6, Ljava/util/Map;

    .line 243
    .line 244
    invoke-direct {v7, v6}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_a
    const-string v3, "evolution_rewards"

    .line 252
    .line 253
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_b
    :goto_5
    return-void

    .line 258
    :catch_0
    move-exception p1

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    const-string v1, "[GameDataManager] loadEvolutionSurrenderRewards FAILED: "

    .line 262
    .line 263
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const-string v1, "SGSCQ_SRV"

    .line 267
    .line 268
    invoke-static {p1, v0, v1}, Lc/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    :cond_c
    :goto_6
    return-void
.end method

.method public final r0(J)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->H1()Lp/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lp/d;->a()Lp/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, v0, Lp/b;->e:Lm/e;

    .line 17
    .line 18
    invoke-static {v0, p1, p2}, Lp/d;->c(Lm/e;J)Lp/a;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    if-eqz v1, :cond_3

    .line 23
    .line 24
    iget-wide v0, v1, Lp/a;->f:J

    .line 25
    .line 26
    cmp-long v2, v0, p1

    .line 27
    .line 28
    if-gtz v2, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    sub-long/2addr v0, p1

    .line 32
    const-wide/16 p1, 0x3e7

    .line 33
    .line 34
    add-long/2addr v0, p1

    .line 35
    const-wide/16 p1, 0x3e8

    .line 36
    .line 37
    div-long/2addr v0, p1

    .line 38
    const-wide/32 p1, 0x7fffffff

    .line 39
    .line 40
    .line 41
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide p1

    .line 45
    long-to-int p1, p1

    .line 46
    return p1

    .line 47
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 48
    return p1
.end method

.method public final s1(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/sgscq/vpn/w1;->o1(Ljava/lang/String;Ljava/util/Map;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p1, "insight_max_level"

    .line 16
    .line 17
    const-string v2, "0"

    .line 18
    .line 19
    invoke-static {v0, p1, v2, v1}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    const-string p1, "insight_grow_type"

    .line 26
    .line 27
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v2, "zhanjicailiao"

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    const-string p1, "upgrade_exp_type"

    .line 44
    .line 45
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    const-string p1, "insight_upgrade_exp_type"

    .line 60
    .line 61
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    const-string p1, "eated_exp_type"

    .line 76
    .line 77
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string v0, "zhanji"

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_1

    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    :cond_1
    :goto_0
    return v1
.end method

.method public final t()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v1, v0, Lcom/sgscq/vpn/w1;->J:Ljava/util/HashMap;

    .line 9
    .line 10
    new-instance v1, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Lcom/sgscq/vpn/w1;->K:Ljava/util/HashMap;

    .line 16
    .line 17
    const-string v1, "fate_equipment_boxes.json"

    .line 18
    .line 19
    iget-object v2, v0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v2, v1}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "desc"

    .line 26
    .line 27
    const-string v3, "name"

    .line 28
    .line 29
    const-string v4, "7"

    .line 30
    .line 31
    const-string v5, "item_id"

    .line 32
    .line 33
    const-string v6, "id"

    .line 34
    .line 35
    const-string v7, "equipment_id"

    .line 36
    .line 37
    const-string v8, "fate_equip_id"

    .line 38
    .line 39
    const-string v9, "related_id"

    .line 40
    .line 41
    const-string v10, "style_desc"

    .line 42
    .line 43
    const-string v11, "style_id"

    .line 44
    .line 45
    const-string v12, "box_id"

    .line 46
    .line 47
    const-string v13, "9"

    .line 48
    .line 49
    if-eqz v1, :cond_6

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v14

    .line 55
    if-nez v14, :cond_6

    .line 56
    .line 57
    new-instance v14, Lcom/sgscq/vpn/GameDataManager$2;

    .line 58
    .line 59
    invoke-direct {v14}, Lcom/sgscq/vpn/GameDataManager$2;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v14}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 63
    .line 64
    .line 65
    move-result-object v14

    .line 66
    iget-object v15, v0, Lcom/sgscq/vpn/w1;->b:La/o;

    .line 67
    .line 68
    invoke-virtual {v15, v1, v14}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Ljava/util/Map;

    .line 73
    .line 74
    if-eqz v1, :cond_5

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v14

    .line 88
    if-eqz v14, :cond_5

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v14

    .line 94
    check-cast v14, Ljava/util/Map$Entry;

    .line 95
    .line 96
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v15

    .line 100
    check-cast v15, Ljava/util/Map;

    .line 101
    .line 102
    if-nez v15, :cond_0

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    move-object/from16 v16, v1

    .line 106
    .line 107
    new-instance v1, Ljava/util/HashMap;

    .line 108
    .line 109
    invoke-direct {v1, v15}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 110
    .line 111
    .line 112
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v14

    .line 116
    invoke-virtual {v1, v12, v14}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v14

    .line 120
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v14

    .line 124
    const-string v15, ""

    .line 125
    .line 126
    invoke-virtual {v1, v7, v15}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v15

    .line 130
    invoke-virtual {v1, v8, v15}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v15

    .line 134
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v15

    .line 138
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v17

    .line 142
    if-nez v17, :cond_4

    .line 143
    .line 144
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result v17

    .line 148
    if-eqz v17, :cond_1

    .line 149
    .line 150
    goto/16 :goto_1

    .line 151
    .line 152
    :cond_1
    invoke-virtual {v1, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-object/from16 v17, v7

    .line 162
    .line 163
    const-string v7, "itemname"

    .line 164
    .line 165
    move-object/from16 v18, v8

    .line 166
    .line 167
    invoke-virtual {v7, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    invoke-virtual {v0, v8}, Lcom/sgscq/vpn/w1;->Y0(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    move-object/from16 v19, v5

    .line 176
    .line 177
    const-string v5, "itemdesc"

    .line 178
    .line 179
    move-object/from16 v20, v6

    .line 180
    .line 181
    invoke-virtual {v5, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-virtual {v0, v6}, Lcom/sgscq/vpn/w1;->Y0(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 190
    .line 191
    .line 192
    move-result v21

    .line 193
    if-nez v21, :cond_2

    .line 194
    .line 195
    invoke-virtual {v7, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v7

    .line 203
    if-nez v7, :cond_2

    .line 204
    .line 205
    invoke-virtual {v1, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    if-nez v7, :cond_3

    .line 213
    .line 214
    invoke-virtual {v5, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    if-nez v5, :cond_3

    .line 223
    .line 224
    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    :cond_3
    invoke-virtual {v1, v11, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-virtual {v1, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v13, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-virtual {v1, v10, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    invoke-virtual {v1, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v13, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-virtual {v1, v9, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    invoke-virtual {v1, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    iget-object v5, v0, Lcom/sgscq/vpn/w1;->J:Ljava/util/HashMap;

    .line 269
    .line 270
    invoke-virtual {v5, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    iget-object v5, v0, Lcom/sgscq/vpn/w1;->K:Ljava/util/HashMap;

    .line 274
    .line 275
    invoke-virtual {v5, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_4
    :goto_1
    move-object/from16 v19, v5

    .line 280
    .line 281
    move-object/from16 v20, v6

    .line 282
    .line 283
    move-object/from16 v17, v7

    .line 284
    .line 285
    move-object/from16 v18, v8

    .line 286
    .line 287
    :goto_2
    move-object/from16 v1, v16

    .line 288
    .line 289
    move-object/from16 v7, v17

    .line 290
    .line 291
    move-object/from16 v8, v18

    .line 292
    .line 293
    move-object/from16 v5, v19

    .line 294
    .line 295
    move-object/from16 v6, v20

    .line 296
    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :cond_5
    move-object/from16 v19, v5

    .line 300
    .line 301
    move-object/from16 v20, v6

    .line 302
    .line 303
    move-object/from16 v17, v7

    .line 304
    .line 305
    move-object/from16 v18, v8

    .line 306
    .line 307
    iget-object v1, v0, Lcom/sgscq/vpn/w1;->J:Ljava/util/HashMap;

    .line 308
    .line 309
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    if-nez v1, :cond_7

    .line 314
    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    const-string v2, "[FateBoxMap] loaded config="

    .line 318
    .line 319
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    goto/16 :goto_6

    .line 323
    .line 324
    :cond_6
    move-object/from16 v19, v5

    .line 325
    .line 326
    move-object/from16 v20, v6

    .line 327
    .line 328
    move-object/from16 v17, v7

    .line 329
    .line 330
    move-object/from16 v18, v8

    .line 331
    .line 332
    :cond_7
    iget-object v1, v0, Lcom/sgscq/vpn/w1;->N:Ljava/util/HashMap;

    .line 333
    .line 334
    if-eqz v1, :cond_8

    .line 335
    .line 336
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-eqz v1, :cond_9

    .line 341
    .line 342
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/w1;->M1()V

    .line 343
    .line 344
    .line 345
    :cond_9
    new-instance v1, Ljava/util/HashSet;

    .line 346
    .line 347
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 348
    .line 349
    .line 350
    iget-object v5, v0, Lcom/sgscq/vpn/w1;->N:Ljava/util/HashMap;

    .line 351
    .line 352
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    :cond_a
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 361
    .line 362
    .line 363
    move-result v6

    .line 364
    if-eqz v6, :cond_b

    .line 365
    .line 366
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v6

    .line 370
    check-cast v6, Ljava/util/List;

    .line 371
    .line 372
    if-eqz v6, :cond_a

    .line 373
    .line 374
    invoke-interface {v1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 375
    .line 376
    .line 377
    goto :goto_3

    .line 378
    :cond_b
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 383
    .line 384
    .line 385
    move-result v5

    .line 386
    if-eqz v5, :cond_f

    .line 387
    .line 388
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    check-cast v5, Ljava/lang/String;

    .line 393
    .line 394
    if-eqz v5, :cond_e

    .line 395
    .line 396
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 397
    .line 398
    .line 399
    move-result v6

    .line 400
    const/4 v7, 0x2

    .line 401
    if-lt v6, v7, :cond_e

    .line 402
    .line 403
    invoke-virtual {v0, v5}, Lcom/sgscq/vpn/w1;->z0(Ljava/lang/String;)Ljava/util/Map;

    .line 404
    .line 405
    .line 406
    move-result-object v6

    .line 407
    if-nez v6, :cond_c

    .line 408
    .line 409
    goto :goto_4

    .line 410
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    const-string v7, "99"

    .line 413
    .line 414
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    const/4 v7, 0x1

    .line 418
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v7

    .line 422
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v6

    .line 429
    invoke-virtual {v0, v5}, Lcom/sgscq/vpn/w1;->A0(Ljava/lang/String;)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v7

    .line 433
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 434
    .line 435
    .line 436
    move-result v8

    .line 437
    if-eqz v8, :cond_d

    .line 438
    .line 439
    const-string v7, "\u7f18\u5206\u88c5\u5907"

    .line 440
    .line 441
    :cond_d
    move-object/from16 v8, v20

    .line 442
    .line 443
    invoke-static {v12, v6, v8, v6}, Lc/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 444
    .line 445
    .line 446
    move-result-object v14

    .line 447
    move-object/from16 v15, v19

    .line 448
    .line 449
    invoke-virtual {v14, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-object/from16 v16, v1

    .line 453
    .line 454
    const-string v1, "base_item_id"

    .line 455
    .line 456
    move-object/from16 v20, v8

    .line 457
    .line 458
    const-string v8, "600045"

    .line 459
    .line 460
    invoke-virtual {v14, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    const-string v1, "resource_id"

    .line 464
    .line 465
    invoke-virtual {v14, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-object/from16 v1, v18

    .line 469
    .line 470
    invoke-virtual {v14, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-object/from16 v8, v17

    .line 474
    .line 475
    invoke-virtual {v14, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    const-string v1, "related_equipment_id"

    .line 479
    .line 480
    invoke-virtual {v14, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    .line 484
    .line 485
    const-string v8, "\u795e\u88c5\u793c\u76d2\uff08"

    .line 486
    .line 487
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    const-string v8, "\uff09"

    .line 494
    .line 495
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    invoke-virtual {v14, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    .line 506
    .line 507
    const-string v8, "\u5f00\u542f\u53ef\u83b7\u5f97"

    .line 508
    .line 509
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    const-string v7, "\u788e\u7247\u7b49\u9053\u5177"

    .line 516
    .line 517
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    invoke-virtual {v14, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v14, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v13, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    invoke-virtual {v14, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v13, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    invoke-virtual {v14, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    iget-object v1, v0, Lcom/sgscq/vpn/w1;->J:Ljava/util/HashMap;

    .line 545
    .line 546
    invoke-virtual {v1, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    iget-object v1, v0, Lcom/sgscq/vpn/w1;->K:Ljava/util/HashMap;

    .line 550
    .line 551
    invoke-virtual {v1, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    goto :goto_5

    .line 555
    :cond_e
    move-object/from16 v16, v1

    .line 556
    .line 557
    move-object/from16 v15, v19

    .line 558
    .line 559
    move-object/from16 v19, v15

    .line 560
    .line 561
    :goto_5
    move-object/from16 v1, v16

    .line 562
    .line 563
    goto/16 :goto_4

    .line 564
    .line 565
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 566
    .line 567
    const-string v2, "[FateBoxMap] loaded="

    .line 568
    .line 569
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    :goto_6
    iget-object v2, v0, Lcom/sgscq/vpn/w1;->J:Ljava/util/HashMap;

    .line 573
    .line 574
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 575
    .line 576
    .line 577
    move-result v2

    .line 578
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    const-string v2, "SGSCQ_SRV"

    .line 586
    .line 587
    invoke-static {v2, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    return-void
.end method

.method public final t0(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->B:Ljava/util/HashMap;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const-string v0, "dialogs.json"

    .line 6
    .line 7
    iget-object v1, p0, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_0
    new-instance v1, Lcom/sgscq/vpn/GameDataManager$15;

    .line 24
    .line 25
    invoke-direct {v1}, Lcom/sgscq/vpn/GameDataManager$15;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->b:La/o;

    .line 33
    .line 34
    invoke-virtual {v2, v0, v1}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/util/List;

    .line 39
    .line 40
    new-instance v1, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/sgscq/vpn/w1;->B:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/util/Map;

    .line 62
    .line 63
    const-string v2, "dialog_id"

    .line 64
    .line 65
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_1

    .line 78
    .line 79
    const-string v3, "null"

    .line 80
    .line 81
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_2

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    iget-object v3, p0, Lcom/sgscq/vpn/w1;->B:Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-nez v3, :cond_3

    .line 95
    .line 96
    iget-object v3, p0, Lcom/sgscq/vpn/w1;->B:Ljava/util/HashMap;

    .line 97
    .line 98
    new-instance v4, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    :cond_3
    iget-object v3, p0, Lcom/sgscq/vpn/w1;->B:Ljava/util/HashMap;

    .line 107
    .line 108
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Ljava/util/List;

    .line 113
    .line 114
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v1, "[loadDungeonDialogs] \u52a0\u8f7d "

    .line 121
    .line 122
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Lcom/sgscq/vpn/w1;->B:Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v1, " \u7ec4\u5bf9\u8bdd"

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const-string v1, "SGSCQ_SRV"

    .line 144
    .line 145
    invoke-static {v1, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_5
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    .line 150
    .line 151
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    .line 153
    .line 154
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->B:Ljava/util/HashMap;

    .line 155
    .line 156
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->B:Ljava/util/HashMap;

    .line 157
    .line 158
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Ljava/util/List;

    .line 163
    .line 164
    return-object p1
.end method

.method public final t1(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->E0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final t2(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_7

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :cond_0
    const-string v1, "general_pk_id"

    .line 13
    .line 14
    invoke-static {p1, v1, p2}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    or-int/2addr v0, v2

    .line 19
    const-string v2, "1"

    .line 20
    .line 21
    const-string v3, "general_status"

    .line 22
    .line 23
    invoke-static {v2, v3, p2}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    or-int/2addr v0, v3

    .line 28
    const-string v3, "status"

    .line 29
    .line 30
    invoke-static {v2, v3, p2}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    or-int/2addr v0, v3

    .line 35
    const-string v3, "general_naturalskill_id"

    .line 36
    .line 37
    invoke-static {p1, v3, p2}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    or-int/2addr v0, v3

    .line 42
    const-string v3, "id"

    .line 43
    .line 44
    const-string v4, ""

    .line 45
    .line 46
    const-string v5, "general_id"

    .line 47
    .line 48
    invoke-static {p2, v3, v4, v5}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v4, "gSkill"

    .line 53
    .line 54
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    instance-of v6, v5, Ljava/util/List;

    .line 59
    .line 60
    const/4 v7, 0x1

    .line 61
    const-string v8, "pk_id"

    .line 62
    .line 63
    const-string v9, "general_skills"

    .line 64
    .line 65
    if-eqz v6, :cond_6

    .line 66
    .line 67
    check-cast v5, Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-eqz v6, :cond_1

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_3

    .line 85
    .line 86
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Ljava/util/Map;

    .line 91
    .line 92
    const-string v6, "pos"

    .line 93
    .line 94
    const-string v10, "position"

    .line 95
    .line 96
    invoke-static {v4, v6, v2, v10}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-static {p1, v1, v4}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 101
    .line 102
    .line 103
    move-result v10

    .line 104
    or-int/2addr v0, v10

    .line 105
    const-string v10, "skill_position"

    .line 106
    .line 107
    invoke-static {v6, v10, v4}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    or-int/2addr v0, v10

    .line 112
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-eqz v6, :cond_2

    .line 117
    .line 118
    invoke-static {p1, v8, v4}, Lcom/sgscq/vpn/w1;->q2(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    or-int/2addr v0, v4

    .line 123
    goto :goto_0

    .line 124
    :cond_3
    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    instance-of v1, p1, Ljava/util/List;

    .line 129
    .line 130
    if-eqz v1, :cond_5

    .line 131
    .line 132
    check-cast p1, Ljava/util/List;

    .line 133
    .line 134
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_4

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_4
    move v7, v0

    .line 142
    goto :goto_2

    .line 143
    :cond_5
    :goto_1
    invoke-interface {p2, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    :goto_2
    return v7

    .line 147
    :cond_6
    :goto_3
    invoke-virtual {p0, v3}, Lcom/sgscq/vpn/w1;->Z1(Ljava/lang/String;)Ljava/util/HashMap;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    new-instance p1, Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    invoke-interface {p2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    invoke-interface {p2, v9, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    return v7

    .line 172
    :cond_7
    :goto_4
    return v0
.end method

.method public final u(II)Ljava/util/LinkedHashMap;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/w1;->X1()V

    .line 8
    .line 9
    .line 10
    iget-object v3, v0, Lcom/sgscq/vpn/w1;->m:Ljava/util/HashMap;

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/w1;->R1()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v3, v0, Lcom/sgscq/vpn/w1;->E:Ljava/util/ArrayList;

    .line 18
    .line 19
    iget-object v4, v0, Lcom/sgscq/vpn/w1;->m:Ljava/util/HashMap;

    .line 20
    .line 21
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    const-string v8, "level"

    .line 36
    .line 37
    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v8, v1, 0x1

    .line 46
    .line 47
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    const/4 v8, 0x0

    .line 52
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    move v10, v8

    .line 57
    :goto_0
    const-string v11, "add_list"

    .line 58
    .line 59
    const-string v12, "coin"

    .line 60
    .line 61
    const-string v13, "gold"

    .line 62
    .line 63
    if-gt v6, v2, :cond_b

    .line 64
    .line 65
    invoke-static {v6, v3}, Lcom/sgscq/vpn/w1;->J2(ILjava/util/ArrayList;)Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    move-result-object v14

    .line 69
    if-nez v14, :cond_1

    .line 70
    .line 71
    move-object/from16 v16, v4

    .line 72
    .line 73
    move-object/from16 v19, v5

    .line 74
    .line 75
    goto/16 :goto_8

    .line 76
    .line 77
    :cond_1
    const-string v15, "item_advanced_id"

    .line 78
    .line 79
    const-string v0, ""

    .line 80
    .line 81
    invoke-interface {v14, v15, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v14

    .line 85
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v14

    .line 89
    if-nez v4, :cond_2

    .line 90
    .line 91
    const/4 v14, 0x0

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v14

    .line 97
    check-cast v14, Ljava/util/Map;

    .line 98
    .line 99
    :goto_1
    new-instance v15, Ljava/util/LinkedHashMap;

    .line 100
    .line 101
    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 102
    .line 103
    .line 104
    move-object/from16 v16, v4

    .line 105
    .line 106
    if-nez v14, :cond_4

    .line 107
    .line 108
    :cond_3
    :goto_2
    move-object/from16 v19, v5

    .line 109
    .line 110
    goto/16 :goto_7

    .line 111
    .line 112
    :cond_4
    const-string v4, "effect_value"

    .line 113
    .line 114
    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    instance-of v14, v4, Ljava/util/Map;

    .line 119
    .line 120
    if-nez v14, :cond_5

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_5
    check-cast v4, Ljava/util/Map;

    .line 124
    .line 125
    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    instance-of v11, v4, Ljava/util/List;

    .line 130
    .line 131
    if-nez v11, :cond_6

    .line 132
    .line 133
    :goto_3
    goto :goto_2

    .line 134
    :cond_6
    check-cast v4, Ljava/util/List;

    .line 135
    .line 136
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v11

    .line 144
    if-eqz v11, :cond_3

    .line 145
    .line 146
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    instance-of v14, v11, Ljava/util/Map;

    .line 151
    .line 152
    if-nez v14, :cond_7

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_7
    check-cast v11, Ljava/util/Map;

    .line 156
    .line 157
    const-string v14, "type"

    .line 158
    .line 159
    invoke-interface {v11, v14, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v14

    .line 163
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v14

    .line 167
    move-object/from16 v17, v4

    .line 168
    .line 169
    const-string v4, "id"

    .line 170
    .line 171
    invoke-interface {v11, v4, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    move-object/from16 v18, v0

    .line 180
    .line 181
    const-string v0, "num"

    .line 182
    .line 183
    move-object/from16 v19, v5

    .line 184
    .line 185
    const-string v5, "0"

    .line 186
    .line 187
    const/4 v2, 0x0

    .line 188
    invoke-static {v11, v0, v5, v2}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    const-string v2, "5"

    .line 193
    .line 194
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_a

    .line 199
    .line 200
    if-gtz v0, :cond_8

    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_8
    const-string v2, "600026"

    .line 204
    .line 205
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-eqz v2, :cond_9

    .line 210
    .line 211
    move-object v2, v12

    .line 212
    goto :goto_5

    .line 213
    :cond_9
    const-string v2, "600027"

    .line 214
    .line 215
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-eqz v2, :cond_a

    .line 220
    .line 221
    move-object v2, v13

    .line 222
    :goto_5
    invoke-virtual {v15, v2, v9}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    check-cast v4, Ljava/lang/Integer;

    .line 227
    .line 228
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    add-int/2addr v4, v0

    .line 233
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-interface {v15, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    :cond_a
    :goto_6
    move/from16 v2, p2

    .line 241
    .line 242
    move-object/from16 v4, v17

    .line 243
    .line 244
    move-object/from16 v0, v18

    .line 245
    .line 246
    move-object/from16 v5, v19

    .line 247
    .line 248
    goto :goto_4

    .line 249
    :goto_7
    invoke-virtual {v15, v12, v9}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    check-cast v0, Ljava/lang/Integer;

    .line 254
    .line 255
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    add-int/2addr v0, v10

    .line 260
    invoke-virtual {v15, v13, v9}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    check-cast v2, Ljava/lang/Integer;

    .line 265
    .line 266
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    add-int/2addr v2, v8

    .line 271
    move v10, v0

    .line 272
    move v8, v2

    .line 273
    :goto_8
    add-int/lit8 v6, v6, 0x1

    .line 274
    .line 275
    move-object/from16 v0, p0

    .line 276
    .line 277
    move/from16 v2, p2

    .line 278
    .line 279
    move-object/from16 v4, v16

    .line 280
    .line 281
    move-object/from16 v5, v19

    .line 282
    .line 283
    goto/16 :goto_0

    .line 284
    .line 285
    :cond_b
    move-object/from16 v19, v5

    .line 286
    .line 287
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-interface {v7, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-interface {v7, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    invoke-static {v1, v3}, Lcom/sgscq/vpn/w1;->c2(ILjava/util/ArrayList;)I

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    move/from16 v1, p2

    .line 306
    .line 307
    invoke-static {v1, v3}, Lcom/sgscq/vpn/w1;->c2(ILjava/util/ArrayList;)I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-le v1, v0, :cond_c

    .line 312
    .line 313
    const-string v0, "team_num"

    .line 314
    .line 315
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    :cond_c
    move-object/from16 v0, v19

    .line 323
    .line 324
    invoke-interface {v0, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    return-object v0
.end method

.method public final u0(Ljava/lang/String;)Ljava/util/List;
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->x0(Ljava/lang/String;)Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    const-string v0, "drops"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    instance-of v0, p1, Ljava/util/List;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    check-cast p1, Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_5

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    instance-of v2, v1, Ljava/util/Map;

    .line 49
    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    check-cast v1, Ljava/util/Map;

    .line 54
    .line 55
    const-string v2, "item_id"

    .line 56
    .line 57
    const-string v3, ""

    .line 58
    .line 59
    const-string v4, "id"

    .line 60
    .line 61
    invoke-static {v1, v2, v3, v4}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-nez v5, :cond_2

    .line 70
    .line 71
    const-string v5, "null"

    .line 72
    .line 73
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_4

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    new-instance v5, Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v6, "type"

    .line 86
    .line 87
    const-string v7, "5"

    .line 88
    .line 89
    invoke-interface {v1, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    const/4 v8, 0x5

    .line 94
    invoke-static {v7, v8}, Lcom/sgscq/vpn/w1;->m2(Ljava/lang/Object;I)I

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    const-string v2, "item_num"

    .line 112
    .line 113
    const-string v3, "1"

    .line 114
    .line 115
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    const-string v3, "num"

    .line 120
    .line 121
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    const/4 v2, 0x1

    .line 126
    invoke-static {v1, v2}, Lcom/sgscq/vpn/w1;->m2(Ljava/lang/Object;I)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v5, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_5
    return-object v0
.end method

.method public final v(Lcom/sgscq/vpn/config/i;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->f:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->O1()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->f:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_16

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/String;

    .line 35
    .line 36
    sget-object v4, Lcom/sgscq/vpn/w1;->U:Ljava/util/HashSet;

    .line 37
    .line 38
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0, v3}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    if-nez v10, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const-string v4, "grade"

    .line 57
    .line 58
    invoke-static {v4, v10}, Lcom/sgscq/vpn/w1;->b1(Ljava/lang/String;Ljava/util/Map;)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const/4 v11, 0x1

    .line 63
    if-eq v4, v11, :cond_4

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    const-string v4, "resource_id"

    .line 67
    .line 68
    const-string v5, ""

    .line 69
    .line 70
    invoke-interface {v10, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-nez v5, :cond_1

    .line 83
    .line 84
    const-string v5, "0"

    .line 85
    .line 86
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_5

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    invoke-virtual {p0, v3}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    if-nez v4, :cond_6

    .line 98
    .line 99
    move-object v12, v3

    .line 100
    goto :goto_1

    .line 101
    :cond_6
    move-object v12, v4

    .line 102
    :goto_1
    invoke-virtual {p0, v3}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    if-eqz v7, :cond_7

    .line 107
    .line 108
    array-length v4, v7

    .line 109
    const/4 v5, 0x4

    .line 110
    if-le v4, v5, :cond_7

    .line 111
    .line 112
    aget-wide v4, v7, v5

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_7
    const-wide/16 v4, 0x0

    .line 116
    .line 117
    :goto_2
    move-wide v8, v4

    .line 118
    move-object v4, v3

    .line 119
    move-object v5, v10

    .line 120
    move-object v6, v12

    .line 121
    invoke-static/range {v4 .. v9}, Lcom/sgscq/vpn/w1;->w(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[DD)Ljava/util/HashMap;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    if-nez p1, :cond_8

    .line 126
    .line 127
    const/4 v5, 0x0

    .line 128
    goto :goto_3

    .line 129
    :cond_8
    iget-object v5, p1, Lcom/sgscq/vpn/config/i;->c:Lm/e;

    .line 130
    .line 131
    iget-object v5, v5, Lm/e;->d:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v5, Ljava/util/Map;

    .line 134
    .line 135
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    check-cast v5, Lcom/sgscq/vpn/config/c;

    .line 140
    .line 141
    :goto_3
    if-eqz v5, :cond_9

    .line 142
    .line 143
    const-string v6, "special"

    .line 144
    .line 145
    iget-object v7, v5, Lcom/sgscq/vpn/config/c;->c:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    if-eqz v6, :cond_9

    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_9
    sget-object v6, Lcom/sgscq/vpn/cloud/m0;->g:[Ljava/lang/String;

    .line 156
    .line 157
    const/4 v7, 0x0

    .line 158
    if-nez p1, :cond_a

    .line 159
    .line 160
    aget-object v5, v6, v7

    .line 161
    .line 162
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    goto :goto_4

    .line 175
    :cond_a
    if-eqz v5, :cond_b

    .line 176
    .line 177
    const-string v8, "regular"

    .line 178
    .line 179
    iget-object v5, v5, Lcom/sgscq/vpn/config/c;->c:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-eqz v5, :cond_b

    .line 186
    .line 187
    move v5, v11

    .line 188
    goto :goto_4

    .line 189
    :cond_b
    move v5, v7

    .line 190
    :goto_4
    if-nez p1, :cond_13

    .line 191
    .line 192
    aget-object v6, v6, v7

    .line 193
    .line 194
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    if-eqz v6, :cond_c

    .line 207
    .line 208
    goto :goto_8

    .line 209
    :cond_c
    sget-object v6, Lcom/sgscq/vpn/cloud/m0;->f:[Ljava/lang/String;

    .line 210
    .line 211
    move v8, v7

    .line 212
    :goto_5
    const/16 v9, 0x1c

    .line 213
    .line 214
    if-ge v8, v9, :cond_e

    .line 215
    .line 216
    aget-object v9, v6, v8

    .line 217
    .line 218
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v13

    .line 226
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v9

    .line 230
    if-eqz v9, :cond_d

    .line 231
    .line 232
    goto :goto_6

    .line 233
    :cond_d
    add-int/lit8 v8, v8, 0x1

    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_e
    move v11, v7

    .line 237
    :goto_6
    if-eqz v11, :cond_f

    .line 238
    .line 239
    goto :goto_7

    .line 240
    :cond_f
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    const v6, 0x186a0

    .line 245
    .line 246
    .line 247
    if-le v3, v6, :cond_12

    .line 248
    .line 249
    const v6, 0x24dd8

    .line 250
    .line 251
    .line 252
    if-lt v3, v6, :cond_10

    .line 253
    .line 254
    goto :goto_7

    .line 255
    :cond_10
    if-eqz v12, :cond_11

    .line 256
    .line 257
    const-string v3, "\u795e"

    .line 258
    .line 259
    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-eqz v3, :cond_11

    .line 264
    .line 265
    goto :goto_7

    .line 266
    :cond_11
    const-string v3, "10"

    .line 267
    .line 268
    invoke-static {v3, v10}, Lcom/sgscq/vpn/w1;->p1(Ljava/lang/String;Ljava/util/Map;)Z

    .line 269
    .line 270
    .line 271
    move-result v11

    .line 272
    goto :goto_8

    .line 273
    :catch_0
    :cond_12
    :goto_7
    move v11, v7

    .line 274
    goto :goto_8

    .line 275
    :cond_13
    move v11, v5

    .line 276
    :goto_8
    if-eqz v5, :cond_14

    .line 277
    .line 278
    if-eqz v11, :cond_14

    .line 279
    .line 280
    goto :goto_9

    .line 281
    :cond_14
    const-string v3, "1"

    .line 282
    .line 283
    invoke-static {v3, v10}, Lcom/sgscq/vpn/w1;->p1(Ljava/lang/String;Ljava/util/Map;)Z

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    if-eqz v3, :cond_15

    .line 288
    .line 289
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    :cond_15
    if-eqz v11, :cond_1

    .line 295
    .line 296
    :goto_9
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    goto/16 :goto_0

    .line 300
    .line 301
    :cond_16
    iput-object v0, p0, Lcom/sgscq/vpn/w1;->v:Ljava/util/ArrayList;

    .line 302
    .line 303
    iput-object v1, p0, Lcom/sgscq/vpn/w1;->w:Ljava/util/ArrayList;

    .line 304
    .line 305
    iput-object p1, p0, Lcom/sgscq/vpn/w1;->c:Lcom/sgscq/vpn/config/i;

    .line 306
    .line 307
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 308
    .line 309
    .line 310
    new-instance p1, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    const-string v2, "[WineCache] \u5e38\u9a7b="

    .line 313
    .line 314
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    const-string v0, " \u9650\u65f6="

    .line 325
    .line 326
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    const-string v0, "SGSCQ_SRV"

    .line 341
    .line 342
    invoke-static {v0, p1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->M1()V

    .line 346
    .line 347
    .line 348
    return-void
.end method

.method public final v0(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->x0(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "enemies"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final w0(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->x0(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/sgscq/vpn/w1;->m2(Ljava/lang/Object;I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    return p2
.end method

.method public final x0(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2d

    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x3

    .line 11
    if-ge v2, v3, :cond_0

    .line 12
    .line 13
    goto/16 :goto_16

    .line 14
    .line 15
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/w1;->I1()V

    .line 16
    .line 17
    .line 18
    const-string v2, "105"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const/4 v5, 0x0

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v6, 0x5

    .line 32
    if-lt v4, v6, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    :goto_0
    move-object/from16 v6, p0

    .line 44
    .line 45
    iget-object v7, v6, Lcom/sgscq/vpn/w1;->I:Ljava/util/Map;

    .line 46
    .line 47
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    instance-of v8, v7, Ljava/util/Map;

    .line 52
    .line 53
    if-nez v8, :cond_2

    .line 54
    .line 55
    return-object v1

    .line 56
    :cond_2
    check-cast v7, Ljava/util/Map;

    .line 57
    .line 58
    const-string v8, "nodes"

    .line 59
    .line 60
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    instance-of v9, v8, Ljava/util/List;

    .line 65
    .line 66
    if-nez v9, :cond_3

    .line 67
    .line 68
    return-object v1

    .line 69
    :cond_3
    check-cast v8, Ljava/util/List;

    .line 70
    .line 71
    invoke-static {v8}, Lcom/sgscq/vpn/w1;->N(Ljava/util/List;)I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    invoke-static {v4, v9}, Lcom/sgscq/vpn/w1;->e0(Ljava/lang/String;I)Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    if-gez v9, :cond_7

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_4

    .line 90
    .line 91
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    const/16 v10, 0x8

    .line 96
    .line 97
    if-lt v2, v10, :cond_4

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    const/4 v10, 0x6

    .line 105
    if-lt v2, v10, :cond_5

    .line 106
    .line 107
    :goto_1
    invoke-virtual {v0, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    :cond_5
    move v2, v5

    .line 112
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    if-ge v2, v10, :cond_7

    .line 117
    .line 118
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    check-cast v10, Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    if-eqz v10, :cond_6

    .line 129
    .line 130
    move v9, v2

    .line 131
    goto :goto_3

    .line 132
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_7
    :goto_3
    if-gez v9, :cond_8

    .line 136
    .line 137
    return-object v1

    .line 138
    :cond_8
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    move v2, v5

    .line 143
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-eqz v4, :cond_2c

    .line 148
    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    check-cast v4, Ljava/util/Map;

    .line 154
    .line 155
    const-string v8, "type"

    .line 156
    .line 157
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    const-string v10, "dungeon"

    .line 166
    .line 167
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    if-nez v10, :cond_a

    .line 172
    .line 173
    const-string v10, "boss"

    .line 174
    .line 175
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    if-eqz v8, :cond_9

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_9
    move v3, v5

    .line 183
    goto/16 :goto_15

    .line 184
    .line 185
    :cond_a
    :goto_5
    if-ne v2, v9, :cond_2b

    .line 186
    .line 187
    new-instance v0, Ljava/util/HashMap;

    .line 188
    .line 189
    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 190
    .line 191
    .line 192
    const-string v2, "start"

    .line 193
    .line 194
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    check-cast v2, Ljava/util/List;

    .line 199
    .line 200
    if-eqz v2, :cond_2a

    .line 201
    .line 202
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    const/4 v8, 0x2

    .line 207
    if-ge v4, v8, :cond_b

    .line 208
    .line 209
    goto/16 :goto_14

    .line 210
    .line 211
    :cond_b
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    const/4 v10, 0x1

    .line 216
    invoke-static {v4, v10}, Lcom/sgscq/vpn/w1;->m2(Ljava/lang/Object;I)I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-static {v2, v10}, Lcom/sgscq/vpn/w1;->m2(Ljava/lang/Object;I)I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    const-string v11, "path"

    .line 229
    .line 230
    const-string v12, ""

    .line 231
    .line 232
    invoke-interface {v7, v11, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v11

    .line 236
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v11

    .line 240
    add-int/lit8 v12, v9, 0x1

    .line 241
    .line 242
    invoke-static {v7}, Lcom/sgscq/vpn/w1;->q1(Ljava/util/Map;)Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object v13

    .line 246
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v14

    .line 250
    invoke-interface {v13, v14}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 251
    .line 252
    .line 253
    move-result v13

    .line 254
    const/16 v14, 0x4c

    .line 255
    .line 256
    const/16 v15, 0x55

    .line 257
    .line 258
    const/16 v3, 0x44

    .line 259
    .line 260
    const/16 v8, 0x52

    .line 261
    .line 262
    if-gez v13, :cond_c

    .line 263
    .line 264
    goto/16 :goto_b

    .line 265
    .line 266
    :cond_c
    const-string v1, "hidden_rewards"

    .line 267
    .line 268
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->k2(Ljava/lang/Object;)Ljava/util/List;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    if-lt v13, v7, :cond_d

    .line 281
    .line 282
    goto/16 :goto_b

    .line 283
    .line 284
    :cond_d
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    check-cast v1, Ljava/util/List;

    .line 289
    .line 290
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v7

    .line 298
    invoke-static {v7, v5}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 299
    .line 300
    .line 301
    move-result v7

    .line 302
    if-gtz v7, :cond_e

    .line 303
    .line 304
    goto/16 :goto_b

    .line 305
    .line 306
    :cond_e
    move/from16 v17, v2

    .line 307
    .line 308
    move/from16 v18, v4

    .line 309
    .line 310
    move v13, v5

    .line 311
    :goto_6
    add-int/lit8 v5, v7, -0x1

    .line 312
    .line 313
    if-ge v13, v5, :cond_13

    .line 314
    .line 315
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    if-ge v13, v5, :cond_13

    .line 320
    .line 321
    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    .line 322
    .line 323
    .line 324
    move-result v5

    .line 325
    if-ne v5, v15, :cond_f

    .line 326
    .line 327
    add-int/lit8 v17, v17, -0x1

    .line 328
    .line 329
    goto :goto_7

    .line 330
    :cond_f
    if-ne v5, v3, :cond_10

    .line 331
    .line 332
    add-int/lit8 v17, v17, 0x1

    .line 333
    .line 334
    goto :goto_7

    .line 335
    :cond_10
    if-ne v5, v14, :cond_11

    .line 336
    .line 337
    add-int/lit8 v18, v18, -0x1

    .line 338
    .line 339
    goto :goto_7

    .line 340
    :cond_11
    if-ne v5, v8, :cond_12

    .line 341
    .line 342
    add-int/lit8 v18, v18, 0x1

    .line 343
    .line 344
    :cond_12
    :goto_7
    add-int/lit8 v13, v13, 0x1

    .line 345
    .line 346
    const/4 v5, 0x0

    .line 347
    goto :goto_6

    .line 348
    :cond_13
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    if-eqz v5, :cond_14

    .line 361
    .line 362
    const/4 v5, 0x0

    .line 363
    goto :goto_8

    .line 364
    :cond_14
    const/4 v5, 0x0

    .line 365
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    .line 370
    .line 371
    .line 372
    move-result v5

    .line 373
    :goto_8
    if-ne v5, v15, :cond_15

    .line 374
    .line 375
    add-int/lit8 v17, v17, -0x1

    .line 376
    .line 377
    :goto_9
    move/from16 v1, v17

    .line 378
    .line 379
    move/from16 v7, v18

    .line 380
    .line 381
    goto :goto_a

    .line 382
    :cond_15
    if-ne v5, v3, :cond_16

    .line 383
    .line 384
    add-int/lit8 v17, v17, 0x1

    .line 385
    .line 386
    goto :goto_9

    .line 387
    :cond_16
    if-ne v5, v14, :cond_17

    .line 388
    .line 389
    add-int/lit8 v18, v18, -0x1

    .line 390
    .line 391
    goto :goto_9

    .line 392
    :cond_17
    if-ne v5, v8, :cond_18

    .line 393
    .line 394
    add-int/lit8 v18, v18, 0x1

    .line 395
    .line 396
    goto :goto_9

    .line 397
    :goto_a
    new-instance v13, Lcom/sgscq/vpn/u1;

    .line 398
    .line 399
    invoke-direct {v13, v7, v1, v5}, Lcom/sgscq/vpn/u1;-><init>(IIC)V

    .line 400
    .line 401
    .line 402
    move-object v1, v13

    .line 403
    goto :goto_c

    .line 404
    :cond_18
    :goto_b
    const/4 v1, 0x0

    .line 405
    :goto_c
    if-eqz v1, :cond_19

    .line 406
    .line 407
    iget v2, v1, Lcom/sgscq/vpn/u1;->a:I

    .line 408
    .line 409
    iget v4, v1, Lcom/sgscq/vpn/u1;->b:I

    .line 410
    .line 411
    goto :goto_f

    .line 412
    :cond_19
    const/4 v5, 0x0

    .line 413
    :goto_d
    if-ge v5, v9, :cond_1e

    .line 414
    .line 415
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 416
    .line 417
    .line 418
    move-result v7

    .line 419
    if-ge v5, v7, :cond_1e

    .line 420
    .line 421
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    .line 422
    .line 423
    .line 424
    move-result v7

    .line 425
    if-ne v7, v15, :cond_1a

    .line 426
    .line 427
    add-int/lit8 v2, v2, -0x1

    .line 428
    .line 429
    goto :goto_e

    .line 430
    :cond_1a
    if-ne v7, v3, :cond_1b

    .line 431
    .line 432
    add-int/lit8 v2, v2, 0x1

    .line 433
    .line 434
    goto :goto_e

    .line 435
    :cond_1b
    if-ne v7, v14, :cond_1c

    .line 436
    .line 437
    add-int/lit8 v4, v4, -0x1

    .line 438
    .line 439
    goto :goto_e

    .line 440
    :cond_1c
    if-ne v7, v8, :cond_1d

    .line 441
    .line 442
    add-int/lit8 v4, v4, 0x1

    .line 443
    .line 444
    :cond_1d
    :goto_e
    add-int/lit8 v5, v5, 0x1

    .line 445
    .line 446
    goto :goto_d

    .line 447
    :cond_1e
    move/from16 v19, v4

    .line 448
    .line 449
    move v4, v2

    .line 450
    move/from16 v2, v19

    .line 451
    .line 452
    :goto_f
    const-string v5, "idx"

    .line 453
    .line 454
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 455
    .line 456
    .line 457
    move-result-object v7

    .line 458
    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 462
    .line 463
    .line 464
    move-result-object v5

    .line 465
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 466
    .line 467
    .line 468
    move-result-object v7

    .line 469
    filled-new-array {v5, v7}, [Ljava/lang/Integer;

    .line 470
    .line 471
    .line 472
    move-result-object v5

    .line 473
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 474
    .line 475
    .line 476
    move-result-object v5

    .line 477
    const-string v7, "grid"

    .line 478
    .line 479
    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    sub-int/2addr v2, v10

    .line 483
    const/4 v5, 0x4

    .line 484
    mul-int/2addr v2, v5

    .line 485
    add-int/2addr v2, v4

    .line 486
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 487
    .line 488
    .line 489
    move-result-object v2

    .line 490
    const-string v4, "position"

    .line 491
    .line 492
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    if-nez v1, :cond_26

    .line 496
    .line 497
    new-instance v1, Ljava/util/ArrayList;

    .line 498
    .line 499
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .line 501
    .line 502
    if-lez v9, :cond_21

    .line 503
    .line 504
    add-int/lit8 v2, v9, -0x1

    .line 505
    .line 506
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 507
    .line 508
    .line 509
    move-result v4

    .line 510
    if-ge v2, v4, :cond_21

    .line 511
    .line 512
    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    .line 513
    .line 514
    .line 515
    move-result v2

    .line 516
    if-ne v2, v15, :cond_1f

    .line 517
    .line 518
    move/from16 v16, v10

    .line 519
    .line 520
    goto :goto_10

    .line 521
    :cond_1f
    if-ne v2, v14, :cond_20

    .line 522
    .line 523
    const/16 v16, 0x3

    .line 524
    .line 525
    goto :goto_10

    .line 526
    :cond_20
    const/16 v16, 0x0

    .line 527
    .line 528
    :goto_10
    if-lez v16, :cond_21

    .line 529
    .line 530
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    :cond_21
    if-ltz v9, :cond_24

    .line 538
    .line 539
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 540
    .line 541
    .line 542
    move-result v2

    .line 543
    if-ge v9, v2, :cond_24

    .line 544
    .line 545
    invoke-virtual {v11, v9}, Ljava/lang/String;->charAt(I)C

    .line 546
    .line 547
    .line 548
    move-result v2

    .line 549
    if-ne v2, v3, :cond_22

    .line 550
    .line 551
    const/4 v8, 0x2

    .line 552
    goto :goto_11

    .line 553
    :cond_22
    if-ne v2, v8, :cond_23

    .line 554
    .line 555
    move v8, v5

    .line 556
    goto :goto_11

    .line 557
    :cond_23
    const/4 v8, 0x0

    .line 558
    :goto_11
    if-lez v8, :cond_24

    .line 559
    .line 560
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v2

    .line 568
    if-nez v2, :cond_24

    .line 569
    .line 570
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 571
    .line 572
    .line 573
    move-result-object v2

    .line 574
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    :cond_24
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 578
    .line 579
    .line 580
    move-result v2

    .line 581
    const/4 v3, 0x0

    .line 582
    if-eqz v2, :cond_25

    .line 583
    .line 584
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    goto :goto_13

    .line 589
    :cond_25
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 590
    .line 591
    .line 592
    move-result v2

    .line 593
    if-ne v2, v10, :cond_29

    .line 594
    .line 595
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    goto :goto_13

    .line 600
    :cond_26
    const/4 v3, 0x0

    .line 601
    iget-char v1, v1, Lcom/sgscq/vpn/u1;->c:C

    .line 602
    .line 603
    if-ne v1, v15, :cond_27

    .line 604
    .line 605
    move v3, v10

    .line 606
    goto :goto_12

    .line 607
    :cond_27
    if-ne v1, v14, :cond_28

    .line 608
    .line 609
    const/4 v3, 0x3

    .line 610
    :cond_28
    :goto_12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 611
    .line 612
    .line 613
    move-result-object v1

    .line 614
    :cond_29
    :goto_13
    const-string v2, "direction"

    .line 615
    .line 616
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    :cond_2a
    :goto_14
    return-object v0

    .line 620
    :cond_2b
    move v3, v5

    .line 621
    add-int/lit8 v2, v2, 0x1

    .line 622
    .line 623
    :goto_15
    move v5, v3

    .line 624
    const/4 v1, 0x0

    .line 625
    const/4 v3, 0x3

    .line 626
    goto/16 :goto_4

    .line 627
    .line 628
    :cond_2c
    move-object v0, v1

    .line 629
    goto :goto_17

    .line 630
    :cond_2d
    :goto_16
    move-object/from16 v6, p0

    .line 631
    .line 632
    const/4 v0, 0x0

    .line 633
    :goto_17
    return-object v0
.end method

.method public final y(Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/s1;
    .locals 22

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
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/w1;->N1()V

    .line 8
    .line 9
    .line 10
    iget-object v3, v0, Lcom/sgscq/vpn/w1;->t:Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    iget-object v4, v0, Lcom/sgscq/vpn/w1;->u:Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    const/4 v5, 0x4

    .line 15
    new-array v6, v5, [D

    .line 16
    .line 17
    fill-array-data v6, :array_0

    .line 18
    .line 19
    .line 20
    new-array v5, v5, [D

    .line 21
    .line 22
    fill-array-data v5, :array_1

    .line 23
    .line 24
    .line 25
    const/4 v7, 0x3

    .line 26
    new-array v7, v7, [D

    .line 27
    .line 28
    fill-array-data v7, :array_2

    .line 29
    .line 30
    .line 31
    if-eqz v2, :cond_14

    .line 32
    .line 33
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    if-eqz v8, :cond_0

    .line 38
    .line 39
    goto/16 :goto_e

    .line 40
    .line 41
    :cond_0
    const/4 v8, 0x0

    .line 42
    const-string v9, "1"

    .line 43
    .line 44
    const-string v10, "0"

    .line 45
    .line 46
    const-string v11, ""

    .line 47
    .line 48
    const-string v12, "general_id"

    .line 49
    .line 50
    if-eqz v3, :cond_b

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v13

    .line 56
    if-eqz v13, :cond_1

    .line 57
    .line 58
    goto/16 :goto_7

    .line 59
    .line 60
    :cond_1
    const-string v13, "MagicalEqu"

    .line 61
    .line 62
    invoke-static {v13, v2}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v13

    .line 66
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v13

    .line 70
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v14

    .line 74
    if-eqz v14, :cond_b

    .line 75
    .line 76
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v14

    .line 80
    check-cast v14, Ljava/util/Map;

    .line 81
    .line 82
    invoke-static {v14, v12, v11, v1}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v15

    .line 86
    if-nez v15, :cond_2

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    const-string v15, "is_open"

    .line 90
    .line 91
    invoke-static {v14, v15, v10, v8}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    const/4 v15, 0x1

    .line 96
    if-eq v8, v15, :cond_3

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    const-string v8, "magic_id"

    .line 100
    .line 101
    invoke-interface {v14, v8, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    instance-of v15, v8, Ljava/util/Map;

    .line 114
    .line 115
    if-nez v15, :cond_5

    .line 116
    .line 117
    :goto_1
    move-object/from16 v16, v3

    .line 118
    .line 119
    :cond_4
    move-object/from16 v21, v13

    .line 120
    .line 121
    goto/16 :goto_6

    .line 122
    .line 123
    :cond_5
    check-cast v8, Ljava/util/Map;

    .line 124
    .line 125
    const-string v15, "magic_level"

    .line 126
    .line 127
    invoke-interface {v14, v15, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v15

    .line 131
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v15

    .line 135
    const/4 v0, 0x1

    .line 136
    invoke-static {v15, v0}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 137
    .line 138
    .line 139
    move-result v15

    .line 140
    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    const-string v15, "magic_sub_level"

    .line 145
    .line 146
    invoke-interface {v14, v15, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v15

    .line 150
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v15

    .line 154
    move-object/from16 v16, v3

    .line 155
    .line 156
    const/4 v3, 0x0

    .line 157
    invoke-static {v15, v3}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 158
    .line 159
    .line 160
    move-result v15

    .line 161
    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    const-string v15, "magic_vip_level"

    .line 166
    .line 167
    invoke-interface {v14, v15, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v14

    .line 171
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v14

    .line 175
    const/4 v15, 0x0

    .line 176
    invoke-static {v14, v15}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 177
    .line 178
    .line 179
    move-result v14

    .line 180
    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    .line 181
    .line 182
    .line 183
    move-result v14

    .line 184
    const/4 v15, 0x1

    .line 185
    :goto_2
    if-gt v15, v0, :cond_4

    .line 186
    .line 187
    move/from16 v17, v3

    .line 188
    .line 189
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    move-object/from16 v18, v8

    .line 198
    .line 199
    instance-of v8, v3, Ljava/util/List;

    .line 200
    .line 201
    const/16 v19, 0x0

    .line 202
    .line 203
    if-eqz v8, :cond_8

    .line 204
    .line 205
    check-cast v3, Ljava/util/List;

    .line 206
    .line 207
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    if-eqz v8, :cond_6

    .line 212
    .line 213
    move-object/from16 v20, v19

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_6
    const/4 v8, 0x0

    .line 217
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    move-object/from16 v20, v8

    .line 222
    .line 223
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    move-object/from16 v21, v13

    .line 228
    .line 229
    const/4 v13, 0x1

    .line 230
    if-le v8, v13, :cond_7

    .line 231
    .line 232
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v19

    .line 236
    :cond_7
    move-object/from16 v8, v19

    .line 237
    .line 238
    move-object/from16 v3, v20

    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_8
    move-object/from16 v21, v13

    .line 242
    .line 243
    move-object/from16 v8, v19

    .line 244
    .line 245
    :goto_4
    if-ge v15, v0, :cond_9

    .line 246
    .line 247
    const/16 v13, 0xa

    .line 248
    .line 249
    goto :goto_5

    .line 250
    :cond_9
    move/from16 v13, v17

    .line 251
    .line 252
    :goto_5
    invoke-static {v3, v13, v6}, Lcom/sgscq/vpn/w1;->e(Ljava/lang/Object;I[D)V

    .line 253
    .line 254
    .line 255
    if-gt v15, v14, :cond_a

    .line 256
    .line 257
    const v3, 0x7fffffff

    .line 258
    .line 259
    .line 260
    invoke-static {v8, v3, v6}, Lcom/sgscq/vpn/w1;->e(Ljava/lang/Object;I[D)V

    .line 261
    .line 262
    .line 263
    :cond_a
    add-int/lit8 v15, v15, 0x1

    .line 264
    .line 265
    move/from16 v3, v17

    .line 266
    .line 267
    move-object/from16 v8, v18

    .line 268
    .line 269
    move-object/from16 v13, v21

    .line 270
    .line 271
    goto :goto_2

    .line 272
    :goto_6
    const/4 v8, 0x0

    .line 273
    move-object/from16 v0, p0

    .line 274
    .line 275
    move-object/from16 v3, v16

    .line 276
    .line 277
    move-object/from16 v13, v21

    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :cond_b
    :goto_7
    if-eqz v4, :cond_13

    .line 282
    .line 283
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    if-eqz v0, :cond_c

    .line 288
    .line 289
    goto/16 :goto_d

    .line 290
    .line 291
    :cond_c
    const-string v0, "EvolutionInfo"

    .line 292
    .line 293
    invoke-static {v0, v2}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    :cond_d
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    if-eqz v2, :cond_13

    .line 306
    .line 307
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    check-cast v2, Ljava/util/Map;

    .line 312
    .line 313
    const-string v3, "status"

    .line 314
    .line 315
    const/4 v8, 0x0

    .line 316
    invoke-static {v2, v3, v10, v8}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    const/4 v8, 0x1

    .line 321
    if-eq v3, v8, :cond_e

    .line 322
    .line 323
    goto :goto_8

    .line 324
    :cond_e
    invoke-interface {v2, v12, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    const-string v8, "evolution_id"

    .line 333
    .line 334
    invoke-interface {v2, v8, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v8

    .line 338
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v8

    .line 342
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v8

    .line 346
    instance-of v13, v8, Ljava/util/Map;

    .line 347
    .line 348
    if-nez v13, :cond_f

    .line 349
    .line 350
    goto :goto_8

    .line 351
    :cond_f
    check-cast v8, Ljava/util/Map;

    .line 352
    .line 353
    const-string v13, "evolution_level"

    .line 354
    .line 355
    invoke-interface {v2, v13, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v13

    .line 359
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v13

    .line 363
    const/4 v14, 0x1

    .line 364
    invoke-static {v13, v14}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 365
    .line 366
    .line 367
    move-result v13

    .line 368
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    .line 369
    .line 370
    .line 371
    move-result v13

    .line 372
    const-string v15, "sub_level"

    .line 373
    .line 374
    invoke-interface {v2, v15, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    invoke-static {v2, v14}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    :goto_9
    if-gt v14, v13, :cond_d

    .line 391
    .line 392
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v15

    .line 396
    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v15

    .line 400
    if-ge v14, v13, :cond_10

    .line 401
    .line 402
    const/16 v16, 0x7

    .line 403
    .line 404
    move-object/from16 p2, v0

    .line 405
    .line 406
    move/from16 v0, v16

    .line 407
    .line 408
    move/from16 v16, v2

    .line 409
    .line 410
    goto :goto_a

    .line 411
    :cond_10
    move-object/from16 p2, v0

    .line 412
    .line 413
    move v0, v2

    .line 414
    move/from16 v16, v0

    .line 415
    .line 416
    :goto_a
    instance-of v2, v15, Ljava/util/List;

    .line 417
    .line 418
    if-eqz v2, :cond_11

    .line 419
    .line 420
    check-cast v15, Ljava/util/List;

    .line 421
    .line 422
    const/4 v2, 0x0

    .line 423
    :goto_b
    move-object/from16 v17, v4

    .line 424
    .line 425
    if-gt v2, v0, :cond_12

    .line 426
    .line 427
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 428
    .line 429
    .line 430
    move-result v4

    .line 431
    if-ge v2, v4, :cond_12

    .line 432
    .line 433
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v4

    .line 437
    invoke-static {v4, v3, v1, v5, v7}, Lcom/sgscq/vpn/w1;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[D[D)V

    .line 438
    .line 439
    .line 440
    add-int/lit8 v2, v2, 0x1

    .line 441
    .line 442
    move-object/from16 v4, v17

    .line 443
    .line 444
    goto :goto_b

    .line 445
    :cond_11
    move-object/from16 v17, v4

    .line 446
    .line 447
    instance-of v2, v15, Ljava/util/Map;

    .line 448
    .line 449
    if-eqz v2, :cond_12

    .line 450
    .line 451
    check-cast v15, Ljava/util/Map;

    .line 452
    .line 453
    const/4 v2, 0x0

    .line 454
    :goto_c
    if-gt v2, v0, :cond_12

    .line 455
    .line 456
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    invoke-static {v4, v3, v1, v5, v7}, Lcom/sgscq/vpn/w1;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[D[D)V

    .line 465
    .line 466
    .line 467
    add-int/lit8 v2, v2, 0x1

    .line 468
    .line 469
    goto :goto_c

    .line 470
    :cond_12
    add-int/lit8 v14, v14, 0x1

    .line 471
    .line 472
    move-object/from16 v0, p2

    .line 473
    .line 474
    move/from16 v2, v16

    .line 475
    .line 476
    move-object/from16 v4, v17

    .line 477
    .line 478
    goto :goto_9

    .line 479
    :cond_13
    :goto_d
    new-instance v0, Lcom/sgscq/vpn/s1;

    .line 480
    .line 481
    invoke-direct {v0, v5, v6, v7}, Lcom/sgscq/vpn/s1;-><init>([D[D[D)V

    .line 482
    .line 483
    .line 484
    goto :goto_f

    .line 485
    :cond_14
    :goto_e
    new-instance v0, Lcom/sgscq/vpn/s1;

    .line 486
    .line 487
    invoke-direct {v0, v5, v6, v7}, Lcom/sgscq/vpn/s1;-><init>([D[D[D)V

    .line 488
    .line 489
    .line 490
    :goto_f
    return-object v0

    .line 491
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    :array_2
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final y0(I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->X1()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->E:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/sgscq/vpn/w1;->J2(ILjava/util/ArrayList;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const-string v1, "ladder_fight_user_exp"

    .line 15
    .line 16
    const-string v2, "0"

    .line 17
    .line 18
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 27
    .line 28
    .line 29
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    const-wide/16 v1, 0x0

    .line 32
    .line 33
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    long-to-int p1, v1

    .line 38
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    :goto_1
    return v0
.end method

.method public final y1(Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->z0(Ljava/lang/String;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-string v3, "pos"

    .line 10
    .line 11
    const-string v4, "0"

    .line 12
    .line 13
    const-string v5, "equipment_pos"

    .line 14
    .line 15
    invoke-static {v0, v3, v4, v5, v2}, Lc/a;->g(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const-string v5, "type"

    .line 20
    .line 21
    const-string v6, "equipment_type"

    .line 22
    .line 23
    invoke-static {v0, v5, v4, v6, v2}, Lc/a;->g(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v4, 0x3

    .line 28
    if-eq v3, v4, :cond_0

    .line 29
    .line 30
    if-ne v0, v4, :cond_1

    .line 31
    .line 32
    :cond_0
    return v1

    .line 33
    :cond_1
    if-eqz p1, :cond_2

    .line 34
    .line 35
    const-string v0, "23"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v1, v2

    .line 45
    :goto_0
    return v1
.end method

.method public final y2(Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->z2(Ljava/util/Map;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->r1(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const-string v0, "skill_type_lieutenant"

    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    const-string v2, "lieutenant_skill_id"

    .line 17
    .line 18
    invoke-static {p1, v0, v1, v2}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/sgscq/vpn/w1;->r1(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->e1(Ljava/lang/String;)Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_1
    return-object v1
.end method

.method public final z(Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/t1;
    .locals 63

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    invoke-static/range {p1 .. p2}, Lcom/sgscq/vpn/w1;->X(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v9

    .line 11
    const/4 v0, 0x0

    .line 12
    if-nez v9, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    const-string v10, "id"

    .line 16
    .line 17
    const-string v11, ""

    .line 18
    .line 19
    const-string v12, "general_id"

    .line 20
    .line 21
    invoke-static {v9, v10, v11, v12}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v13, "level"

    .line 26
    .line 27
    const-string v14, "1"

    .line 28
    .line 29
    const-string v0, "general_level"

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-static {v9, v13, v14, v0, v2}, Lc/a;->g(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-gtz v0, :cond_1

    .line 37
    .line 38
    move v3, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v3, v0

    .line 41
    :goto_0
    const-string v15, "breachLevel"

    .line 42
    .line 43
    const-string v4, "insight_level"

    .line 44
    .line 45
    invoke-static {v9, v15, v14, v4, v2}, Lc/a;->g(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-gtz v0, :cond_2

    .line 50
    .line 51
    move v5, v2

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move v5, v0

    .line 54
    :goto_1
    invoke-virtual {v6, v1, v8}, Lcom/sgscq/vpn/w1;->y(Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/s1;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    move-object/from16 v16, v12

    .line 59
    .line 60
    move-object/from16 v17, v13

    .line 61
    .line 62
    iget-wide v12, v2, Lcom/sgscq/vpn/s1;->i:D

    .line 63
    .line 64
    const/16 v18, 0x1

    .line 65
    .line 66
    move-object/from16 v0, p0

    .line 67
    .line 68
    move-object/from16 v19, v2

    .line 69
    .line 70
    move v2, v3

    .line 71
    move v3, v5

    .line 72
    move-object/from16 v20, v10

    .line 73
    .line 74
    move-object v10, v4

    .line 75
    move-wide v4, v12

    .line 76
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/w1;->N0(Ljava/lang/String;IID)[D

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const/4 v1, 0x4

    .line 81
    new-array v1, v1, [D

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    aget-wide v3, v0, v2

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    const-string v3, "100"

    .line 90
    .line 91
    const-string v4, "general_hp_attr"

    .line 92
    .line 93
    const-string v5, "base_hp"

    .line 94
    .line 95
    invoke-static {v4, v5, v3, v9}, Lcom/sgscq/vpn/w1;->K2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)D

    .line 96
    .line 97
    .line 98
    move-result-wide v3

    .line 99
    :goto_2
    aput-wide v3, v1, v2

    .line 100
    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    aget-wide v3, v0, v18

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    const-string v3, "50"

    .line 107
    .line 108
    const-string v4, "general_attack_attr"

    .line 109
    .line 110
    const-string v5, "base_attack"

    .line 111
    .line 112
    invoke-static {v4, v5, v3, v9}, Lcom/sgscq/vpn/w1;->K2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)D

    .line 113
    .line 114
    .line 115
    move-result-wide v3

    .line 116
    :goto_3
    aput-wide v3, v1, v18

    .line 117
    .line 118
    const/4 v3, 0x2

    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    aget-wide v4, v0, v3

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_5
    const-string v4, "30"

    .line 125
    .line 126
    const-string v5, "general_defense_attr"

    .line 127
    .line 128
    const-string v12, "base_defense"

    .line 129
    .line 130
    invoke-static {v5, v12, v4, v9}, Lcom/sgscq/vpn/w1;->K2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)D

    .line 131
    .line 132
    .line 133
    move-result-wide v4

    .line 134
    :goto_4
    aput-wide v4, v1, v3

    .line 135
    .line 136
    const/4 v4, 0x3

    .line 137
    if-eqz v0, :cond_6

    .line 138
    .line 139
    aget-wide v12, v0, v4

    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_6
    const-string v0, "20"

    .line 143
    .line 144
    const-string v5, "general_wisdom_attr"

    .line 145
    .line 146
    const-string v12, "base_wisdom"

    .line 147
    .line 148
    invoke-static {v5, v12, v0, v9}, Lcom/sgscq/vpn/w1;->K2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)D

    .line 149
    .line 150
    .line 151
    move-result-wide v12

    .line 152
    :goto_5
    aput-wide v12, v1, v4

    .line 153
    .line 154
    aget-wide v12, v1, v2

    .line 155
    .line 156
    const-string v0, "hp"

    .line 157
    .line 158
    invoke-static {v0, v9}, Lcom/sgscq/vpn/w1;->O(Ljava/lang/String;Ljava/util/Map;)D

    .line 159
    .line 160
    .line 161
    move-result-wide v21

    .line 162
    add-double v21, v21, v12

    .line 163
    .line 164
    aput-wide v21, v1, v2

    .line 165
    .line 166
    const/4 v0, 0x1

    .line 167
    aget-wide v12, v1, v0

    .line 168
    .line 169
    const-string v2, "attack"

    .line 170
    .line 171
    invoke-static {v2, v9}, Lcom/sgscq/vpn/w1;->O(Ljava/lang/String;Ljava/util/Map;)D

    .line 172
    .line 173
    .line 174
    move-result-wide v21

    .line 175
    add-double v21, v21, v12

    .line 176
    .line 177
    aput-wide v21, v1, v0

    .line 178
    .line 179
    aget-wide v12, v1, v3

    .line 180
    .line 181
    const-string v0, "defense"

    .line 182
    .line 183
    invoke-static {v0, v9}, Lcom/sgscq/vpn/w1;->O(Ljava/lang/String;Ljava/util/Map;)D

    .line 184
    .line 185
    .line 186
    move-result-wide v21

    .line 187
    add-double v21, v21, v12

    .line 188
    .line 189
    aput-wide v21, v1, v3

    .line 190
    .line 191
    aget-wide v2, v1, v4

    .line 192
    .line 193
    const-string v0, "wisdom"

    .line 194
    .line 195
    invoke-static {v0, v9}, Lcom/sgscq/vpn/w1;->O(Ljava/lang/String;Ljava/util/Map;)D

    .line 196
    .line 197
    .line 198
    move-result-wide v12

    .line 199
    add-double/2addr v12, v2

    .line 200
    aput-wide v12, v1, v4

    .line 201
    .line 202
    const/4 v0, 0x4

    .line 203
    new-array v0, v0, [D

    .line 204
    .line 205
    fill-array-data v0, :array_0

    .line 206
    .line 207
    .line 208
    const-string v2, "General"

    .line 209
    .line 210
    invoke-static {v2, v8}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    const-string v5, "0"

    .line 223
    .line 224
    const-string v12, "major_pk_id"

    .line 225
    .line 226
    const-wide/16 v23, 0x0

    .line 227
    .line 228
    if-eqz v4, :cond_10

    .line 229
    .line 230
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    check-cast v4, Ljava/util/Map;

    .line 235
    .line 236
    invoke-static {v4, v12, v11, v7}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result v12

    .line 240
    if-nez v12, :cond_7

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_7
    invoke-virtual {v6, v4}, Lcom/sgscq/vpn/w1;->y2(Ljava/util/Map;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v12

    .line 247
    invoke-static {v12}, Lcom/sgscq/vpn/w1;->r1(Ljava/lang/String;)Z

    .line 248
    .line 249
    .line 250
    move-result v13

    .line 251
    if-eqz v13, :cond_8

    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_8
    invoke-virtual {v6, v12}, Lcom/sgscq/vpn/w1;->e1(Ljava/lang/String;)Ljava/util/Map;

    .line 255
    .line 256
    .line 257
    move-result-object v12

    .line 258
    if-nez v12, :cond_9

    .line 259
    .line 260
    goto :goto_6

    .line 261
    :cond_9
    const-string v13, "first_attr_type"

    .line 262
    .line 263
    move-object/from16 v18, v3

    .line 264
    .line 265
    const/4 v3, 0x0

    .line 266
    invoke-static {v12, v13, v5, v3}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    const-string v13, "second_attr_type"

    .line 271
    .line 272
    move-object/from16 v25, v1

    .line 273
    .line 274
    const/4 v1, 0x0

    .line 275
    invoke-static {v12, v13, v5, v1}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    const-string v13, "skill_grow"

    .line 280
    .line 281
    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v12

    .line 285
    instance-of v13, v12, Ljava/util/Map;

    .line 286
    .line 287
    if-nez v13, :cond_a

    .line 288
    .line 289
    move-object/from16 v26, v10

    .line 290
    .line 291
    :goto_7
    move-object/from16 v27, v15

    .line 292
    .line 293
    move-object/from16 v10, v16

    .line 294
    .line 295
    move-object/from16 v16, v14

    .line 296
    .line 297
    goto/16 :goto_9

    .line 298
    .line 299
    :cond_a
    const/4 v13, 0x1

    .line 300
    invoke-static {v4, v15, v14, v10, v13}, Lc/a;->g(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 301
    .line 302
    .line 303
    move-result v13

    .line 304
    if-gtz v13, :cond_b

    .line 305
    .line 306
    const/4 v13, 0x1

    .line 307
    :cond_b
    check-cast v12, Ljava/util/Map;

    .line 308
    .line 309
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v13

    .line 313
    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v13

    .line 317
    move-object/from16 v26, v10

    .line 318
    .line 319
    instance-of v10, v13, Ljava/util/Map;

    .line 320
    .line 321
    if-nez v10, :cond_c

    .line 322
    .line 323
    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v13

    .line 327
    :cond_c
    instance-of v10, v13, Ljava/util/Map;

    .line 328
    .line 329
    if-nez v10, :cond_d

    .line 330
    .line 331
    goto :goto_7

    .line 332
    :cond_d
    check-cast v13, Ljava/util/Map;

    .line 333
    .line 334
    move-object/from16 v10, v16

    .line 335
    .line 336
    invoke-interface {v4, v10, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    invoke-virtual {v6, v4, v8}, Lcom/sgscq/vpn/w1;->y(Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/s1;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    invoke-static {v3}, Lcom/sgscq/vpn/w1;->s(I)I

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    move-object/from16 v16, v14

    .line 353
    .line 354
    move-object/from16 v27, v15

    .line 355
    .line 356
    iget-wide v14, v4, Lcom/sgscq/vpn/s1;->k:D

    .line 357
    .line 358
    if-ltz v3, :cond_e

    .line 359
    .line 360
    aget-wide v28, v0, v3

    .line 361
    .line 362
    const-string v4, "first_attr_value"

    .line 363
    .line 364
    invoke-interface {v13, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    :try_start_0
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 373
    .line 374
    .line 375
    move-result-wide v30
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    goto :goto_8

    .line 377
    :catch_0
    move-wide/from16 v30, v23

    .line 378
    .line 379
    :goto_8
    add-double v30, v30, v14

    .line 380
    .line 381
    const-wide/high16 v21, 0x4059000000000000L    # 100.0

    .line 382
    .line 383
    div-double v30, v30, v21

    .line 384
    .line 385
    add-double v30, v30, v28

    .line 386
    .line 387
    aput-wide v30, v0, v3

    .line 388
    .line 389
    :cond_e
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->s(I)I

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    if-ltz v1, :cond_f

    .line 394
    .line 395
    aget-wide v3, v0, v1

    .line 396
    .line 397
    const-string v12, "second_attr_value"

    .line 398
    .line 399
    invoke-interface {v13, v12, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v5

    .line 407
    :try_start_1
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 408
    .line 409
    .line 410
    move-result-wide v23
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 411
    :catch_1
    add-double v23, v23, v14

    .line 412
    .line 413
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    .line 414
    .line 415
    div-double v23, v23, v12

    .line 416
    .line 417
    add-double v23, v23, v3

    .line 418
    .line 419
    aput-wide v23, v0, v1

    .line 420
    .line 421
    :cond_f
    :goto_9
    move-object/from16 v14, v16

    .line 422
    .line 423
    move-object/from16 v3, v18

    .line 424
    .line 425
    move-object/from16 v1, v25

    .line 426
    .line 427
    move-object/from16 v15, v27

    .line 428
    .line 429
    move-object/from16 v16, v10

    .line 430
    .line 431
    move-object/from16 v10, v26

    .line 432
    .line 433
    goto/16 :goto_6

    .line 434
    .line 435
    :cond_10
    move-object/from16 v25, v1

    .line 436
    .line 437
    move-object/from16 v10, v16

    .line 438
    .line 439
    move-object/from16 v1, v20

    .line 440
    .line 441
    move-object/from16 v16, v14

    .line 442
    .line 443
    invoke-static {v9, v1, v11, v10}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v3

    .line 447
    invoke-virtual {v6, v3}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 448
    .line 449
    .line 450
    move-result-object v4

    .line 451
    const-string v9, "skill_id"

    .line 452
    .line 453
    const-string v13, "skill_code"

    .line 454
    .line 455
    const-string v14, "Skill"

    .line 456
    .line 457
    const-string v15, "equipment_id"

    .line 458
    .line 459
    move-object/from16 v18, v0

    .line 460
    .line 461
    const-string v0, "equip_id"

    .line 462
    .line 463
    move-object/from16 v20, v9

    .line 464
    .line 465
    const-string v9, "Equipment"

    .line 466
    .line 467
    move-object/from16 v26, v13

    .line 468
    .line 469
    const-string v13, "general_pk_id"

    .line 470
    .line 471
    if-nez v4, :cond_11

    .line 472
    .line 473
    move-object/from16 v33, v0

    .line 474
    .line 475
    move-object/from16 v35, v2

    .line 476
    .line 477
    move-object v0, v7

    .line 478
    move-object v2, v9

    .line 479
    move-object/from16 v32, v10

    .line 480
    .line 481
    move-object/from16 v34, v12

    .line 482
    .line 483
    move-object/from16 v30, v13

    .line 484
    .line 485
    move-object/from16 v28, v14

    .line 486
    .line 487
    move-object/from16 v37, v15

    .line 488
    .line 489
    move-object/from16 v13, v16

    .line 490
    .line 491
    move-object/from16 v31, v20

    .line 492
    .line 493
    move-object/from16 v27, v26

    .line 494
    .line 495
    move-object v9, v1

    .line 496
    move-object v7, v5

    .line 497
    move-object/from16 v1, v19

    .line 498
    .line 499
    goto/16 :goto_37

    .line 500
    .line 501
    :cond_11
    move-object/from16 v27, v14

    .line 502
    .line 503
    const-string v14, "general_fate_id"

    .line 504
    .line 505
    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    new-instance v14, Ljava/util/ArrayList;

    .line 510
    .line 511
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .line 513
    .line 514
    move-object/from16 v28, v0

    .line 515
    .line 516
    instance-of v0, v4, Ljava/util/Collection;

    .line 517
    .line 518
    if-eqz v0, :cond_12

    .line 519
    .line 520
    check-cast v4, Ljava/util/Collection;

    .line 521
    .line 522
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 527
    .line 528
    .line 529
    move-result v4

    .line 530
    if-eqz v4, :cond_13

    .line 531
    .line 532
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v4

    .line 536
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v4

    .line 540
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    goto :goto_a

    .line 544
    :cond_12
    if-eqz v4, :cond_13

    .line 545
    .line 546
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    if-nez v0, :cond_13

    .line 555
    .line 556
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/w1;->N1()V

    .line 564
    .line 565
    .line 566
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 567
    .line 568
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 569
    .line 570
    .line 571
    const-string v4, "MagicalEqu"

    .line 572
    .line 573
    invoke-static {v4, v8}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 574
    .line 575
    .line 576
    move-result-object v29

    .line 577
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 578
    .line 579
    .line 580
    move-result-object v29

    .line 581
    :goto_b
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    .line 582
    .line 583
    .line 584
    move-result v30

    .line 585
    const/16 v31, 0xa

    .line 586
    .line 587
    move-object/from16 v32, v15

    .line 588
    .line 589
    const-string v15, "magic_vip_level"

    .line 590
    .line 591
    const-string v7, "magic_sub_level"

    .line 592
    .line 593
    move-object/from16 v33, v9

    .line 594
    .line 595
    const-string v9, "magic_level"

    .line 596
    .line 597
    move-object/from16 v34, v12

    .line 598
    .line 599
    const-string v12, "magic_id"

    .line 600
    .line 601
    move-object/from16 v35, v2

    .line 602
    .line 603
    const-string v2, "is_open"

    .line 604
    .line 605
    if-eqz v30, :cond_1c

    .line 606
    .line 607
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v30

    .line 611
    move-object/from16 v36, v1

    .line 612
    .line 613
    move-object/from16 v1, v30

    .line 614
    .line 615
    check-cast v1, Ljava/util/Map;

    .line 616
    .line 617
    invoke-static {v1, v10, v11, v3}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 618
    .line 619
    .line 620
    move-result v30

    .line 621
    if-nez v30, :cond_14

    .line 622
    .line 623
    move-object/from16 v30, v13

    .line 624
    .line 625
    :goto_c
    move-object/from16 v13, v16

    .line 626
    .line 627
    goto/16 :goto_12

    .line 628
    .line 629
    :cond_14
    move-object/from16 v30, v13

    .line 630
    .line 631
    const/4 v13, 0x0

    .line 632
    invoke-static {v1, v2, v5, v13}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 633
    .line 634
    .line 635
    move-result v2

    .line 636
    const/4 v13, 0x1

    .line 637
    if-eq v2, v13, :cond_15

    .line 638
    .line 639
    :goto_d
    goto :goto_c

    .line 640
    :cond_15
    iget-object v2, v6, Lcom/sgscq/vpn/w1;->t:Ljava/util/LinkedHashMap;

    .line 641
    .line 642
    invoke-interface {v1, v12, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v12

    .line 646
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v12

    .line 650
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    move-result-object v2

    .line 654
    instance-of v12, v2, Ljava/util/Map;

    .line 655
    .line 656
    if-nez v12, :cond_16

    .line 657
    .line 658
    goto :goto_d

    .line 659
    :cond_16
    check-cast v2, Ljava/util/Map;

    .line 660
    .line 661
    move-object/from16 v13, v16

    .line 662
    .line 663
    invoke-interface {v1, v9, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v9

    .line 667
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v9

    .line 671
    const/4 v12, 0x1

    .line 672
    invoke-static {v9, v12}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 673
    .line 674
    .line 675
    move-result v9

    .line 676
    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    .line 677
    .line 678
    .line 679
    move-result v9

    .line 680
    invoke-interface {v1, v7, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v7

    .line 684
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v7

    .line 688
    const/4 v12, 0x0

    .line 689
    invoke-static {v7, v12}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 690
    .line 691
    .line 692
    move-result v7

    .line 693
    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    .line 694
    .line 695
    .line 696
    move-result v7

    .line 697
    invoke-interface {v1, v15, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v1

    .line 705
    invoke-static {v1, v12}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 706
    .line 707
    .line 708
    move-result v1

    .line 709
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    .line 710
    .line 711
    .line 712
    move-result v1

    .line 713
    const/4 v12, 0x1

    .line 714
    :goto_e
    if-gt v12, v9, :cond_1b

    .line 715
    .line 716
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v15

    .line 720
    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v15

    .line 724
    move-object/from16 v16, v2

    .line 725
    .line 726
    instance-of v2, v15, Ljava/util/List;

    .line 727
    .line 728
    if-nez v2, :cond_17

    .line 729
    .line 730
    move/from16 v37, v7

    .line 731
    .line 732
    goto :goto_11

    .line 733
    :cond_17
    check-cast v15, Ljava/util/List;

    .line 734
    .line 735
    if-ge v12, v9, :cond_18

    .line 736
    .line 737
    move/from16 v2, v31

    .line 738
    .line 739
    goto :goto_f

    .line 740
    :cond_18
    move v2, v7

    .line 741
    :goto_f
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 742
    .line 743
    .line 744
    move-result v37

    .line 745
    if-nez v37, :cond_19

    .line 746
    .line 747
    move/from16 v37, v7

    .line 748
    .line 749
    const/4 v7, 0x0

    .line 750
    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-result-object v7

    .line 754
    invoke-static {v7, v2, v0}, Lcom/sgscq/vpn/w1;->I(Ljava/lang/Object;ILjava/util/LinkedHashMap;)V

    .line 755
    .line 756
    .line 757
    goto :goto_10

    .line 758
    :cond_19
    move/from16 v37, v7

    .line 759
    .line 760
    :goto_10
    if-gt v12, v1, :cond_1a

    .line 761
    .line 762
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 763
    .line 764
    .line 765
    move-result v2

    .line 766
    const/4 v7, 0x1

    .line 767
    if-le v2, v7, :cond_1a

    .line 768
    .line 769
    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v2

    .line 773
    const v7, 0x7fffffff

    .line 774
    .line 775
    .line 776
    invoke-static {v2, v7, v0}, Lcom/sgscq/vpn/w1;->I(Ljava/lang/Object;ILjava/util/LinkedHashMap;)V

    .line 777
    .line 778
    .line 779
    :cond_1a
    :goto_11
    add-int/lit8 v12, v12, 0x1

    .line 780
    .line 781
    move-object/from16 v2, v16

    .line 782
    .line 783
    move/from16 v7, v37

    .line 784
    .line 785
    goto :goto_e

    .line 786
    :cond_1b
    :goto_12
    move-object/from16 v7, p1

    .line 787
    .line 788
    move-object/from16 v16, v13

    .line 789
    .line 790
    move-object/from16 v13, v30

    .line 791
    .line 792
    move-object/from16 v15, v32

    .line 793
    .line 794
    move-object/from16 v9, v33

    .line 795
    .line 796
    move-object/from16 v12, v34

    .line 797
    .line 798
    move-object/from16 v2, v35

    .line 799
    .line 800
    move-object/from16 v1, v36

    .line 801
    .line 802
    goto/16 :goto_b

    .line 803
    .line 804
    :cond_1c
    move-object/from16 v36, v1

    .line 805
    .line 806
    move-object/from16 v30, v13

    .line 807
    .line 808
    move-object/from16 v13, v16

    .line 809
    .line 810
    const/4 v1, 0x0

    .line 811
    move-object/from16 v16, v15

    .line 812
    .line 813
    :goto_13
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 814
    .line 815
    .line 816
    move-result v15

    .line 817
    if-ge v1, v15, :cond_1e

    .line 818
    .line 819
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    move-result-object v15

    .line 823
    invoke-virtual {v0, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    move-result-object v15

    .line 827
    check-cast v15, Ljava/lang/String;

    .line 828
    .line 829
    if-eqz v15, :cond_1d

    .line 830
    .line 831
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 832
    .line 833
    .line 834
    move-result v29

    .line 835
    if-nez v29, :cond_1d

    .line 836
    .line 837
    invoke-virtual {v14, v1, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 838
    .line 839
    .line 840
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    .line 841
    .line 842
    goto :goto_13

    .line 843
    :cond_1e
    const-string v0, "EvolutionInfo"

    .line 844
    .line 845
    invoke-static {v0, v8}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 846
    .line 847
    .line 848
    move-result-object v0

    .line 849
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 854
    .line 855
    .line 856
    move-result v1

    .line 857
    if-eqz v1, :cond_28

    .line 858
    .line 859
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    move-result-object v1

    .line 863
    check-cast v1, Ljava/util/Map;

    .line 864
    .line 865
    invoke-static {v1, v10, v11, v3}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 866
    .line 867
    .line 868
    move-result v15

    .line 869
    if-nez v15, :cond_1f

    .line 870
    .line 871
    :catch_2
    :goto_15
    move-object/from16 v37, v0

    .line 872
    .line 873
    goto/16 :goto_1b

    .line 874
    .line 875
    :cond_1f
    const-string v15, "fate_ids"

    .line 876
    .line 877
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    move-result-object v1

    .line 881
    if-nez v1, :cond_20

    .line 882
    .line 883
    goto :goto_15

    .line 884
    :cond_20
    :try_start_2
    iget-object v15, v6, Lcom/sgscq/vpn/w1;->b:La/o;

    .line 885
    .line 886
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v1

    .line 890
    new-instance v29, Lcom/sgscq/vpn/GameDataManager$22;

    .line 891
    .line 892
    invoke-direct/range {v29 .. v29}, Lcom/sgscq/vpn/GameDataManager$22;-><init>()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 893
    .line 894
    .line 895
    move-object/from16 v37, v0

    .line 896
    .line 897
    :try_start_3
    invoke-virtual/range {v29 .. v29}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    invoke-virtual {v15, v1, v0}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    check-cast v0, Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 906
    .line 907
    if-nez v0, :cond_21

    .line 908
    .line 909
    goto/16 :goto_1b

    .line 910
    .line 911
    :cond_21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 916
    .line 917
    .line 918
    move-result v1

    .line 919
    if-eqz v1, :cond_27

    .line 920
    .line 921
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 922
    .line 923
    .line 924
    move-result-object v1

    .line 925
    check-cast v1, Ljava/util/Map;

    .line 926
    .line 927
    const-string v15, "left"

    .line 928
    .line 929
    invoke-interface {v1, v15, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    .line 931
    .line 932
    move-result-object v15

    .line 933
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object v15

    .line 937
    move-object/from16 v29, v0

    .line 938
    .line 939
    const-string v0, "right"

    .line 940
    .line 941
    invoke-interface {v1, v0, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    .line 943
    .line 944
    move-result-object v0

    .line 945
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 946
    .line 947
    .line 948
    move-result-object v0

    .line 949
    move-object/from16 v38, v0

    .line 950
    .line 951
    const-string v0, "now"

    .line 952
    .line 953
    move-object/from16 v39, v15

    .line 954
    .line 955
    const/4 v15, 0x0

    .line 956
    invoke-static {v1, v0, v5, v15}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 957
    .line 958
    .line 959
    move-result v0

    .line 960
    const/4 v1, 0x1

    .line 961
    if-ne v0, v1, :cond_22

    .line 962
    .line 963
    const/4 v0, 0x1

    .line 964
    goto :goto_17

    .line 965
    :cond_22
    const/4 v0, 0x0

    .line 966
    :goto_17
    if-eqz v0, :cond_23

    .line 967
    .line 968
    move-object/from16 v1, v39

    .line 969
    .line 970
    goto :goto_18

    .line 971
    :cond_23
    move-object/from16 v1, v38

    .line 972
    .line 973
    :goto_18
    if-eqz v0, :cond_24

    .line 974
    .line 975
    move-object/from16 v15, v38

    .line 976
    .line 977
    goto :goto_19

    .line 978
    :cond_24
    move-object/from16 v15, v39

    .line 979
    .line 980
    :goto_19
    const/4 v0, 0x0

    .line 981
    move-object/from16 v38, v7

    .line 982
    .line 983
    :goto_1a
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 984
    .line 985
    .line 986
    move-result v7

    .line 987
    if-ge v0, v7, :cond_26

    .line 988
    .line 989
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 990
    .line 991
    .line 992
    move-result-object v7

    .line 993
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 994
    .line 995
    .line 996
    move-result v7

    .line 997
    if-eqz v7, :cond_25

    .line 998
    .line 999
    invoke-virtual {v14, v0, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1000
    .line 1001
    .line 1002
    :cond_25
    add-int/lit8 v0, v0, 0x1

    .line 1003
    .line 1004
    goto :goto_1a

    .line 1005
    :cond_26
    move-object/from16 v0, v29

    .line 1006
    .line 1007
    move-object/from16 v7, v38

    .line 1008
    .line 1009
    goto :goto_16

    .line 1010
    :catch_3
    :cond_27
    :goto_1b
    move-object/from16 v38, v7

    .line 1011
    .line 1012
    move-object/from16 v0, v37

    .line 1013
    .line 1014
    move-object/from16 v7, v38

    .line 1015
    .line 1016
    goto/16 :goto_14

    .line 1017
    .line 1018
    :cond_28
    move-object/from16 v38, v7

    .line 1019
    .line 1020
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1021
    .line 1022
    .line 1023
    move-result v0

    .line 1024
    if-eqz v0, :cond_29

    .line 1025
    .line 1026
    move-object/from16 v0, p1

    .line 1027
    .line 1028
    move-object v7, v5

    .line 1029
    move-object/from16 v1, v19

    .line 1030
    .line 1031
    move-object/from16 v31, v20

    .line 1032
    .line 1033
    move-object/from16 v37, v32

    .line 1034
    .line 1035
    move-object/from16 v2, v33

    .line 1036
    .line 1037
    move-object/from16 v9, v36

    .line 1038
    .line 1039
    move-object/from16 v32, v10

    .line 1040
    .line 1041
    move-object/from16 v33, v28

    .line 1042
    .line 1043
    move-object/from16 v28, v27

    .line 1044
    .line 1045
    move-object/from16 v27, v26

    .line 1046
    .line 1047
    goto/16 :goto_37

    .line 1048
    .line 1049
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/w1;->N1()V

    .line 1050
    .line 1051
    .line 1052
    iget-object v0, v6, Lcom/sgscq/vpn/w1;->t:Ljava/util/LinkedHashMap;

    .line 1053
    .line 1054
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 1055
    .line 1056
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1060
    .line 1061
    .line 1062
    move-result v7

    .line 1063
    if-eqz v7, :cond_2a

    .line 1064
    .line 1065
    goto/16 :goto_23

    .line 1066
    .line 1067
    :cond_2a
    if-eqz v0, :cond_35

    .line 1068
    .line 1069
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 1070
    .line 1071
    .line 1072
    move-result v7

    .line 1073
    if-eqz v7, :cond_2b

    .line 1074
    .line 1075
    goto/16 :goto_23

    .line 1076
    .line 1077
    :cond_2b
    invoke-static {v4, v8}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v4

    .line 1081
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v4

    .line 1085
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1086
    .line 1087
    .line 1088
    move-result v7

    .line 1089
    if-eqz v7, :cond_35

    .line 1090
    .line 1091
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v7

    .line 1095
    check-cast v7, Ljava/util/Map;

    .line 1096
    .line 1097
    invoke-static {v7, v10, v11, v3}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1098
    .line 1099
    .line 1100
    move-result v15

    .line 1101
    if-nez v15, :cond_2c

    .line 1102
    .line 1103
    move-object/from16 v29, v2

    .line 1104
    .line 1105
    goto :goto_1d

    .line 1106
    :cond_2c
    const/4 v15, 0x0

    .line 1107
    invoke-static {v7, v2, v5, v15}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 1108
    .line 1109
    .line 1110
    move-result v15

    .line 1111
    move-object/from16 v29, v2

    .line 1112
    .line 1113
    const/4 v2, 0x1

    .line 1114
    if-eq v15, v2, :cond_2d

    .line 1115
    .line 1116
    goto :goto_1d

    .line 1117
    :cond_2d
    invoke-interface {v7, v12, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v2

    .line 1121
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v2

    .line 1125
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v2

    .line 1129
    instance-of v15, v2, Ljava/util/Map;

    .line 1130
    .line 1131
    if-nez v15, :cond_2e

    .line 1132
    .line 1133
    :goto_1d
    move-object/from16 v2, v29

    .line 1134
    .line 1135
    goto :goto_1c

    .line 1136
    :cond_2e
    check-cast v2, Ljava/util/Map;

    .line 1137
    .line 1138
    invoke-interface {v7, v9, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v15

    .line 1142
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v15

    .line 1146
    move-object/from16 v37, v0

    .line 1147
    .line 1148
    const/4 v0, 0x1

    .line 1149
    invoke-static {v15, v0}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 1150
    .line 1151
    .line 1152
    move-result v15

    .line 1153
    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    .line 1154
    .line 1155
    .line 1156
    move-result v0

    .line 1157
    move-object/from16 v15, v38

    .line 1158
    .line 1159
    invoke-interface {v7, v15, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v38

    .line 1163
    move-object/from16 v39, v3

    .line 1164
    .line 1165
    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v3

    .line 1169
    move-object/from16 v38, v4

    .line 1170
    .line 1171
    const/4 v4, 0x0

    .line 1172
    invoke-static {v3, v4}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 1173
    .line 1174
    .line 1175
    move-result v3

    .line 1176
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 1177
    .line 1178
    .line 1179
    move-result v3

    .line 1180
    move-object/from16 v4, v16

    .line 1181
    .line 1182
    invoke-interface {v7, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v7

    .line 1186
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v7

    .line 1190
    move/from16 v16, v3

    .line 1191
    .line 1192
    const/4 v3, 0x0

    .line 1193
    invoke-static {v7, v3}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 1194
    .line 1195
    .line 1196
    move-result v7

    .line 1197
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    .line 1198
    .line 1199
    .line 1200
    move-result v3

    .line 1201
    const/4 v7, 0x1

    .line 1202
    :goto_1e
    if-gt v7, v0, :cond_34

    .line 1203
    .line 1204
    move-object/from16 v40, v4

    .line 1205
    .line 1206
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v4

    .line 1210
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v4

    .line 1214
    move-object/from16 v41, v2

    .line 1215
    .line 1216
    instance-of v2, v4, Ljava/util/List;

    .line 1217
    .line 1218
    if-eqz v2, :cond_31

    .line 1219
    .line 1220
    check-cast v4, Ljava/util/List;

    .line 1221
    .line 1222
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 1223
    .line 1224
    .line 1225
    move-result v2

    .line 1226
    if-eqz v2, :cond_2f

    .line 1227
    .line 1228
    const/4 v2, 0x0

    .line 1229
    goto :goto_1f

    .line 1230
    :cond_2f
    const/4 v2, 0x0

    .line 1231
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v2

    .line 1235
    :goto_1f
    move-object/from16 v42, v2

    .line 1236
    .line 1237
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1238
    .line 1239
    .line 1240
    move-result v2

    .line 1241
    move-object/from16 v43, v9

    .line 1242
    .line 1243
    const/4 v9, 0x1

    .line 1244
    if-le v2, v9, :cond_30

    .line 1245
    .line 1246
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v2

    .line 1250
    goto :goto_20

    .line 1251
    :cond_30
    const/4 v2, 0x0

    .line 1252
    :goto_20
    move-object/from16 v4, v42

    .line 1253
    .line 1254
    goto :goto_21

    .line 1255
    :cond_31
    move-object/from16 v43, v9

    .line 1256
    .line 1257
    const/4 v2, 0x0

    .line 1258
    :goto_21
    if-ge v7, v0, :cond_32

    .line 1259
    .line 1260
    move/from16 v9, v31

    .line 1261
    .line 1262
    goto :goto_22

    .line 1263
    :cond_32
    move/from16 v9, v16

    .line 1264
    .line 1265
    :goto_22
    invoke-static {v4, v9, v1}, Lcom/sgscq/vpn/w1;->G(Ljava/lang/Object;ILjava/util/LinkedHashMap;)V

    .line 1266
    .line 1267
    .line 1268
    const v4, 0x7fffffff

    .line 1269
    .line 1270
    .line 1271
    if-gt v7, v3, :cond_33

    .line 1272
    .line 1273
    invoke-static {v2, v4, v1}, Lcom/sgscq/vpn/w1;->G(Ljava/lang/Object;ILjava/util/LinkedHashMap;)V

    .line 1274
    .line 1275
    .line 1276
    :cond_33
    add-int/lit8 v7, v7, 0x1

    .line 1277
    .line 1278
    move-object/from16 v4, v40

    .line 1279
    .line 1280
    move-object/from16 v2, v41

    .line 1281
    .line 1282
    move-object/from16 v9, v43

    .line 1283
    .line 1284
    goto :goto_1e

    .line 1285
    :cond_34
    move-object/from16 v16, v4

    .line 1286
    .line 1287
    move-object/from16 v2, v29

    .line 1288
    .line 1289
    move-object/from16 v0, v37

    .line 1290
    .line 1291
    move-object/from16 v4, v38

    .line 1292
    .line 1293
    move-object/from16 v3, v39

    .line 1294
    .line 1295
    move-object/from16 v38, v15

    .line 1296
    .line 1297
    goto/16 :goto_1c

    .line 1298
    .line 1299
    :cond_35
    :goto_23
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 1300
    .line 1301
    .line 1302
    move-result v0

    .line 1303
    if-nez v0, :cond_38

    .line 1304
    .line 1305
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 1306
    .line 1307
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1308
    .line 1309
    .line 1310
    new-instance v2, Ljava/util/ArrayList;

    .line 1311
    .line 1312
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1313
    .line 1314
    .line 1315
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v3

    .line 1319
    :cond_36
    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1320
    .line 1321
    .line 1322
    move-result v4

    .line 1323
    if-eqz v4, :cond_37

    .line 1324
    .line 1325
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v4

    .line 1329
    check-cast v4, Ljava/lang/String;

    .line 1330
    .line 1331
    invoke-virtual {v1, v4, v4}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v4

    .line 1335
    check-cast v4, Ljava/lang/String;

    .line 1336
    .line 1337
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1338
    .line 1339
    .line 1340
    move-result v7

    .line 1341
    if-eqz v7, :cond_36

    .line 1342
    .line 1343
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1344
    .line 1345
    .line 1346
    goto :goto_24

    .line 1347
    :cond_37
    move-object v14, v2

    .line 1348
    :cond_38
    new-instance v0, Ljava/util/HashSet;

    .line 1349
    .line 1350
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1351
    .line 1352
    .line 1353
    new-instance v1, Ljava/util/HashSet;

    .line 1354
    .line 1355
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1356
    .line 1357
    .line 1358
    const-string v2, "TeamGeneral"

    .line 1359
    .line 1360
    invoke-static {v2, v8}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v2

    .line 1364
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v2

    .line 1368
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1369
    .line 1370
    .line 1371
    move-result v3

    .line 1372
    const-string v4, "pk_id"

    .line 1373
    .line 1374
    if-eqz v3, :cond_3b

    .line 1375
    .line 1376
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v3

    .line 1380
    check-cast v3, Ljava/util/Map;

    .line 1381
    .line 1382
    move-object/from16 v7, v30

    .line 1383
    .line 1384
    invoke-static {v3, v4, v11, v7}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v4

    .line 1388
    invoke-static {v4}, Lcom/sgscq/vpn/w1;->r1(Ljava/lang/String;)Z

    .line 1389
    .line 1390
    .line 1391
    move-result v9

    .line 1392
    if-nez v9, :cond_39

    .line 1393
    .line 1394
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1395
    .line 1396
    .line 1397
    :cond_39
    move-object/from16 v9, v36

    .line 1398
    .line 1399
    invoke-static {v3, v9, v11, v10}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v3

    .line 1403
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1404
    .line 1405
    .line 1406
    move-result v4

    .line 1407
    if-nez v4, :cond_3a

    .line 1408
    .line 1409
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1410
    .line 1411
    .line 1412
    :cond_3a
    move-object/from16 v30, v7

    .line 1413
    .line 1414
    move-object/from16 v36, v9

    .line 1415
    .line 1416
    goto :goto_25

    .line 1417
    :cond_3b
    move-object/from16 v7, v30

    .line 1418
    .line 1419
    move-object/from16 v3, v35

    .line 1420
    .line 1421
    move-object/from16 v9, v36

    .line 1422
    .line 1423
    invoke-static {v3, v8}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v2

    .line 1427
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v2

    .line 1431
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1432
    .line 1433
    .line 1434
    move-result v12

    .line 1435
    if-eqz v12, :cond_3e

    .line 1436
    .line 1437
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v12

    .line 1441
    check-cast v12, Ljava/util/Map;

    .line 1442
    .line 1443
    move-object/from16 v15, v34

    .line 1444
    .line 1445
    invoke-interface {v12, v15, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v16

    .line 1449
    move-object/from16 v29, v2

    .line 1450
    .line 1451
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1452
    .line 1453
    .line 1454
    move-result-object v2

    .line 1455
    invoke-static {v2}, Lcom/sgscq/vpn/w1;->r1(Ljava/lang/String;)Z

    .line 1456
    .line 1457
    .line 1458
    move-result v16

    .line 1459
    if-nez v16, :cond_3d

    .line 1460
    .line 1461
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 1462
    .line 1463
    .line 1464
    move-result v2

    .line 1465
    if-nez v2, :cond_3c

    .line 1466
    .line 1467
    goto :goto_27

    .line 1468
    :cond_3c
    invoke-static {v12, v9, v11, v10}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v2

    .line 1472
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 1473
    .line 1474
    .line 1475
    move-result v12

    .line 1476
    if-nez v12, :cond_3d

    .line 1477
    .line 1478
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1479
    .line 1480
    .line 1481
    :cond_3d
    :goto_27
    move-object/from16 v34, v15

    .line 1482
    .line 1483
    move-object/from16 v2, v29

    .line 1484
    .line 1485
    goto :goto_26

    .line 1486
    :cond_3e
    move-object/from16 v15, v34

    .line 1487
    .line 1488
    const-string v1, "BuddyGeneral"

    .line 1489
    .line 1490
    invoke-static {v1, v8}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v1

    .line 1494
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v1

    .line 1498
    :cond_3f
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1499
    .line 1500
    .line 1501
    move-result v2

    .line 1502
    if-eqz v2, :cond_42

    .line 1503
    .line 1504
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v2

    .line 1508
    check-cast v2, Ljava/util/Map;

    .line 1509
    .line 1510
    invoke-static {v2, v4, v11, v7}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v2

    .line 1514
    invoke-static {v2}, Lcom/sgscq/vpn/w1;->r1(Ljava/lang/String;)Z

    .line 1515
    .line 1516
    .line 1517
    move-result v12

    .line 1518
    if-eqz v12, :cond_40

    .line 1519
    .line 1520
    goto :goto_28

    .line 1521
    :cond_40
    invoke-static {v2, v8}, Lcom/sgscq/vpn/w1;->X(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 1522
    .line 1523
    .line 1524
    move-result-object v2

    .line 1525
    if-nez v2, :cond_41

    .line 1526
    .line 1527
    move-object v2, v11

    .line 1528
    goto :goto_29

    .line 1529
    :cond_41
    invoke-static {v2, v9, v11, v10}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v2

    .line 1533
    :goto_29
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 1534
    .line 1535
    .line 1536
    move-result v12

    .line 1537
    if-nez v12, :cond_3f

    .line 1538
    .line 1539
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1540
    .line 1541
    .line 1542
    goto :goto_28

    .line 1543
    :cond_42
    new-instance v1, Ljava/util/HashSet;

    .line 1544
    .line 1545
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1546
    .line 1547
    .line 1548
    move-object/from16 v2, v33

    .line 1549
    .line 1550
    invoke-static {v2, v8}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v4

    .line 1554
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v4

    .line 1558
    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1559
    .line 1560
    .line 1561
    move-result v12

    .line 1562
    if-eqz v12, :cond_45

    .line 1563
    .line 1564
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v12

    .line 1568
    check-cast v12, Ljava/util/Map;

    .line 1569
    .line 1570
    move-object/from16 v16, v0

    .line 1571
    .line 1572
    move-object/from16 v0, p1

    .line 1573
    .line 1574
    invoke-static {v0, v12}, Lcom/sgscq/vpn/w1;->U(Ljava/lang/String;Ljava/util/Map;)Z

    .line 1575
    .line 1576
    .line 1577
    move-result v29

    .line 1578
    if-nez v29, :cond_43

    .line 1579
    .line 1580
    move-object/from16 v0, v16

    .line 1581
    .line 1582
    goto :goto_2a

    .line 1583
    :cond_43
    move-object/from16 v29, v4

    .line 1584
    .line 1585
    const-string v4, "eid"

    .line 1586
    .line 1587
    move-object/from16 v35, v3

    .line 1588
    .line 1589
    move-object/from16 v34, v15

    .line 1590
    .line 1591
    move-object/from16 v3, v28

    .line 1592
    .line 1593
    move-object/from16 v15, v32

    .line 1594
    .line 1595
    invoke-static {v12, v4, v11, v3, v15}, Lc/a;->k(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1596
    .line 1597
    .line 1598
    move-result-object v4

    .line 1599
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 1600
    .line 1601
    .line 1602
    move-result v12

    .line 1603
    if-nez v12, :cond_44

    .line 1604
    .line 1605
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1606
    .line 1607
    .line 1608
    :cond_44
    move-object/from16 v28, v3

    .line 1609
    .line 1610
    move-object/from16 v32, v15

    .line 1611
    .line 1612
    move-object/from16 v0, v16

    .line 1613
    .line 1614
    move-object/from16 v4, v29

    .line 1615
    .line 1616
    move-object/from16 v15, v34

    .line 1617
    .line 1618
    move-object/from16 v3, v35

    .line 1619
    .line 1620
    goto :goto_2a

    .line 1621
    :cond_45
    move-object/from16 v16, v0

    .line 1622
    .line 1623
    move-object/from16 v35, v3

    .line 1624
    .line 1625
    move-object/from16 v34, v15

    .line 1626
    .line 1627
    move-object/from16 v3, v28

    .line 1628
    .line 1629
    move-object/from16 v15, v32

    .line 1630
    .line 1631
    move-object/from16 v0, p1

    .line 1632
    .line 1633
    new-instance v4, Ljava/util/HashSet;

    .line 1634
    .line 1635
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1636
    .line 1637
    .line 1638
    move-object/from16 v12, v27

    .line 1639
    .line 1640
    invoke-static {v12, v8}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1641
    .line 1642
    .line 1643
    move-result-object v27

    .line 1644
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v27

    .line 1648
    :goto_2b
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    .line 1649
    .line 1650
    .line 1651
    move-result v28

    .line 1652
    if-eqz v28, :cond_48

    .line 1653
    .line 1654
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1655
    .line 1656
    .line 1657
    move-result-object v28

    .line 1658
    move-object/from16 v29, v1

    .line 1659
    .line 1660
    move-object/from16 v1, v28

    .line 1661
    .line 1662
    check-cast v1, Ljava/util/Map;

    .line 1663
    .line 1664
    invoke-static {v1, v7, v11, v0}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1665
    .line 1666
    .line 1667
    move-result v28

    .line 1668
    if-nez v28, :cond_46

    .line 1669
    .line 1670
    move-object/from16 v30, v7

    .line 1671
    .line 1672
    move-object/from16 v28, v12

    .line 1673
    .line 1674
    move-object/from16 v12, v20

    .line 1675
    .line 1676
    move-object/from16 v7, v26

    .line 1677
    .line 1678
    goto :goto_2c

    .line 1679
    :cond_46
    move-object/from16 v30, v7

    .line 1680
    .line 1681
    move-object/from16 v28, v12

    .line 1682
    .line 1683
    move-object/from16 v12, v20

    .line 1684
    .line 1685
    move-object/from16 v7, v26

    .line 1686
    .line 1687
    invoke-static {v1, v7, v11, v9, v12}, Lc/a;->k(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1688
    .line 1689
    .line 1690
    move-result-object v1

    .line 1691
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 1692
    .line 1693
    .line 1694
    move-result v20

    .line 1695
    if-nez v20, :cond_47

    .line 1696
    .line 1697
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1698
    .line 1699
    .line 1700
    :cond_47
    :goto_2c
    move-object/from16 v26, v7

    .line 1701
    .line 1702
    move-object/from16 v20, v12

    .line 1703
    .line 1704
    move-object/from16 v12, v28

    .line 1705
    .line 1706
    move-object/from16 v1, v29

    .line 1707
    .line 1708
    move-object/from16 v7, v30

    .line 1709
    .line 1710
    goto :goto_2b

    .line 1711
    :cond_48
    move-object/from16 v29, v1

    .line 1712
    .line 1713
    move-object/from16 v30, v7

    .line 1714
    .line 1715
    move-object/from16 v28, v12

    .line 1716
    .line 1717
    move-object/from16 v12, v20

    .line 1718
    .line 1719
    move-object/from16 v7, v26

    .line 1720
    .line 1721
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1722
    .line 1723
    .line 1724
    move-result-object v1

    .line 1725
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1726
    .line 1727
    .line 1728
    move-result v14

    .line 1729
    if-eqz v14, :cond_5a

    .line 1730
    .line 1731
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1732
    .line 1733
    .line 1734
    move-result-object v14

    .line 1735
    check-cast v14, Ljava/lang/String;

    .line 1736
    .line 1737
    move-object/from16 v20, v1

    .line 1738
    .line 1739
    invoke-virtual {v6, v14}, Lcom/sgscq/vpn/w1;->D0(Ljava/lang/String;)Ljava/util/Map;

    .line 1740
    .line 1741
    .line 1742
    move-result-object v1

    .line 1743
    if-nez v1, :cond_49

    .line 1744
    .line 1745
    move-object/from16 v1, v20

    .line 1746
    .line 1747
    goto :goto_2d

    .line 1748
    :cond_49
    move-object/from16 v26, v4

    .line 1749
    .line 1750
    const-string v4, "fate_addition_type"

    .line 1751
    .line 1752
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    .line 1754
    .line 1755
    move-result-object v4

    .line 1756
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1757
    .line 1758
    .line 1759
    move-result-object v4

    .line 1760
    move-object/from16 v27, v7

    .line 1761
    .line 1762
    const/4 v7, 0x0

    .line 1763
    invoke-static {v4, v7}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 1764
    .line 1765
    .line 1766
    move-result v4

    .line 1767
    invoke-static {v4}, Lcom/sgscq/vpn/w1;->s(I)I

    .line 1768
    .line 1769
    .line 1770
    move-result v4

    .line 1771
    if-gez v4, :cond_4a

    .line 1772
    .line 1773
    move-object/from16 v1, v20

    .line 1774
    .line 1775
    move-object/from16 v4, v26

    .line 1776
    .line 1777
    move-object/from16 v7, v27

    .line 1778
    .line 1779
    goto :goto_2d

    .line 1780
    :cond_4a
    const-string v7, "fate_object"

    .line 1781
    .line 1782
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1783
    .line 1784
    .line 1785
    move-result-object v7

    .line 1786
    move-object/from16 v31, v12

    .line 1787
    .line 1788
    instance-of v12, v7, Ljava/util/List;

    .line 1789
    .line 1790
    if-nez v12, :cond_4b

    .line 1791
    .line 1792
    move-object/from16 v1, v20

    .line 1793
    .line 1794
    move-object/from16 v4, v26

    .line 1795
    .line 1796
    move-object/from16 v7, v27

    .line 1797
    .line 1798
    move-object/from16 v12, v31

    .line 1799
    .line 1800
    goto :goto_2d

    .line 1801
    :cond_4b
    new-instance v12, Ljava/util/ArrayList;

    .line 1802
    .line 1803
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1804
    .line 1805
    .line 1806
    check-cast v7, Ljava/util/List;

    .line 1807
    .line 1808
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1809
    .line 1810
    .line 1811
    move-result-object v7

    .line 1812
    :goto_2e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1813
    .line 1814
    .line 1815
    move-result v32

    .line 1816
    if-eqz v32, :cond_4e

    .line 1817
    .line 1818
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1819
    .line 1820
    .line 1821
    move-result-object v32

    .line 1822
    move-object/from16 v33, v7

    .line 1823
    .line 1824
    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1825
    .line 1826
    .line 1827
    move-result-object v7

    .line 1828
    move-object/from16 v32, v10

    .line 1829
    .line 1830
    const-string v10, "\uff0c"

    .line 1831
    .line 1832
    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1833
    .line 1834
    .line 1835
    move-result-object v7

    .line 1836
    array-length v10, v7

    .line 1837
    const/16 v36, 0x0

    .line 1838
    .line 1839
    move-object/from16 v37, v15

    .line 1840
    .line 1841
    move/from16 v15, v36

    .line 1842
    .line 1843
    :goto_2f
    if-ge v15, v10, :cond_4d

    .line 1844
    .line 1845
    aget-object v36, v7, v15

    .line 1846
    .line 1847
    move-object/from16 v38, v7

    .line 1848
    .line 1849
    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1850
    .line 1851
    .line 1852
    move-result-object v7

    .line 1853
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 1854
    .line 1855
    .line 1856
    move-result v36

    .line 1857
    if-nez v36, :cond_4c

    .line 1858
    .line 1859
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1860
    .line 1861
    .line 1862
    :cond_4c
    add-int/lit8 v15, v15, 0x1

    .line 1863
    .line 1864
    move-object/from16 v7, v38

    .line 1865
    .line 1866
    goto :goto_2f

    .line 1867
    :cond_4d
    move-object/from16 v10, v32

    .line 1868
    .line 1869
    move-object/from16 v7, v33

    .line 1870
    .line 1871
    move-object/from16 v15, v37

    .line 1872
    .line 1873
    goto :goto_2e

    .line 1874
    :cond_4e
    move-object/from16 v32, v10

    .line 1875
    .line 1876
    move-object/from16 v37, v15

    .line 1877
    .line 1878
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1879
    .line 1880
    .line 1881
    move-result v7

    .line 1882
    if-eqz v7, :cond_50

    .line 1883
    .line 1884
    :cond_4f
    move-object/from16 v33, v3

    .line 1885
    .line 1886
    move-object v7, v5

    .line 1887
    move-object/from16 v1, v19

    .line 1888
    .line 1889
    goto/16 :goto_36

    .line 1890
    .line 1891
    :cond_50
    const-string v7, "fate_type"

    .line 1892
    .line 1893
    const/4 v10, 0x0

    .line 1894
    invoke-static {v1, v7, v5, v10}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 1895
    .line 1896
    .line 1897
    move-result v7

    .line 1898
    const/4 v10, 0x1

    .line 1899
    if-ne v7, v10, :cond_51

    .line 1900
    .line 1901
    move-object/from16 v7, v16

    .line 1902
    .line 1903
    goto :goto_30

    .line 1904
    :cond_51
    const/4 v10, 0x3

    .line 1905
    if-ne v7, v10, :cond_52

    .line 1906
    .line 1907
    move-object/from16 v7, v29

    .line 1908
    .line 1909
    goto :goto_30

    .line 1910
    :cond_52
    const/4 v10, 0x4

    .line 1911
    if-ne v7, v10, :cond_4f

    .line 1912
    .line 1913
    move-object/from16 v7, v26

    .line 1914
    .line 1915
    :goto_30
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1916
    .line 1917
    .line 1918
    move-result-object v10

    .line 1919
    const/4 v15, 0x0

    .line 1920
    :goto_31
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 1921
    .line 1922
    .line 1923
    move-result v33

    .line 1924
    if-eqz v33, :cond_56

    .line 1925
    .line 1926
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1927
    .line 1928
    .line 1929
    move-result-object v33

    .line 1930
    move-object/from16 v36, v10

    .line 1931
    .line 1932
    move-object/from16 v10, v33

    .line 1933
    .line 1934
    check-cast v10, Ljava/lang/String;

    .line 1935
    .line 1936
    move-object/from16 v33, v3

    .line 1937
    .line 1938
    const-string v3, "47101206"

    .line 1939
    .line 1940
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1941
    .line 1942
    .line 1943
    move-result v3

    .line 1944
    if-eqz v3, :cond_54

    .line 1945
    .line 1946
    const-string v3, "171012"

    .line 1947
    .line 1948
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1949
    .line 1950
    .line 1951
    move-result v3

    .line 1952
    if-nez v3, :cond_53

    .line 1953
    .line 1954
    goto :goto_32

    .line 1955
    :cond_53
    const/4 v3, 0x0

    .line 1956
    goto :goto_33

    .line 1957
    :cond_54
    :goto_32
    const/4 v3, 0x1

    .line 1958
    :goto_33
    if-eqz v3, :cond_55

    .line 1959
    .line 1960
    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1961
    .line 1962
    .line 1963
    move-result v3

    .line 1964
    if-eqz v3, :cond_55

    .line 1965
    .line 1966
    add-int/lit8 v15, v15, 0x1

    .line 1967
    .line 1968
    :cond_55
    move-object/from16 v3, v33

    .line 1969
    .line 1970
    move-object/from16 v10, v36

    .line 1971
    .line 1972
    goto :goto_31

    .line 1973
    :cond_56
    move-object/from16 v33, v3

    .line 1974
    .line 1975
    const-string v3, "fate_limit"

    .line 1976
    .line 1977
    const/4 v7, 0x1

    .line 1978
    invoke-static {v1, v3, v13, v7}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 1979
    .line 1980
    .line 1981
    move-result v3

    .line 1982
    const-string v7, "fate_effect"

    .line 1983
    .line 1984
    invoke-interface {v1, v7, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1985
    .line 1986
    .line 1987
    move-result-object v7

    .line 1988
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1989
    .line 1990
    .line 1991
    move-result-object v7

    .line 1992
    :try_start_4
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 1993
    .line 1994
    .line 1995
    move-result-wide v38
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1996
    goto :goto_34

    .line 1997
    :catch_4
    move-wide/from16 v38, v23

    .line 1998
    .line 1999
    :goto_34
    const-string v7, "fate_effect_step"

    .line 2000
    .line 2001
    invoke-interface {v1, v7, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2002
    .line 2003
    .line 2004
    move-result-object v1

    .line 2005
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2006
    .line 2007
    .line 2008
    move-result-object v1

    .line 2009
    :try_start_5
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 2010
    .line 2011
    .line 2012
    move-result-wide v40
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 2013
    move-object v7, v5

    .line 2014
    move-object/from16 v1, v19

    .line 2015
    .line 2016
    goto :goto_35

    .line 2017
    :catch_5
    move-object v7, v5

    .line 2018
    move-object/from16 v1, v19

    .line 2019
    .line 2020
    move-wide/from16 v40, v23

    .line 2021
    .line 2022
    :goto_35
    iget-wide v5, v1, Lcom/sgscq/vpn/s1;->j:D

    .line 2023
    .line 2024
    const/4 v10, 0x2

    .line 2025
    if-ne v3, v10, :cond_58

    .line 2026
    .line 2027
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 2028
    .line 2029
    .line 2030
    move-result v3

    .line 2031
    if-eq v15, v3, :cond_57

    .line 2032
    .line 2033
    goto :goto_36

    .line 2034
    :cond_57
    aget-wide v14, v18, v4

    .line 2035
    .line 2036
    add-double v38, v38, v5

    .line 2037
    .line 2038
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 2039
    .line 2040
    div-double v38, v38, v5

    .line 2041
    .line 2042
    add-double v38, v38, v14

    .line 2043
    .line 2044
    aput-wide v38, v18, v4

    .line 2045
    .line 2046
    goto :goto_36

    .line 2047
    :cond_58
    if-gtz v15, :cond_59

    .line 2048
    .line 2049
    goto :goto_36

    .line 2050
    :cond_59
    aget-wide v42, v18, v4

    .line 2051
    .line 2052
    add-int/lit8 v15, v15, -0x1

    .line 2053
    .line 2054
    int-to-double v14, v15

    .line 2055
    mul-double v14, v14, v40

    .line 2056
    .line 2057
    add-double v14, v14, v38

    .line 2058
    .line 2059
    add-double/2addr v14, v5

    .line 2060
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 2061
    .line 2062
    div-double/2addr v14, v5

    .line 2063
    add-double v14, v14, v42

    .line 2064
    .line 2065
    aput-wide v14, v18, v4

    .line 2066
    .line 2067
    :goto_36
    move-object/from16 v6, p0

    .line 2068
    .line 2069
    move-object/from16 v19, v1

    .line 2070
    .line 2071
    move-object v5, v7

    .line 2072
    move-object/from16 v1, v20

    .line 2073
    .line 2074
    move-object/from16 v4, v26

    .line 2075
    .line 2076
    move-object/from16 v7, v27

    .line 2077
    .line 2078
    move-object/from16 v12, v31

    .line 2079
    .line 2080
    move-object/from16 v10, v32

    .line 2081
    .line 2082
    move-object/from16 v3, v33

    .line 2083
    .line 2084
    move-object/from16 v15, v37

    .line 2085
    .line 2086
    goto/16 :goto_2d

    .line 2087
    .line 2088
    :cond_5a
    move-object/from16 v33, v3

    .line 2089
    .line 2090
    move-object/from16 v27, v7

    .line 2091
    .line 2092
    move-object/from16 v32, v10

    .line 2093
    .line 2094
    move-object/from16 v31, v12

    .line 2095
    .line 2096
    move-object/from16 v37, v15

    .line 2097
    .line 2098
    move-object/from16 v1, v19

    .line 2099
    .line 2100
    move-object v7, v5

    .line 2101
    :goto_37
    const-string v3, "Goddess"

    .line 2102
    .line 2103
    invoke-static {v3, v8}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 2104
    .line 2105
    .line 2106
    move-result-object v3

    .line 2107
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2108
    .line 2109
    .line 2110
    move-result-object v3

    .line 2111
    :cond_5b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 2112
    .line 2113
    .line 2114
    move-result v4

    .line 2115
    if-eqz v4, :cond_5d

    .line 2116
    .line 2117
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2118
    .line 2119
    .line 2120
    move-result-object v4

    .line 2121
    check-cast v4, Ljava/util/Map;

    .line 2122
    .line 2123
    const-string v5, "is_use"

    .line 2124
    .line 2125
    const-string v6, "fight"

    .line 2126
    .line 2127
    const-string v10, "is_fight"

    .line 2128
    .line 2129
    invoke-static {v4, v5, v11, v6, v10}, Lc/a;->k(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2130
    .line 2131
    .line 2132
    move-result-object v5

    .line 2133
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2134
    .line 2135
    .line 2136
    move-result v6

    .line 2137
    if-nez v6, :cond_5c

    .line 2138
    .line 2139
    const-string v6, "true"

    .line 2140
    .line 2141
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2142
    .line 2143
    .line 2144
    move-result v5

    .line 2145
    if-eqz v5, :cond_5b

    .line 2146
    .line 2147
    :cond_5c
    const-string v3, "goddess_id"

    .line 2148
    .line 2149
    const-string v5, "godness_id"

    .line 2150
    .line 2151
    invoke-static {v4, v9, v11, v3, v5}, Lc/a;->k(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2152
    .line 2153
    .line 2154
    move-result-object v3

    .line 2155
    goto :goto_38

    .line 2156
    :cond_5d
    move-object v3, v11

    .line 2157
    :goto_38
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 2158
    .line 2159
    .line 2160
    move-result v4

    .line 2161
    if-eqz v4, :cond_5e

    .line 2162
    .line 2163
    move-object/from16 v4, p0

    .line 2164
    .line 2165
    goto/16 :goto_3c

    .line 2166
    .line 2167
    :cond_5e
    move-object/from16 v4, p0

    .line 2168
    .line 2169
    invoke-virtual {v4, v3}, Lcom/sgscq/vpn/w1;->X0(Ljava/lang/String;)Ljava/util/Map;

    .line 2170
    .line 2171
    .line 2172
    move-result-object v3

    .line 2173
    if-nez v3, :cond_5f

    .line 2174
    .line 2175
    goto :goto_3c

    .line 2176
    :cond_5f
    const-string v5, "buff"

    .line 2177
    .line 2178
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2179
    .line 2180
    .line 2181
    move-result-object v3

    .line 2182
    instance-of v5, v3, Ljava/util/List;

    .line 2183
    .line 2184
    if-nez v5, :cond_60

    .line 2185
    .line 2186
    goto :goto_3c

    .line 2187
    :cond_60
    check-cast v3, Ljava/util/List;

    .line 2188
    .line 2189
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2190
    .line 2191
    .line 2192
    move-result-object v3

    .line 2193
    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 2194
    .line 2195
    .line 2196
    move-result v5

    .line 2197
    if-eqz v5, :cond_64

    .line 2198
    .line 2199
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2200
    .line 2201
    .line 2202
    move-result-object v5

    .line 2203
    instance-of v6, v5, Ljava/util/List;

    .line 2204
    .line 2205
    if-nez v6, :cond_61

    .line 2206
    .line 2207
    goto :goto_39

    .line 2208
    :cond_61
    check-cast v5, Ljava/util/List;

    .line 2209
    .line 2210
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 2211
    .line 2212
    .line 2213
    move-result v6

    .line 2214
    const/4 v10, 0x2

    .line 2215
    if-ge v6, v10, :cond_62

    .line 2216
    .line 2217
    goto :goto_39

    .line 2218
    :cond_62
    const/4 v6, 0x0

    .line 2219
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2220
    .line 2221
    .line 2222
    move-result-object v10

    .line 2223
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2224
    .line 2225
    .line 2226
    move-result-object v10

    .line 2227
    invoke-static {v10, v6}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 2228
    .line 2229
    .line 2230
    move-result v6

    .line 2231
    invoke-static {v6}, Lcom/sgscq/vpn/w1;->s(I)I

    .line 2232
    .line 2233
    .line 2234
    move-result v6

    .line 2235
    if-gez v6, :cond_63

    .line 2236
    .line 2237
    goto :goto_39

    .line 2238
    :cond_63
    const/4 v10, 0x1

    .line 2239
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2240
    .line 2241
    .line 2242
    move-result-object v5

    .line 2243
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2244
    .line 2245
    .line 2246
    move-result-object v5

    .line 2247
    const-string v10, "%"

    .line 2248
    .line 2249
    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 2250
    .line 2251
    .line 2252
    move-result-object v5

    .line 2253
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2254
    .line 2255
    .line 2256
    move-result-object v5

    .line 2257
    aget-wide v14, v18, v6

    .line 2258
    .line 2259
    :try_start_6
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 2260
    .line 2261
    .line 2262
    move-result-wide v19
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 2263
    :goto_3a
    const-wide/high16 v21, 0x4059000000000000L    # 100.0

    .line 2264
    .line 2265
    goto :goto_3b

    .line 2266
    :catch_6
    move-wide/from16 v19, v23

    .line 2267
    .line 2268
    goto :goto_3a

    .line 2269
    :goto_3b
    div-double v19, v19, v21

    .line 2270
    .line 2271
    add-double v19, v19, v14

    .line 2272
    .line 2273
    aput-wide v19, v18, v6

    .line 2274
    .line 2275
    goto :goto_39

    .line 2276
    :cond_64
    :goto_3c
    const/4 v3, 0x4

    .line 2277
    new-array v3, v3, [D

    .line 2278
    .line 2279
    fill-array-data v3, :array_1

    .line 2280
    .line 2281
    .line 2282
    invoke-static {v2, v8}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 2283
    .line 2284
    .line 2285
    move-result-object v5

    .line 2286
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2287
    .line 2288
    .line 2289
    move-result-object v5

    .line 2290
    :goto_3d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 2291
    .line 2292
    .line 2293
    move-result v6

    .line 2294
    const-string v10, "null"

    .line 2295
    .line 2296
    const-string v12, "effect_value"

    .line 2297
    .line 2298
    if-eqz v6, :cond_77

    .line 2299
    .line 2300
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2301
    .line 2302
    .line 2303
    move-result-object v6

    .line 2304
    check-cast v6, Ljava/util/Map;

    .line 2305
    .line 2306
    invoke-static {v0, v6}, Lcom/sgscq/vpn/w1;->U(Ljava/lang/String;Ljava/util/Map;)Z

    .line 2307
    .line 2308
    .line 2309
    move-result v14

    .line 2310
    if-nez v14, :cond_65

    .line 2311
    .line 2312
    goto :goto_3d

    .line 2313
    :cond_65
    move-object/from16 v14, v33

    .line 2314
    .line 2315
    invoke-interface {v6, v14, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2316
    .line 2317
    .line 2318
    move-result-object v15

    .line 2319
    move-object/from16 v16, v5

    .line 2320
    .line 2321
    move-object/from16 v5, v37

    .line 2322
    .line 2323
    invoke-interface {v6, v5, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2324
    .line 2325
    .line 2326
    move-result-object v15

    .line 2327
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2328
    .line 2329
    .line 2330
    move-result-object v15

    .line 2331
    invoke-virtual {v4, v15}, Lcom/sgscq/vpn/w1;->z0(Ljava/lang/String;)Ljava/util/Map;

    .line 2332
    .line 2333
    .line 2334
    move-result-object v15

    .line 2335
    if-nez v15, :cond_66

    .line 2336
    .line 2337
    move-object/from16 v33, v14

    .line 2338
    .line 2339
    move-object/from16 v5, v16

    .line 2340
    .line 2341
    goto :goto_3d

    .line 2342
    :cond_66
    const-string v5, "equipment_pos"

    .line 2343
    .line 2344
    move-object/from16 v33, v14

    .line 2345
    .line 2346
    const-string v14, "equipment_type"

    .line 2347
    .line 2348
    invoke-static {v15, v5, v7, v14}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2349
    .line 2350
    .line 2351
    move-result-object v5

    .line 2352
    const-string v14, "3"

    .line 2353
    .line 2354
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2355
    .line 2356
    .line 2357
    move-result v14

    .line 2358
    const/16 v19, -0x1

    .line 2359
    .line 2360
    if-eqz v14, :cond_67

    .line 2361
    .line 2362
    const/16 v19, 0x0

    .line 2363
    .line 2364
    goto :goto_3e

    .line 2365
    :cond_67
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2366
    .line 2367
    .line 2368
    move-result v14

    .line 2369
    if-eqz v14, :cond_68

    .line 2370
    .line 2371
    const/16 v19, 0x1

    .line 2372
    .line 2373
    goto :goto_3e

    .line 2374
    :cond_68
    const-string v14, "2"

    .line 2375
    .line 2376
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2377
    .line 2378
    .line 2379
    move-result v14

    .line 2380
    if-eqz v14, :cond_69

    .line 2381
    .line 2382
    const/16 v19, 0x2

    .line 2383
    .line 2384
    goto :goto_3e

    .line 2385
    :cond_69
    const-string v14, "4"

    .line 2386
    .line 2387
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2388
    .line 2389
    .line 2390
    move-result v5

    .line 2391
    if-eqz v5, :cond_6a

    .line 2392
    .line 2393
    const/16 v19, 0x3

    .line 2394
    .line 2395
    :cond_6a
    :goto_3e
    if-ltz v19, :cond_76

    .line 2396
    .line 2397
    aget-wide v38, v3, v19

    .line 2398
    .line 2399
    invoke-interface {v15, v12, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2400
    .line 2401
    .line 2402
    move-result-object v5

    .line 2403
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2404
    .line 2405
    .line 2406
    move-result-object v5

    .line 2407
    :try_start_7
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 2408
    .line 2409
    .line 2410
    move-result-wide v40
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 2411
    goto :goto_3f

    .line 2412
    :catch_7
    move-wide/from16 v40, v23

    .line 2413
    .line 2414
    :goto_3f
    const-string v5, "effect_value_step"

    .line 2415
    .line 2416
    const-string v12, "effect_step"

    .line 2417
    .line 2418
    invoke-static {v15, v5, v7, v12}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2419
    .line 2420
    .line 2421
    move-result-object v5

    .line 2422
    :try_start_8
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 2423
    .line 2424
    .line 2425
    move-result-wide v42
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 2426
    goto :goto_40

    .line 2427
    :catch_8
    move-wide/from16 v42, v23

    .line 2428
    .line 2429
    :goto_40
    const-string v5, "equipment_level"

    .line 2430
    .line 2431
    const/4 v12, 0x1

    .line 2432
    move-object/from16 v14, v17

    .line 2433
    .line 2434
    invoke-static {v6, v14, v13, v5, v12}, Lc/a;->g(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 2435
    .line 2436
    .line 2437
    move-result v5

    .line 2438
    if-gtz v5, :cond_6b

    .line 2439
    .line 2440
    const/4 v5, 0x1

    .line 2441
    :cond_6b
    add-int/lit8 v5, v5, -0x1

    .line 2442
    .line 2443
    move-object/from16 v17, v1

    .line 2444
    .line 2445
    int-to-double v0, v5

    .line 2446
    mul-double v0, v0, v42

    .line 2447
    .line 2448
    add-double v0, v0, v40

    .line 2449
    .line 2450
    const-string v5, "refine_bonus_type"

    .line 2451
    .line 2452
    invoke-interface {v15, v5, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2453
    .line 2454
    .line 2455
    move-result-object v12

    .line 2456
    invoke-interface {v6, v5, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2457
    .line 2458
    .line 2459
    move-result-object v5

    .line 2460
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2461
    .line 2462
    .line 2463
    move-result-object v5

    .line 2464
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 2465
    .line 2466
    .line 2467
    move-result v12

    .line 2468
    if-nez v12, :cond_75

    .line 2469
    .line 2470
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2471
    .line 2472
    .line 2473
    move-result v10

    .line 2474
    if-eqz v10, :cond_6c

    .line 2475
    .line 2476
    goto/16 :goto_44

    .line 2477
    .line 2478
    :cond_6c
    const-string v10, "refine_lv"

    .line 2479
    .line 2480
    invoke-interface {v6, v10, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2481
    .line 2482
    .line 2483
    move-result-object v10

    .line 2484
    const-string v12, "refine_level"

    .line 2485
    .line 2486
    invoke-interface {v6, v12, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2487
    .line 2488
    .line 2489
    move-result-object v6

    .line 2490
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2491
    .line 2492
    .line 2493
    move-result-object v6

    .line 2494
    const/4 v10, 0x1

    .line 2495
    invoke-static {v6, v10}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 2496
    .line 2497
    .line 2498
    move-result v6

    .line 2499
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    .line 2500
    .line 2501
    .line 2502
    move-result v6

    .line 2503
    iget-object v10, v4, Lcom/sgscq/vpn/w1;->s:Ljava/util/HashMap;

    .line 2504
    .line 2505
    if-eqz v10, :cond_6d

    .line 2506
    .line 2507
    goto :goto_41

    .line 2508
    :cond_6d
    new-instance v10, Ljava/util/HashMap;

    .line 2509
    .line 2510
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 2511
    .line 2512
    .line 2513
    iput-object v10, v4, Lcom/sgscq/vpn/w1;->s:Ljava/util/HashMap;

    .line 2514
    .line 2515
    const-string v10, "refine_conf.json"

    .line 2516
    .line 2517
    iget-object v12, v4, Lcom/sgscq/vpn/w1;->a:Landroid/content/Context;

    .line 2518
    .line 2519
    invoke-static {v12, v10}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 2520
    .line 2521
    .line 2522
    move-result-object v10

    .line 2523
    if-eqz v10, :cond_6f

    .line 2524
    .line 2525
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 2526
    .line 2527
    .line 2528
    move-result v12

    .line 2529
    if-eqz v12, :cond_6e

    .line 2530
    .line 2531
    goto :goto_41

    .line 2532
    :cond_6e
    :try_start_9
    invoke-static {v10}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 2533
    .line 2534
    .line 2535
    move-result-object v10

    .line 2536
    iget-object v12, v4, Lcom/sgscq/vpn/w1;->s:Ljava/util/HashMap;

    .line 2537
    .line 2538
    invoke-virtual {v12, v10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 2539
    .line 2540
    .line 2541
    :catch_9
    :cond_6f
    :goto_41
    iget-object v10, v4, Lcom/sgscq/vpn/w1;->s:Ljava/util/HashMap;

    .line 2542
    .line 2543
    if-eqz v10, :cond_73

    .line 2544
    .line 2545
    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    .line 2546
    .line 2547
    .line 2548
    move-result v10

    .line 2549
    if-eqz v10, :cond_70

    .line 2550
    .line 2551
    goto :goto_42

    .line 2552
    :cond_70
    iget-object v10, v4, Lcom/sgscq/vpn/w1;->s:Ljava/util/HashMap;

    .line 2553
    .line 2554
    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2555
    .line 2556
    .line 2557
    move-result-object v5

    .line 2558
    instance-of v10, v5, Ljava/util/List;

    .line 2559
    .line 2560
    if-eqz v10, :cond_71

    .line 2561
    .line 2562
    move-object v10, v5

    .line 2563
    check-cast v10, Ljava/util/List;

    .line 2564
    .line 2565
    add-int/lit8 v12, v6, -0x1

    .line 2566
    .line 2567
    const/4 v15, 0x0

    .line 2568
    invoke-static {v15, v12}, Ljava/lang/Math;->max(II)I

    .line 2569
    .line 2570
    .line 2571
    move-result v12

    .line 2572
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 2573
    .line 2574
    .line 2575
    move-result v15

    .line 2576
    if-ge v12, v15, :cond_71

    .line 2577
    .line 2578
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2579
    .line 2580
    .line 2581
    move-result-object v15

    .line 2582
    instance-of v15, v15, Ljava/util/Map;

    .line 2583
    .line 2584
    if-eqz v15, :cond_71

    .line 2585
    .line 2586
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2587
    .line 2588
    .line 2589
    move-result-object v5

    .line 2590
    check-cast v5, Ljava/util/Map;

    .line 2591
    .line 2592
    goto :goto_43

    .line 2593
    :cond_71
    instance-of v10, v5, Ljava/util/Map;

    .line 2594
    .line 2595
    if-eqz v10, :cond_73

    .line 2596
    .line 2597
    check-cast v5, Ljava/util/Map;

    .line 2598
    .line 2599
    add-int/lit8 v10, v6, -0x1

    .line 2600
    .line 2601
    const/4 v12, 0x0

    .line 2602
    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    .line 2603
    .line 2604
    .line 2605
    move-result v10

    .line 2606
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2607
    .line 2608
    .line 2609
    move-result-object v10

    .line 2610
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2611
    .line 2612
    .line 2613
    move-result-object v10

    .line 2614
    if-nez v10, :cond_72

    .line 2615
    .line 2616
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2617
    .line 2618
    .line 2619
    move-result-object v6

    .line 2620
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2621
    .line 2622
    .line 2623
    move-result-object v10

    .line 2624
    :cond_72
    instance-of v5, v10, Ljava/util/Map;

    .line 2625
    .line 2626
    if-eqz v5, :cond_73

    .line 2627
    .line 2628
    move-object v5, v10

    .line 2629
    check-cast v5, Ljava/util/Map;

    .line 2630
    .line 2631
    goto :goto_43

    .line 2632
    :cond_73
    :goto_42
    const/4 v5, 0x0

    .line 2633
    :goto_43
    if-nez v5, :cond_74

    .line 2634
    .line 2635
    goto :goto_44

    .line 2636
    :cond_74
    const-string v6, "attr_bonus"

    .line 2637
    .line 2638
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2639
    .line 2640
    .line 2641
    move-result-object v5

    .line 2642
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2643
    .line 2644
    .line 2645
    move-result-object v5

    .line 2646
    :try_start_a
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 2647
    .line 2648
    .line 2649
    move-result-wide v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 2650
    goto :goto_45

    .line 2651
    :catch_a
    :cond_75
    :goto_44
    move-wide/from16 v5, v23

    .line 2652
    .line 2653
    :goto_45
    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    .line 2654
    .line 2655
    add-double v5, v5, v20

    .line 2656
    .line 2657
    mul-double/2addr v5, v0

    .line 2658
    div-double v5, v5, v20

    .line 2659
    .line 2660
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 2661
    .line 2662
    .line 2663
    move-result-wide v0

    .line 2664
    add-double v0, v0, v38

    .line 2665
    .line 2666
    aput-wide v0, v3, v19

    .line 2667
    .line 2668
    goto :goto_46

    .line 2669
    :cond_76
    move-object/from16 v14, v17

    .line 2670
    .line 2671
    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    .line 2672
    .line 2673
    move-object/from16 v17, v1

    .line 2674
    .line 2675
    :goto_46
    move-object/from16 v0, p1

    .line 2676
    .line 2677
    move-object/from16 v5, v16

    .line 2678
    .line 2679
    move-object/from16 v1, v17

    .line 2680
    .line 2681
    move-object/from16 v17, v14

    .line 2682
    .line 2683
    goto/16 :goto_3d

    .line 2684
    .line 2685
    :cond_77
    move-object/from16 v17, v1

    .line 2686
    .line 2687
    invoke-static {v2, v8}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 2688
    .line 2689
    .line 2690
    move-result-object v0

    .line 2691
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2692
    .line 2693
    .line 2694
    move-result-object v0

    .line 2695
    :cond_78
    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2696
    .line 2697
    .line 2698
    move-result v1

    .line 2699
    if-eqz v1, :cond_80

    .line 2700
    .line 2701
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2702
    .line 2703
    .line 2704
    move-result-object v1

    .line 2705
    check-cast v1, Ljava/util/Map;

    .line 2706
    .line 2707
    move-object/from16 v2, p1

    .line 2708
    .line 2709
    invoke-static {v2, v1}, Lcom/sgscq/vpn/w1;->U(Ljava/lang/String;Ljava/util/Map;)Z

    .line 2710
    .line 2711
    .line 2712
    move-result v5

    .line 2713
    if-nez v5, :cond_79

    .line 2714
    .line 2715
    goto :goto_47

    .line 2716
    :cond_79
    const-string v5, "bore_list"

    .line 2717
    .line 2718
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2719
    .line 2720
    .line 2721
    move-result-object v1

    .line 2722
    instance-of v5, v1, Ljava/util/List;

    .line 2723
    .line 2724
    if-nez v5, :cond_7a

    .line 2725
    .line 2726
    goto :goto_47

    .line 2727
    :cond_7a
    check-cast v1, Ljava/util/List;

    .line 2728
    .line 2729
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2730
    .line 2731
    .line 2732
    move-result-object v1

    .line 2733
    :cond_7b
    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2734
    .line 2735
    .line 2736
    move-result v5

    .line 2737
    if-eqz v5, :cond_78

    .line 2738
    .line 2739
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2740
    .line 2741
    .line 2742
    move-result-object v5

    .line 2743
    instance-of v6, v5, Ljava/util/Map;

    .line 2744
    .line 2745
    if-nez v6, :cond_7c

    .line 2746
    .line 2747
    goto :goto_48

    .line 2748
    :cond_7c
    check-cast v5, Ljava/util/Map;

    .line 2749
    .line 2750
    const-string v6, "gem_id"

    .line 2751
    .line 2752
    invoke-interface {v5, v6, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2753
    .line 2754
    .line 2755
    move-result-object v5

    .line 2756
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2757
    .line 2758
    .line 2759
    move-result-object v5

    .line 2760
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 2761
    .line 2762
    .line 2763
    move-result v6

    .line 2764
    if-nez v6, :cond_7b

    .line 2765
    .line 2766
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2767
    .line 2768
    .line 2769
    move-result v6

    .line 2770
    if-nez v6, :cond_7b

    .line 2771
    .line 2772
    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2773
    .line 2774
    .line 2775
    move-result v6

    .line 2776
    if-eqz v6, :cond_7d

    .line 2777
    .line 2778
    goto :goto_48

    .line 2779
    :cond_7d
    invoke-virtual {v4, v5}, Lcom/sgscq/vpn/w1;->I0(Ljava/lang/String;)Ljava/util/Map;

    .line 2780
    .line 2781
    .line 2782
    move-result-object v5

    .line 2783
    if-nez v5, :cond_7e

    .line 2784
    .line 2785
    goto :goto_48

    .line 2786
    :cond_7e
    const-string v6, "type"

    .line 2787
    .line 2788
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2789
    .line 2790
    .line 2791
    move-result-object v6

    .line 2792
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2793
    .line 2794
    .line 2795
    move-result-object v6

    .line 2796
    const/4 v13, 0x0

    .line 2797
    invoke-static {v6, v13}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 2798
    .line 2799
    .line 2800
    move-result v6

    .line 2801
    invoke-static {v6}, Lcom/sgscq/vpn/w1;->s(I)I

    .line 2802
    .line 2803
    .line 2804
    move-result v6

    .line 2805
    if-gez v6, :cond_7f

    .line 2806
    .line 2807
    goto :goto_48

    .line 2808
    :cond_7f
    aget-wide v13, v3, v6

    .line 2809
    .line 2810
    invoke-interface {v5, v12, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2811
    .line 2812
    .line 2813
    move-result-object v5

    .line 2814
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2815
    .line 2816
    .line 2817
    move-result-object v5

    .line 2818
    :try_start_b
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 2819
    .line 2820
    .line 2821
    move-result-wide v15
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 2822
    goto :goto_49

    .line 2823
    :catch_b
    move-wide/from16 v15, v23

    .line 2824
    .line 2825
    :goto_49
    add-double/2addr v13, v15

    .line 2826
    aput-wide v13, v3, v6

    .line 2827
    .line 2828
    goto :goto_48

    .line 2829
    :cond_80
    move-object/from16 v2, p1

    .line 2830
    .line 2831
    const-string v0, "MeridianTop"

    .line 2832
    .line 2833
    invoke-static {v0, v8}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 2834
    .line 2835
    .line 2836
    move-result-object v0

    .line 2837
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2838
    .line 2839
    .line 2840
    move-result-object v0

    .line 2841
    :goto_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2842
    .line 2843
    .line 2844
    move-result v1

    .line 2845
    if-eqz v1, :cond_82

    .line 2846
    .line 2847
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2848
    .line 2849
    .line 2850
    move-result-object v1

    .line 2851
    check-cast v1, Ljava/util/Map;

    .line 2852
    .line 2853
    const-string v5, "user_general_id"

    .line 2854
    .line 2855
    move-object/from16 v10, v30

    .line 2856
    .line 2857
    move-object/from16 v6, v32

    .line 2858
    .line 2859
    invoke-static {v1, v6, v11, v5, v10}, Lc/a;->k(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2860
    .line 2861
    .line 2862
    move-result-object v5

    .line 2863
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2864
    .line 2865
    .line 2866
    move-result v5

    .line 2867
    if-nez v5, :cond_81

    .line 2868
    .line 2869
    goto :goto_4f

    .line 2870
    :cond_81
    const/4 v5, 0x1

    .line 2871
    aget-wide v12, v3, v5

    .line 2872
    .line 2873
    const-string v14, "gong"

    .line 2874
    .line 2875
    invoke-interface {v1, v14, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2876
    .line 2877
    .line 2878
    move-result-object v14

    .line 2879
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2880
    .line 2881
    .line 2882
    move-result-object v14

    .line 2883
    :try_start_c
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 2884
    .line 2885
    .line 2886
    move-result-wide v14
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 2887
    goto :goto_4b

    .line 2888
    :catch_c
    move-wide/from16 v14, v23

    .line 2889
    .line 2890
    :goto_4b
    add-double/2addr v12, v14

    .line 2891
    aput-wide v12, v3, v5

    .line 2892
    .line 2893
    const/4 v5, 0x2

    .line 2894
    aget-wide v12, v3, v5

    .line 2895
    .line 2896
    const-string v14, "fang"

    .line 2897
    .line 2898
    invoke-interface {v1, v14, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2899
    .line 2900
    .line 2901
    move-result-object v14

    .line 2902
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2903
    .line 2904
    .line 2905
    move-result-object v14

    .line 2906
    :try_start_d
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 2907
    .line 2908
    .line 2909
    move-result-wide v14
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 2910
    goto :goto_4c

    .line 2911
    :catch_d
    move-wide/from16 v14, v23

    .line 2912
    .line 2913
    :goto_4c
    add-double/2addr v12, v14

    .line 2914
    aput-wide v12, v3, v5

    .line 2915
    .line 2916
    const/4 v5, 0x0

    .line 2917
    aget-wide v12, v3, v5

    .line 2918
    .line 2919
    const-string v14, "xue"

    .line 2920
    .line 2921
    invoke-interface {v1, v14, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2922
    .line 2923
    .line 2924
    move-result-object v14

    .line 2925
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2926
    .line 2927
    .line 2928
    move-result-object v14

    .line 2929
    :try_start_e
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 2930
    .line 2931
    .line 2932
    move-result-wide v14
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    .line 2933
    goto :goto_4d

    .line 2934
    :catch_e
    move-wide/from16 v14, v23

    .line 2935
    .line 2936
    :goto_4d
    add-double/2addr v12, v14

    .line 2937
    aput-wide v12, v3, v5

    .line 2938
    .line 2939
    const/4 v5, 0x3

    .line 2940
    aget-wide v12, v3, v5

    .line 2941
    .line 2942
    const-string v14, "zhi"

    .line 2943
    .line 2944
    invoke-interface {v1, v14, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2945
    .line 2946
    .line 2947
    move-result-object v1

    .line 2948
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2949
    .line 2950
    .line 2951
    move-result-object v1

    .line 2952
    :try_start_f
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 2953
    .line 2954
    .line 2955
    move-result-wide v14
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 2956
    goto :goto_4e

    .line 2957
    :catch_f
    move-wide/from16 v14, v23

    .line 2958
    .line 2959
    :goto_4e
    add-double/2addr v12, v14

    .line 2960
    aput-wide v12, v3, v5

    .line 2961
    .line 2962
    :goto_4f
    move-object/from16 v32, v6

    .line 2963
    .line 2964
    move-object/from16 v30, v10

    .line 2965
    .line 2966
    goto :goto_4a

    .line 2967
    :cond_82
    move-object/from16 v1, v25

    .line 2968
    .line 2969
    move-object/from16 v10, v30

    .line 2970
    .line 2971
    move-object/from16 v6, v32

    .line 2972
    .line 2973
    invoke-virtual {v4, v8, v2, v1, v3}, Lcom/sgscq/vpn/w1;->i(Ljava/util/Map;Ljava/lang/String;[D[D)V

    .line 2974
    .line 2975
    .line 2976
    invoke-static/range {p1 .. p2}, Lcom/sgscq/vpn/w1;->v1(Ljava/lang/String;Ljava/util/Map;)Z

    .line 2977
    .line 2978
    .line 2979
    move-result v0

    .line 2980
    if-eqz v0, :cond_83

    .line 2981
    .line 2982
    invoke-virtual {v4, v8, v3}, Lcom/sgscq/vpn/w1;->f(Ljava/util/Map;[D)V

    .line 2983
    .line 2984
    .line 2985
    :cond_83
    const/4 v0, 0x0

    .line 2986
    aget-wide v12, v1, v0

    .line 2987
    .line 2988
    aget-wide v14, v18, v0

    .line 2989
    .line 2990
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 2991
    .line 2992
    add-double v14, v14, v19

    .line 2993
    .line 2994
    mul-double/2addr v14, v12

    .line 2995
    aget-wide v12, v3, v0

    .line 2996
    .line 2997
    add-double/2addr v14, v12

    .line 2998
    move-object/from16 v0, v17

    .line 2999
    .line 3000
    iget-wide v12, v0, Lcom/sgscq/vpn/s1;->e:D

    .line 3001
    .line 3002
    add-double/2addr v14, v12

    .line 3003
    iget-wide v12, v0, Lcom/sgscq/vpn/s1;->a:D

    .line 3004
    .line 3005
    add-double v45, v14, v12

    .line 3006
    .line 3007
    const/4 v5, 0x1

    .line 3008
    aget-wide v12, v1, v5

    .line 3009
    .line 3010
    aget-wide v14, v18, v5

    .line 3011
    .line 3012
    add-double v14, v14, v19

    .line 3013
    .line 3014
    mul-double/2addr v14, v12

    .line 3015
    aget-wide v12, v3, v5

    .line 3016
    .line 3017
    add-double/2addr v14, v12

    .line 3018
    iget-wide v12, v0, Lcom/sgscq/vpn/s1;->f:D

    .line 3019
    .line 3020
    add-double/2addr v14, v12

    .line 3021
    iget-wide v12, v0, Lcom/sgscq/vpn/s1;->b:D

    .line 3022
    .line 3023
    add-double v47, v14, v12

    .line 3024
    .line 3025
    const/4 v5, 0x2

    .line 3026
    aget-wide v12, v1, v5

    .line 3027
    .line 3028
    aget-wide v14, v18, v5

    .line 3029
    .line 3030
    add-double v14, v14, v19

    .line 3031
    .line 3032
    mul-double/2addr v14, v12

    .line 3033
    aget-wide v12, v3, v5

    .line 3034
    .line 3035
    add-double/2addr v14, v12

    .line 3036
    iget-wide v12, v0, Lcom/sgscq/vpn/s1;->g:D

    .line 3037
    .line 3038
    add-double/2addr v14, v12

    .line 3039
    iget-wide v12, v0, Lcom/sgscq/vpn/s1;->c:D

    .line 3040
    .line 3041
    add-double v49, v14, v12

    .line 3042
    .line 3043
    const/4 v5, 0x3

    .line 3044
    aget-wide v12, v1, v5

    .line 3045
    .line 3046
    aget-wide v14, v18, v5

    .line 3047
    .line 3048
    add-double v14, v14, v19

    .line 3049
    .line 3050
    mul-double/2addr v14, v12

    .line 3051
    aget-wide v12, v3, v5

    .line 3052
    .line 3053
    add-double/2addr v14, v12

    .line 3054
    iget-wide v12, v0, Lcom/sgscq/vpn/s1;->h:D

    .line 3055
    .line 3056
    add-double/2addr v14, v12

    .line 3057
    iget-wide v12, v0, Lcom/sgscq/vpn/s1;->d:D

    .line 3058
    .line 3059
    add-double v51, v14, v12

    .line 3060
    .line 3061
    const/4 v0, 0x4

    .line 3062
    new-array v0, v0, [D

    .line 3063
    .line 3064
    fill-array-data v0, :array_2

    .line 3065
    .line 3066
    .line 3067
    move-object/from16 v3, v35

    .line 3068
    .line 3069
    invoke-static {v3, v8}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 3070
    .line 3071
    .line 3072
    move-result-object v5

    .line 3073
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 3074
    .line 3075
    .line 3076
    move-result-object v5

    .line 3077
    :goto_50
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 3078
    .line 3079
    .line 3080
    move-result v7

    .line 3081
    if-eqz v7, :cond_85

    .line 3082
    .line 3083
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3084
    .line 3085
    .line 3086
    move-result-object v7

    .line 3087
    check-cast v7, Ljava/util/Map;

    .line 3088
    .line 3089
    move-object/from16 v12, v34

    .line 3090
    .line 3091
    invoke-static {v7, v12, v11, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3092
    .line 3093
    .line 3094
    move-result v13

    .line 3095
    if-nez v13, :cond_84

    .line 3096
    .line 3097
    move-object/from16 v34, v12

    .line 3098
    .line 3099
    goto :goto_50

    .line 3100
    :cond_84
    invoke-interface {v7, v6, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3101
    .line 3102
    .line 3103
    move-result-object v7

    .line 3104
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 3105
    .line 3106
    .line 3107
    move-result-object v7

    .line 3108
    invoke-virtual {v4, v7, v8}, Lcom/sgscq/vpn/w1;->y(Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/s1;

    .line 3109
    .line 3110
    .line 3111
    move-result-object v7

    .line 3112
    const/4 v13, 0x0

    .line 3113
    aget-wide v13, v0, v13

    .line 3114
    .line 3115
    move-object v15, v5

    .line 3116
    move-object/from16 v16, v6

    .line 3117
    .line 3118
    iget-wide v5, v7, Lcom/sgscq/vpn/s1;->a:D

    .line 3119
    .line 3120
    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    .line 3121
    .line 3122
    mul-double v5, v5, v17

    .line 3123
    .line 3124
    move-object/from16 v35, v3

    .line 3125
    .line 3126
    iget-wide v3, v7, Lcom/sgscq/vpn/s1;->e:D

    .line 3127
    .line 3128
    add-double/2addr v5, v3

    .line 3129
    add-double/2addr v5, v13

    .line 3130
    const/4 v3, 0x0

    .line 3131
    aput-wide v5, v0, v3

    .line 3132
    .line 3133
    const/4 v3, 0x1

    .line 3134
    aget-wide v3, v0, v3

    .line 3135
    .line 3136
    iget-wide v5, v7, Lcom/sgscq/vpn/s1;->b:D

    .line 3137
    .line 3138
    mul-double v5, v5, v17

    .line 3139
    .line 3140
    iget-wide v13, v7, Lcom/sgscq/vpn/s1;->f:D

    .line 3141
    .line 3142
    add-double/2addr v5, v13

    .line 3143
    add-double/2addr v5, v3

    .line 3144
    const/4 v3, 0x1

    .line 3145
    aput-wide v5, v0, v3

    .line 3146
    .line 3147
    const/4 v3, 0x2

    .line 3148
    aget-wide v3, v0, v3

    .line 3149
    .line 3150
    iget-wide v5, v7, Lcom/sgscq/vpn/s1;->c:D

    .line 3151
    .line 3152
    mul-double v5, v5, v17

    .line 3153
    .line 3154
    iget-wide v13, v7, Lcom/sgscq/vpn/s1;->g:D

    .line 3155
    .line 3156
    add-double/2addr v5, v13

    .line 3157
    add-double/2addr v5, v3

    .line 3158
    const/4 v3, 0x2

    .line 3159
    aput-wide v5, v0, v3

    .line 3160
    .line 3161
    const/4 v3, 0x3

    .line 3162
    aget-wide v3, v0, v3

    .line 3163
    .line 3164
    iget-wide v5, v7, Lcom/sgscq/vpn/s1;->d:D

    .line 3165
    .line 3166
    mul-double v5, v5, v17

    .line 3167
    .line 3168
    iget-wide v13, v7, Lcom/sgscq/vpn/s1;->h:D

    .line 3169
    .line 3170
    add-double/2addr v5, v13

    .line 3171
    add-double/2addr v5, v3

    .line 3172
    const/4 v3, 0x3

    .line 3173
    aput-wide v5, v0, v3

    .line 3174
    .line 3175
    move-object/from16 v4, p0

    .line 3176
    .line 3177
    move-object/from16 v34, v12

    .line 3178
    .line 3179
    move-object v5, v15

    .line 3180
    move-object/from16 v6, v16

    .line 3181
    .line 3182
    move-object/from16 v3, v35

    .line 3183
    .line 3184
    goto :goto_50

    .line 3185
    :cond_85
    move-object/from16 v35, v3

    .line 3186
    .line 3187
    move-object/from16 v12, v34

    .line 3188
    .line 3189
    const/4 v3, 0x3

    .line 3190
    const/4 v4, 0x0

    .line 3191
    aget-wide v4, v0, v4

    .line 3192
    .line 3193
    add-double v53, v45, v4

    .line 3194
    .line 3195
    const/4 v4, 0x1

    .line 3196
    aget-wide v4, v0, v4

    .line 3197
    .line 3198
    add-double v55, v47, v4

    .line 3199
    .line 3200
    const/4 v4, 0x2

    .line 3201
    aget-wide v4, v0, v4

    .line 3202
    .line 3203
    add-double v57, v49, v4

    .line 3204
    .line 3205
    aget-wide v3, v0, v3

    .line 3206
    .line 3207
    add-double v59, v51, v3

    .line 3208
    .line 3209
    move-object/from16 v0, v28

    .line 3210
    .line 3211
    invoke-static {v0, v8}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 3212
    .line 3213
    .line 3214
    move-result-object v0

    .line 3215
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 3216
    .line 3217
    .line 3218
    move-result-object v0

    .line 3219
    move-wide/from16 v3, v23

    .line 3220
    .line 3221
    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 3222
    .line 3223
    .line 3224
    move-result v5

    .line 3225
    const-string v6, "fighting"

    .line 3226
    .line 3227
    const-string v7, "fighting_point"

    .line 3228
    .line 3229
    const-string v13, "fight_point"

    .line 3230
    .line 3231
    if-eqz v5, :cond_87

    .line 3232
    .line 3233
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3234
    .line 3235
    .line 3236
    move-result-object v5

    .line 3237
    check-cast v5, Ljava/util/Map;

    .line 3238
    .line 3239
    invoke-static {v5, v10, v11, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3240
    .line 3241
    .line 3242
    move-result v14

    .line 3243
    if-nez v14, :cond_86

    .line 3244
    .line 3245
    goto :goto_51

    .line 3246
    :cond_86
    move-object/from16 v16, v0

    .line 3247
    .line 3248
    move-object/from16 v15, v27

    .line 3249
    .line 3250
    move-object/from16 v14, v31

    .line 3251
    .line 3252
    invoke-static {v5, v15, v11, v9, v14}, Lc/a;->k(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3253
    .line 3254
    .line 3255
    move-result-object v0

    .line 3256
    move-object/from16 v20, v9

    .line 3257
    .line 3258
    move-object/from16 v9, p0

    .line 3259
    .line 3260
    invoke-virtual {v9, v0}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    .line 3261
    .line 3262
    .line 3263
    move-result-object v0

    .line 3264
    filled-new-array {v6, v13, v7}, [Ljava/lang/String;

    .line 3265
    .line 3266
    .line 3267
    move-result-object v6

    .line 3268
    invoke-static {v5, v0, v6}, Lcom/sgscq/vpn/w1;->Z(Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)D

    .line 3269
    .line 3270
    .line 3271
    move-result-wide v5

    .line 3272
    add-double/2addr v3, v5

    .line 3273
    move-object/from16 v0, v16

    .line 3274
    .line 3275
    move-object/from16 v9, v20

    .line 3276
    .line 3277
    goto :goto_51

    .line 3278
    :cond_87
    move-object/from16 v9, p0

    .line 3279
    .line 3280
    move-object/from16 v0, v35

    .line 3281
    .line 3282
    invoke-static {v0, v8}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 3283
    .line 3284
    .line 3285
    move-result-object v5

    .line 3286
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 3287
    .line 3288
    .line 3289
    move-result-object v5

    .line 3290
    :cond_88
    :goto_52
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 3291
    .line 3292
    .line 3293
    move-result v10

    .line 3294
    if-eqz v10, :cond_8a

    .line 3295
    .line 3296
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3297
    .line 3298
    .line 3299
    move-result-object v10

    .line 3300
    check-cast v10, Ljava/util/Map;

    .line 3301
    .line 3302
    invoke-static {v10, v12, v11, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3303
    .line 3304
    .line 3305
    move-result v14

    .line 3306
    if-nez v14, :cond_89

    .line 3307
    .line 3308
    goto :goto_52

    .line 3309
    :cond_89
    invoke-virtual {v9, v10}, Lcom/sgscq/vpn/w1;->y2(Ljava/util/Map;)Ljava/lang/String;

    .line 3310
    .line 3311
    .line 3312
    move-result-object v10

    .line 3313
    invoke-static {v10}, Lcom/sgscq/vpn/w1;->r1(Ljava/lang/String;)Z

    .line 3314
    .line 3315
    .line 3316
    move-result v14

    .line 3317
    if-nez v14, :cond_88

    .line 3318
    .line 3319
    goto :goto_53

    .line 3320
    :cond_8a
    move-object v10, v11

    .line 3321
    :goto_53
    invoke-static {v10}, Lcom/sgscq/vpn/w1;->r1(Ljava/lang/String;)Z

    .line 3322
    .line 3323
    .line 3324
    move-result v5

    .line 3325
    if-eqz v5, :cond_8b

    .line 3326
    .line 3327
    move-wide/from16 v14, v23

    .line 3328
    .line 3329
    goto :goto_54

    .line 3330
    :cond_8b
    invoke-virtual {v9, v10}, Lcom/sgscq/vpn/w1;->e1(Ljava/lang/String;)Ljava/util/Map;

    .line 3331
    .line 3332
    .line 3333
    move-result-object v5

    .line 3334
    filled-new-array {v6, v13, v7}, [Ljava/lang/String;

    .line 3335
    .line 3336
    .line 3337
    move-result-object v10

    .line 3338
    const/4 v14, 0x0

    .line 3339
    invoke-static {v14, v5, v10}, Lcom/sgscq/vpn/w1;->Z(Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)D

    .line 3340
    .line 3341
    .line 3342
    move-result-wide v14

    .line 3343
    :goto_54
    add-double/2addr v3, v14

    .line 3344
    invoke-static {v0, v8}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 3345
    .line 3346
    .line 3347
    move-result-object v0

    .line 3348
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 3349
    .line 3350
    .line 3351
    move-result-object v0

    .line 3352
    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 3353
    .line 3354
    .line 3355
    move-result v5

    .line 3356
    if-eqz v5, :cond_8e

    .line 3357
    .line 3358
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3359
    .line 3360
    .line 3361
    move-result-object v5

    .line 3362
    check-cast v5, Ljava/util/Map;

    .line 3363
    .line 3364
    invoke-static {v5, v12, v11, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3365
    .line 3366
    .line 3367
    move-result v10

    .line 3368
    if-nez v10, :cond_8c

    .line 3369
    .line 3370
    goto :goto_55

    .line 3371
    :cond_8c
    invoke-virtual {v9, v8, v5}, Lcom/sgscq/vpn/w1;->Y(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    .line 3372
    .line 3373
    .line 3374
    move-result-object v5

    .line 3375
    invoke-static {v5}, Lcom/sgscq/vpn/w1;->r1(Ljava/lang/String;)Z

    .line 3376
    .line 3377
    .line 3378
    move-result v10

    .line 3379
    if-eqz v10, :cond_8d

    .line 3380
    .line 3381
    goto :goto_55

    .line 3382
    :cond_8d
    invoke-virtual {v9, v5}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    .line 3383
    .line 3384
    .line 3385
    move-result-object v5

    .line 3386
    filled-new-array {v6, v13, v7}, [Ljava/lang/String;

    .line 3387
    .line 3388
    .line 3389
    move-result-object v10

    .line 3390
    const/4 v14, 0x0

    .line 3391
    invoke-static {v14, v5, v10}, Lcom/sgscq/vpn/w1;->Z(Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)D

    .line 3392
    .line 3393
    .line 3394
    move-result-wide v14

    .line 3395
    add-double v23, v23, v14

    .line 3396
    .line 3397
    goto :goto_55

    .line 3398
    :cond_8e
    add-double v3, v3, v23

    .line 3399
    .line 3400
    move-wide/from16 v13, v53

    .line 3401
    .line 3402
    move-wide/from16 v15, v55

    .line 3403
    .line 3404
    move-wide/from16 v17, v57

    .line 3405
    .line 3406
    move-wide/from16 v19, v59

    .line 3407
    .line 3408
    invoke-static/range {v13 .. v20}, Lcom/sgscq/vpn/w1;->x(DDDD)D

    .line 3409
    .line 3410
    .line 3411
    move-result-wide v5

    .line 3412
    add-double v61, v5, v3

    .line 3413
    .line 3414
    new-instance v0, Lcom/sgscq/vpn/t1;

    .line 3415
    .line 3416
    move-object/from16 v36, v0

    .line 3417
    .line 3418
    const/4 v2, 0x0

    .line 3419
    aget-wide v37, v1, v2

    .line 3420
    .line 3421
    const/4 v2, 0x1

    .line 3422
    aget-wide v39, v1, v2

    .line 3423
    .line 3424
    const/4 v2, 0x2

    .line 3425
    aget-wide v41, v1, v2

    .line 3426
    .line 3427
    const/4 v2, 0x3

    .line 3428
    aget-wide v43, v1, v2

    .line 3429
    .line 3430
    invoke-direct/range {v36 .. v62}, Lcom/sgscq/vpn/t1;-><init>(DDDDDDDDDDDDD)V

    .line 3431
    .line 3432
    .line 3433
    return-object v0

    .line 3434
    nop

    .line 3435
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 3436
    .line 3437
    .line 3438
    .line 3439
    .line 3440
    .line 3441
    .line 3442
    .line 3443
    .line 3444
    .line 3445
    .line 3446
    .line 3447
    .line 3448
    .line 3449
    .line 3450
    .line 3451
    .line 3452
    .line 3453
    .line 3454
    .line 3455
    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 3456
    .line 3457
    .line 3458
    .line 3459
    .line 3460
    .line 3461
    .line 3462
    .line 3463
    .line 3464
    .line 3465
    .line 3466
    .line 3467
    .line 3468
    .line 3469
    .line 3470
    .line 3471
    .line 3472
    .line 3473
    .line 3474
    .line 3475
    :array_2
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final z0(Ljava/lang/String;)Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->k:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->L1()V

    :cond_0
    iget-object v0, p0, Lcom/sgscq/vpn/w1;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public final z2(Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "id"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "general_id"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    const-string v0, "lieutenant_skill_id"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
