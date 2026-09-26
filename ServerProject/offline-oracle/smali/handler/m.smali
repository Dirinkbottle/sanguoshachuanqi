.class public abstract Lcom/sgscq/vpn/handler/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Ljava/util/LinkedHashMap;

.field public static final c:Ljava/util/Random;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    const-string v0, "311009"

    .line 2
    .line 3
    const-string v1, "311016"

    .line 4
    .line 5
    const-string v2, "312002"

    .line 6
    .line 7
    const-string v3, "321009"

    .line 8
    .line 9
    const-string v4, "321013"

    .line 10
    .line 11
    const-string v5, "321016"

    .line 12
    .line 13
    const-string v6, "321018"

    .line 14
    .line 15
    const-string v7, "322009"

    .line 16
    .line 17
    const-string v8, "341006"

    .line 18
    .line 19
    const-string v9, "341007"

    .line 20
    .line 21
    const-string v10, "342002"

    .line 22
    .line 23
    const-string v11, "342007"

    .line 24
    .line 25
    const-string v12, "351009"

    .line 26
    .line 27
    const-string v13, "351019"

    .line 28
    .line 29
    const-string v14, "351020"

    .line 30
    .line 31
    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/sgscq/vpn/handler/m;->a:[Ljava/lang/String;

    .line 36
    .line 37
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_0
    const/16 v3, 0xf

    .line 44
    .line 45
    if-ge v2, v3, :cond_0

    .line 46
    .line 47
    aget-object v3, v0, v2

    .line 48
    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v5, "01"

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    sput-object v1, Lcom/sgscq/vpn/handler/m;->b:Ljava/util/LinkedHashMap;

    .line 73
    .line 74
    new-instance v0, Ljava/util/Random;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/sgscq/vpn/handler/m;->c:Ljava/util/Random;

    .line 80
    .line 81
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/Map;)V
    .locals 5

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
    move-result-object v2

    .line 9
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-ge v3, v4, :cond_1

    .line 19
    .line 20
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Ljava/util/Map;

    .line 25
    .line 26
    invoke-static {v4, v0, v1, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-interface {p0, v3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/util/ArrayList;)V
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

    invoke-static {p1, v0}, Lcom/sgscq/vpn/handler/m;->a(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static c(D)D
    .locals 2

    .line 1
    const-wide v0, 0x3feffffde7210be9L    # 0.999999

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static d(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 5

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    const-string v2, "add"

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "upd"

    filled-new-array {v4, v3, v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "del"

    invoke-static {v3, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Object;I)Ljava/util/Map;
    .locals 4

    .line 1
    instance-of v0, p1, Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    check-cast p1, Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    instance-of v2, v0, Ljava/util/Map;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    check-cast v0, Ljava/util/Map;

    .line 29
    .line 30
    const-string v2, "pk_id"

    .line 31
    .line 32
    const-string v3, ""

    .line 33
    .line 34
    invoke-static {v0, v2, v3, p0}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-static {v0}, Lcom/sgscq/vpn/handler/m;->h(Ljava/util/Map;)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-gt v2, p2, :cond_3

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    return-object v0

    .line 49
    :cond_4
    return-object v1
.end method

.method public static f(Ljava/util/Map;)Z
    .locals 3

    .line 1
    const-string v0, "MagicalEqu"

    invoke-static {v0, p0}, Lcom/sgscq/vpn/handler/m;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "is_open"

    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/handler/m;->g(ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_1
    return v1
.end method

.method public static g(ILjava/lang/String;Ljava/util/Map;)I
    .locals 1

    .line 1
    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static h(Ljava/util/Map;)I
    .locals 2

    .line 1
    const-string v0, "skill_piece_num"

    const/4 v1, 0x0

    invoke-static {v1, v0, p0}, Lcom/sgscq/vpn/handler/m;->g(ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    const-string v1, "equipment_piece_num"

    invoke-static {v0, v1, p0}, Lcom/sgscq/vpn/handler/m;->g(ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    const-string v1, "general_soul_num"

    invoke-static {v0, v1, p0}, Lcom/sgscq/vpn/handler/m;->g(ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    const-string v1, "item_num"

    invoke-static {v0, v1, p0}, Lcom/sgscq/vpn/handler/m;->g(ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    const-string v1, "num"

    invoke-static {v0, v1, p0}, Lcom/sgscq/vpn/handler/m;->g(ILjava/lang/String;Ljava/util/Map;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/util/Map;

    const-string p1, "add"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sgscq/vpn/handler/m;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const-string p1, "upd"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sgscq/vpn/handler/m;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const-string p1, "update_list"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {p0, v0}, Lcom/sgscq/vpn/handler/m;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    :cond_1
    return-object v0
.end method

.method public static j(Ljava/lang/String;Ljava/util/Map;)I
    .locals 7

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
    invoke-static {p0, p1}, Lcom/sgscq/vpn/handler/m;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    move v4, v2

    .line 23
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Ljava/util/Map;

    .line 34
    .line 35
    const-string v6, "pk_id"

    .line 36
    .line 37
    invoke-static {v5, v6, v1, v2}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-le v5, v4, :cond_0

    .line 42
    .line 43
    move v4, v5

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 46
    .line 47
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    add-int/lit8 v1, p0, 0x1

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    return p0
.end method

.method public static k(Ljava/lang/String;I)Lcom/sgscq/vpn/cloud/a;
    .locals 3

    .line 1
    new-instance v0, Lcom/sgscq/vpn/cloud/a;

    .line 2
    .line 3
    const-string v1, "meeting_t"

    .line 4
    .line 5
    invoke-static {v1, p1}, La/b0;->a(Ljava/lang/String;I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "meeting_"

    .line 10
    .line 11
    invoke-static {v2, p1}, La/b0;->a(Ljava/lang/String;I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, p0, v1, p1}, Lcom/sgscq/vpn/cloud/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static l(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 6

    .line 1
    const-string v0, "pk_id"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {p0, p1}, Lcom/sgscq/vpn/handler/m;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Ljava/util/Map;

    .line 32
    .line 33
    invoke-static {v4, v0, v1, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v4, 0x0

    .line 41
    :goto_0
    if-nez v4, :cond_2

    .line 42
    .line 43
    return-object p2

    .line 44
    :cond_2
    if-eq v4, p2, :cond_3

    .line 45
    .line 46
    invoke-interface {v4, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    instance-of p1, p0, Ljava/util/Map;

    .line 54
    .line 55
    if-eqz p1, :cond_6

    .line 56
    .line 57
    check-cast p0, Ljava/util/Map;

    .line 58
    .line 59
    const-string p1, "upd"

    .line 60
    .line 61
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    instance-of p2, p1, Ljava/util/List;

    .line 66
    .line 67
    const/4 v0, 0x2

    .line 68
    if-nez p2, :cond_4

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    check-cast p1, Ljava/util/List;

    .line 72
    .line 73
    new-instance p2, Lcom/sgscq/vpn/r2;

    .line 74
    .line 75
    invoke-direct {p2, v2, v0}, Lcom/sgscq/vpn/r2;-><init>(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, p2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 79
    .line 80
    .line 81
    :goto_1
    const-string p1, "update_list"

    .line 82
    .line 83
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    instance-of p1, p0, Ljava/util/List;

    .line 88
    .line 89
    if-nez p1, :cond_5

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_5
    check-cast p0, Ljava/util/List;

    .line 93
    .line 94
    new-instance p1, Lcom/sgscq/vpn/r2;

    .line 95
    .line 96
    invoke-direct {p1, v2, v0}, Lcom/sgscq/vpn/r2;-><init>(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    invoke-interface {p0, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 100
    .line 101
    .line 102
    :cond_6
    :goto_2
    return-object v4
.end method

.method public static m(Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;
    .locals 14

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/handler/m;->f(Ljava/util/Map;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/sgscq/vpn/handler/j;->d()Lcom/sgscq/vpn/handler/j;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    if-nez p0, :cond_1

    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_1
    const-string v0, "Item"

    .line 18
    .line 19
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    instance-of v1, p0, Ljava/util/Map;

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :cond_2
    check-cast p0, Ljava/util/Map;

    .line 30
    .line 31
    const-string v1, "del"

    .line 32
    .line 33
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    instance-of v2, v2, Ljava/util/List;

    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/util/List;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    :goto_0
    const-string v3, "add"

    .line 54
    .line 55
    const-string v4, "upd"

    .line 56
    .line 57
    const-string v5, "update_list"

    .line 58
    .line 59
    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const/4 v4, 0x0

    .line 64
    move v5, v4

    .line 65
    move v6, v5

    .line 66
    :goto_1
    const/4 v7, 0x3

    .line 67
    const/4 v8, 0x1

    .line 68
    if-ge v5, v7, :cond_9

    .line 69
    .line 70
    aget-object v7, v3, v5

    .line 71
    .line 72
    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    instance-of v9, v7, Ljava/util/List;

    .line 77
    .line 78
    if-nez v9, :cond_4

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_4
    check-cast v7, Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    if-eqz v9, :cond_8

    .line 92
    .line 93
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    instance-of v10, v9, Ljava/util/Map;

    .line 98
    .line 99
    if-nez v10, :cond_5

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    check-cast v9, Ljava/util/Map;

    .line 103
    .line 104
    const-string v10, "id"

    .line 105
    .line 106
    const-string v11, ""

    .line 107
    .line 108
    const-string v12, "item_id"

    .line 109
    .line 110
    const-string v13, "600087"

    .line 111
    .line 112
    invoke-static {v9, v10, v11, v12, v13}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    if-nez v10, :cond_6

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_6
    const-string v6, "pk_id"

    .line 120
    .line 121
    invoke-interface {v9, v6, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    if-nez v9, :cond_7

    .line 137
    .line 138
    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    if-nez v9, :cond_7

    .line 143
    .line 144
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    :cond_7
    move v6, v8

    .line 148
    goto :goto_2

    .line 149
    :cond_8
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_9
    if-nez v6, :cond_a

    .line 153
    .line 154
    :goto_4
    invoke-static {}, Lcom/sgscq/vpn/handler/j;->d()Lcom/sgscq/vpn/handler/j;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    goto :goto_5

    .line 159
    :cond_a
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    new-instance p0, Ljava/util/LinkedHashSet;

    .line 163
    .line 164
    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    new-instance v0, Lcom/sgscq/vpn/handler/j;

    .line 171
    .line 172
    new-instance v1, Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-direct {v0, v4, v8, v1, p0}, Lcom/sgscq/vpn/handler/j;-><init>(ZZLjava/util/ArrayList;Ljava/util/LinkedHashSet;)V

    .line 178
    .line 179
    .line 180
    move-object p0, v0

    .line 181
    :goto_5
    return-object p0
.end method

.method public static n(Ljava/util/Map;IIIZ)I
    .locals 7

    .line 1
    const/4 v0, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    if-ne p3, v0, :cond_0

    if-eqz p4, :cond_b

    const/16 p1, 0x32

    goto/16 :goto_3

    :cond_0
    if-ne p2, v1, :cond_1

    if-ne p1, v1, :cond_1

    if-ne p3, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x2

    if-ne p2, p4, :cond_2

    if-ne p1, p4, :cond_2

    if-ne p3, p4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne p2, v3, :cond_3

    if-ne p1, v1, :cond_3

    if-ne p3, v3, :cond_3

    :goto_0
    const/16 p1, 0x19

    goto :goto_3

    :cond_3
    const/4 v4, 0x4

    if-ne p2, v4, :cond_4

    if-ne p1, p4, :cond_4

    if-ne p3, v4, :cond_4

    const/16 p1, 0x14

    goto :goto_3

    :cond_4
    const/4 v5, 0x5

    if-ne p2, v5, :cond_5

    if-ne p1, v3, :cond_5

    if-ne p3, v5, :cond_5

    const/16 p1, 0x3c

    goto :goto_3

    :cond_5
    const/4 v6, 0x6

    if-eq p2, v6, :cond_6

    if-eq p2, v0, :cond_6

    goto :goto_2

    :cond_6
    if-ne p1, v1, :cond_8

    if-eq p3, v1, :cond_a

    if-ne p3, v3, :cond_7

    goto :goto_1

    :cond_7
    if-ne p3, v6, :cond_8

    move p1, p4

    goto :goto_3

    :cond_8
    if-ne p1, p4, :cond_9

    if-eq p3, p4, :cond_a

    if-ne p3, v4, :cond_9

    goto :goto_1

    :cond_9
    if-ne p1, v3, :cond_b

    if-ne p3, v5, :cond_b

    :cond_a
    :goto_1
    const/16 p1, 0xd

    goto :goto_3

    :cond_b
    :goto_2
    move p1, v2

    :goto_3
    invoke-static {p3}, Lc/a;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2, p0}, Lcom/sgscq/vpn/handler/m;->g(ILjava/lang/String;Ljava/util/Map;)I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static o(Ljava/util/Map;II)Lcom/sgscq/vpn/handler/j;
    .locals 45

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "Asia/Shanghai"

    .line 1
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3, v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    invoke-direct {v5, v6, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v2, 0x7

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v4, -0x1

    :goto_0
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/m;->f(Ljava/util/Map;)Z

    move-result v4

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/m;->m(Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;

    move-result-object v5

    const/4 v6, 0x0

    move/from16 v8, p2

    move v7, v6

    :goto_1
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-ge v7, v9, :cond_52

    sget-object v9, Lcom/sgscq/vpn/handler/m;->c:Ljava/util/Random;

    monitor-enter v9

    :try_start_0
    invoke-virtual {v9}, Ljava/util/Random;->nextDouble()D

    move-result-wide v10

    invoke-virtual {v9}, Ljava/util/Random;->nextDouble()D

    move-result-wide v12

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 3
    invoke-static {}, Lcom/sgscq/vpn/handler/j;->d()Lcom/sgscq/vpn/handler/j;

    move-result-object v9

    move/from16 v22, v2

    move-object/from16 v19, v3

    move/from16 v31, v4

    move/from16 v17, v7

    goto/16 :goto_2e

    :cond_1
    const-string v6, "dungeon_stars"

    .line 4
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v9, v6, Ljava/util/Map;

    if-eqz v9, :cond_2

    check-cast v6, Ljava/util/Map;

    goto :goto_2

    :cond_2
    instance-of v9, v6, Ljava/lang/String;

    if-eqz v9, :cond_3

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v6

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    const-string v9, "01"

    if-nez v6, :cond_4

    goto :goto_5

    :cond_4
    const-string v15, "501003"

    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 5
    instance-of v8, v14, Ljava/lang/Number;

    if-eqz v8, :cond_5

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v8

    goto :goto_3

    :cond_5
    instance-of v8, v14, Ljava/lang/String;

    if-eqz v8, :cond_6

    :try_start_1
    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    :cond_6
    const/4 v8, 0x0

    :goto_3
    if-gtz v8, :cond_a

    .line 6
    invoke-virtual {v15, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 7
    instance-of v8, v6, Ljava/lang/Number;

    if-eqz v8, :cond_7

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    goto :goto_4

    :cond_7
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_8

    :try_start_2
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    :cond_8
    const/4 v6, 0x0

    :goto_4
    if-lez v6, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v6, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v6, 0x1

    :goto_7
    const-string v8, ""

    const/4 v14, 0x6

    if-eqz v6, :cond_b

    const/4 v6, 0x1

    goto :goto_9

    :cond_b
    const-string v6, "user_map_step"

    .line 8
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_c

    move-object v6, v8

    goto :goto_8

    .line 9
    :cond_c
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    :goto_8
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    if-lt v15, v14, :cond_d

    const-string v15, "500"

    invoke-virtual {v6, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/4 v15, 0x3

    invoke-virtual {v6, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_d
    const/4 v15, 0x0

    invoke-static {v6, v15}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result v6

    const/4 v15, 0x1

    if-le v6, v15, :cond_e

    move v6, v15

    :goto_9
    move v15, v6

    goto :goto_a

    :cond_e
    const/4 v6, 0x0

    :goto_a
    if-nez v6, :cond_f

    .line 10
    :goto_b
    invoke-static {}, Lcom/sgscq/vpn/handler/j;->d()Lcom/sgscq/vpn/handler/j;

    move-result-object v6

    goto :goto_10

    :cond_f
    const/4 v6, 0x5

    if-ne v1, v15, :cond_10

    if-eqz v4, :cond_10

    goto :goto_e

    :cond_10
    if-eq v2, v14, :cond_17

    const/4 v14, 0x7

    if-ne v2, v14, :cond_11

    goto :goto_e

    :cond_11
    if-eq v2, v15, :cond_15

    const/4 v14, 0x3

    if-ne v2, v14, :cond_12

    const/4 v15, 0x1

    goto :goto_d

    :cond_12
    const/4 v15, 0x2

    if-eq v2, v15, :cond_14

    const/4 v15, 0x4

    if-ne v2, v15, :cond_13

    const/4 v15, 0x2

    goto :goto_c

    :cond_13
    if-ne v2, v6, :cond_16

    if-ne v1, v14, :cond_16

    goto :goto_e

    :cond_14
    :goto_c
    if-ne v1, v15, :cond_16

    goto :goto_e

    :cond_15
    :goto_d
    if-ne v1, v15, :cond_16

    goto :goto_e

    :cond_16
    const/4 v6, 0x0

    goto :goto_f

    :cond_17
    :goto_e
    const/4 v6, 0x1

    :goto_f
    if-nez v6, :cond_18

    goto :goto_b

    :goto_10
    move/from16 v22, v2

    move-object/from16 v19, v3

    move-object/from16 v18, v5

    move-object v9, v6

    move/from16 v17, v7

    goto/16 :goto_1d

    :cond_18
    const-string v6, "daily_adventure_state"

    .line 11
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    instance-of v15, v14, Ljava/util/Map;

    move/from16 v17, v7

    const/4 v7, 0x0

    move-object/from16 v18, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "weekend_god_skill_count"

    move-object/from16 v20, v8

    const-string v8, "total_count"

    move-object/from16 v21, v9

    const-string v9, "schema_version"

    move-wide/from16 v22, v12

    const-string v12, "date"

    if-eqz v15, :cond_19

    check-cast v14, Ljava/util/Map;

    .line 12
    invoke-static {v14, v12, v3}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_19

    const/4 v13, 0x0

    .line 13
    invoke-static {v13, v9, v14}, Lcom/sgscq/vpn/handler/m;->g(ILjava/lang/String;Ljava/util/Map;)I

    move-result v13

    const/4 v15, 0x3

    if-ne v13, v15, :cond_1a

    goto :goto_12

    :cond_19
    const/4 v15, 0x3

    .line 14
    :cond_1a
    invoke-static {v12, v3}, Lc/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v14

    .line 15
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v14, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v14, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "PVE_count"

    invoke-interface {v14, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "LADDER_count"

    invoke-interface {v14, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "PVP_count"

    invoke-interface {v14, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "PVE_battle_count"

    invoke-interface {v14, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "LADDER_battle_count"

    invoke-interface {v14, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "PVP_battle_count"

    invoke-interface {v14, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x7

    .line 16
    invoke-static {v9}, La/b0;->d(I)[I

    move-result-object v9

    .line 17
    array-length v12, v9

    const/4 v13, 0x0

    :goto_11
    if-ge v13, v12, :cond_1b

    aget v15, v9, v13

    invoke-static {v15}, Lc/a;->c(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    :cond_1b
    invoke-interface {v14, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :goto_12
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/l;->c(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "_battle_count"

    invoke-virtual {v5, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-static {v9, v5, v14}, Lcom/sgscq/vpn/handler/m;->g(ILjava/lang/String;Ljava/util/Map;)I

    move-result v9

    add-int/lit8 v12, v9, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v14, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x7

    .line 19
    invoke-static {v5}, La/b0;->d(I)[I

    move-result-object v5

    .line 20
    array-length v12, v5

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_13
    move-object/from16 v19, v3

    if-ge v13, v12, :cond_1c

    aget v3, v5, v13

    invoke-static {v14, v1, v2, v3, v4}, Lcom/sgscq/vpn/handler/m;->n(Ljava/util/Map;IIIZ)I

    move-result v3

    add-int/2addr v15, v3

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v19

    goto :goto_13

    :cond_1c
    if-gtz v15, :cond_1d

    .line 21
    :goto_14
    invoke-static {}, Lcom/sgscq/vpn/handler/j;->d()Lcom/sgscq/vpn/handler/j;

    move-result-object v3

    goto :goto_17

    :cond_1d
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1e

    const/16 v3, 0x32

    goto :goto_15

    :cond_1e
    const/16 v3, 0x42

    :goto_15
    sub-int/2addr v3, v9

    if-gtz v3, :cond_1f

    move-object v9, v6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto :goto_16

    :cond_1f
    int-to-double v12, v15

    move-object v9, v6

    int-to-double v5, v3

    div-double/2addr v12, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    :goto_16
    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    cmpl-double v3, v10, v5

    if-ltz v3, :cond_20

    goto :goto_14

    :goto_17
    move/from16 v22, v2

    move-object v9, v3

    goto/16 :goto_1d

    :cond_20
    const/4 v3, 0x7

    .line 22
    invoke-static {v3}, La/b0;->d(I)[I

    move-result-object v3

    .line 23
    array-length v5, v3

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_18
    if-ge v6, v5, :cond_21

    aget v11, v3, v6

    invoke-static {v14, v1, v2, v11, v4}, Lcom/sgscq/vpn/handler/m;->n(Ljava/util/Map;IIIZ)I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_21
    if-gtz v10, :cond_23

    :cond_22
    move/from16 v22, v2

    goto :goto_1b

    .line 24
    :cond_23
    invoke-static/range {v22 .. v23}, Lcom/sgscq/vpn/handler/m;->c(D)D

    move-result-wide v5

    int-to-double v10, v10

    mul-double/2addr v5, v10

    const/4 v3, 0x7

    .line 25
    invoke-static {v3}, La/b0;->d(I)[I

    move-result-object v3

    .line 26
    array-length v10, v3

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_19
    if-ge v11, v10, :cond_22

    aget v13, v3, v11

    invoke-static {v14, v1, v2, v13, v4}, Lcom/sgscq/vpn/handler/m;->n(Ljava/util/Map;IIIZ)I

    move-result v15

    if-gtz v15, :cond_24

    move/from16 v22, v2

    move-object/from16 v23, v3

    goto :goto_1a

    :cond_24
    add-int v1, v12, v15

    move/from16 v22, v2

    move-object/from16 v23, v3

    int-to-double v2, v1

    cmpg-double v2, v5, v2

    if-gez v2, :cond_25

    int-to-double v1, v12

    sub-double/2addr v5, v1

    int-to-double v1, v15

    div-double/2addr v5, v1

    new-instance v1, Lcom/sgscq/vpn/handler/i;

    invoke-static {v5, v6}, Lcom/sgscq/vpn/handler/m;->c(D)D

    move-result-wide v2

    invoke-direct {v1, v13, v2, v3}, Lcom/sgscq/vpn/handler/i;-><init>(ID)V

    goto :goto_1c

    :cond_25
    move v12, v1

    :goto_1a
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p1

    move/from16 v2, v22

    move-object/from16 v3, v23

    goto :goto_19

    :goto_1b
    const/4 v1, 0x0

    :goto_1c
    if-nez v1, :cond_26

    .line 27
    invoke-static {}, Lcom/sgscq/vpn/handler/j;->d()Lcom/sgscq/vpn/handler/j;

    move-result-object v1

    move-object v9, v1

    :goto_1d
    const/4 v1, 0x0

    move v6, v1

    move/from16 v31, v4

    :goto_1e
    move-object/from16 v5, v18

    goto/16 :goto_2e

    .line 28
    :cond_26
    iget-wide v2, v1, Lcom/sgscq/vpn/handler/i;->b:D

    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/m;->c(D)D

    move-result-wide v2

    iget v1, v1, Lcom/sgscq/vpn/handler/i;->a:I

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const/4 v10, 0x1

    if-ne v1, v10, :cond_28

    cmpg-double v2, v2, v5

    if-gez v2, :cond_27

    const-string v2, "600007"

    goto :goto_1f

    :cond_27
    const-string v2, "600050"

    .line 29
    :goto_1f
    invoke-static {v2}, Lcom/sgscq/vpn/handler/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    invoke-static {v5, v2, v3}, Lcom/sgscq/vpn/handler/k;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/handler/k;

    move-result-object v2

    goto/16 :goto_29

    :cond_28
    const/4 v10, 0x2

    if-ne v1, v10, :cond_2a

    cmpg-double v2, v2, v5

    if-gez v2, :cond_29

    const-string v2, "600008"

    goto :goto_20

    :cond_29
    const-string v2, "600051"

    .line 30
    :goto_20
    invoke-static {v2}, Lcom/sgscq/vpn/handler/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    invoke-static {v5, v2, v3}, Lcom/sgscq/vpn/handler/k;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/handler/k;

    move-result-object v2

    goto/16 :goto_29

    :cond_2a
    const/16 v5, 0x64

    const-wide v10, 0x3fe5555555555555L    # 0.6666666666666666

    const-wide v12, 0x3fd5555555555555L    # 0.3333333333333333

    const/4 v6, 0x3

    if-ne v1, v6, :cond_2d

    cmpg-double v6, v2, v12

    if-gez v6, :cond_2b

    const/16 v2, 0xc8

    goto :goto_21

    :cond_2b
    cmpg-double v2, v2, v10

    if-gez v2, :cond_2c

    .line 31
    invoke-static {v5}, Lcom/sgscq/vpn/handler/k;->e(I)Lcom/sgscq/vpn/handler/k;

    move-result-object v2

    goto/16 :goto_29

    :cond_2c
    const/16 v2, 0x32

    :goto_21
    invoke-static {v2}, Lcom/sgscq/vpn/handler/k;->e(I)Lcom/sgscq/vpn/handler/k;

    move-result-object v2

    goto/16 :goto_29

    :cond_2d
    const/16 v6, 0xa

    const/4 v15, 0x4

    if-ne v1, v15, :cond_30

    cmpg-double v5, v2, v12

    if-gez v5, :cond_2e

    const/4 v2, 0x5

    :goto_22
    invoke-static {v2}, Lcom/sgscq/vpn/handler/k;->d(I)Lcom/sgscq/vpn/handler/k;

    move-result-object v2

    goto/16 :goto_29

    :cond_2e
    cmpg-double v2, v2, v10

    if-gez v2, :cond_2f

    invoke-static {v6}, Lcom/sgscq/vpn/handler/k;->d(I)Lcom/sgscq/vpn/handler/k;

    move-result-object v2

    goto/16 :goto_29

    :cond_2f
    const/16 v2, 0x14

    goto :goto_22

    :cond_30
    const/4 v10, 0x5

    if-ne v1, v10, :cond_33

    const-wide v5, 0x3fd5c28f5c28f5c3L    # 0.34

    cmpg-double v5, v2, v5

    if-gez v5, :cond_31

    const-string v2, "791487"

    goto :goto_23

    :cond_31
    const-wide v5, 0x3fe570a3d70a3d71L    # 0.67

    cmpg-double v2, v2, v5

    if-gez v2, :cond_32

    const-string v2, "791488"

    goto :goto_23

    :cond_32
    const-string v2, "791489"

    .line 32
    :goto_23
    invoke-static {v2}, Lcom/sgscq/vpn/handler/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v5, v2, v3}, Lcom/sgscq/vpn/handler/k;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/handler/k;

    move-result-object v2

    goto/16 :goto_29

    :cond_33
    const/4 v10, 0x7

    if-ne v1, v10, :cond_34

    const-string v2, "141002"

    const/16 v3, 0x75

    .line 33
    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/m;->k(Ljava/lang/String;I)Lcom/sgscq/vpn/cloud/a;

    move-result-object v2

    const-string v3, "600087"

    const/16 v5, 0x27

    const-string v10, "itemname600087"

    invoke-static {v3, v6, v5, v10, v2}, Lcom/sgscq/vpn/handler/k;->b(Ljava/lang/String;IILjava/lang/String;Lcom/sgscq/vpn/cloud/a;)Lcom/sgscq/vpn/handler/k;

    move-result-object v2

    goto/16 :goto_29

    .line 34
    :cond_34
    sget-object v6, Lcom/sgscq/vpn/handler/m;->a:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/m;->c(D)D

    move-result-wide v2

    const/16 v10, 0xf

    int-to-double v10, v10

    mul-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    aget-object v2, v6, v2

    const/16 v25, 0x1

    const-string v3, "311009"

    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const-string v3, "111009"

    const/16 v5, 0x62

    goto/16 :goto_24

    :cond_35
    const-string v3, "311016"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    const-string v3, "111016"

    const/16 v5, 0x63

    goto/16 :goto_24

    :cond_36
    const-string v3, "312002"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    const-string v3, "112002"

    goto/16 :goto_24

    :cond_37
    const-string v3, "321009"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    const-string v3, "121009"

    const/16 v5, 0x65

    goto/16 :goto_24

    :cond_38
    const-string v3, "321016"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v3, "121016"

    const/16 v5, 0x66

    goto/16 :goto_24

    :cond_39
    const-string v3, "321018"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const-string v3, "121018"

    const/16 v5, 0x67

    goto/16 :goto_24

    :cond_3a
    const-string v3, "322009"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    const-string v3, "122009"

    const/16 v5, 0x68

    goto/16 :goto_24

    :cond_3b
    const-string v3, "341007"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const-string v3, "141007"

    const/16 v5, 0x69

    goto :goto_24

    :cond_3c
    const-string v3, "341006"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const-string v3, "141006"

    const/16 v5, 0x6a

    goto :goto_24

    :cond_3d
    const-string v3, "342007"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    const-string v3, "142007"

    const/16 v5, 0x6b

    goto :goto_24

    :cond_3e
    const-string v3, "321013"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    const-string v3, "121013"

    const/16 v5, 0x6c

    goto :goto_24

    :cond_3f
    const-string v3, "342002"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    const-string v3, "142002"

    const/16 v5, 0x6d

    goto :goto_24

    :cond_40
    const-string v3, "351009"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    const-string v3, "122023"

    const/16 v5, 0x4b

    goto :goto_24

    :cond_41
    const-string v3, "351019"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    const-string v3, "122008"

    const/16 v5, 0x4e

    goto :goto_24

    :cond_42
    const-string v3, "351020"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    const-string v3, "121019"

    const/16 v5, 0x4f

    :goto_24
    invoke-static {v3, v5}, Lcom/sgscq/vpn/handler/m;->k(Ljava/lang/String;I)Lcom/sgscq/vpn/cloud/a;

    move-result-object v3

    .line 36
    new-instance v5, Lcom/sgscq/vpn/handler/k;

    const/16 v26, 0x15

    const/16 v27, 0x8

    const-string v28, "SkillPiece"

    iget-object v6, v3, Lcom/sgscq/vpn/cloud/a;->a:Ljava/lang/String;

    iget-object v10, v3, Lcom/sgscq/vpn/cloud/a;->b:Ljava/lang/String;

    iget-object v3, v3, Lcom/sgscq/vpn/cloud/a;->c:Ljava/lang/String;

    .line 37
    sget-object v11, Lcom/sgscq/vpn/handler/m;->b:Ljava/util/LinkedHashMap;

    .line 38
    invoke-virtual {v11, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_44

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_44

    :cond_43
    :goto_25
    move-object/from16 v32, v11

    goto :goto_28

    :cond_44
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    if-nez v12, :cond_45

    goto :goto_26

    :cond_45
    const-string v11, "name"

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    :goto_26
    if-nez v11, :cond_46

    move-object/from16 v11, v20

    goto :goto_27

    :cond_46
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_27
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_43

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v21

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_25

    :goto_28
    move-object/from16 v23, v5

    move-object/from16 v24, v2

    move-object/from16 v29, v6

    move-object/from16 v30, v10

    move-object/from16 v31, v3

    .line 39
    invoke-direct/range {v23 .. v32}, Lcom/sgscq/vpn/handler/k;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    :goto_29
    const-string v3, "SkillPiece"

    .line 40
    iget-object v5, v2, Lcom/sgscq/vpn/handler/k;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v10, "Item"

    const-string v11, "pk_id"

    const-string v12, "num"

    iget v13, v2, Lcom/sgscq/vpn/handler/k;->b:I

    const-string v15, "id"

    if-eqz v6, :cond_49

    iget-object v6, v2, Lcom/sgscq/vpn/handler/k;->a:Ljava/lang/String;

    .line 41
    invoke-static {v3, v0}, Lcom/sgscq/vpn/handler/m;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_48

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move/from16 v31, v4

    move-object/from16 v4, v21

    check-cast v4, Ljava/util/Map;

    move-object/from16 v21, v5

    const-string v5, "skill_id"

    move-object/from16 v32, v9

    move-object/from16 v9, v20

    .line 42
    invoke-static {v4, v15, v9, v5, v6}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 43
    invoke-static {v3, v0, v4}, Lcom/sgscq/vpn/handler/m;->l(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    const-string v6, "skill_piece_num"

    const/4 v9, 0x0

    invoke-static {v9, v6, v4}, Lcom/sgscq/vpn/handler/m;->g(ILjava/lang/String;Ljava/util/Map;)I

    move-result v9

    invoke-static {v9, v12, v4}, Lcom/sgscq/vpn/handler/m;->g(ILjava/lang/String;Ljava/util/Map;)I

    move-result v4

    add-int/2addr v4, v13

    .line 44
    invoke-static {v4, v5, v12, v4, v6}, Lc/a;->t(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2b

    :cond_47
    move-object/from16 v20, v9

    move-object/from16 v5, v21

    move/from16 v4, v31

    move-object/from16 v9, v32

    goto :goto_2a

    :cond_48
    move/from16 v31, v4

    move-object/from16 v21, v5

    move-object/from16 v32, v9

    .line 45
    invoke-static {v3, v0}, Lcom/sgscq/vpn/handler/m;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v0}, Lcom/sgscq/vpn/handler/m;->j(Ljava/lang/String;Ljava/util/Map;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v23, "id"

    const-string v25, "skill_id"

    const-string v27, "num"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const-string v29, "skill_piece_num"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v24, v6

    move-object/from16 v26, v6

    filled-new-array/range {v23 .. v30}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v11, v5, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2b
    invoke-static {v3, v0, v5}, Lcom/sgscq/vpn/handler/m;->p(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_2d

    :cond_49
    move/from16 v31, v4

    move-object/from16 v21, v5

    move-object/from16 v32, v9

    move-object/from16 v9, v20

    .line 46
    iget-object v3, v2, Lcom/sgscq/vpn/handler/k;->a:Ljava/lang/String;

    .line 47
    invoke-static {v10, v0}, Lcom/sgscq/vpn/handler/m;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "item_id"

    .line 48
    invoke-static {v5, v15, v9, v6, v3}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 49
    invoke-static {v10, v0, v5}, Lcom/sgscq/vpn/handler/m;->l(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v12, v5}, Lcom/sgscq/vpn/handler/m;->g(ILjava/lang/String;Ljava/util/Map;)I

    move-result v4

    const-string v6, "item_num"

    invoke-static {v4, v6, v5}, Lcom/sgscq/vpn/handler/m;->g(ILjava/lang/String;Ljava/util/Map;)I

    move-result v4

    add-int/2addr v4, v13

    .line 50
    invoke-static {v4, v3, v12, v4, v6}, Lc/a;->t(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2c

    .line 51
    :cond_4b
    invoke-static {v10, v0}, Lcom/sgscq/vpn/handler/m;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-static {v10, v0}, Lcom/sgscq/vpn/handler/m;->j(Ljava/lang/String;Ljava/util/Map;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v33, "id"

    const-string v35, "item_id"

    const-string v37, "num"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    const-string v39, "item_num"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    const-string v41, "item_type"

    iget v6, v2, Lcom/sgscq/vpn/handler/k;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    const-string v43, "type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v34, v3

    move-object/from16 v36, v3

    filled-new-array/range {v33 .. v44}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v11, v5, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2c
    move-object v5, v3

    invoke-static {v10, v0, v5}, Lcom/sgscq/vpn/handler/m;->p(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :goto_2d
    const/4 v3, 0x0

    .line 52
    invoke-static {v3, v8, v14}, Lcom/sgscq/vpn/handler/m;->g(ILjava/lang/String;Ljava/util/Map;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v14, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/l;->c(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "_count"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Lcom/sgscq/vpn/handler/m;->g(ILjava/lang/String;Ljava/util/Map;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v14, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lc/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v14}, Lcom/sgscq/vpn/handler/m;->g(ILjava/lang/String;Ljava/util/Map;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v14, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "god_skill_count"

    invoke-static {v3, v1, v14}, Lcom/sgscq/vpn/handler/m;->g(ILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/l;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "last_source"

    invoke-interface {v14, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "last_reward_id"

    iget-object v3, v2, Lcom/sgscq/vpn/handler/k;->a:Ljava/lang/String;

    invoke-interface {v14, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v2, Lcom/sgscq/vpn/handler/k;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "last_event_type"

    invoke-interface {v14, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v32

    invoke-interface {v0, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    move-object/from16 v6, v21

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/sgscq/vpn/handler/j;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/util/Map;

    .line 53
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4c

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_4c
    move-object/from16 v35, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v32, "icon"

    iget-object v5, v2, Lcom/sgscq/vpn/handler/k;->a:Ljava/lang/String;

    const-string v34, "pk_id"

    const-string v36, "num"

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v37

    const-string v38, "title"

    iget-object v6, v2, Lcom/sgscq/vpn/handler/k;->g:Ljava/lang/String;

    const-string v40, "talking"

    iget-object v8, v2, Lcom/sgscq/vpn/handler/k;->h:Ljava/lang/String;

    const-string v42, "name"

    iget-object v10, v2, Lcom/sgscq/vpn/handler/k;->i:Ljava/lang/String;

    move-object/from16 v33, v5

    move-object/from16 v39, v6

    move-object/from16 v41, v8

    move-object/from16 v43, v10

    filled-new-array/range {v32 .. v43}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "card"

    iget-object v2, v2, Lcom/sgscq/vpn/handler/k;->f:Ljava/lang/String;

    invoke-static {v6, v2, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v5, "info"

    filled-new-array {v12, v3, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "type"

    invoke-static {v3, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v7, v2

    .line 54
    invoke-static {v7}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x1

    .line 55
    invoke-direct {v9, v3, v3, v1, v4}, Lcom/sgscq/vpn/handler/j;-><init>(ZZLjava/util/ArrayList;Ljava/util/LinkedHashSet;)V

    move v6, v2

    goto/16 :goto_1e

    .line 56
    :goto_2e
    iget-boolean v1, v5, Lcom/sgscq/vpn/handler/j;->b:Z

    if-nez v1, :cond_4d

    move-object v5, v9

    goto :goto_31

    :cond_4d
    iget-boolean v1, v9, Lcom/sgscq/vpn/handler/j;->b:Z

    if-nez v1, :cond_4e

    goto :goto_31

    :cond_4e
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v5, Lcom/sgscq/vpn/handler/j;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, v9, Lcom/sgscq/vpn/handler/j;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/util/LinkedHashSet;

    iget-object v3, v5, Lcom/sgscq/vpn/handler/j;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iget-object v3, v9, Lcom/sgscq/vpn/handler/j;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Lcom/sgscq/vpn/handler/j;

    iget-boolean v4, v5, Lcom/sgscq/vpn/handler/j;->a:Z

    if-nez v4, :cond_50

    iget-boolean v4, v9, Lcom/sgscq/vpn/handler/j;->a:Z

    if-eqz v4, :cond_4f

    goto :goto_2f

    :cond_4f
    const/4 v4, 0x1

    move v5, v6

    goto :goto_30

    :cond_50
    :goto_2f
    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_30
    invoke-direct {v3, v5, v4, v1, v2}, Lcom/sgscq/vpn/handler/j;-><init>(ZZLjava/util/ArrayList;Ljava/util/LinkedHashSet;)V

    move-object v5, v3

    :goto_31
    add-int/lit8 v7, v17, 0x1

    move/from16 v1, p1

    move/from16 v8, p2

    move-object/from16 v3, v19

    move/from16 v2, v22

    move/from16 v4, v31

    goto/16 :goto_1

    .line 57
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing daily adventure presentation for skill "

    .line 58
    invoke-static {v1, v2}, Lc/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 60
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_52
    return-object v5
.end method

.method public static p(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/Map;

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p0, Ljava/util/Map;

    const-string p1, "upd"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-static {v0, p2}, Lcom/sgscq/vpn/handler/m;->a(Ljava/util/List;Ljava/util/Map;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "del"

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
