.class public final Lcom/sgscq/vpn/battle/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sgscq/vpn/battle/a;->c:Ljava/lang/Object;

    iput p1, p0, Lcom/sgscq/vpn/battle/a;->a:I

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/vpn/battle/a;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lcom/sgscq/vpn/cloud/g;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/battle/a;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/sgscq/vpn/battle/a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sgscq/vpn/battle/a;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;II)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/battle/a;->b:Ljava/util/List;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/battle/a;->c:Ljava/lang/Object;

    iput p3, p0, Lcom/sgscq/vpn/battle/a;->a:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lcom/sgscq/vpn/battle/a;->a(Ljava/util/List;II)V

    invoke-virtual {p0, p2, v0, p4}, Lcom/sgscq/vpn/battle/a;->a(Ljava/util/List;II)V

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    invoke-virtual {p0, p1, p3, v1}, Lcom/sgscq/vpn/battle/a;->a(Ljava/util/List;II)V

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    invoke-virtual {p0, p2, p4, v0}, Lcom/sgscq/vpn/battle/a;->a(Ljava/util/List;II)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;II)V
    .locals 18

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
    return-void

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    move/from16 v3, p2

    .line 10
    .line 11
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    move/from16 v4, p3

    .line 20
    .line 21
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-ge v2, v3, :cond_1

    .line 26
    .line 27
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/sgscq/vpn/battle/BattleUnit;

    .line 32
    .line 33
    iget-object v5, v0, Lcom/sgscq/vpn/battle/a;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v5, Ljava/util/Map;

    .line 36
    .line 37
    iget-object v6, v0, Lcom/sgscq/vpn/battle/a;->b:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-interface {v5, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    const-string v8, "id"

    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/sgscq/vpn/battle/BattleUnit;->getId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    const-string v10, "hpCur"

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/sgscq/vpn/battle/BattleUnit;->getHpMax()D

    .line 59
    .line 60
    .line 61
    move-result-wide v11

    .line 62
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    const-string v12, "hpMax"

    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/sgscq/vpn/battle/BattleUnit;->getHpMax()D

    .line 69
    .line 70
    .line 71
    move-result-wide v13

    .line 72
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 73
    .line 74
    .line 75
    move-result-object v13

    .line 76
    const-string v14, "name"

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/sgscq/vpn/battle/BattleUnit;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v15

    .line 82
    const-string v16, "evolution_image_status"

    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/sgscq/vpn/battle/BattleUnit;->hasEvolutionImage()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 89
    .line 90
    .line 91
    move-result-object v17

    .line 92
    filled-new-array/range {v8 .. v17}, [Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-static {v3}, La/w;->p([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    add-int/lit8 v2, v2, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    return-void
.end method
