.class public final Lcom/sgscq/vpn/handler/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sgscq/vpn/handler/b0;

    invoke-direct {v0}, Lcom/sgscq/vpn/handler/b0;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/handler/j;->c:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sgscq/vpn/handler/j;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ZZLjava/util/ArrayList;Ljava/util/LinkedHashSet;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sgscq/vpn/handler/j;->a:Z

    iput-boolean p2, p0, Lcom/sgscq/vpn/handler/j;->b:Z

    iput-object p3, p0, Lcom/sgscq/vpn/handler/j;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/sgscq/vpn/handler/j;->d:Ljava/lang/Object;

    return-void
.end method

.method public static d()Lcom/sgscq/vpn/handler/j;
    .locals 4

    .line 1
    new-instance v0, Lcom/sgscq/vpn/handler/j;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/sgscq/vpn/handler/j;-><init>(ZZLjava/util/ArrayList;Ljava/util/LinkedHashSet;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/Map;Ljava/util/AbstractCollection;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/sgscq/vpn/handler/j;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/sgscq/vpn/handler/b0;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/sgscq/vpn/handler/b0;->a:Ljava/util/ArrayList;

    .line 8
    .line 9
    const-string v2, "General"

    .line 10
    .line 11
    invoke-static {p1, p2, v2, v1}, Lcom/sgscq/vpn/handler/y0;->a(Ljava/util/Map;Ljava/util/AbstractCollection;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lcom/sgscq/vpn/handler/b0;->b:Ljava/util/ArrayList;

    .line 15
    .line 16
    const-string v2, "Skill"

    .line 17
    .line 18
    invoke-static {p1, p2, v2, v1}, Lcom/sgscq/vpn/handler/y0;->a(Ljava/util/Map;Ljava/util/AbstractCollection;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lcom/sgscq/vpn/handler/b0;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    const-string v2, "Item"

    .line 24
    .line 25
    invoke-static {p1, p2, v2, v1}, Lcom/sgscq/vpn/handler/y0;->a(Ljava/util/Map;Ljava/util/AbstractCollection;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lcom/sgscq/vpn/handler/b0;->d:Ljava/util/ArrayList;

    .line 29
    .line 30
    const-string v2, "GeneralSoul"

    .line 31
    .line 32
    invoke-static {p1, p2, v2, v1}, Lcom/sgscq/vpn/handler/y0;->a(Ljava/util/Map;Ljava/util/AbstractCollection;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/sgscq/vpn/handler/b0;->e:Ljava/util/ArrayList;

    .line 36
    .line 37
    const-string v2, "Equipment"

    .line 38
    .line 39
    invoke-static {p1, p2, v2, v1}, Lcom/sgscq/vpn/handler/y0;->a(Ljava/util/Map;Ljava/util/AbstractCollection;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Lcom/sgscq/vpn/handler/b0;->f:Ljava/util/ArrayList;

    .line 43
    .line 44
    const-string v2, "EquipmentPiece"

    .line 45
    .line 46
    invoke-static {p1, p2, v2, v1}, Lcom/sgscq/vpn/handler/y0;->a(Ljava/util/Map;Ljava/util/AbstractCollection;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v0, Lcom/sgscq/vpn/handler/b0;->g:Ljava/util/ArrayList;

    .line 50
    .line 51
    const-string v2, "Atlas"

    .line 52
    .line 53
    invoke-static {p1, p2, v2, v1}, Lcom/sgscq/vpn/handler/y0;->a(Ljava/util/Map;Ljava/util/AbstractCollection;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 54
    .line 55
    .line 56
    iget-boolean p1, p0, Lcom/sgscq/vpn/handler/j;->b:Z

    .line 57
    .line 58
    if-nez p1, :cond_0

    .line 59
    .line 60
    iget p1, v0, Lcom/sgscq/vpn/handler/b0;->h:I

    .line 61
    .line 62
    if-gtz p1, :cond_0

    .line 63
    .line 64
    iget-boolean p1, v0, Lcom/sgscq/vpn/handler/b0;->i:Z

    .line 65
    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    :cond_0
    const-string p1, "Player"

    .line 69
    .line 70
    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_1

    .line 75
    .line 76
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :cond_1
    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/handler/j;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    const-string v0, "surrender_info"

    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    instance-of v2, v1, Ljava/util/Map;

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/sgscq/vpn/handler/j;->d:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    check-cast v1, Ljava/util/Map;

    .line 34
    .line 35
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "general_list"

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    sget-object v4, Lcom/sgscq/vpn/handler/y0;->a:Ljava/util/Set;

    .line 45
    .line 46
    instance-of v4, v3, Ljava/util/Map;

    .line 47
    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 51
    .line 52
    check-cast v3, Ljava/util/Map;

    .line 53
    .line 54
    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 59
    .line 60
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    :goto_0
    iget-object v3, p0, Lcom/sgscq/vpn/handler/j;->d:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v3, Ljava/util/Map;

    .line 66
    .line 67
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    instance-of v5, v3, Ljava/util/Map;

    .line 72
    .line 73
    if-eqz v5, :cond_3

    .line 74
    .line 75
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 76
    .line 77
    check-cast v3, Ljava/util/Map;

    .line 78
    .line 79
    invoke-direct {v5, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 84
    .line 85
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_5

    .line 101
    .line 102
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    check-cast v5, Ljava/util/Map$Entry;

    .line 107
    .line 108
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-nez v6, :cond_4

    .line 117
    .line 118
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    check-cast v6, Ljava/lang/String;

    .line 123
    .line 124
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_5
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    :goto_3
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/handler/j;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
