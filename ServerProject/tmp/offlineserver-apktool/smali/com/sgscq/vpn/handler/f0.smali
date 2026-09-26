.class public final Lcom/sgscq/vpn/handler/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:[I


# instance fields
.field public final a:Lcom/sgscq/vpn/handler/k0;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xe1

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    const/16 v3, 0x32

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/f0;->b:[I

    return-void
.end method

.method public constructor <init>(Lcom/sgscq/vpn/handler/k0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/handler/f0;->a:Lcom/sgscq/vpn/handler/k0;

    return-void
.end method

.method public static a(Ljava/util/Map;)Ljava/util/List;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    const-string v0, "bore_list"

    .line 10
    .line 11
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    instance-of v2, v1, Ljava/util/List;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    check-cast v1, Ljava/util/List;

    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_1
    invoke-static {p0, v0}, Lc/a;->o(Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/Map;

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p0, Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "del"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "upd"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/util/Map;)I
    .locals 8

    .line 1
    const-string v0, "Item"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v3, :cond_4

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/util/Map;

    .line 28
    .line 29
    const-string v5, "id"

    .line 30
    .line 31
    const-string v6, ""

    .line 32
    .line 33
    const-string v7, "item_id"

    .line 34
    .line 35
    invoke-static {v3, v5, v6, v7, p0}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string p0, "item_num"

    .line 43
    .line 44
    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v5, "num"

    .line 49
    .line 50
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-static {v7, v4}, Lcom/sgscq/vpn/handler/f0;->n(Ljava/lang/Object;I)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    invoke-static {v2, v7}, Lcom/sgscq/vpn/handler/f0;->n(Ljava/lang/Object;I)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    const/4 v7, 0x1

    .line 63
    if-ge v2, v7, :cond_1

    .line 64
    .line 65
    return v4

    .line 66
    :cond_1
    sub-int/2addr v2, v7

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-interface {v3, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-interface {v3, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    const-string p0, "total_num"

    .line 82
    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-interface {v3, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    invoke-static {v0, p1}, Lcom/sgscq/vpn/handler/f0;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {p0}, Lcom/sgscq/vpn/handler/f0;->l(Ljava/util/Map;)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    new-instance v4, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    if-gtz v2, :cond_2

    .line 104
    .line 105
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    const-string v2, "pk_id"

    .line 109
    .line 110
    invoke-interface {v3, v2, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-nez v3, :cond_3

    .line 123
    .line 124
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-nez v3, :cond_3

    .line 129
    .line 130
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    :cond_3
    :goto_1
    const-string v2, "upd"

    .line 138
    .line 139
    const-string v3, "add"

    .line 140
    .line 141
    filled-new-array {v2, v4, v3, v1}, [Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const-string v2, "del"

    .line 146
    .line 147
    invoke-static {v2, p0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    return v7

    .line 155
    :cond_4
    return v4
.end method

.method public static d(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 5

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "upd"

    const-string v4, "add"

    filled-new-array {v3, v1, v4, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "del"

    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static e(Ljava/lang/String;I)Ljava/util/LinkedHashMap;
    .locals 9

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "code"

    const-string v3, "result"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v5, "msg"

    const-string v7, "error_code"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v2, v0

    move-object v6, p0

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ret"

    invoke-static {p1, v0, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    const-string p1, "cmn_modules"

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 2

    .line 1
    if-eqz p0, :cond_2

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
    const-string v0, "Equipment"

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/util/Map;

    .line 31
    .line 32
    const-string v1, "pk_id"

    .line 33
    .line 34
    invoke-static {v0, v1, p0}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

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

.method public static g(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 2

    .line 1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Equipment"

    invoke-static {v0, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/sgscq/vpn/handler/f0;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 2

    .line 1
    if-eqz p0, :cond_2

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
    const-string v0, "Gems"

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/util/Map;

    .line 31
    .line 32
    const-string v1, "pk_id"

    .line 33
    .line 34
    invoke-static {v0, v1, p0}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

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

.method public static i(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    if-eqz p0, :cond_2

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
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1}, Lcom/sgscq/vpn/handler/f0;->a(Ljava/util/Map;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/Map;

    .line 32
    .line 33
    const-string v2, "bore_id"

    .line 34
    .line 35
    invoke-static {v1, v2, p0}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static j(Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v1, "id"

    .line 7
    .line 8
    const-string v2, "gem_id"

    .line 9
    .line 10
    invoke-static {p0, v1, v0, v2}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static l(Ljava/util/Map;)Ljava/util/List;
    .locals 3

    .line 1
    const-string v0, "del"

    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/util/List;

    return-object v1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1
.end method

.method public static varargs m([Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static n(Ljava/lang/Object;I)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static varargs o(Ljava/util/Map;Ljava/lang/String;[Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    array-length v3, p2

    .line 12
    const/4 v4, 0x0

    .line 13
    :goto_0
    const-string v5, "General"

    .line 14
    .line 15
    if-ge v4, v3, :cond_d

    .line 16
    .line 17
    aget-object v6, p2, v4

    .line 18
    .line 19
    const-string v7, ""

    .line 20
    .line 21
    if-nez v6, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    const-string v8, "general_pk_id"

    .line 25
    .line 26
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    const-string v9, "0"

    .line 31
    .line 32
    if-eqz v8, :cond_1

    .line 33
    .line 34
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v10

    .line 38
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v10

    .line 42
    if-nez v10, :cond_1

    .line 43
    .line 44
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    if-eqz v10, :cond_2

    .line 53
    .line 54
    :cond_1
    const-string v8, "user_general_id"

    .line 55
    .line 56
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    :cond_2
    if-eqz v8, :cond_3

    .line 61
    .line 62
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    if-nez v10, :cond_3

    .line 71
    .line 72
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    if-eqz v10, :cond_4

    .line 81
    .line 82
    :cond_3
    const-string v8, "general_id"

    .line 83
    .line 84
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    :cond_4
    if-nez v8, :cond_5

    .line 89
    .line 90
    move-object v6, v7

    .line 91
    goto :goto_1

    .line 92
    :cond_5
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    :goto_1
    const-string v8, "null"

    .line 97
    .line 98
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-nez v8, :cond_7

    .line 103
    .line 104
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    if-eqz v8, :cond_6

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_6
    move-object v7, v6

    .line 112
    :cond_7
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-eqz v6, :cond_8

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_8
    invoke-virtual {v2, v7, p0}, Lcom/sgscq/vpn/w1;->F2(Ljava/lang/String;Ljava/util/Map;)Z

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-eqz v6, :cond_9

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_9
    invoke-static {v5, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-eqz v6, :cond_b

    .line 142
    .line 143
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    check-cast v6, Ljava/util/Map;

    .line 148
    .line 149
    const-string v8, "pk_id"

    .line 150
    .line 151
    invoke-static {v6, v8, v7}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    if-eqz v8, :cond_a

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_b
    :goto_3
    move-object v6, v1

    .line 159
    :goto_4
    if-eqz v6, :cond_c

    .line 160
    .line 161
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    if-nez v5, :cond_c

    .line 166
    .line 167
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    :cond_c
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    if-eqz p2, :cond_e

    .line 179
    .line 180
    invoke-static {p1}, Lcom/sgscq/vpn/handler/f0;->p(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    return-object p0

    .line 185
    :cond_e
    new-instance p2, Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-static {v5, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    const-string v2, "upd"

    .line 195
    .line 196
    const-string v3, "add"

    .line 197
    .line 198
    filled-new-array {v2, v0, v3, v1}, [Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    const-string v1, "del"

    .line 203
    .line 204
    invoke-static {v1, p2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-interface {p0, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    invoke-static {p0}, Lcom/sgscq/vpn/w1;->H2(Ljava/util/Map;)I

    .line 212
    .line 213
    .line 214
    const-string p0, ",General,TeamGeneral"

    .line 215
    .line 216
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    invoke-static {p0}, Lcom/sgscq/vpn/handler/f0;->p(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    return-object p0
.end method

.method public static p(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 11

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v1, "code"

    const-string v3, "result"

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "msg"

    const-string v6, "success"

    const-string v7, "error_code"

    move-object v2, v9

    move-object v4, v10

    move-object v8, v9

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ret"

    invoke-static {v2, v9, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "result"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v10, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v2, "return_info"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cmn_modules"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static varargs q(Ljava/util/Map;[Ljava/util/Map;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/sgscq/vpn/handler/f0;->m([Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Equipment"

    invoke-static {v1, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    const-string v3, "upd"

    const-string v4, "add"

    filled-new-array {v3, p1, v4, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "del"

    invoke-static {v2, v0, p1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static varargs r(Ljava/util/Map;[Ljava/util/Map;)V
    .locals 5

    .line 1
    const-string v0, "Gems"

    invoke-static {v0, p0}, Lcom/sgscq/vpn/handler/f0;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/sgscq/vpn/handler/f0;->l(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lcom/sgscq/vpn/handler/f0;->m([Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v0, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    const-string v3, "upd"

    const-string v4, "add"

    filled-new-array {v3, p1, v4, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "del"

    invoke-static {v2, v1, p1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 30

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
    const-string v3, "gem.lock"

    .line 8
    .line 9
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v5, 0x0

    .line 14
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v9

    .line 18
    const-string v6, "gem.bore"

    .line 19
    .line 20
    const-string v7, "gem.gemInherit"

    .line 21
    .line 22
    const-string v8, "gem.gemRemove"

    .line 23
    .line 24
    const-string v10, "gem.gemInset"

    .line 25
    .line 26
    const-string v11, "gem.unlock"

    .line 27
    .line 28
    const-string v14, "gem.chgProperty"

    .line 29
    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_0

    .line 37
    .line 38
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_0

    .line 43
    .line 44
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_0

    .line 49
    .line 50
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_0

    .line 55
    .line 56
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_0

    .line 61
    .line 62
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-nez v4, :cond_0

    .line 67
    .line 68
    const-string v4, "gem.gemCompose"

    .line 69
    .line 70
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_1

    .line 75
    .line 76
    :cond_0
    const/4 v5, 0x1

    .line 77
    :cond_1
    const/4 v4, 0x0

    .line 78
    if-nez v5, :cond_2

    .line 79
    .line 80
    return-object v4

    .line 81
    :cond_2
    iget-object v4, v0, Lcom/sgscq/vpn/handler/f0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 82
    .line 83
    invoke-virtual {v4, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    iget-object v15, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 88
    .line 89
    invoke-virtual {v15, v5}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 90
    .line 91
    .line 92
    move-result-object v12

    .line 93
    if-nez v12, :cond_3

    .line 94
    .line 95
    new-instance v12, Ljava/util/LinkedHashMap;

    .line 96
    .line 97
    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 98
    .line 99
    .line 100
    :cond_3
    move-object v13, v12

    .line 101
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    const-string v12, "Gems"

    .line 106
    .line 107
    move-object/from16 v22, v15

    .line 108
    .line 109
    const-string v15, "user_gold"

    .line 110
    .line 111
    move-object/from16 v16, v12

    .line 112
    .line 113
    const-string v12, "is_lock"

    .line 114
    .line 115
    move-object/from16 v24, v5

    .line 116
    .line 117
    const-string v5, "Equipment"

    .line 118
    .line 119
    move-object/from16 v25, v4

    .line 120
    .line 121
    const-string v4, "bore_id"

    .line 122
    .line 123
    const-string v0, ""

    .line 124
    .line 125
    if-eqz v3, :cond_5

    .line 126
    .line 127
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    check-cast v2, Ljava/lang/String;

    .line 132
    .line 133
    invoke-static {v2, v13}, Lcom/sgscq/vpn/handler/f0;->g(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/f0;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    const/4 v4, 0x1

    .line 142
    if-eqz v2, :cond_4

    .line 143
    .line 144
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-interface {v2, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    :cond_4
    new-array v2, v4, [Ljava/util/Map;

    .line 152
    .line 153
    const/4 v4, 0x0

    .line 154
    aput-object v3, v2, v4

    .line 155
    .line 156
    invoke-static {v13, v2}, Lcom/sgscq/vpn/handler/f0;->q(Ljava/util/Map;[Ljava/util/Map;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v5}, Lcom/sgscq/vpn/handler/f0;->p(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    goto :goto_0

    .line 164
    :cond_5
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-eqz v3, :cond_7

    .line 169
    .line 170
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    check-cast v2, Ljava/lang/String;

    .line 175
    .line 176
    invoke-static {v2, v13}, Lcom/sgscq/vpn/handler/f0;->g(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/f0;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    if-eqz v2, :cond_6

    .line 185
    .line 186
    invoke-interface {v2, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    :cond_6
    const/4 v2, 0x1

    .line 190
    new-array v2, v2, [Ljava/util/Map;

    .line 191
    .line 192
    const/4 v4, 0x0

    .line 193
    aput-object v3, v2, v4

    .line 194
    .line 195
    invoke-static {v13, v2}, Lcom/sgscq/vpn/handler/f0;->q(Ljava/util/Map;[Ljava/util/Map;)V

    .line 196
    .line 197
    .line 198
    invoke-static {v5}, Lcom/sgscq/vpn/handler/f0;->p(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    :goto_0
    move-object/from16 v23, v14

    .line 203
    .line 204
    goto/16 :goto_5

    .line 205
    .line 206
    :cond_7
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    const-string v11, "bore_type"

    .line 211
    .line 212
    const-string v17, "Equipment,Item"

    .line 213
    .line 214
    move-object/from16 v23, v14

    .line 215
    .line 216
    const-string v14, "equipment_id"

    .line 217
    .line 218
    move-object/from16 v26, v9

    .line 219
    .line 220
    const-string v9, "user_equipment_id"

    .line 221
    .line 222
    if-eqz v3, :cond_10

    .line 223
    .line 224
    invoke-interface {v2, v14, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    check-cast v3, Ljava/lang/String;

    .line 229
    .line 230
    invoke-interface {v2, v9, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    check-cast v2, Ljava/lang/String;

    .line 235
    .line 236
    invoke-static {v2, v13}, Lcom/sgscq/vpn/handler/f0;->f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    if-eqz v2, :cond_f

    .line 241
    .line 242
    invoke-static {v2}, Lcom/sgscq/vpn/handler/f0;->a(Ljava/util/Map;)Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    const/4 v4, 0x0

    .line 251
    :cond_8
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 252
    .line 253
    .line 254
    move-result v6

    .line 255
    if-eqz v6, :cond_9

    .line 256
    .line 257
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    check-cast v6, Ljava/util/Map;

    .line 262
    .line 263
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    const/4 v7, 0x0

    .line 268
    invoke-static {v6, v7}, Lcom/sgscq/vpn/handler/f0;->n(Ljava/lang/Object;I)I

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    const/4 v7, 0x1

    .line 273
    if-ne v6, v7, :cond_8

    .line 274
    .line 275
    add-int/lit8 v4, v4, 0x1

    .line 276
    .line 277
    goto :goto_1

    .line 278
    :cond_9
    const/4 v3, 0x4

    .line 279
    if-ge v4, v3, :cond_a

    .line 280
    .line 281
    sget-object v3, Lcom/sgscq/vpn/handler/f0;->b:[I

    .line 282
    .line 283
    aget v3, v3, v4

    .line 284
    .line 285
    goto :goto_2

    .line 286
    :cond_a
    const/4 v3, 0x0

    .line 287
    :goto_2
    if-lez v3, :cond_b

    .line 288
    .line 289
    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    const/4 v6, 0x0

    .line 294
    invoke-static {v4, v6}, Lcom/sgscq/vpn/handler/f0;->n(Ljava/lang/Object;I)I

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-ge v4, v3, :cond_b

    .line 299
    .line 300
    const-string v2, "\u5143\u5b9d\u4e0d\u8db3"

    .line 301
    .line 302
    goto :goto_3

    .line 303
    :cond_b
    const-string v4, "600077"

    .line 304
    .line 305
    invoke-static {v4, v13}, Lcom/sgscq/vpn/handler/f0;->c(Ljava/lang/String;Ljava/util/Map;)I

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    if-gtz v4, :cond_c

    .line 310
    .line 311
    const-string v2, "\u7f3a\u5c11\u6d17\u70bc\u77f3"

    .line 312
    .line 313
    :goto_3
    const/4 v3, 0x1

    .line 314
    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/f0;->e(Ljava/lang/String;I)Ljava/util/LinkedHashMap;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    goto :goto_5

    .line 319
    :cond_c
    if-lez v3, :cond_d

    .line 320
    .line 321
    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    const/4 v6, 0x0

    .line 326
    invoke-static {v4, v6}, Lcom/sgscq/vpn/handler/f0;->n(Ljava/lang/Object;I)I

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    sub-int/2addr v4, v3

    .line 331
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    invoke-interface {v13, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    :cond_d
    invoke-static {v2}, Lcom/sgscq/vpn/handler/f0;->a(Ljava/util/Map;)Ljava/util/List;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 347
    .line 348
    .line 349
    move-result v4

    .line 350
    if-eqz v4, :cond_f

    .line 351
    .line 352
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    check-cast v4, Ljava/util/Map;

    .line 357
    .line 358
    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    const/4 v7, 0x0

    .line 363
    invoke-static {v6, v7}, Lcom/sgscq/vpn/handler/f0;->n(Ljava/lang/Object;I)I

    .line 364
    .line 365
    .line 366
    move-result v6

    .line 367
    const/4 v7, 0x1

    .line 368
    if-ne v6, v7, :cond_e

    .line 369
    .line 370
    goto :goto_4

    .line 371
    :cond_e
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    .line 372
    .line 373
    .line 374
    move-result-object v6

    .line 375
    const/4 v8, 0x5

    .line 376
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    .line 377
    .line 378
    .line 379
    move-result v6

    .line 380
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 381
    .line 382
    .line 383
    move-result-object v6

    .line 384
    invoke-interface {v4, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    goto :goto_4

    .line 388
    :cond_f
    const/4 v3, 0x0

    .line 389
    const/4 v4, 0x1

    .line 390
    new-array v4, v4, [Ljava/util/Map;

    .line 391
    .line 392
    aput-object v2, v4, v3

    .line 393
    .line 394
    invoke-static {v13, v4}, Lcom/sgscq/vpn/handler/f0;->q(Ljava/util/Map;[Ljava/util/Map;)V

    .line 395
    .line 396
    .line 397
    invoke-static/range {v17 .. v17}, Lcom/sgscq/vpn/handler/f0;->p(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    :goto_5
    move-object v7, v0

    .line 402
    move-object/from16 v28, v5

    .line 403
    .line 404
    move-object v12, v13

    .line 405
    move-object/from16 v27, v15

    .line 406
    .line 407
    :goto_6
    move-object/from16 v0, v16

    .line 408
    .line 409
    :goto_7
    move-object/from16 v3, v23

    .line 410
    .line 411
    goto/16 :goto_22

    .line 412
    .line 413
    :cond_10
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    const-string v10, "total_num"

    .line 418
    .line 419
    const-string v12, "Equipment,Gems"

    .line 420
    .line 421
    move-object/from16 v27, v15

    .line 422
    .line 423
    const-string v15, "type"

    .line 424
    .line 425
    move-object/from16 v18, v9

    .line 426
    .line 427
    const-string v9, "used_num"

    .line 428
    .line 429
    move-object/from16 v19, v14

    .line 430
    .line 431
    const-string v14, "gem_id"

    .line 432
    .line 433
    move-object/from16 v20, v6

    .line 434
    .line 435
    const-string v6, "user_gem_id"

    .line 436
    .line 437
    if-eqz v3, :cond_1b

    .line 438
    .line 439
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    check-cast v3, Ljava/lang/String;

    .line 444
    .line 445
    invoke-interface {v2, v6, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    check-cast v2, Ljava/lang/String;

    .line 450
    .line 451
    invoke-static {v3, v13}, Lcom/sgscq/vpn/handler/f0;->g(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 452
    .line 453
    .line 454
    move-result-object v4

    .line 455
    invoke-static {v3, v4}, Lcom/sgscq/vpn/handler/f0;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    invoke-static {v2, v13}, Lcom/sgscq/vpn/handler/f0;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 460
    .line 461
    .line 462
    move-result-object v7

    .line 463
    if-eqz v3, :cond_1a

    .line 464
    .line 465
    if-nez v7, :cond_11

    .line 466
    .line 467
    goto/16 :goto_c

    .line 468
    .line 469
    :cond_11
    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v8

    .line 473
    const/4 v11, 0x0

    .line 474
    invoke-static {v8, v11}, Lcom/sgscq/vpn/handler/f0;->n(Ljava/lang/Object;I)I

    .line 475
    .line 476
    .line 477
    move-result v8

    .line 478
    const/4 v11, 0x0

    .line 479
    move-object/from16 v28, v5

    .line 480
    .line 481
    invoke-static {v11}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 482
    .line 483
    .line 484
    move-result-object v5

    .line 485
    invoke-static {v7}, Lcom/sgscq/vpn/handler/f0;->j(Ljava/util/Map;)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v11

    .line 489
    invoke-virtual {v5, v11}, Lcom/sgscq/vpn/w1;->I0(Ljava/lang/String;)Ljava/util/Map;

    .line 490
    .line 491
    .line 492
    move-result-object v5

    .line 493
    if-nez v5, :cond_12

    .line 494
    .line 495
    const/4 v5, 0x0

    .line 496
    const/4 v11, 0x0

    .line 497
    goto :goto_8

    .line 498
    :cond_12
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v5

    .line 502
    const/4 v11, 0x0

    .line 503
    invoke-static {v5, v11}, Lcom/sgscq/vpn/handler/f0;->n(Ljava/lang/Object;I)I

    .line 504
    .line 505
    .line 506
    move-result v5

    .line 507
    move/from16 v29, v11

    .line 508
    .line 509
    move v11, v5

    .line 510
    move/from16 v5, v29

    .line 511
    .line 512
    :goto_8
    if-lez v11, :cond_13

    .line 513
    .line 514
    goto :goto_9

    .line 515
    :cond_13
    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v11

    .line 519
    invoke-static {v11, v5}, Lcom/sgscq/vpn/handler/f0;->n(Ljava/lang/Object;I)I

    .line 520
    .line 521
    .line 522
    move-result v11

    .line 523
    :goto_9
    if-lez v8, :cond_19

    .line 524
    .line 525
    if-lez v11, :cond_19

    .line 526
    .line 527
    if-eq v8, v11, :cond_14

    .line 528
    .line 529
    goto/16 :goto_b

    .line 530
    .line 531
    :cond_14
    invoke-interface {v3, v6, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v8

    .line 535
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v8

    .line 539
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v11

    .line 543
    if-eqz v11, :cond_15

    .line 544
    .line 545
    const/4 v2, 0x1

    .line 546
    new-array v2, v2, [Ljava/util/Map;

    .line 547
    .line 548
    aput-object v4, v2, v5

    .line 549
    .line 550
    invoke-static {v13, v12, v2}, Lcom/sgscq/vpn/handler/f0;->o(Ljava/util/Map;Ljava/lang/String;[Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 551
    .line 552
    .line 553
    move-result-object v2

    .line 554
    goto/16 :goto_e

    .line 555
    .line 556
    :cond_15
    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v10

    .line 560
    invoke-static {v10, v5}, Lcom/sgscq/vpn/handler/f0;->n(Ljava/lang/Object;I)I

    .line 561
    .line 562
    .line 563
    move-result v10

    .line 564
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v11

    .line 568
    invoke-static {v11, v5}, Lcom/sgscq/vpn/handler/f0;->n(Ljava/lang/Object;I)I

    .line 569
    .line 570
    .line 571
    move-result v5

    .line 572
    sub-int/2addr v10, v5

    .line 573
    if-gtz v10, :cond_16

    .line 574
    .line 575
    const-string v2, "\u5b9d\u77f3\u6570\u91cf\u4e0d\u8db3"

    .line 576
    .line 577
    const/16 v3, 0x1b5f

    .line 578
    .line 579
    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/f0;->e(Ljava/lang/String;I)Ljava/util/LinkedHashMap;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    goto :goto_e

    .line 584
    :cond_16
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 585
    .line 586
    .line 587
    move-result v5

    .line 588
    if-nez v5, :cond_18

    .line 589
    .line 590
    const-string v5, "0"

    .line 591
    .line 592
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result v5

    .line 596
    if-nez v5, :cond_18

    .line 597
    .line 598
    invoke-static {v8, v13}, Lcom/sgscq/vpn/handler/f0;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 599
    .line 600
    .line 601
    move-result-object v11

    .line 602
    if-nez v11, :cond_17

    .line 603
    .line 604
    goto :goto_a

    .line 605
    :cond_17
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v5

    .line 609
    const/4 v8, 0x0

    .line 610
    invoke-static {v5, v8}, Lcom/sgscq/vpn/handler/f0;->n(Ljava/lang/Object;I)I

    .line 611
    .line 612
    .line 613
    move-result v5

    .line 614
    add-int/lit8 v5, v5, -0x1

    .line 615
    .line 616
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    .line 617
    .line 618
    .line 619
    move-result v5

    .line 620
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 621
    .line 622
    .line 623
    move-result-object v5

    .line 624
    invoke-interface {v11, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    goto :goto_a

    .line 628
    :cond_18
    const/4 v11, 0x0

    .line 629
    :goto_a
    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    invoke-static {v7}, Lcom/sgscq/vpn/handler/f0;->j(Ljava/util/Map;)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v2

    .line 636
    invoke-interface {v3, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v2

    .line 643
    const/4 v3, 0x0

    .line 644
    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/f0;->n(Ljava/lang/Object;I)I

    .line 645
    .line 646
    .line 647
    move-result v2

    .line 648
    const/4 v5, 0x1

    .line 649
    add-int/2addr v2, v5

    .line 650
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 651
    .line 652
    .line 653
    move-result-object v2

    .line 654
    invoke-interface {v7, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    new-array v2, v5, [Ljava/util/Map;

    .line 658
    .line 659
    aput-object v4, v2, v3

    .line 660
    .line 661
    invoke-static {v13, v2}, Lcom/sgscq/vpn/handler/f0;->q(Ljava/util/Map;[Ljava/util/Map;)V

    .line 662
    .line 663
    .line 664
    const/4 v2, 0x2

    .line 665
    new-array v2, v2, [Ljava/util/Map;

    .line 666
    .line 667
    aput-object v11, v2, v3

    .line 668
    .line 669
    aput-object v7, v2, v5

    .line 670
    .line 671
    invoke-static {v13, v2}, Lcom/sgscq/vpn/handler/f0;->r(Ljava/util/Map;[Ljava/util/Map;)V

    .line 672
    .line 673
    .line 674
    new-array v2, v5, [Ljava/util/Map;

    .line 675
    .line 676
    aput-object v4, v2, v3

    .line 677
    .line 678
    invoke-static {v13, v12, v2}, Lcom/sgscq/vpn/handler/f0;->o(Ljava/util/Map;Ljava/lang/String;[Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 679
    .line 680
    .line 681
    move-result-object v2

    .line 682
    goto :goto_e

    .line 683
    :cond_19
    :goto_b
    const/4 v2, 0x1

    .line 684
    const-string v3, "\u5b9d\u77f3\u5c5e\u6027\u4e0e\u5b54\u4f4d\u4e0d\u5339\u914d"

    .line 685
    .line 686
    goto :goto_d

    .line 687
    :cond_1a
    :goto_c
    move-object/from16 v28, v5

    .line 688
    .line 689
    const/4 v2, 0x1

    .line 690
    const-string v3, "\u5b9d\u77f3\u9576\u5d4c\u53c2\u6570\u65e0\u6548"

    .line 691
    .line 692
    :goto_d
    invoke-static {v3, v2}, Lcom/sgscq/vpn/handler/f0;->e(Ljava/lang/String;I)Ljava/util/LinkedHashMap;

    .line 693
    .line 694
    .line 695
    move-result-object v2

    .line 696
    :goto_e
    move-object/from16 v5, v28

    .line 697
    .line 698
    goto/16 :goto_14

    .line 699
    .line 700
    :cond_1b
    move-object/from16 v28, v5

    .line 701
    .line 702
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 703
    .line 704
    .line 705
    move-result v5

    .line 706
    if-eqz v5, :cond_20

    .line 707
    .line 708
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v3

    .line 712
    check-cast v3, Ljava/lang/String;

    .line 713
    .line 714
    invoke-interface {v2, v6, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v2

    .line 718
    check-cast v2, Ljava/lang/String;

    .line 719
    .line 720
    invoke-static {v3, v13}, Lcom/sgscq/vpn/handler/f0;->g(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 721
    .line 722
    .line 723
    move-result-object v4

    .line 724
    invoke-static {v3, v4}, Lcom/sgscq/vpn/handler/f0;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 725
    .line 726
    .line 727
    move-result-object v3

    .line 728
    if-eqz v2, :cond_1c

    .line 729
    .line 730
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 731
    .line 732
    .line 733
    move-result v5

    .line 734
    if-eqz v5, :cond_1d

    .line 735
    .line 736
    :cond_1c
    if-eqz v3, :cond_1d

    .line 737
    .line 738
    invoke-interface {v3, v6, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object v2

    .line 742
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v2

    .line 746
    :cond_1d
    invoke-static {v2, v13}, Lcom/sgscq/vpn/handler/f0;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 747
    .line 748
    .line 749
    move-result-object v2

    .line 750
    if-eqz v3, :cond_1e

    .line 751
    .line 752
    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    invoke-interface {v3, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    :cond_1e
    if-nez v2, :cond_1f

    .line 759
    .line 760
    const/4 v3, 0x0

    .line 761
    goto :goto_f

    .line 762
    :cond_1f
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    move-result-object v3

    .line 766
    const/4 v5, 0x0

    .line 767
    invoke-static {v3, v5}, Lcom/sgscq/vpn/handler/f0;->n(Ljava/lang/Object;I)I

    .line 768
    .line 769
    .line 770
    move-result v3

    .line 771
    add-int/lit8 v3, v3, -0x1

    .line 772
    .line 773
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 774
    .line 775
    .line 776
    move-result v3

    .line 777
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 778
    .line 779
    .line 780
    move-result-object v3

    .line 781
    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move v3, v5

    .line 785
    :goto_f
    const/4 v5, 0x1

    .line 786
    new-array v6, v5, [Ljava/util/Map;

    .line 787
    .line 788
    aput-object v4, v6, v3

    .line 789
    .line 790
    invoke-static {v13, v6}, Lcom/sgscq/vpn/handler/f0;->q(Ljava/util/Map;[Ljava/util/Map;)V

    .line 791
    .line 792
    .line 793
    new-array v6, v5, [Ljava/util/Map;

    .line 794
    .line 795
    aput-object v2, v6, v3

    .line 796
    .line 797
    invoke-static {v13, v6}, Lcom/sgscq/vpn/handler/f0;->r(Ljava/util/Map;[Ljava/util/Map;)V

    .line 798
    .line 799
    .line 800
    new-array v2, v5, [Ljava/util/Map;

    .line 801
    .line 802
    aput-object v4, v2, v3

    .line 803
    .line 804
    invoke-static {v13, v12, v2}, Lcom/sgscq/vpn/handler/f0;->o(Ljava/util/Map;Ljava/lang/String;[Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 805
    .line 806
    .line 807
    move-result-object v2

    .line 808
    goto :goto_e

    .line 809
    :cond_20
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 810
    .line 811
    .line 812
    move-result v5

    .line 813
    const-string v12, "bore_list"

    .line 814
    .line 815
    const-string v7, "_b"

    .line 816
    .line 817
    const-string v8, "pk_id"

    .line 818
    .line 819
    if-eqz v5, :cond_26

    .line 820
    .line 821
    const-string v3, "to_equipment_id"

    .line 822
    .line 823
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    move-result-object v3

    .line 827
    check-cast v3, Ljava/lang/String;

    .line 828
    .line 829
    const-string v5, "from_equipment_id"

    .line 830
    .line 831
    invoke-interface {v2, v5, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    move-result-object v2

    .line 835
    check-cast v2, Ljava/lang/String;

    .line 836
    .line 837
    if-eqz v3, :cond_25

    .line 838
    .line 839
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 840
    .line 841
    .line 842
    move-result v5

    .line 843
    if-nez v5, :cond_25

    .line 844
    .line 845
    if-eqz v2, :cond_25

    .line 846
    .line 847
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 848
    .line 849
    .line 850
    move-result v5

    .line 851
    if-nez v5, :cond_25

    .line 852
    .line 853
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 854
    .line 855
    .line 856
    move-result v5

    .line 857
    if-eqz v5, :cond_21

    .line 858
    .line 859
    goto/16 :goto_12

    .line 860
    .line 861
    :cond_21
    invoke-static {v3, v13}, Lcom/sgscq/vpn/handler/f0;->f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 862
    .line 863
    .line 864
    move-result-object v5

    .line 865
    invoke-static {v2, v13}, Lcom/sgscq/vpn/handler/f0;->f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 866
    .line 867
    .line 868
    move-result-object v2

    .line 869
    if-eqz v5, :cond_25

    .line 870
    .line 871
    if-eqz v2, :cond_25

    .line 872
    .line 873
    if-ne v5, v2, :cond_22

    .line 874
    .line 875
    goto :goto_12

    .line 876
    :cond_22
    invoke-static {v2}, Lcom/sgscq/vpn/handler/f0;->a(Ljava/util/Map;)Ljava/util/List;

    .line 877
    .line 878
    .line 879
    move-result-object v6

    .line 880
    new-instance v9, Ljava/util/ArrayList;

    .line 881
    .line 882
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 883
    .line 884
    .line 885
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 886
    .line 887
    .line 888
    move-result-object v6

    .line 889
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 890
    .line 891
    .line 892
    move-result v10

    .line 893
    if-eqz v10, :cond_23

    .line 894
    .line 895
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    move-result-object v10

    .line 899
    check-cast v10, Ljava/util/Map;

    .line 900
    .line 901
    new-instance v11, Ljava/util/LinkedHashMap;

    .line 902
    .line 903
    invoke-direct {v11, v10}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 904
    .line 905
    .line 906
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    .line 908
    .line 909
    goto :goto_10

    .line 910
    :cond_23
    invoke-interface {v5, v8, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    .line 912
    .line 913
    move-result-object v3

    .line 914
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object v3

    .line 918
    const/4 v6, 0x0

    .line 919
    :goto_11
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 920
    .line 921
    .line 922
    move-result v8

    .line 923
    if-ge v6, v8, :cond_24

    .line 924
    .line 925
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    move-result-object v8

    .line 929
    check-cast v8, Ljava/util/Map;

    .line 930
    .line 931
    new-instance v10, Ljava/lang/StringBuilder;

    .line 932
    .line 933
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 934
    .line 935
    .line 936
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    .line 941
    .line 942
    add-int/lit8 v6, v6, 0x1

    .line 943
    .line 944
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 945
    .line 946
    .line 947
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object v10

    .line 951
    invoke-interface {v8, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    .line 953
    .line 954
    goto :goto_11

    .line 955
    :cond_24
    invoke-interface {v5, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    .line 957
    .line 958
    new-instance v3, Ljava/util/ArrayList;

    .line 959
    .line 960
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 961
    .line 962
    .line 963
    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    .line 965
    .line 966
    const/4 v3, 0x2

    .line 967
    new-array v4, v3, [Ljava/util/Map;

    .line 968
    .line 969
    const/4 v6, 0x0

    .line 970
    aput-object v5, v4, v6

    .line 971
    .line 972
    const/4 v7, 0x1

    .line 973
    aput-object v2, v4, v7

    .line 974
    .line 975
    invoke-static {v13, v4}, Lcom/sgscq/vpn/handler/f0;->q(Ljava/util/Map;[Ljava/util/Map;)V

    .line 976
    .line 977
    .line 978
    new-array v3, v3, [Ljava/util/Map;

    .line 979
    .line 980
    aput-object v5, v3, v6

    .line 981
    .line 982
    aput-object v2, v3, v7

    .line 983
    .line 984
    move-object/from16 v5, v28

    .line 985
    .line 986
    invoke-static {v13, v5, v3}, Lcom/sgscq/vpn/handler/f0;->o(Ljava/util/Map;Ljava/lang/String;[Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 987
    .line 988
    .line 989
    move-result-object v2

    .line 990
    goto :goto_14

    .line 991
    :cond_25
    :goto_12
    move-object/from16 v5, v28

    .line 992
    .line 993
    const/4 v2, 0x1

    .line 994
    const-string v3, "\u88c5\u5907\u7ee7\u627f\u53c2\u6570\u65e0\u6548"

    .line 995
    .line 996
    invoke-static {v3, v2}, Lcom/sgscq/vpn/handler/f0;->e(Ljava/lang/String;I)Ljava/util/LinkedHashMap;

    .line 997
    .line 998
    .line 999
    move-result-object v2

    .line 1000
    goto :goto_14

    .line 1001
    :cond_26
    move-object/from16 v11, v20

    .line 1002
    .line 1003
    move-object/from16 v5, v28

    .line 1004
    .line 1005
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1006
    .line 1007
    .line 1008
    move-result v11

    .line 1009
    if-eqz v11, :cond_2a

    .line 1010
    .line 1011
    move-object/from16 v11, v19

    .line 1012
    .line 1013
    invoke-interface {v2, v11, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v3

    .line 1017
    check-cast v3, Ljava/lang/String;

    .line 1018
    .line 1019
    move-object/from16 v6, v18

    .line 1020
    .line 1021
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v2

    .line 1025
    check-cast v2, Ljava/lang/String;

    .line 1026
    .line 1027
    invoke-static {v2, v13}, Lcom/sgscq/vpn/handler/f0;->f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v3

    .line 1031
    if-eqz v3, :cond_29

    .line 1032
    .line 1033
    invoke-static {v3}, Lcom/sgscq/vpn/handler/f0;->a(Ljava/util/Map;)Ljava/util/List;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v14

    .line 1037
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 1038
    .line 1039
    .line 1040
    move-result v6

    .line 1041
    const/4 v9, 0x5

    .line 1042
    if-lt v6, v9, :cond_27

    .line 1043
    .line 1044
    const-string v2, "\u5df2\u8fbe\u6253\u5b54\u4e0a\u9650"

    .line 1045
    .line 1046
    goto :goto_13

    .line 1047
    :cond_27
    const-string v6, "600076"

    .line 1048
    .line 1049
    invoke-static {v6, v13}, Lcom/sgscq/vpn/handler/f0;->c(Ljava/lang/String;Ljava/util/Map;)I

    .line 1050
    .line 1051
    .line 1052
    move-result v6

    .line 1053
    if-gtz v6, :cond_28

    .line 1054
    .line 1055
    const-string v2, "\u7f3a\u5c11\u6253\u5b54\u77f3"

    .line 1056
    .line 1057
    :goto_13
    const/4 v3, 0x1

    .line 1058
    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/f0;->e(Ljava/lang/String;I)Ljava/util/LinkedHashMap;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v2

    .line 1062
    :goto_14
    move-object v7, v0

    .line 1063
    move-object/from16 v28, v5

    .line 1064
    .line 1065
    move-object v12, v13

    .line 1066
    goto/16 :goto_6

    .line 1067
    .line 1068
    :cond_28
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 1069
    .line 1070
    .line 1071
    move-result v6

    .line 1072
    add-int/lit8 v6, v6, 0x1

    .line 1073
    .line 1074
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1077
    .line 1078
    .line 1079
    invoke-interface {v3, v8, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v2

    .line 1083
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v2

    .line 1087
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v2

    .line 1100
    const-string v7, "bore_type"

    .line 1101
    .line 1102
    add-int/lit8 v6, v6, -0x1

    .line 1103
    .line 1104
    rem-int/lit8 v6, v6, 0x4

    .line 1105
    .line 1106
    add-int/lit8 v6, v6, 0x1

    .line 1107
    .line 1108
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v8

    .line 1112
    const-string v9, "is_lock"

    .line 1113
    .line 1114
    const-string v10, "user_gem_id"

    .line 1115
    .line 1116
    const-string v11, ""

    .line 1117
    .line 1118
    const-string v15, "gem_id"

    .line 1119
    .line 1120
    const-string v18, ""

    .line 1121
    .line 1122
    move-object v6, v7

    .line 1123
    move-object v7, v8

    .line 1124
    move-object v8, v9

    .line 1125
    move-object/from16 v9, v26

    .line 1126
    .line 1127
    move-object/from16 v19, v0

    .line 1128
    .line 1129
    move-object/from16 v28, v5

    .line 1130
    .line 1131
    move-object v5, v12

    .line 1132
    move-object/from16 v0, v16

    .line 1133
    .line 1134
    move-object v12, v15

    .line 1135
    move-object v15, v13

    .line 1136
    move-object/from16 v13, v18

    .line 1137
    .line 1138
    filled-new-array/range {v6 .. v13}, [Ljava/lang/Object;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v6

    .line 1142
    invoke-static {v4, v2, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v2

    .line 1146
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1147
    .line 1148
    .line 1149
    invoke-interface {v3, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    .line 1151
    .line 1152
    goto :goto_15

    .line 1153
    :cond_29
    move-object/from16 v19, v0

    .line 1154
    .line 1155
    move-object/from16 v28, v5

    .line 1156
    .line 1157
    move-object v15, v13

    .line 1158
    move-object/from16 v0, v16

    .line 1159
    .line 1160
    :goto_15
    const/4 v2, 0x1

    .line 1161
    new-array v2, v2, [Ljava/util/Map;

    .line 1162
    .line 1163
    const/4 v4, 0x0

    .line 1164
    aput-object v3, v2, v4

    .line 1165
    .line 1166
    invoke-static {v15, v2}, Lcom/sgscq/vpn/handler/f0;->q(Ljava/util/Map;[Ljava/util/Map;)V

    .line 1167
    .line 1168
    .line 1169
    invoke-static/range {v17 .. v17}, Lcom/sgscq/vpn/handler/f0;->p(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v2

    .line 1173
    move-object v12, v15

    .line 1174
    move-object/from16 v7, v19

    .line 1175
    .line 1176
    goto/16 :goto_7

    .line 1177
    .line 1178
    :cond_2a
    move-object/from16 v19, v0

    .line 1179
    .line 1180
    move-object/from16 v28, v5

    .line 1181
    .line 1182
    move-object v12, v13

    .line 1183
    move-object/from16 v0, v16

    .line 1184
    .line 1185
    new-instance v4, Lcom/sgscq/vpn/e5;

    .line 1186
    .line 1187
    const/4 v5, 0x2

    .line 1188
    move-object/from16 v11, p0

    .line 1189
    .line 1190
    move-object/from16 v7, v19

    .line 1191
    .line 1192
    invoke-direct {v4, v11, v5}, Lcom/sgscq/vpn/e5;-><init>(Ljava/lang/Object;I)V

    .line 1193
    .line 1194
    .line 1195
    if-nez v2, :cond_2b

    .line 1196
    .line 1197
    move-object v5, v7

    .line 1198
    goto :goto_16

    .line 1199
    :cond_2b
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v5

    .line 1203
    check-cast v5, Ljava/lang/String;

    .line 1204
    .line 1205
    :goto_16
    if-nez v2, :cond_2c

    .line 1206
    .line 1207
    const/4 v6, 0x0

    .line 1208
    goto :goto_17

    .line 1209
    :cond_2c
    const-string v6, "multi"

    .line 1210
    .line 1211
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v6

    .line 1215
    :goto_17
    const/4 v13, 0x0

    .line 1216
    invoke-static {v6, v13}, Lcom/sgscq/vpn/handler/f0;->n(Ljava/lang/Object;I)I

    .line 1217
    .line 1218
    .line 1219
    move-result v6

    .line 1220
    invoke-static {v5, v12}, Lcom/sgscq/vpn/handler/f0;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v5

    .line 1224
    if-nez v2, :cond_2d

    .line 1225
    .line 1226
    move-object v2, v7

    .line 1227
    goto :goto_18

    .line 1228
    :cond_2d
    invoke-interface {v2, v15, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v2

    .line 1232
    check-cast v2, Ljava/lang/String;

    .line 1233
    .line 1234
    :goto_18
    if-eqz v2, :cond_34

    .line 1235
    .line 1236
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 1237
    .line 1238
    .line 1239
    move-result v13

    .line 1240
    if-eqz v13, :cond_2e

    .line 1241
    .line 1242
    goto :goto_1b

    .line 1243
    :cond_2e
    const/4 v13, -0x1

    .line 1244
    invoke-static {v2, v13}, Lcom/sgscq/vpn/handler/f0;->n(Ljava/lang/Object;I)I

    .line 1245
    .line 1246
    .line 1247
    move-result v13

    .line 1248
    const/4 v3, 0x1

    .line 1249
    if-lt v13, v3, :cond_33

    .line 1250
    .line 1251
    const/4 v3, 0x4

    .line 1252
    if-le v13, v3, :cond_2f

    .line 1253
    .line 1254
    goto :goto_19

    .line 1255
    :cond_2f
    invoke-static {v5}, Lcom/sgscq/vpn/handler/f0;->j(Ljava/util/Map;)Ljava/lang/String;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v3

    .line 1259
    move-object/from16 p2, v2

    .line 1260
    .line 1261
    const-string v2, "60[1-4]\\d{3}"

    .line 1262
    .line 1263
    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 1264
    .line 1265
    .line 1266
    move-result v2

    .line 1267
    if-nez v2, :cond_30

    .line 1268
    .line 1269
    goto :goto_1a

    .line 1270
    :cond_30
    const/4 v2, 0x3

    .line 1271
    const/4 v11, 0x2

    .line 1272
    invoke-virtual {v3, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v2

    .line 1276
    const/4 v11, -0x1

    .line 1277
    invoke-static {v2, v11}, Lcom/sgscq/vpn/handler/f0;->n(Ljava/lang/Object;I)I

    .line 1278
    .line 1279
    .line 1280
    move-result v2

    .line 1281
    const/4 v11, 0x4

    .line 1282
    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v3

    .line 1286
    const/4 v11, 0x0

    .line 1287
    invoke-static {v3, v11}, Lcom/sgscq/vpn/handler/f0;->n(Ljava/lang/Object;I)I

    .line 1288
    .line 1289
    .line 1290
    move-result v3

    .line 1291
    if-gtz v3, :cond_31

    .line 1292
    .line 1293
    goto :goto_1a

    .line 1294
    :cond_31
    if-ne v13, v2, :cond_32

    .line 1295
    .line 1296
    add-int/lit8 v3, v3, 0x1

    .line 1297
    .line 1298
    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1299
    .line 1300
    const-string v11, "60"

    .line 1301
    .line 1302
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1303
    .line 1304
    .line 1305
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1306
    .line 1307
    .line 1308
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v3

    .line 1312
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v3

    .line 1316
    const-string v11, "%03d"

    .line 1317
    .line 1318
    invoke-static {v11, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v3

    .line 1322
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    .line 1324
    .line 1325
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v2

    .line 1329
    goto :goto_1c

    .line 1330
    :cond_33
    :goto_19
    move-object/from16 p2, v2

    .line 1331
    .line 1332
    :goto_1a
    move-object/from16 v2, p2

    .line 1333
    .line 1334
    goto :goto_1c

    .line 1335
    :cond_34
    :goto_1b
    move-object v2, v7

    .line 1336
    :goto_1c
    if-eqz v5, :cond_36

    .line 1337
    .line 1338
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 1339
    .line 1340
    .line 1341
    move-result v3

    .line 1342
    if-nez v3, :cond_35

    .line 1343
    .line 1344
    invoke-virtual {v4, v2}, Lcom/sgscq/vpn/e5;->test(Ljava/lang/Object;)Z

    .line 1345
    .line 1346
    .line 1347
    move-result v3

    .line 1348
    if-nez v3, :cond_36

    .line 1349
    .line 1350
    :cond_35
    const-string v2, "\u5df2\u8fbe\u6700\u9ad8\u5408\u6210\u7b49\u7ea7"

    .line 1351
    .line 1352
    const/16 v3, 0x1b60

    .line 1353
    .line 1354
    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/f0;->e(Ljava/lang/String;I)Ljava/util/LinkedHashMap;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v2

    .line 1358
    goto/16 :goto_7

    .line 1359
    .line 1360
    :cond_36
    if-nez v5, :cond_37

    .line 1361
    .line 1362
    const/4 v3, 0x0

    .line 1363
    const/4 v4, 0x0

    .line 1364
    goto :goto_1d

    .line 1365
    :cond_37
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v3

    .line 1369
    const/4 v4, 0x0

    .line 1370
    invoke-static {v3, v4}, Lcom/sgscq/vpn/handler/f0;->n(Ljava/lang/Object;I)I

    .line 1371
    .line 1372
    .line 1373
    move-result v3

    .line 1374
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v11

    .line 1378
    invoke-static {v11, v4}, Lcom/sgscq/vpn/handler/f0;->n(Ljava/lang/Object;I)I

    .line 1379
    .line 1380
    .line 1381
    move-result v11

    .line 1382
    sub-int/2addr v3, v11

    .line 1383
    move/from16 v29, v4

    .line 1384
    .line 1385
    move v4, v3

    .line 1386
    move/from16 v3, v29

    .line 1387
    .line 1388
    :goto_1d
    if-lez v6, :cond_38

    .line 1389
    .line 1390
    div-int/lit8 v6, v4, 0x3

    .line 1391
    .line 1392
    goto :goto_1e

    .line 1393
    :cond_38
    const/4 v6, 0x1

    .line 1394
    :goto_1e
    div-int/lit8 v4, v4, 0x3

    .line 1395
    .line 1396
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    .line 1397
    .line 1398
    .line 1399
    move-result v4

    .line 1400
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 1401
    .line 1402
    .line 1403
    move-result v4

    .line 1404
    if-eqz v5, :cond_3b

    .line 1405
    .line 1406
    if-lez v4, :cond_3b

    .line 1407
    .line 1408
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v6

    .line 1412
    invoke-static {v6, v3}, Lcom/sgscq/vpn/handler/f0;->n(Ljava/lang/Object;I)I

    .line 1413
    .line 1414
    .line 1415
    move-result v6

    .line 1416
    mul-int/lit8 v11, v4, 0x3

    .line 1417
    .line 1418
    sub-int/2addr v6, v11

    .line 1419
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v6

    .line 1423
    invoke-interface {v5, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    .line 1425
    .line 1426
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v6

    .line 1430
    invoke-static {v6, v3}, Lcom/sgscq/vpn/handler/f0;->n(Ljava/lang/Object;I)I

    .line 1431
    .line 1432
    .line 1433
    move-result v3

    .line 1434
    if-gtz v3, :cond_3b

    .line 1435
    .line 1436
    invoke-interface {v5, v8, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v3

    .line 1440
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v3

    .line 1444
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1445
    .line 1446
    .line 1447
    move-result v6

    .line 1448
    if-eqz v6, :cond_39

    .line 1449
    .line 1450
    goto :goto_1f

    .line 1451
    :cond_39
    invoke-static {v0, v12}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1452
    .line 1453
    .line 1454
    move-result-object v6

    .line 1455
    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1456
    .line 1457
    .line 1458
    invoke-static {v0, v12}, Lcom/sgscq/vpn/handler/f0;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v5

    .line 1462
    invoke-static {v5}, Lcom/sgscq/vpn/handler/f0;->l(Ljava/util/Map;)Ljava/util/List;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v5

    .line 1466
    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 1467
    .line 1468
    .line 1469
    move-result v6

    .line 1470
    if-nez v6, :cond_3a

    .line 1471
    .line 1472
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1473
    .line 1474
    .line 1475
    :cond_3a
    :goto_1f
    const/4 v5, 0x0

    .line 1476
    :cond_3b
    const-string v3, "id"

    .line 1477
    .line 1478
    if-lez v4, :cond_3e

    .line 1479
    .line 1480
    if-eqz v2, :cond_3e

    .line 1481
    .line 1482
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 1483
    .line 1484
    .line 1485
    move-result v6

    .line 1486
    if-nez v6, :cond_3e

    .line 1487
    .line 1488
    invoke-static {v0, v12}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v6

    .line 1492
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v6

    .line 1496
    :goto_20
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1497
    .line 1498
    .line 1499
    move-result v11

    .line 1500
    if-eqz v11, :cond_3d

    .line 1501
    .line 1502
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v11

    .line 1506
    check-cast v11, Ljava/util/Map;

    .line 1507
    .line 1508
    invoke-static {v11}, Lcom/sgscq/vpn/handler/f0;->j(Ljava/util/Map;)Ljava/lang/String;

    .line 1509
    .line 1510
    .line 1511
    move-result-object v13

    .line 1512
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1513
    .line 1514
    .line 1515
    move-result v13

    .line 1516
    if-nez v13, :cond_3c

    .line 1517
    .line 1518
    goto :goto_20

    .line 1519
    :cond_3c
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v6

    .line 1523
    const/4 v8, 0x0

    .line 1524
    invoke-static {v6, v8}, Lcom/sgscq/vpn/handler/f0;->n(Ljava/lang/Object;I)I

    .line 1525
    .line 1526
    .line 1527
    move-result v6

    .line 1528
    add-int/2addr v6, v4

    .line 1529
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v6

    .line 1533
    invoke-interface {v11, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    .line 1535
    .line 1536
    move-object v6, v11

    .line 1537
    goto :goto_21

    .line 1538
    :cond_3d
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 1539
    .line 1540
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1541
    .line 1542
    .line 1543
    move-object/from16 v16, v0

    .line 1544
    .line 1545
    move-object/from16 v17, v12

    .line 1546
    .line 1547
    move-object/from16 v18, v6

    .line 1548
    .line 1549
    move-object/from16 v19, v8

    .line 1550
    .line 1551
    move-object/from16 v20, v3

    .line 1552
    .line 1553
    move-object/from16 v21, v2

    .line 1554
    .line 1555
    invoke-static/range {v16 .. v21}, Lc/a;->x(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    .line 1557
    .line 1558
    invoke-static {v6, v14, v2, v4, v10}, Lcom/sgscq/vpn/handler/l;->b(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1559
    .line 1560
    .line 1561
    move-object/from16 v8, v26

    .line 1562
    .line 1563
    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    .line 1565
    .line 1566
    const-string v8, "is_new"

    .line 1567
    .line 1568
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1569
    .line 1570
    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    .line 1572
    .line 1573
    invoke-static {v0, v12}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v8

    .line 1577
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1578
    .line 1579
    .line 1580
    goto :goto_21

    .line 1581
    :cond_3e
    const/4 v6, 0x0

    .line 1582
    :goto_21
    new-instance v8, Ljava/util/ArrayList;

    .line 1583
    .line 1584
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1585
    .line 1586
    .line 1587
    if-eqz v5, :cond_3f

    .line 1588
    .line 1589
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1590
    .line 1591
    .line 1592
    :cond_3f
    if-eqz v6, :cond_40

    .line 1593
    .line 1594
    if-eq v6, v5, :cond_40

    .line 1595
    .line 1596
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1597
    .line 1598
    .line 1599
    :cond_40
    const/4 v5, 0x0

    .line 1600
    new-array v5, v5, [Ljava/util/Map;

    .line 1601
    .line 1602
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v5

    .line 1606
    check-cast v5, [Ljava/util/Map;

    .line 1607
    .line 1608
    invoke-static {v12, v5}, Lcom/sgscq/vpn/handler/f0;->r(Ljava/util/Map;[Ljava/util/Map;)V

    .line 1609
    .line 1610
    .line 1611
    invoke-static {v0}, Lcom/sgscq/vpn/handler/f0;->p(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1612
    .line 1613
    .line 1614
    move-result-object v5

    .line 1615
    if-eqz v6, :cond_41

    .line 1616
    .line 1617
    const/4 v6, 0x1

    .line 1618
    new-array v6, v6, [Ljava/util/Map;

    .line 1619
    .line 1620
    const/16 v8, 0x9

    .line 1621
    .line 1622
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1623
    .line 1624
    .line 1625
    move-result-object v8

    .line 1626
    const-string v9, "num"

    .line 1627
    .line 1628
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1629
    .line 1630
    .line 1631
    move-result-object v4

    .line 1632
    filled-new-array {v3, v2, v9, v4}, [Ljava/lang/Object;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v2

    .line 1636
    invoke-static {v15, v8, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1637
    .line 1638
    .line 1639
    move-result-object v2

    .line 1640
    const/4 v3, 0x0

    .line 1641
    aput-object v2, v6, v3

    .line 1642
    .line 1643
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v2

    .line 1647
    const-string v3, "add_list"

    .line 1648
    .line 1649
    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    .line 1651
    .line 1652
    :cond_41
    move-object v2, v5

    .line 1653
    goto/16 :goto_7

    .line 1654
    .line 1655
    :goto_22
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1656
    .line 1657
    .line 1658
    move-result v1

    .line 1659
    if-eqz v1, :cond_42

    .line 1660
    .line 1661
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1662
    .line 1663
    const-string v3, "result"

    .line 1664
    .line 1665
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    .line 1667
    .line 1668
    move-result-object v3

    .line 1669
    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 1670
    .line 1671
    .line 1672
    move-result v1

    .line 1673
    if-eqz v1, :cond_42

    .line 1674
    .line 1675
    const-string v1, "114"

    .line 1676
    .line 1677
    invoke-static {v1, v12}, Lcom/sgscq/vpn/handler/p;->e(Ljava/lang/String;Ljava/util/Map;)V

    .line 1678
    .line 1679
    .line 1680
    :cond_42
    move-object/from16 v1, v25

    .line 1681
    .line 1682
    iget-object v15, v1, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1683
    .line 1684
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 1685
    .line 1686
    .line 1687
    move-result-wide v3

    .line 1688
    long-to-int v3, v3

    .line 1689
    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 1690
    .line 1691
    .line 1692
    move-result v4

    .line 1693
    int-to-long v4, v4

    .line 1694
    invoke-virtual {v1, v4, v5, v12}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 1695
    .line 1696
    .line 1697
    move-result-wide v20

    .line 1698
    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 1699
    .line 1700
    .line 1701
    move-result v4

    .line 1702
    move-object/from16 v5, v27

    .line 1703
    .line 1704
    invoke-virtual {v1, v4, v5, v12}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1705
    .line 1706
    .line 1707
    move-result v17

    .line 1708
    const-string v4, "user_energy"

    .line 1709
    .line 1710
    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 1711
    .line 1712
    .line 1713
    move-result v5

    .line 1714
    invoke-virtual {v1, v5, v4, v12}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1715
    .line 1716
    .line 1717
    move-result v18

    .line 1718
    const-string v4, "user_power"

    .line 1719
    .line 1720
    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 1721
    .line 1722
    .line 1723
    move-result v5

    .line 1724
    invoke-virtual {v1, v5, v4, v12}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1725
    .line 1726
    .line 1727
    move-result v19

    .line 1728
    move-object/from16 v4, v22

    .line 1729
    .line 1730
    move/from16 v16, v3

    .line 1731
    .line 1732
    move-object/from16 v22, v24

    .line 1733
    .line 1734
    move-object/from16 v23, v12

    .line 1735
    .line 1736
    invoke-virtual/range {v15 .. v23}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 1737
    .line 1738
    .line 1739
    move-result-object v3

    .line 1740
    const-string v5, "cmn_modules"

    .line 1741
    .line 1742
    invoke-interface {v2, v5, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1743
    .line 1744
    .line 1745
    move-result-object v5

    .line 1746
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1747
    .line 1748
    .line 1749
    move-result-object v5

    .line 1750
    new-instance v6, Ljava/util/ArrayList;

    .line 1751
    .line 1752
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1753
    .line 1754
    .line 1755
    const-string v7, ","

    .line 1756
    .line 1757
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1758
    .line 1759
    .line 1760
    move-result-object v5

    .line 1761
    array-length v7, v5

    .line 1762
    const/4 v8, 0x0

    .line 1763
    :goto_23
    if-ge v8, v7, :cond_44

    .line 1764
    .line 1765
    aget-object v9, v5, v8

    .line 1766
    .line 1767
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1768
    .line 1769
    .line 1770
    move-result-object v9

    .line 1771
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 1772
    .line 1773
    .line 1774
    move-result v10

    .line 1775
    if-nez v10, :cond_43

    .line 1776
    .line 1777
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1778
    .line 1779
    .line 1780
    move-result v10

    .line 1781
    if-nez v10, :cond_43

    .line 1782
    .line 1783
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1784
    .line 1785
    .line 1786
    :cond_43
    add-int/lit8 v8, v8, 0x1

    .line 1787
    .line 1788
    goto :goto_23

    .line 1789
    :cond_44
    const/4 v5, 0x0

    .line 1790
    new-array v5, v5, [Ljava/lang/String;

    .line 1791
    .line 1792
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1793
    .line 1794
    .line 1795
    move-result-object v5

    .line 1796
    check-cast v5, [Ljava/lang/String;

    .line 1797
    .line 1798
    invoke-virtual {v4, v12, v3, v5}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 1799
    .line 1800
    .line 1801
    move-result-object v3

    .line 1802
    invoke-static {v3}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1803
    .line 1804
    .line 1805
    move-result-object v3

    .line 1806
    const-string v5, "cmn"

    .line 1807
    .line 1808
    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1809
    .line 1810
    .line 1811
    move-object/from16 v3, v28

    .line 1812
    .line 1813
    invoke-static {v3, v12}, Lcom/sgscq/vpn/handler/f0;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 1814
    .line 1815
    .line 1816
    invoke-static {v0, v12}, Lcom/sgscq/vpn/handler/f0;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 1817
    .line 1818
    .line 1819
    const-string v0, "General"

    .line 1820
    .line 1821
    invoke-static {v0, v12}, Lcom/sgscq/vpn/handler/f0;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 1822
    .line 1823
    .line 1824
    const-string v0, "Item"

    .line 1825
    .line 1826
    invoke-static {v0, v12}, Lcom/sgscq/vpn/handler/f0;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 1827
    .line 1828
    .line 1829
    move-object/from16 v0, v24

    .line 1830
    .line 1831
    invoke-virtual {v4, v0, v12}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 1832
    .line 1833
    .line 1834
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1835
    .line 1836
    .line 1837
    move-result-object v0

    .line 1838
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 1839
    .line 1840
    .line 1841
    move-result-object v0

    .line 1842
    return-object v0
.end method
