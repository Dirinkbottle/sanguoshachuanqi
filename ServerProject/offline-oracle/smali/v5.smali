.class public final Lcom/sgscq/vpn/v5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final x:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/LinkedHashMap;

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/List;

.field public final k:Ljava/util/List;

.field public final l:Ljava/util/List;

.field public final m:Ljava/util/List;

.field public final n:Ljava/util/List;

.field public final o:Ljava/util/List;

.field public final p:Ljava/util/List;

.field public final q:Ljava/lang/String;

.field public r:Ljava/util/Map;

.field public final s:Ljava/util/List;

.field public final t:I

.field public final u:I

.field public final v:Z

.field public final w:Lcom/sgscq/vpn/u5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sgscq/vpn/v5;->x:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/util/Map;Ljava/lang/String;Ljava/util/List;IILcom/sgscq/vpn/u5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sgscq/vpn/v5;->b:Ljava/lang/String;

    iput p3, p0, Lcom/sgscq/vpn/v5;->c:I

    iput p4, p0, Lcom/sgscq/vpn/v5;->d:I

    iput p5, p0, Lcom/sgscq/vpn/v5;->e:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sgscq/vpn/v5;->f:Z

    const-string p2, ""

    iput-object p2, p0, Lcom/sgscq/vpn/v5;->g:Ljava/lang/String;

    invoke-static {p6}, Lcom/sgscq/vpn/v5;->c(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p2

    iput-object p2, p0, Lcom/sgscq/vpn/v5;->h:Ljava/util/LinkedHashMap;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/sgscq/vpn/v5;->i:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/sgscq/vpn/v5;->j:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/sgscq/vpn/v5;->k:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/sgscq/vpn/v5;->l:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/sgscq/vpn/v5;->m:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/sgscq/vpn/v5;->n:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/sgscq/vpn/v5;->o:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/sgscq/vpn/v5;->p:Ljava/util/List;

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const-string p7, "131001"

    :cond_1
    iput-object p7, p0, Lcom/sgscq/vpn/v5;->q:Ljava/lang/String;

    new-instance p2, Ljava/util/ArrayList;

    if-nez p8, :cond_2

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_2
    invoke-direct {p2, p8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/sgscq/vpn/v5;->s:Ljava/util/List;

    invoke-static {p1, p9}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/sgscq/vpn/v5;->t:I

    invoke-static {p1, p10}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sgscq/vpn/v5;->u:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sgscq/vpn/v5;->v:Z

    iput-object p11, p0, Lcom/sgscq/vpn/v5;->w:Lcom/sgscq/vpn/u5;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 18

    .line 2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/sgscq/vpn/v5;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    .locals 7

    .line 3
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/sgscq/vpn/v5;->b:Ljava/lang/String;

    move v1, p3

    iput v1, v0, Lcom/sgscq/vpn/v5;->c:I

    move v1, p4

    iput v1, v0, Lcom/sgscq/vpn/v5;->d:I

    move v1, p5

    iput v1, v0, Lcom/sgscq/vpn/v5;->e:I

    move v1, p6

    iput-boolean v1, v0, Lcom/sgscq/vpn/v5;->f:Z

    const-string v1, ""

    if-nez p7, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p7

    :goto_0
    iput-object v2, v0, Lcom/sgscq/vpn/v5;->g:Ljava/lang/String;

    invoke-static {p8}, Lcom/sgscq/vpn/v5;->c(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v2

    iput-object v2, v0, Lcom/sgscq/vpn/v5;->h:Ljava/util/LinkedHashMap;

    if-eqz p17, :cond_1

    move-object/from16 v3, p9

    goto :goto_1

    :cond_1
    invoke-static/range {p9 .. p9}, Lcom/sgscq/vpn/v5;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    :goto_1
    iput-object v3, v0, Lcom/sgscq/vpn/v5;->i:Ljava/util/List;

    if-eqz p17, :cond_2

    move-object/from16 v3, p10

    goto :goto_2

    :cond_2
    invoke-static/range {p10 .. p10}, Lcom/sgscq/vpn/v5;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    :goto_2
    iput-object v3, v0, Lcom/sgscq/vpn/v5;->j:Ljava/util/List;

    if-eqz p17, :cond_3

    move-object/from16 v3, p11

    goto :goto_3

    :cond_3
    invoke-static/range {p11 .. p11}, Lcom/sgscq/vpn/v5;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    :goto_3
    iput-object v3, v0, Lcom/sgscq/vpn/v5;->k:Ljava/util/List;

    if-eqz p17, :cond_4

    move-object/from16 v3, p12

    goto :goto_4

    :cond_4
    invoke-static/range {p12 .. p12}, Lcom/sgscq/vpn/v5;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    :goto_4
    iput-object v3, v0, Lcom/sgscq/vpn/v5;->l:Ljava/util/List;

    if-eqz p17, :cond_5

    move-object/from16 v3, p13

    goto :goto_5

    :cond_5
    invoke-static/range {p13 .. p13}, Lcom/sgscq/vpn/v5;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    :goto_5
    iput-object v3, v0, Lcom/sgscq/vpn/v5;->m:Ljava/util/List;

    if-eqz p17, :cond_6

    move-object/from16 v3, p14

    goto :goto_6

    :cond_6
    invoke-static/range {p14 .. p14}, Lcom/sgscq/vpn/v5;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    :goto_6
    iput-object v3, v0, Lcom/sgscq/vpn/v5;->n:Ljava/util/List;

    if-eqz p17, :cond_7

    move-object/from16 v3, p15

    goto :goto_7

    :cond_7
    invoke-static/range {p15 .. p15}, Lcom/sgscq/vpn/v5;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    :goto_7
    iput-object v3, v0, Lcom/sgscq/vpn/v5;->o:Ljava/util/List;

    if-eqz p17, :cond_8

    move-object/from16 v3, p16

    goto :goto_8

    :cond_8
    invoke-static/range {p16 .. p16}, Lcom/sgscq/vpn/v5;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    :goto_8
    iput-object v3, v0, Lcom/sgscq/vpn/v5;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_9

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    :cond_9
    const-string v4, "general_id"

    const-string v6, "131001"

    invoke-static {v4, v6, v2}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sgscq/vpn/v5;->q:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-static {v4, v1, v6}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_a
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/sgscq/vpn/v5;->s:Ljava/util/List;

    iget-object v2, v0, Lcom/sgscq/vpn/v5;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v0, Lcom/sgscq/vpn/v5;->t:I

    iget-object v2, v0, Lcom/sgscq/vpn/v5;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v5

    :cond_b
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v6, "major_pk_id"

    invoke-static {v6, v1, v4}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_c
    iput v3, v0, Lcom/sgscq/vpn/v5;->u:I

    iput-boolean v5, v0, Lcom/sgscq/vpn/v5;->v:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sgscq/vpn/v5;->w:Lcom/sgscq/vpn/u5;

    return-void
.end method

.method public static c(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/util/Map$Entry;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/String;

    .line 34
    .line 35
    sget-object v3, Lcom/sgscq/vpn/v5;->x:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    invoke-virtual {v3, v2, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/String;

    .line 42
    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move-object v2, v3

    .line 47
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1}, Lcom/sgscq/vpn/v5;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    return-object v0
.end method

.method public static d(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/sgscq/vpn/v5;->c(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/sgscq/vpn/v5;->c(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sgscq/vpn/v5;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    return-object p0
.end method

.method public static g(Ljava/util/List;Ljava/util/LinkedHashSet;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "owner_general_id"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "user_general_id"

    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "general_pk_id"

    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/sgscq/vpn/v5;->c(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static h(Lcom/sgscq/vpn/cloud/r;)Lcom/sgscq/vpn/v5;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/sgscq/vpn/cloud/r;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "cloud_"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, "user_nickname"

    iget-object v4, v0, Lcom/sgscq/vpn/cloud/r;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "nickname"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v0, Lcom/sgscq/vpn/cloud/r;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "user_level"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v0, Lcom/sgscq/vpn/cloud/r;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "user_vip_level"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v3, v0, Lcom/sgscq/vpn/cloud/r;->e:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "user_fighting"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "fighting"

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v0, Lcom/sgscq/vpn/cloud/r;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ladder_rank"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v3, v0, Lcom/sgscq/vpn/cloud/r;->g:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "ladder_rank_verified_until_ms"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v0, Lcom/sgscq/vpn/cloud/r;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "govern"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/sgscq/vpn/cloud/r;->i:Ljava/util/List;

    invoke-static {v3}, Lcom/sgscq/vpn/v5;->q(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v4, "TeamGeneral"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/sgscq/vpn/cloud/r;->j:Ljava/util/List;

    invoke-static {v3}, Lcom/sgscq/vpn/v5;->q(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v4, "BuddyGeneral"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/sgscq/vpn/cloud/r;->k:Ljava/util/List;

    invoke-static {v3}, Lcom/sgscq/vpn/v5;->q(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v4, "General"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/sgscq/vpn/cloud/r;->l:Ljava/util/List;

    invoke-static {v3}, Lcom/sgscq/vpn/v5;->q(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v4, "Skill"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/sgscq/vpn/cloud/r;->m:Ljava/util/List;

    invoke-static {v0}, Lcom/sgscq/vpn/v5;->q(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v3, "Equipment"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/sgscq/vpn/v5;->j(Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/v5;

    move-result-object v0

    new-instance v19, Lcom/sgscq/vpn/v5;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/sgscq/vpn/v5;->b:Ljava/lang/String;

    iget v4, v0, Lcom/sgscq/vpn/v5;->c:I

    iget v5, v0, Lcom/sgscq/vpn/v5;->d:I

    iget v6, v0, Lcom/sgscq/vpn/v5;->e:I

    const-string v8, ""

    iget-object v9, v0, Lcom/sgscq/vpn/v5;->h:Ljava/util/LinkedHashMap;

    iget-object v10, v0, Lcom/sgscq/vpn/v5;->i:Ljava/util/List;

    iget-object v11, v0, Lcom/sgscq/vpn/v5;->j:Ljava/util/List;

    iget-object v12, v0, Lcom/sgscq/vpn/v5;->k:Ljava/util/List;

    iget-object v13, v0, Lcom/sgscq/vpn/v5;->l:Ljava/util/List;

    iget-object v14, v0, Lcom/sgscq/vpn/v5;->m:Ljava/util/List;

    iget-object v15, v0, Lcom/sgscq/vpn/v5;->n:Ljava/util/List;

    iget-object v7, v0, Lcom/sgscq/vpn/v5;->o:Ljava/util/List;

    move-object/from16 v16, v7

    iget-object v0, v0, Lcom/sgscq/vpn/v5;->p:Ljava/util/List;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v18}, Lcom/sgscq/vpn/v5;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    return-object v19

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u4e91\u7aef\u5bf9\u624b ID \u7f3a\u5931"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u4e91\u7aef\u5bf9\u624b\u6863\u6848\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static i(Ljava/util/Map;)Lcom/sgscq/vpn/v5;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    const-string v2, "lazy_summary"

    .line 6
    .line 7
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const-string v3, "player_info"

    .line 16
    .line 17
    const-string v4, "base_rank"

    .line 18
    .line 19
    const-string v5, "fighting"

    .line 20
    .line 21
    const-string v6, "level"

    .line 22
    .line 23
    const-string v7, "nickname"

    .line 24
    .line 25
    const-string v8, "id"

    .line 26
    .line 27
    const/4 v9, 0x0

    .line 28
    const/4 v10, 0x1

    .line 29
    const-string v11, ""

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-static {v8, v11, v0}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v12

    .line 37
    invoke-static {v7, v11, v0}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v13

    .line 41
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1, v10}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    .line 46
    .line 47
    .line 48
    move-result v14

    .line 49
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1, v10}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    .line 54
    .line 55
    .line 56
    move-result v15

    .line 57
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1, v9}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    .line 62
    .line 63
    .line 64
    move-result v16

    .line 65
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    move-object/from16 v17, v1

    .line 70
    .line 71
    check-cast v17, Ljava/util/Map;

    .line 72
    .line 73
    const-string v1, "leader_general_id"

    .line 74
    .line 75
    const-string v2, "131001"

    .line 76
    .line 77
    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v18

    .line 81
    const-string v1, "main_general_ids"

    .line 82
    .line 83
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    new-instance v2, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    instance-of v3, v1, Ljava/util/List;

    .line 93
    .line 94
    if-eqz v3, :cond_0

    .line 95
    .line 96
    check-cast v1, Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_0

    .line 107
    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_0
    const-string v1, "team_size"

    .line 121
    .line 122
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v1, v9}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    .line 127
    .line 128
    .line 129
    move-result v20

    .line 130
    const-string v1, "deputy_count"

    .line 131
    .line 132
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0, v9}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    .line 137
    .line 138
    .line 139
    move-result v21

    .line 140
    const/16 v22, 0x0

    .line 141
    .line 142
    move-object/from16 v19, v2

    .line 143
    .line 144
    invoke-static/range {v12 .. v22}, Lcom/sgscq/vpn/v5;->n(Ljava/lang/String;Ljava/lang/String;IIILjava/util/Map;Ljava/lang/String;Ljava/util/List;IILcom/sgscq/vpn/u5;)Lcom/sgscq/vpn/v5;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    return-object v0

    .line 149
    :cond_1
    new-instance v2, Lcom/sgscq/vpn/v5;

    .line 150
    .line 151
    move-object v12, v2

    .line 152
    invoke-static {v8, v11, v0}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v13

    .line 156
    invoke-static {v7, v11, v0}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v14

    .line 160
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-static {v6, v10}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    .line 165
    .line 166
    .line 167
    move-result v15

    .line 168
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-static {v5, v10}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    .line 173
    .line 174
    .line 175
    move-result v16

    .line 176
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-static {v4, v9}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    .line 181
    .line 182
    .line 183
    move-result v17

    .line 184
    const-string v4, "player_backed"

    .line 185
    .line 186
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v18

    .line 194
    const-string v1, "player_uid"

    .line 195
    .line 196
    invoke-static {v1, v11, v0}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v19

    .line 200
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    move-object/from16 v20, v1

    .line 205
    .line 206
    check-cast v20, Ljava/util/Map;

    .line 207
    .line 208
    const-string v1, "general_info"

    .line 209
    .line 210
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-static {v1}, Lcom/sgscq/vpn/v5;->t(Ljava/lang/Object;)Ljava/util/List;

    .line 215
    .line 216
    .line 217
    move-result-object v21

    .line 218
    const-string v1, "team_info"

    .line 219
    .line 220
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-static {v1}, Lcom/sgscq/vpn/v5;->t(Ljava/lang/Object;)Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object v22

    .line 228
    const-string v1, "skill_info"

    .line 229
    .line 230
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-static {v1}, Lcom/sgscq/vpn/v5;->t(Ljava/lang/Object;)Ljava/util/List;

    .line 235
    .line 236
    .line 237
    move-result-object v23

    .line 238
    const-string v1, "equipment_info"

    .line 239
    .line 240
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-static {v1}, Lcom/sgscq/vpn/v5;->t(Ljava/lang/Object;)Ljava/util/List;

    .line 245
    .line 246
    .line 247
    move-result-object v24

    .line 248
    const-string v1, "gem_info"

    .line 249
    .line 250
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-static {v1}, Lcom/sgscq/vpn/v5;->t(Ljava/lang/Object;)Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object v25

    .line 258
    const-string v1, "combat_info"

    .line 259
    .line 260
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-static {v1}, Lcom/sgscq/vpn/v5;->t(Ljava/lang/Object;)Ljava/util/List;

    .line 265
    .line 266
    .line 267
    move-result-object v26

    .line 268
    const-string v1, "buddy_info"

    .line 269
    .line 270
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-static {v1}, Lcom/sgscq/vpn/v5;->t(Ljava/lang/Object;)Ljava/util/List;

    .line 275
    .line 276
    .line 277
    move-result-object v27

    .line 278
    const-string v1, "fight_team"

    .line 279
    .line 280
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-static {v0}, Lcom/sgscq/vpn/v5;->t(Ljava/lang/Object;)Ljava/util/List;

    .line 285
    .line 286
    .line 287
    move-result-object v28

    .line 288
    invoke-direct/range {v12 .. v28}, Lcom/sgscq/vpn/v5;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 289
    .line 290
    .line 291
    return-object v2
.end method

.method public static j(Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/v5;
    .locals 36

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v0, "General"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v10, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "TeamGeneral"

    .line 17
    .line 18
    invoke-static {v2, v1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/util/Map;

    .line 37
    .line 38
    invoke-static {v3}, Lcom/sgscq/vpn/v5;->c(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance v2, Ln/b;

    .line 47
    .line 48
    const/4 v3, 0x6

    .line 49
    invoke-direct {v2, v3}, Ln/b;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 53
    .line 54
    .line 55
    const-string v2, "BuddyGeneral"

    .line 56
    .line 57
    invoke-static {v2, v1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v15

    .line 61
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    const-string v5, "general_pk_id"

    .line 75
    .line 76
    const-string v6, ""

    .line 77
    .line 78
    const-string v8, "user_general_id"

    .line 79
    .line 80
    if-eqz v4, :cond_2

    .line 81
    .line 82
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Ljava/util/Map;

    .line 87
    .line 88
    invoke-static {v8, v6, v4}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-static {v5, v6, v4}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-nez v5, :cond_1

    .line 101
    .line 102
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    const-string v9, "pk_id"

    .line 115
    .line 116
    if-eqz v4, :cond_4

    .line 117
    .line 118
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Ljava/util/Map;

    .line 123
    .line 124
    invoke-static {v8, v6, v4}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v11

    .line 128
    invoke-static {v5, v11, v4}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    invoke-static {v9, v11, v4}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    if-nez v9, :cond_3

    .line 141
    .line 142
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_6

    .line 151
    .line 152
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    :cond_5
    :goto_3
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
    check-cast v4, Ljava/util/Map;

    .line 167
    .line 168
    invoke-static {v5, v6, v4}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-static {v9, v8, v4}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    if-nez v8, :cond_5

    .line 181
    .line 182
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    const/4 v4, 0x0

    .line 191
    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    const/4 v11, 0x1

    .line 196
    const-string v12, "major_pk_id"

    .line 197
    .line 198
    if-eqz v8, :cond_8

    .line 199
    .line 200
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    check-cast v8, Ljava/util/Map;

    .line 205
    .line 206
    invoke-static {v12, v6, v8}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v12

    .line 210
    invoke-static {v5, v6, v8}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v13

    .line 214
    invoke-static {v9, v13, v8}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 219
    .line 220
    .line 221
    move-result v13

    .line 222
    if-nez v13, :cond_7

    .line 223
    .line 224
    invoke-interface {v2, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v12

    .line 228
    if-eqz v12, :cond_7

    .line 229
    .line 230
    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    if-eqz v8, :cond_7

    .line 235
    .line 236
    move v4, v11

    .line 237
    goto :goto_4

    .line 238
    :cond_8
    if-nez v4, :cond_6

    .line 239
    .line 240
    new-instance v13, Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .line 244
    .line 245
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    :cond_9
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    if-eqz v3, :cond_a

    .line 254
    .line 255
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    check-cast v3, Ljava/util/Map;

    .line 260
    .line 261
    invoke-static {v5, v6, v3}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    invoke-static {v9, v4, v3}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    if-eqz v4, :cond_9

    .line 274
    .line 275
    invoke-static {v3}, Lcom/sgscq/vpn/v5;->c(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    goto :goto_5

    .line 283
    :cond_a
    const-string v0, "Skill"

    .line 284
    .line 285
    invoke-static {v0, v1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-static {v0, v2}, Lcom/sgscq/vpn/v5;->g(Ljava/util/List;Ljava/util/LinkedHashSet;)Ljava/util/ArrayList;

    .line 290
    .line 291
    .line 292
    move-result-object v16

    .line 293
    const-string v0, "Equipment"

    .line 294
    .line 295
    invoke-static {v0, v1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-static {v0, v2}, Lcom/sgscq/vpn/v5;->g(Ljava/util/List;Ljava/util/LinkedHashSet;)Ljava/util/ArrayList;

    .line 300
    .line 301
    .line 302
    move-result-object v17

    .line 303
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 304
    .line 305
    .line 306
    move-result-object v18

    .line 307
    const-string v0, "user_level"

    .line 308
    .line 309
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    const-string v3, "level"

    .line 314
    .line 315
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    invoke-static {v4, v11}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    .line 320
    .line 321
    .line 322
    move-result v4

    .line 323
    invoke-static {v2, v4}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    const-string v2, "user_fighting"

    .line 328
    .line 329
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    const-string v8, "fighting"

    .line 334
    .line 335
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v14

    .line 339
    move-object/from16 v26, v15

    .line 340
    .line 341
    const-string v15, "fightPoint"

    .line 342
    .line 343
    move-object/from16 v27, v3

    .line 344
    .line 345
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    invoke-static {v3, v11}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    invoke-static {v14, v3}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    invoke-static {v2, v3}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    const-string v3, "general_fighting"

    .line 362
    .line 363
    if-gt v2, v11, :cond_c

    .line 364
    .line 365
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    const/4 v11, 0x0

    .line 370
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 371
    .line 372
    .line 373
    move-result v14

    .line 374
    if-eqz v14, :cond_b

    .line 375
    .line 376
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v14

    .line 380
    check-cast v14, Ljava/util/Map;

    .line 381
    .line 382
    move-object/from16 v19, v2

    .line 383
    .line 384
    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    invoke-interface {v14, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v14

    .line 392
    move-object/from16 v28, v15

    .line 393
    .line 394
    const/4 v15, 0x0

    .line 395
    invoke-static {v14, v15}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    .line 396
    .line 397
    .line 398
    move-result v14

    .line 399
    invoke-static {v2, v14}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    add-int/2addr v11, v2

    .line 404
    move-object/from16 v2, v19

    .line 405
    .line 406
    move-object/from16 v15, v28

    .line 407
    .line 408
    goto :goto_6

    .line 409
    :cond_b
    move-object/from16 v28, v15

    .line 410
    .line 411
    goto :goto_7

    .line 412
    :cond_c
    move-object/from16 v28, v15

    .line 413
    .line 414
    move v11, v2

    .line 415
    :goto_7
    const-string v2, "nickname"

    .line 416
    .line 417
    const-string v14, "\u73a9\u5bb6"

    .line 418
    .line 419
    invoke-static {v2, v14, v1}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v14

    .line 423
    const-string v15, "user_nickname"

    .line 424
    .line 425
    invoke-static {v15, v14, v1}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v14

    .line 429
    new-instance v1, Ljava/util/ArrayList;

    .line 430
    .line 431
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 435
    .line 436
    .line 437
    move-result-object v19

    .line 438
    :goto_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    .line 439
    .line 440
    .line 441
    move-result v20

    .line 442
    if-eqz v20, :cond_1e

    .line 443
    .line 444
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v20

    .line 448
    move-object/from16 v29, v10

    .line 449
    .line 450
    move-object/from16 v10, v20

    .line 451
    .line 452
    check-cast v10, Ljava/util/Map;

    .line 453
    .line 454
    move-object/from16 v30, v8

    .line 455
    .line 456
    invoke-static {v9, v6, v10}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v8

    .line 460
    invoke-static {v5, v8, v10}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v8

    .line 464
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 465
    .line 466
    .line 467
    move-result-object v20

    .line 468
    :goto_9
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    .line 469
    .line 470
    .line 471
    move-result v21

    .line 472
    if-eqz v21, :cond_1d

    .line 473
    .line 474
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v21

    .line 478
    move/from16 v31, v11

    .line 479
    .line 480
    move-object/from16 v11, v21

    .line 481
    .line 482
    check-cast v11, Ljava/util/Map;

    .line 483
    .line 484
    move-object/from16 v25, v0

    .line 485
    .line 486
    invoke-static {v9, v6, v11}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    if-nez v0, :cond_d

    .line 495
    .line 496
    move-object/from16 v0, v25

    .line 497
    .line 498
    move/from16 v11, v31

    .line 499
    .line 500
    goto :goto_9

    .line 501
    :cond_d
    invoke-static {v11}, Lcom/sgscq/vpn/v5;->c(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    const-string v11, "team_position"

    .line 506
    .line 507
    move-object/from16 v20, v9

    .line 508
    .line 509
    const-string v9, "position"

    .line 510
    .line 511
    move/from16 v32, v4

    .line 512
    .line 513
    const-string v4, "general_position"

    .line 514
    .line 515
    filled-new-array {v9, v4, v11, v3}, [Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v11

    .line 519
    const/16 v21, 0x0

    .line 520
    .line 521
    move-object/from16 v22, v3

    .line 522
    .line 523
    move/from16 v3, v21

    .line 524
    .line 525
    move-object/from16 v21, v15

    .line 526
    .line 527
    :goto_a
    const/4 v15, 0x4

    .line 528
    if-ge v3, v15, :cond_f

    .line 529
    .line 530
    aget-object v15, v11, v3

    .line 531
    .line 532
    invoke-interface {v10, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    move-result v23

    .line 536
    if-eqz v23, :cond_e

    .line 537
    .line 538
    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v23

    .line 542
    move-object/from16 v24, v11

    .line 543
    .line 544
    invoke-static/range {v23 .. v23}, Lcom/sgscq/vpn/v5;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v11

    .line 548
    invoke-interface {v0, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    goto :goto_b

    .line 552
    :cond_e
    move-object/from16 v24, v11

    .line 553
    .line 554
    :goto_b
    add-int/lit8 v3, v3, 0x1

    .line 555
    .line 556
    move-object/from16 v11, v24

    .line 557
    .line 558
    goto :goto_a

    .line 559
    :cond_f
    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    move-result v3

    .line 563
    if-nez v3, :cond_10

    .line 564
    .line 565
    invoke-interface {v10, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    move-result v3

    .line 569
    if-eqz v3, :cond_10

    .line 570
    .line 571
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v3

    .line 575
    invoke-static {v3}, Lcom/sgscq/vpn/v5;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v3

    .line 579
    invoke-interface {v0, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    :cond_10
    new-instance v3, Ljava/util/ArrayList;

    .line 583
    .line 584
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 588
    .line 589
    .line 590
    move-result-object v4

    .line 591
    :cond_11
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 592
    .line 593
    .line 594
    move-result v10

    .line 595
    if-eqz v10, :cond_12

    .line 596
    .line 597
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v10

    .line 601
    check-cast v10, Ljava/util/Map;

    .line 602
    .line 603
    invoke-static {v12, v6, v10}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v11

    .line 607
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 608
    .line 609
    .line 610
    move-result v11

    .line 611
    if-eqz v11, :cond_11

    .line 612
    .line 613
    invoke-static {v10}, Lcom/sgscq/vpn/v5;->c(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 614
    .line 615
    .line 616
    move-result-object v10

    .line 617
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    .line 619
    .line 620
    goto :goto_c

    .line 621
    :cond_12
    new-instance v4, Ln/b;

    .line 622
    .line 623
    const/4 v10, 0x7

    .line 624
    invoke-direct {v4, v10}, Ln/b;-><init>(I)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 628
    .line 629
    .line 630
    const-string v4, "bound_lieutenants"

    .line 631
    .line 632
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    new-instance v3, Ljava/util/ArrayList;

    .line 636
    .line 637
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .line 639
    .line 640
    const-string v4, "gSkill"

    .line 641
    .line 642
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v10

    .line 646
    instance-of v11, v10, Ljava/util/List;

    .line 647
    .line 648
    if-eqz v11, :cond_13

    .line 649
    .line 650
    check-cast v10, Ljava/util/List;

    .line 651
    .line 652
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 653
    .line 654
    .line 655
    move-result-object v10

    .line 656
    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 657
    .line 658
    .line 659
    move-result v11

    .line 660
    if-eqz v11, :cond_13

    .line 661
    .line 662
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v11

    .line 666
    invoke-static {v11}, Lcom/sgscq/vpn/v5;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v11

    .line 670
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    goto :goto_d

    .line 674
    :cond_13
    new-instance v10, Ljava/util/ArrayList;

    .line 675
    .line 676
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 680
    .line 681
    .line 682
    move-result-object v11

    .line 683
    :goto_e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 684
    .line 685
    .line 686
    move-result v15

    .line 687
    move-object/from16 v23, v12

    .line 688
    .line 689
    const-string v12, "id"

    .line 690
    .line 691
    move-object/from16 v33, v13

    .line 692
    .line 693
    const-string v13, "skill_id"

    .line 694
    .line 695
    if-eqz v15, :cond_15

    .line 696
    .line 697
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v15

    .line 701
    move-object/from16 v24, v11

    .line 702
    .line 703
    instance-of v11, v15, Ljava/util/Map;

    .line 704
    .line 705
    if-nez v11, :cond_14

    .line 706
    .line 707
    goto :goto_f

    .line 708
    :cond_14
    check-cast v15, Ljava/util/Map;

    .line 709
    .line 710
    invoke-static {v12, v6, v15}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v11

    .line 714
    invoke-static {v13, v11, v15}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v11

    .line 718
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    .line 720
    .line 721
    :goto_f
    move-object/from16 v12, v23

    .line 722
    .line 723
    move-object/from16 v11, v24

    .line 724
    .line 725
    move-object/from16 v13, v33

    .line 726
    .line 727
    goto :goto_e

    .line 728
    :cond_15
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 729
    .line 730
    .line 731
    move-result-object v11

    .line 732
    :goto_10
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 733
    .line 734
    .line 735
    move-result v15

    .line 736
    if-eqz v15, :cond_1b

    .line 737
    .line 738
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object v15

    .line 742
    check-cast v15, Ljava/util/Map;

    .line 743
    .line 744
    move-object/from16 v24, v11

    .line 745
    .line 746
    invoke-static {v5, v6, v15}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v11

    .line 750
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    move-result v11

    .line 754
    if-nez v11, :cond_16

    .line 755
    .line 756
    move-object/from16 v11, v24

    .line 757
    .line 758
    goto :goto_10

    .line 759
    :cond_16
    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    move-result-object v11

    .line 763
    move-object/from16 v34, v5

    .line 764
    .line 765
    const-string v5, "skill_position"

    .line 766
    .line 767
    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v5

    .line 771
    move-object/from16 v35, v8

    .line 772
    .line 773
    const/4 v8, 0x1

    .line 774
    invoke-static {v5, v8}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    .line 775
    .line 776
    .line 777
    move-result v5

    .line 778
    invoke-static {v11, v5}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    .line 779
    .line 780
    .line 781
    move-result v5

    .line 782
    if-gt v5, v8, :cond_17

    .line 783
    .line 784
    goto :goto_11

    .line 785
    :cond_17
    invoke-static {v12, v6, v15}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v5

    .line 789
    invoke-static {v13, v5, v15}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v5

    .line 793
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 794
    .line 795
    .line 796
    move-result v8

    .line 797
    if-eqz v8, :cond_18

    .line 798
    .line 799
    goto :goto_11

    .line 800
    :cond_18
    const-string v8, "fate_skill_id"

    .line 801
    .line 802
    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 803
    .line 804
    .line 805
    move-result v11

    .line 806
    if-nez v11, :cond_19

    .line 807
    .line 808
    invoke-interface {v0, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    :cond_19
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 812
    .line 813
    .line 814
    move-result v8

    .line 815
    if-nez v8, :cond_1a

    .line 816
    .line 817
    invoke-static {v15}, Lcom/sgscq/vpn/v5;->c(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 818
    .line 819
    .line 820
    move-result-object v8

    .line 821
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    .line 823
    .line 824
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    .line 826
    .line 827
    :cond_1a
    :goto_11
    move-object/from16 v11, v24

    .line 828
    .line 829
    move-object/from16 v5, v34

    .line 830
    .line 831
    move-object/from16 v8, v35

    .line 832
    .line 833
    goto :goto_10

    .line 834
    :cond_1b
    move-object/from16 v34, v5

    .line 835
    .line 836
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 837
    .line 838
    .line 839
    move-result v5

    .line 840
    if-nez v5, :cond_1c

    .line 841
    .line 842
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    :cond_1c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    .line 847
    .line 848
    goto :goto_12

    .line 849
    :cond_1d
    move-object/from16 v25, v0

    .line 850
    .line 851
    move-object/from16 v22, v3

    .line 852
    .line 853
    move/from16 v32, v4

    .line 854
    .line 855
    move-object/from16 v34, v5

    .line 856
    .line 857
    move-object/from16 v20, v9

    .line 858
    .line 859
    move/from16 v31, v11

    .line 860
    .line 861
    move-object/from16 v23, v12

    .line 862
    .line 863
    move-object/from16 v33, v13

    .line 864
    .line 865
    move-object/from16 v21, v15

    .line 866
    .line 867
    :goto_12
    move-object/from16 v9, v20

    .line 868
    .line 869
    move-object/from16 v15, v21

    .line 870
    .line 871
    move-object/from16 v3, v22

    .line 872
    .line 873
    move-object/from16 v12, v23

    .line 874
    .line 875
    move-object/from16 v0, v25

    .line 876
    .line 877
    move-object/from16 v10, v29

    .line 878
    .line 879
    move-object/from16 v8, v30

    .line 880
    .line 881
    move/from16 v11, v31

    .line 882
    .line 883
    move/from16 v4, v32

    .line 884
    .line 885
    move-object/from16 v13, v33

    .line 886
    .line 887
    move-object/from16 v5, v34

    .line 888
    .line 889
    goto/16 :goto_8

    .line 890
    .line 891
    :cond_1e
    move-object/from16 v25, v0

    .line 892
    .line 893
    move/from16 v32, v4

    .line 894
    .line 895
    move-object/from16 v30, v8

    .line 896
    .line 897
    move-object/from16 v29, v10

    .line 898
    .line 899
    move/from16 v31, v11

    .line 900
    .line 901
    move-object/from16 v33, v13

    .line 902
    .line 903
    move-object/from16 v21, v15

    .line 904
    .line 905
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 906
    .line 907
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 908
    .line 909
    .line 910
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 915
    .line 916
    .line 917
    move-result-object v0

    .line 918
    :cond_1f
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 919
    .line 920
    .line 921
    move-result v3

    .line 922
    if-eqz v3, :cond_20

    .line 923
    .line 924
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 925
    .line 926
    .line 927
    move-result-object v3

    .line 928
    check-cast v3, Ljava/util/Map$Entry;

    .line 929
    .line 930
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 931
    .line 932
    .line 933
    move-result-object v4

    .line 934
    instance-of v5, v4, Ljava/util/Map;

    .line 935
    .line 936
    if-nez v5, :cond_1f

    .line 937
    .line 938
    instance-of v5, v4, Ljava/util/List;

    .line 939
    .line 940
    if-nez v5, :cond_1f

    .line 941
    .line 942
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 943
    .line 944
    .line 945
    move-result-object v3

    .line 946
    check-cast v3, Ljava/lang/String;

    .line 947
    .line 948
    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    goto :goto_13

    .line 952
    :cond_20
    const-string v0, "player_id"

    .line 953
    .line 954
    invoke-interface {v8, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    .line 956
    .line 957
    const-string v0, "user_id"

    .line 958
    .line 959
    invoke-interface {v8, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    const-string v0, "uid"

    .line 963
    .line 964
    invoke-interface {v8, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    .line 966
    .line 967
    const-string v0, "account_uid"

    .line 968
    .line 969
    invoke-interface {v8, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    .line 971
    .line 972
    invoke-interface {v8, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    .line 974
    .line 975
    const-string v23, "player_level"

    .line 976
    .line 977
    move-object/from16 v19, v8

    .line 978
    .line 979
    move-object/from16 v20, v21

    .line 980
    .line 981
    move-object/from16 v21, v14

    .line 982
    .line 983
    move/from16 v22, v32

    .line 984
    .line 985
    move/from16 v24, v32

    .line 986
    .line 987
    invoke-static/range {v19 .. v25}, Lc/a;->z(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 988
    .line 989
    .line 990
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 991
    .line 992
    .line 993
    move-result-object v0

    .line 994
    move-object/from16 v2, v27

    .line 995
    .line 996
    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    .line 998
    .line 999
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v0

    .line 1003
    move-object/from16 v2, v30

    .line 1004
    .line 1005
    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    .line 1007
    .line 1008
    const-string v0, "fight_point"

    .line 1009
    .line 1010
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v2

    .line 1014
    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    .line 1016
    .line 1017
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v0

    .line 1021
    move-object/from16 v2, v28

    .line 1022
    .line 1023
    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    .line 1025
    .line 1026
    const-string v0, "general_skin"

    .line 1027
    .line 1028
    const-string v2, "user_general_skin"

    .line 1029
    .line 1030
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v3

    .line 1034
    const/4 v4, 0x0

    .line 1035
    :goto_14
    const/4 v5, 0x2

    .line 1036
    if-ge v4, v5, :cond_23

    .line 1037
    .line 1038
    aget-object v5, v3, v4

    .line 1039
    .line 1040
    move-object v15, v1

    .line 1041
    move-object/from16 v1, p1

    .line 1042
    .line 1043
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v5

    .line 1047
    if-nez v5, :cond_21

    .line 1048
    .line 1049
    goto :goto_15

    .line 1050
    :cond_21
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v5

    .line 1054
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v5

    .line 1058
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 1059
    .line 1060
    .line 1061
    move-result v9

    .line 1062
    if-nez v9, :cond_22

    .line 1063
    .line 1064
    const-string v9, "0"

    .line 1065
    .line 1066
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1067
    .line 1068
    .line 1069
    move-result v9

    .line 1070
    if-nez v9, :cond_22

    .line 1071
    .line 1072
    const-string v9, "null"

    .line 1073
    .line 1074
    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1075
    .line 1076
    .line 1077
    move-result v9

    .line 1078
    if-eqz v9, :cond_24

    .line 1079
    .line 1080
    :cond_22
    :goto_15
    add-int/lit8 v4, v4, 0x1

    .line 1081
    .line 1082
    move-object v1, v15

    .line 1083
    goto :goto_14

    .line 1084
    :cond_23
    move-object v15, v1

    .line 1085
    move-object/from16 v1, p1

    .line 1086
    .line 1087
    move-object v5, v6

    .line 1088
    :cond_24
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 1089
    .line 1090
    .line 1091
    move-result v3

    .line 1092
    if-eqz v3, :cond_25

    .line 1093
    .line 1094
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1095
    .line 1096
    .line 1097
    move-result v3

    .line 1098
    if-nez v3, :cond_25

    .line 1099
    .line 1100
    const/4 v3, 0x0

    .line 1101
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v3

    .line 1105
    check-cast v3, Ljava/util/Map;

    .line 1106
    .line 1107
    const-string v4, "general_id"

    .line 1108
    .line 1109
    invoke-static {v4, v6, v3}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v5

    .line 1113
    :cond_25
    invoke-static {v5, v1}, Lcom/sgscq/vpn/p5;->F(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v3

    .line 1117
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1118
    .line 1119
    .line 1120
    move-result v4

    .line 1121
    if-nez v4, :cond_26

    .line 1122
    .line 1123
    invoke-interface {v8, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    .line 1125
    .line 1126
    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    .line 1128
    .line 1129
    const-string v0, "head"

    .line 1130
    .line 1131
    invoke-interface {v8, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    .line 1133
    .line 1134
    const-string v0, "avatar"

    .line 1135
    .line 1136
    invoke-interface {v8, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    .line 1138
    .line 1139
    :cond_26
    new-instance v19, Lcom/sgscq/vpn/v5;

    .line 1140
    .line 1141
    move-object/from16 v0, v19

    .line 1142
    .line 1143
    const-string v2, "ladder_rank"

    .line 1144
    .line 1145
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v2

    .line 1149
    const/16 v3, 0x3e9

    .line 1150
    .line 1151
    invoke-static {v2, v3}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    .line 1152
    .line 1153
    .line 1154
    move-result v5

    .line 1155
    const/4 v6, 0x1

    .line 1156
    const-string v2, "Combat"

    .line 1157
    .line 1158
    invoke-static {v2, v1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v1

    .line 1162
    move-object v2, v14

    .line 1163
    move-object v14, v1

    .line 1164
    move-object/from16 v1, p0

    .line 1165
    .line 1166
    move/from16 v3, v32

    .line 1167
    .line 1168
    move/from16 v4, v31

    .line 1169
    .line 1170
    move-object/from16 v7, p0

    .line 1171
    .line 1172
    move-object/from16 v9, v33

    .line 1173
    .line 1174
    move-object/from16 v10, v29

    .line 1175
    .line 1176
    move-object/from16 v11, v16

    .line 1177
    .line 1178
    move-object/from16 v12, v17

    .line 1179
    .line 1180
    move-object/from16 v13, v18

    .line 1181
    .line 1182
    move-object/from16 v16, v15

    .line 1183
    .line 1184
    move-object/from16 v15, v26

    .line 1185
    .line 1186
    invoke-direct/range {v0 .. v16}, Lcom/sgscq/vpn/v5;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1187
    .line 1188
    .line 1189
    return-object v19
.end method

.method public static l(Ljava/lang/Object;I)I
    .locals 2

    .line 1
    if-nez p0, :cond_0

    return p1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, p0

    return p0

    :catch_0
    return p1
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;IIILjava/util/Map;Ljava/lang/String;Ljava/util/List;IILcom/sgscq/vpn/u5;)Lcom/sgscq/vpn/v5;
    .locals 13

    .line 1
    new-instance v12, Lcom/sgscq/vpn/v5;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/sgscq/vpn/v5;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/util/Map;Ljava/lang/String;Ljava/util/List;IILcom/sgscq/vpn/u5;)V

    return-object v12
.end method

.method public static p(ILjava/util/List;)I
    .locals 3

    .line 1
    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "general_fighting"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fighting"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    :cond_1
    return p0
.end method

.method public static q(Ljava/util/List;)Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "upd"

    aput-object v3, v1, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "add"

    aput-object v3, v1, v2

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sgscq/vpn/v5;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :goto_0
    const/4 v2, 0x3

    aput-object p0, v1, v2

    const-string p0, "del"

    invoke-static {p0, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p2, :cond_2

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "null"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p0

    :cond_2
    :goto_0
    return-object p1
.end method


# virtual methods
.method public final a(Lcom/sgscq/vpn/cloud/h0;)Lcom/sgscq/vpn/v5;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/sgscq/vpn/v5;->b:Ljava/lang/String;

    iget v2, p0, Lcom/sgscq/vpn/v5;->c:I

    iget v3, p0, Lcom/sgscq/vpn/v5;->d:I

    iget v4, p0, Lcom/sgscq/vpn/v5;->e:I

    iget-object v5, p0, Lcom/sgscq/vpn/v5;->h:Ljava/util/LinkedHashMap;

    iget-object v6, p0, Lcom/sgscq/vpn/v5;->q:Ljava/lang/String;

    iget-object v7, p0, Lcom/sgscq/vpn/v5;->s:Ljava/util/List;

    iget v8, p0, Lcom/sgscq/vpn/v5;->t:I

    iget v9, p0, Lcom/sgscq/vpn/v5;->u:I

    move-object v10, p1

    invoke-static/range {v0 .. v10}, Lcom/sgscq/vpn/v5;->n(Ljava/lang/String;Ljava/lang/String;IIILjava/util/Map;Ljava/lang/String;Ljava/util/List;IILcom/sgscq/vpn/u5;)Lcom/sgscq/vpn/v5;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/v5;->r:Ljava/util/Map;

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sgscq/vpn/v5;->v:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/sgscq/vpn/v5;->p:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/sgscq/vpn/v5;->d(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/sgscq/vpn/v5;->w:Lcom/sgscq/vpn/u5;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-interface {v0, p0}, Lcom/sgscq/vpn/u5;->a(Lcom/sgscq/vpn/v5;)Lcom/sgscq/vpn/v5;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    if-ne v0, p0, :cond_3

    .line 26
    .line 27
    :cond_2
    :goto_0
    move-object v0, p0

    .line 28
    :cond_3
    if-ne v0, p0, :cond_4

    .line 29
    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_1

    .line 35
    :cond_4
    invoke-virtual {v0}, Lcom/sgscq/vpn/v5;->f()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_1
    return-object v0
.end method

.method public final k()I
    .locals 6

    .line 1
    const-string v0, "govern"

    const-string v1, "leadership_num"

    const-string v2, "leadershipNum"

    const-string v3, "user_leadership_num"

    const-string v4, "user_ability"

    const-string v5, "teamPoint"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/sgscq/vpn/v5;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    move-result v3

    if-lez v3, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sgscq/vpn/v5;->t:I

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final m(I)Ljava/util/LinkedHashMap;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "ladder_rank"

    .line 9
    .line 10
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    const-string v1, "player_id"

    .line 18
    .line 19
    iget-object v2, v0, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const-string v1, "user_id"

    .line 25
    .line 26
    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const-string v1, "account_uid"

    .line 30
    .line 31
    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v1, "uid"

    .line 35
    .line 36
    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    const-string v1, "player_type"

    .line 45
    .line 46
    invoke-interface {v8, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    const-string v1, "nickname"

    .line 50
    .line 51
    iget-object v2, v0, Lcom/sgscq/vpn/v5;->b:Ljava/lang/String;

    .line 52
    .line 53
    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const-string v1, "user_nickname"

    .line 57
    .line 58
    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    const-string v1, "user_name"

    .line 62
    .line 63
    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    const-string v1, "user_nick"

    .line 67
    .line 68
    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    const-string v1, "userName"

    .line 72
    .line 73
    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    const-string v1, "roleName"

    .line 77
    .line 78
    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    iget v6, v0, Lcom/sgscq/vpn/v5;->c:I

    .line 82
    .line 83
    const-string v3, "player_level"

    .line 84
    .line 85
    const-string v5, "user_level"

    .line 86
    .line 87
    const-string v7, "level"

    .line 88
    .line 89
    move v1, v6

    .line 90
    move-object v2, v8

    .line 91
    move v4, v6

    .line 92
    invoke-static/range {v1 .. v7}, Lc/a;->s(ILjava/util/LinkedHashMap;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget v6, v0, Lcom/sgscq/vpn/v5;->d:I

    .line 96
    .line 97
    const-string v3, "fighting"

    .line 98
    .line 99
    const-string v5, "fight_point"

    .line 100
    .line 101
    const-string v7, "fightPoint"

    .line 102
    .line 103
    move v1, v6

    .line 104
    move v4, v6

    .line 105
    invoke-static/range {v1 .. v7}, Lc/a;->s(ILjava/util/LinkedHashMap;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v1, v0, Lcom/sgscq/vpn/v5;->h:Ljava/util/LinkedHashMap;

    .line 109
    .line 110
    const-string v2, "user_general_skin"

    .line 111
    .line 112
    const-string v3, ""

    .line 113
    .line 114
    invoke-static {v2, v3, v1}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    const-string v4, "general_skin"

    .line 119
    .line 120
    invoke-static {v4, v3, v1}, Lcom/sgscq/vpn/v5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    iget-object v6, v0, Lcom/sgscq/vpn/v5;->q:Ljava/lang/String;

    .line 129
    .line 130
    if-eqz v5, :cond_0

    .line 131
    .line 132
    move-object v3, v6

    .line 133
    :cond_0
    const-string v5, "general_id"

    .line 134
    .line 135
    invoke-interface {v8, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    invoke-interface {v8, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    const-string v2, "head"

    .line 145
    .line 146
    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    const-string v2, "avatar"

    .line 150
    .line 151
    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    const-string v2, "to_attack"

    .line 155
    .line 156
    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    const-string v2, "is_enemy"

    .line 160
    .line 161
    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    iget v2, v0, Lcom/sgscq/vpn/v5;->t:I

    .line 165
    .line 166
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    const-string v3, "team_size"

    .line 171
    .line 172
    invoke-interface {v8, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/v5;->k()I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    const-string v3, "user_ability"

    .line 180
    .line 181
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    const-string v3, "leadership_num"

    .line 189
    .line 190
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    const-string v3, "leadershipNum"

    .line 198
    .line 199
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    const-string v3, "user_leadership_num"

    .line 207
    .line 208
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    const-string v3, "govern"

    .line 216
    .line 217
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-interface {v8, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    const-string v9, "user_vip_level"

    .line 225
    .line 226
    const-string v10, "vip_level"

    .line 227
    .line 228
    const-string v11, "user_sign"

    .line 229
    .line 230
    const-string v12, "union_id"

    .line 231
    .line 232
    const-string v13, "union_name"

    .line 233
    .line 234
    const-string v14, "user_role"

    .line 235
    .line 236
    const-string v15, "title"

    .line 237
    .line 238
    const-string v16, "title_id"

    .line 239
    .line 240
    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    const/4 v3, 0x0

    .line 245
    move v4, v3

    .line 246
    :goto_0
    const/16 v5, 0x8

    .line 247
    .line 248
    if-ge v4, v5, :cond_2

    .line 249
    .line 250
    aget-object v5, v2, v4

    .line 251
    .line 252
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    if-eqz v6, :cond_1

    .line 257
    .line 258
    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    invoke-static {v6}, Lcom/sgscq/vpn/v5;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    invoke-interface {v8, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 270
    .line 271
    goto :goto_0

    .line 272
    :cond_2
    const-string v1, "rank_name"

    .line 273
    .line 274
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/p5;->T0(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/p5;->f1(I)I

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    div-int/lit8 v1, v1, 0xa

    .line 286
    .line 287
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    const-string v2, "fight_salary"

    .line 292
    .line 293
    invoke-interface {v8, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    const-string v1, "user_vip_level"

    .line 297
    .line 298
    invoke-virtual {v8, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    instance-of v2, v2, Ljava/lang/Number;

    .line 303
    .line 304
    if-nez v2, :cond_3

    .line 305
    .line 306
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    :cond_3
    const-string v1, "vip_level"

    .line 314
    .line 315
    invoke-virtual {v8, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    instance-of v2, v2, Ljava/lang/Number;

    .line 320
    .line 321
    if-nez v2, :cond_4

    .line 322
    .line 323
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    :cond_4
    return-object v8
.end method

.method public final o()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/v5;->h:Ljava/util/LinkedHashMap;

    const-string v1, "max_general_fighting"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/sgscq/vpn/v5;->j:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/sgscq/vpn/v5;->p(ILjava/util/List;)I

    move-result v0

    iget-object v1, p0, Lcom/sgscq/vpn/v5;->p:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/sgscq/vpn/v5;->p(ILjava/util/List;)I

    move-result v0

    iget-object v1, p0, Lcom/sgscq/vpn/v5;->i:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/sgscq/vpn/v5;->p(ILjava/util/List;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sgscq/vpn/v5;->d:I

    :goto_0
    return v0
.end method

.method public final r()Ljava/util/Map;
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/sgscq/vpn/v5;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/sgscq/vpn/v5;->w:Lcom/sgscq/vpn/u5;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v0, p0}, Lcom/sgscq/vpn/u5;->a(Lcom/sgscq/vpn/v5;)Lcom/sgscq/vpn/v5;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    if-ne v0, p0, :cond_2

    .line 19
    .line 20
    :cond_1
    :goto_0
    move-object v0, p0

    .line 21
    :cond_2
    if-eq v0, p0, :cond_3

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/sgscq/vpn/v5;->r()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_3
    iget-object v1, p0, Lcom/sgscq/vpn/v5;->h:Ljava/util/LinkedHashMap;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/sgscq/vpn/v5;->i:Ljava/util/List;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/sgscq/vpn/v5;->j:Ljava/util/List;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/sgscq/vpn/v5;->k:Ljava/util/List;

    .line 35
    .line 36
    iget-object v5, p0, Lcom/sgscq/vpn/v5;->n:Ljava/util/List;

    .line 37
    .line 38
    iget-object v6, p0, Lcom/sgscq/vpn/v5;->l:Ljava/util/List;

    .line 39
    .line 40
    iget-object v7, p0, Lcom/sgscq/vpn/v5;->m:Ljava/util/List;

    .line 41
    .line 42
    iget-object v8, p0, Lcom/sgscq/vpn/v5;->o:Ljava/util/List;

    .line 43
    .line 44
    invoke-static/range {v1 .. v8}, Lcom/sgscq/vpn/cloud/m0;->B(Ljava/util/LinkedHashMap;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/LinkedHashMap;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "return_info"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    instance-of v2, v1, Ljava/util/Map;

    .line 55
    .line 56
    const-string v3, "gem_info"

    .line 57
    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    check-cast v1, Ljava/util/Map;

    .line 61
    .line 62
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_4
    const-string v1, "other_player_data"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    instance-of v2, v1, Ljava/util/Map;

    .line 72
    .line 73
    if-eqz v2, :cond_5

    .line 74
    .line 75
    check-cast v1, Ljava/util/Map;

    .line 76
    .line 77
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_5
    const-string v1, "info"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    instance-of v2, v1, Ljava/util/Map;

    .line 87
    .line 88
    if-nez v2, :cond_6

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_6
    check-cast v1, Ljava/util/Map;

    .line 92
    .line 93
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    :cond_7
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_9

    .line 106
    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    instance-of v4, v2, Ljava/util/Map;

    .line 112
    .line 113
    if-nez v4, :cond_8

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_8
    check-cast v2, Ljava/util/Map;

    .line 117
    .line 118
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    const-string v4, "cmn"

    .line 122
    .line 123
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    instance-of v4, v2, Ljava/util/Map;

    .line 128
    .line 129
    if-eqz v4, :cond_7

    .line 130
    .line 131
    check-cast v2, Ljava/util/Map;

    .line 132
    .line 133
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_9
    :goto_2
    return-object v0
.end method

.method public final s(I)I
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget p1, p0, Lcom/sgscq/vpn/v5;->c:I

    .line 5
    .line 6
    return p1

    .line 7
    :cond_0
    const/4 v0, 0x3

    .line 8
    if-ne p1, v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/sgscq/vpn/v5;->u()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const v0, 0x7a120

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x65

    .line 18
    .line 19
    if-lt p1, v0, :cond_1

    .line 20
    .line 21
    div-int/lit16 v0, p1, 0x3e8

    .line 22
    .line 23
    add-int/lit16 v0, v0, -0x1f4

    .line 24
    .line 25
    rem-int/lit16 p1, p1, 0x3e8

    .line 26
    .line 27
    if-lez v0, :cond_2

    .line 28
    .line 29
    if-lez p1, :cond_2

    .line 30
    .line 31
    mul-int/lit8 v0, v0, 0x64

    .line 32
    .line 33
    add-int v1, v0, p1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    :cond_2
    :goto_0
    return v1

    .line 41
    :cond_3
    const/4 v0, 0x4

    .line 42
    if-ne p1, v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/sgscq/vpn/v5;->k()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    return p1

    .line 49
    :cond_4
    const/4 v0, 0x1

    .line 50
    if-ne p1, v0, :cond_5

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/sgscq/vpn/v5;->o()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    return p1

    .line 57
    :cond_5
    iget p1, p0, Lcom/sgscq/vpn/v5;->d:I

    .line 58
    .line 59
    return p1
.end method

.method public final u()I
    .locals 5

    .line 1
    const-string v0, "last_map_id"

    const-string v1, "map_id"

    const-string v2, "rank_story_progress"

    const-string v3, "user_position_step"

    const-string v4, "user_map_step"

    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/sgscq/vpn/v5;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    move-result v3

    if-lez v3, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final v()Ljava/util/LinkedHashMap;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    const-string v1, "nickname"

    iget-object v2, v0, Lcom/sgscq/vpn/v5;->b:Ljava/lang/String;

    const-string v3, "level"

    iget v4, v0, Lcom/sgscq/vpn/v5;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "fighting"

    iget v6, v0, Lcom/sgscq/vpn/v5;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "base_rank"

    iget v8, v0, Lcom/sgscq/vpn/v5;->e:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "player_backed"

    iget-boolean v10, v0, Lcom/sgscq/vpn/v5;->f:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v11, "player_uid"

    iget-object v12, v0, Lcom/sgscq/vpn/v5;->g:Ljava/lang/String;

    const-string v13, "player_info"

    iget-object v14, v0, Lcom/sgscq/vpn/v5;->h:Ljava/util/LinkedHashMap;

    const-string v15, "lazy_summary"

    move-object/from16 v25, v1

    iget-boolean v1, v0, Lcom/sgscq/vpn/v5;->v:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const-string v17, "leader_general_id"

    move/from16 v26, v1

    iget-object v1, v0, Lcom/sgscq/vpn/v5;->q:Ljava/lang/String;

    move-object/from16 v18, v1

    const-string v19, "main_general_ids"

    iget-object v1, v0, Lcom/sgscq/vpn/v5;->s:Ljava/util/List;

    move-object/from16 v20, v1

    const-string v21, "team_size"

    iget v1, v0, Lcom/sgscq/vpn/v5;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const-string v23, "deputy_count"

    iget v1, v0, Lcom/sgscq/vpn/v5;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v1, v25

    move/from16 v25, v26

    filled-new-array/range {v1 .. v24}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "id"

    iget-object v3, v0, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    if-eqz v25, :cond_0

    return-object v1

    :cond_0
    const-string v2, "team_info"

    iget-object v3, v0, Lcom/sgscq/vpn/v5;->j:Ljava/util/List;

    const-string v4, "skill_info"

    iget-object v5, v0, Lcom/sgscq/vpn/v5;->k:Ljava/util/List;

    const-string v6, "equipment_info"

    iget-object v7, v0, Lcom/sgscq/vpn/v5;->l:Ljava/util/List;

    const-string v8, "gem_info"

    iget-object v9, v0, Lcom/sgscq/vpn/v5;->m:Ljava/util/List;

    const-string v10, "combat_info"

    iget-object v11, v0, Lcom/sgscq/vpn/v5;->n:Ljava/util/List;

    const-string v12, "buddy_info"

    iget-object v13, v0, Lcom/sgscq/vpn/v5;->o:Ljava/util/List;

    const-string v14, "fight_team"

    iget-object v15, v0, Lcom/sgscq/vpn/v5;->p:Ljava/util/List;

    filled-new-array/range {v2 .. v15}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "general_info"

    iget-object v4, v0, Lcom/sgscq/vpn/v5;->i:Ljava/util/List;

    invoke-static {v3, v4, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v1
.end method

.method public final x(I)Lcom/sgscq/vpn/v5;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sgscq/vpn/v5;->h:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lcom/sgscq/vpn/v5;->c(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v10

    const-string v1, "ladder_rank"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, v0, Lcom/sgscq/vpn/v5;->v:Z

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/sgscq/vpn/v5;->b:Ljava/lang/String;

    iget v4, v0, Lcom/sgscq/vpn/v5;->c:I

    iget v5, v0, Lcom/sgscq/vpn/v5;->d:I

    iget-object v8, v0, Lcom/sgscq/vpn/v5;->q:Ljava/lang/String;

    iget-object v9, v0, Lcom/sgscq/vpn/v5;->s:Ljava/util/List;

    iget v1, v0, Lcom/sgscq/vpn/v5;->t:I

    iget v11, v0, Lcom/sgscq/vpn/v5;->u:I

    iget-object v12, v0, Lcom/sgscq/vpn/v5;->w:Lcom/sgscq/vpn/u5;

    move/from16 v6, p1

    move-object v7, v10

    move v10, v1

    invoke-static/range {v2 .. v12}, Lcom/sgscq/vpn/v5;->n(Ljava/lang/String;Ljava/lang/String;IIILjava/util/Map;Ljava/lang/String;Ljava/util/List;IILcom/sgscq/vpn/u5;)Lcom/sgscq/vpn/v5;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Lcom/sgscq/vpn/v5;

    move-object v2, v1

    iget-object v3, v0, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/sgscq/vpn/v5;->b:Ljava/lang/String;

    iget v5, v0, Lcom/sgscq/vpn/v5;->c:I

    iget v6, v0, Lcom/sgscq/vpn/v5;->d:I

    iget-boolean v8, v0, Lcom/sgscq/vpn/v5;->f:Z

    iget-object v9, v0, Lcom/sgscq/vpn/v5;->g:Ljava/lang/String;

    iget-object v11, v0, Lcom/sgscq/vpn/v5;->i:Ljava/util/List;

    iget-object v12, v0, Lcom/sgscq/vpn/v5;->j:Ljava/util/List;

    iget-object v13, v0, Lcom/sgscq/vpn/v5;->k:Ljava/util/List;

    iget-object v14, v0, Lcom/sgscq/vpn/v5;->l:Ljava/util/List;

    iget-object v15, v0, Lcom/sgscq/vpn/v5;->m:Ljava/util/List;

    iget-object v7, v0, Lcom/sgscq/vpn/v5;->n:Ljava/util/List;

    move-object/from16 v16, v7

    iget-object v7, v0, Lcom/sgscq/vpn/v5;->o:Ljava/util/List;

    move-object/from16 v17, v7

    iget-object v7, v0, Lcom/sgscq/vpn/v5;->p:Ljava/util/List;

    move-object/from16 v18, v7

    const/16 v19, 0x1

    move/from16 v7, p1

    invoke-direct/range {v2 .. v19}, Lcom/sgscq/vpn/v5;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    return-object v1
.end method
