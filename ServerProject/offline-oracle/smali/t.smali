.class public final Lcom/sgscq/vpn/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/vpn/t;->a:Ljava/lang/Object;

    const-string p2, "sgscq_player_v5"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/sgscq/vpn/t;->b:Ljava/lang/Object;

    new-instance v1, Lcom/sgscq/vpn/m4;

    invoke-direct {v1, p1}, Lcom/sgscq/vpn/m4;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sgscq/vpn/t;->c:Ljava/lang/Object;

    new-instance p1, Lcom/sgscq/vpn/s;

    invoke-direct {p1, p0, v0}, Lcom/sgscq/vpn/s;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/sgscq/vpn/t;->d:Ljava/lang/Object;

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/t;->d:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/t;->e:Ljava/lang/Object;

    new-instance p1, Lcom/sgscq/vpn/cloud/z;

    invoke-direct {p1, p2}, Lcom/sgscq/vpn/cloud/z;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sgscq/vpn/t;->a:Ljava/lang/Object;

    new-instance p1, Lm/e;

    const/4 v0, 0x5

    invoke-direct {p1, v0, p2}, Lm/e;-><init>(ILandroid/content/Context;)V

    iput-object p1, p0, Lcom/sgscq/vpn/t;->b:Ljava/lang/Object;

    new-instance p1, Lcom/sgscq/vpn/cloud/b0;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lcom/sgscq/vpn/cloud/b0;-><init>(ILandroid/content/Context;)V

    iput-object p1, p0, Lcom/sgscq/vpn/t;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/sgscq/vpn/cloud/e0;Lcom/sgscq/vpn/config/h;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Lcom/sgscq/vpn/config/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/t;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sgscq/vpn/t;->b:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1, p3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 4
    iput-object p1, p0, Lcom/sgscq/vpn/t;->c:Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1, p4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 6
    iput-object p1, p0, Lcom/sgscq/vpn/t;->d:Ljava/lang/Object;

    iput-object p5, p0, Lcom/sgscq/vpn/t;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/HashSet;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/t;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sgscq/vpn/t;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sgscq/vpn/t;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/sgscq/vpn/t;->d:Ljava/lang/Object;

    iput-object p5, p0, Lcom/sgscq/vpn/t;->e:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/util/Map;)Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    const-string v1, "is_accepted"

    .line 4
    .line 5
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const-string v0, "status"

    .line 16
    .line 17
    const-string v1, "0"

    .line 18
    .line 19
    const-string v2, "1"

    .line 20
    .line 21
    invoke-static {p0, v0, v1, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const-string v0, "is_attach_get"

    .line 28
    .line 29
    invoke-static {p0, v0, v1, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 39
    :goto_1
    return p0
.end method

.method public static d(Ljava/util/Map;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "email_id"

    const-string v1, "id"

    const-string v2, "pk_id"

    const-string v3, "mail_id"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static f(I)Z
    .locals 0

    .line 1
    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g(Ljava/lang/Object;)Ljava/util/LinkedHashSet;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    instance-of v1, p0, Ljava/util/List;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/t;->b:Ljava/lang/Object;

    check-cast v0, Lm/e;

    invoke-virtual {v0}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sgscq/vpn/t;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sgscq/vpn/cloud/b0;

    iget-object v2, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/cloud/b0;->f(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/d0;

    move-result-object v1

    iget-object v0, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lcom/sgscq/vpn/cloud/d0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/t;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/sgscq/vpn/m4;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "active"

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v2, "passport_"

    .line 20
    .line 21
    const-string v3, "_status"

    .line 22
    .line 23
    invoke-static {v2, p1, v3}, Lcom/sgscq/vpn/handler/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v0, v0, Lcom/sgscq/vpn/m4;->b:Landroid/content/SharedPreferences;

    .line 28
    .line 29
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    move-object v0, v1

    .line 35
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    return-object v1

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/sgscq/vpn/t;->a:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Landroid/content/Context;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/sgscq/vpn/t;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Landroid/content/SharedPreferences;

    .line 50
    .line 51
    invoke-static {v0, v2, p1}, Lcom/sgscq/vpn/y5;->l(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    invoke-static {p1}, Lcom/sgscq/vpn/h5;->q0(Ljava/util/Map;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    return-object p1

    .line 65
    :cond_4
    :goto_2
    return-object v1
.end method

.method public final e(Ljava/lang/String;I)V
    .locals 4

    .line 1
    if-eqz p1, :cond_2

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
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/t;->c(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    const-string v1, "ladder_rank"

    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    const-string v1, "ladder_best_rank"

    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/16 v3, 0x3e9

    .line 33
    .line 34
    invoke-static {v2, v3}, Lcom/sgscq/vpn/p7;->j(Ljava/lang/Object;I)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :try_start_0
    iget-object p2, p0, Lcom/sgscq/vpn/t;->a:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p2, Landroid/content/Context;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/sgscq/vpn/t;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Landroid/content/SharedPreferences;

    .line 56
    .line 57
    invoke-static {p2, v1, p1, v0}, Lcom/sgscq/vpn/y5;->p(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p2

    .line 62
    const-string v0, "Failed to save ladder rank uid="

    .line 63
    .line 64
    const-string v1, ": "

    .line 65
    .line 66
    invoke-static {v0, p1, v1}, La/b0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string v0, "SGSCQ_ROBOT"

    .line 71
    .line 72
    invoke-static {p2, p1, v0}, Lc/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_0
    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/g0;
    .locals 17

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/sgscq/vpn/t;->b(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/sgscq/vpn/cloud/g0;

    .line 11
    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/cloud/g0;-><init>(Ljava/lang/Object;Z)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    move-object/from16 v1, p0

    .line 21
    .line 22
    iget-object v3, v1, Lcom/sgscq/vpn/t;->a:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v4, v3

    .line 25
    check-cast v4, Lcom/sgscq/vpn/cloud/z;

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const-string v5, "GET"

    .line 31
    .line 32
    const-string v6, "/reward-mails"

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    const-string v8, "application/json"

    .line 36
    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    invoke-virtual/range {v4 .. v9}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-static {v4}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-string v5, "mails"

    .line 54
    .line 55
    invoke-virtual {v4, v5}, La/t;->m(Ljava/lang/String;)La/q;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    const-string v7, "revoked_mail_ids"

    .line 60
    .line 61
    invoke-virtual {v4, v7}, La/t;->m(Ljava/lang/String;)La/q;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    if-eqz v6, :cond_1a

    .line 66
    .line 67
    instance-of v6, v6, La/p;

    .line 68
    .line 69
    if-eqz v6, :cond_1a

    .line 70
    .line 71
    if-eqz v7, :cond_1a

    .line 72
    .line 73
    instance-of v6, v7, La/p;

    .line 74
    .line 75
    if-eqz v6, :cond_1a

    .line 76
    .line 77
    invoke-static {v4, v5}, Lcom/sgscq/vpn/cloud/z;->v(La/t;Ljava/lang/String;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    new-instance v6, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7}, La/q;->e()La/p;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-virtual {v7}, La/p;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    if-eqz v8, :cond_3

    .line 99
    .line 100
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    check-cast v8, La/q;

    .line 105
    .line 106
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    instance-of v9, v8, La/x;

    .line 110
    .line 111
    if-eqz v9, :cond_2

    .line 112
    .line 113
    invoke-virtual {v8}, La/q;->i()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    if-nez v9, :cond_1

    .line 126
    .line 127
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 132
    .line 133
    const-string v2, "\u4e91\u5956\u52b1\u64a4\u56de ID \u683c\u5f0f\u9519\u8bef"

    .line 134
    .line 135
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v0

    .line 139
    :cond_3
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    const-string v8, "pending_count"

    .line 148
    .line 149
    invoke-static {v4, v8, v7}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-nez v6, :cond_4

    .line 154
    .line 155
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    :cond_4
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 160
    .line 161
    .line 162
    const-string v4, "email_list"

    .line 163
    .line 164
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    instance-of v8, v7, Ljava/util/List;

    .line 169
    .line 170
    const-string v9, "mail_list"

    .line 171
    .line 172
    if-nez v8, :cond_5

    .line 173
    .line 174
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    :cond_5
    instance-of v8, v7, Ljava/util/List;

    .line 179
    .line 180
    if-eqz v8, :cond_6

    .line 181
    .line 182
    new-instance v8, Ljava/util/ArrayList;

    .line 183
    .line 184
    check-cast v7, Ljava/util/List;

    .line 185
    .line 186
    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .line 194
    .line 195
    :goto_1
    const-string v7, "_cloud_platform_reward_delivery_ids"

    .line 196
    .line 197
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    invoke-static {v10}, Lcom/sgscq/vpn/t;->g(Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 202
    .line 203
    .line 204
    move-result-object v10

    .line 205
    const-string v11, "claimed_gift_ids"

    .line 206
    .line 207
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v11

    .line 211
    invoke-static {v11}, Lcom/sgscq/vpn/t;->g(Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 212
    .line 213
    .line 214
    move-result-object v11

    .line 215
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v12

    .line 219
    move v13, v2

    .line 220
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v14

    .line 224
    if-eqz v14, :cond_9

    .line 225
    .line 226
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v14

    .line 230
    instance-of v2, v14, Ljava/util/Map;

    .line 231
    .line 232
    if-nez v2, :cond_7

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_7
    check-cast v14, Ljava/util/Map;

    .line 236
    .line 237
    invoke-static {v14}, Lcom/sgscq/vpn/t;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-interface {v11, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    if-eqz v2, :cond_8

    .line 246
    .line 247
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    .line 248
    .line 249
    .line 250
    const/4 v2, 0x0

    .line 251
    const/4 v13, 0x1

    .line 252
    goto :goto_2

    .line 253
    :cond_8
    :goto_3
    const/4 v2, 0x0

    .line 254
    goto :goto_2

    .line 255
    :cond_9
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 256
    .line 257
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 261
    .line 262
    .line 263
    move-result-object v12

    .line 264
    :cond_a
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 265
    .line 266
    .line 267
    move-result v14

    .line 268
    if-eqz v14, :cond_c

    .line 269
    .line 270
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v14

    .line 274
    instance-of v15, v14, Ljava/util/Map;

    .line 275
    .line 276
    if-nez v15, :cond_b

    .line 277
    .line 278
    goto :goto_4

    .line 279
    :cond_b
    check-cast v14, Ljava/util/Map;

    .line 280
    .line 281
    invoke-static {v14}, Lcom/sgscq/vpn/t;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v15

    .line 285
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 286
    .line 287
    .line 288
    move-result v16

    .line 289
    if-nez v16, :cond_a

    .line 290
    .line 291
    invoke-interface {v2, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    goto :goto_4

    .line 295
    :cond_c
    new-instance v12, Ljava/util/LinkedHashSet;

    .line 296
    .line 297
    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    .line 298
    .line 299
    .line 300
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 305
    .line 306
    .line 307
    move-result v14

    .line 308
    if-eqz v14, :cond_14

    .line 309
    .line 310
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v14

    .line 314
    check-cast v14, Ljava/util/Map;

    .line 315
    .line 316
    invoke-static {v14}, Lcom/sgscq/vpn/t;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v15

    .line 320
    if-eqz v15, :cond_d

    .line 321
    .line 322
    const-string v1, "platform_reward_"

    .line 323
    .line 324
    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-eqz v1, :cond_d

    .line 329
    .line 330
    const/4 v1, 0x1

    .line 331
    goto :goto_6

    .line 332
    :cond_d
    const/4 v1, 0x0

    .line 333
    :goto_6
    if-nez v1, :cond_e

    .line 334
    .line 335
    goto :goto_7

    .line 336
    :cond_e
    invoke-interface {v11, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-eqz v1, :cond_f

    .line 341
    .line 342
    invoke-interface {v10, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    goto :goto_7

    .line 346
    :cond_f
    invoke-virtual {v2, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    check-cast v1, Ljava/util/Map;

    .line 351
    .line 352
    invoke-interface {v10, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v16

    .line 356
    if-eqz v16, :cond_12

    .line 357
    .line 358
    if-eqz v1, :cond_10

    .line 359
    .line 360
    invoke-static {v1}, Lcom/sgscq/vpn/t;->a(Ljava/util/Map;)Z

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    if-eqz v1, :cond_11

    .line 365
    .line 366
    :cond_10
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    :cond_11
    :goto_7
    move-object/from16 v1, p0

    .line 370
    .line 371
    goto :goto_5

    .line 372
    :cond_12
    if-nez v1, :cond_13

    .line 373
    .line 374
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 375
    .line 376
    invoke-direct {v1, v14}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 377
    .line 378
    .line 379
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    invoke-interface {v2, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    :cond_13
    invoke-interface {v10, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    const/4 v13, 0x1

    .line 389
    goto :goto_7

    .line 390
    :cond_14
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 391
    .line 392
    invoke-direct {v1, v6}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 393
    .line 394
    .line 395
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    if-nez v2, :cond_17

    .line 400
    .line 401
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    :cond_15
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 406
    .line 407
    .line 408
    move-result v5

    .line 409
    if-eqz v5, :cond_17

    .line 410
    .line 411
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    instance-of v6, v5, Ljava/util/Map;

    .line 416
    .line 417
    if-nez v6, :cond_16

    .line 418
    .line 419
    goto :goto_8

    .line 420
    :cond_16
    check-cast v5, Ljava/util/Map;

    .line 421
    .line 422
    invoke-static {v5}, Lcom/sgscq/vpn/t;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v6

    .line 426
    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v6

    .line 430
    if-eqz v6, :cond_15

    .line 431
    .line 432
    invoke-static {v5}, Lcom/sgscq/vpn/t;->a(Ljava/util/Map;)Z

    .line 433
    .line 434
    .line 435
    move-result v5

    .line 436
    if-nez v5, :cond_15

    .line 437
    .line 438
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 439
    .line 440
    .line 441
    const/4 v13, 0x1

    .line 442
    goto :goto_8

    .line 443
    :cond_17
    if-eqz v13, :cond_18

    .line 444
    .line 445
    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    new-instance v1, Ljava/util/ArrayList;

    .line 452
    .line 453
    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 454
    .line 455
    .line 456
    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    :cond_18
    new-instance v0, Lcom/sgscq/vpn/cloud/g0;

    .line 460
    .line 461
    new-instance v1, Ljava/util/ArrayList;

    .line 462
    .line 463
    invoke-direct {v1, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 464
    .line 465
    .line 466
    invoke-direct {v0, v1, v13}, Lcom/sgscq/vpn/cloud/g0;-><init>(Ljava/lang/Object;Z)V

    .line 467
    .line 468
    .line 469
    move-object v2, v1

    .line 470
    check-cast v2, Ljava/util/List;

    .line 471
    .line 472
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    if-nez v2, :cond_19

    .line 477
    .line 478
    :try_start_0
    check-cast v3, Lcom/sgscq/vpn/cloud/z;

    .line 479
    .line 480
    check-cast v1, Ljava/util/List;

    .line 481
    .line 482
    invoke-virtual {v3, v1}, Lcom/sgscq/vpn/cloud/z;->h(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .line 484
    .line 485
    :catch_0
    :cond_19
    return-object v0

    .line 486
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 487
    .line 488
    const-string v1, "\u4e91\u5956\u52b1\u90ae\u4ef6\u54cd\u5e94\u4e0d\u5b8c\u6574"

    .line 489
    .line 490
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    throw v0
.end method

.method public final declared-synchronized i(ILjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/g0;
    .locals 8

    .line 1
    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    const-string v0, ""

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    move-object v0, p2

    :goto_0
    const/4 v1, 0x0

    if-lez p1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-nez v2, :cond_2

    iget-object p1, p0, Lcom/sgscq/vpn/t;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sgscq/vpn/t;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/sgscq/vpn/cloud/g0;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2, v1}, Lcom/sgscq/vpn/cloud/g0;-><init>(Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sgscq/vpn/t;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    iget-object v5, p0, Lcom/sgscq/vpn/t;->e:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_3

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7530

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    new-instance p1, Lcom/sgscq/vpn/cloud/g0;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2, v1}, Lcom/sgscq/vpn/cloud/g0;-><init>(Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/sgscq/vpn/t;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sgscq/vpn/t;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2, p3}, Lcom/sgscq/vpn/t;->h(Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/g0;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_2
    monitor-exit p0

    throw p1
.end method
