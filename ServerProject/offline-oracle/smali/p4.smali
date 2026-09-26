.class public final Lcom/sgscq/vpn/p4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/io/Serializable;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/p4;->c:Ljava/lang/Object;

    const/4 v0, 0x4

    iput v0, p0, Lcom/sgscq/vpn/p4;->a:I

    new-instance v1, Ljava/util/LinkedHashMap;

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v1, p0, Lcom/sgscq/vpn/p4;->b:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    .line 2
    sget-object p3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p0, p1, p3, p2}, Lcom/sgscq/vpn/p4;-><init>(Ljava/lang/String;Ljava/io/Serializable;I)V

    return-void

    :cond_0
    const-string p3, ""

    .line 3
    invoke-direct {p0, p1, p3, p2}, Lcom/sgscq/vpn/p4;-><init>(Ljava/lang/String;Ljava/io/Serializable;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/io/Serializable;I)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/sgscq/vpn/p4;->b:Ljava/io/Serializable;

    iput p3, p0, Lcom/sgscq/vpn/p4;->a:I

    iput-object p2, p0, Lcom/sgscq/vpn/p4;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

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


# virtual methods
.method public final b(Ljava/lang/String;Lcom/sgscq/vpn/a;)Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/p4;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/ThreadLocal;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/sgscq/vpn/n4;

    .line 10
    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    invoke-static {p1}, Lcom/sgscq/vpn/p4;->a(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, v0, Lcom/sgscq/vpn/n4;->c:Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/Map;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_1
    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/sgscq/vpn/p4;->b:Ljava/io/Serializable;

    .line 33
    .line 34
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    monitor-exit p0

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    iget-object v1, p2, Lcom/sgscq/vpn/a;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Lcom/sgscq/vpn/z4;

    .line 48
    .line 49
    iget-object p2, p2, Lcom/sgscq/vpn/a;->c:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p2, Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1, p2}, Lcom/sgscq/vpn/z4;->f(Ljava/lang/String;)Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :cond_2
    if-eqz v1, :cond_3

    .line 58
    .line 59
    iget-object p2, v0, Lcom/sgscq/vpn/n4;->c:Ljava/util/LinkedHashMap;

    .line 60
    .line 61
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1, v1}, Lcom/sgscq/vpn/p4;->d(Ljava/lang/String;Ljava/util/Map;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    return-object v1

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    monitor-exit p0

    .line 70
    throw p1

    .line 71
    :cond_4
    :goto_0
    iget-object p1, p2, Lcom/sgscq/vpn/a;->b:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Lcom/sgscq/vpn/z4;

    .line 74
    .line 75
    iget-object p2, p2, Lcom/sgscq/vpn/a;->c:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p2, Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lcom/sgscq/vpn/z4;->f(Ljava/lang/String;)Ljava/util/Map;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1
.end method

.method public final declared-synchronized c(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/sgscq/vpn/p4;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sgscq/vpn/p4;->d(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sgscq/vpn/p4;->b:Ljava/io/Serializable;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p1, p0, Lcom/sgscq/vpn/p4;->b:Ljava/io/Serializable;

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result p1

    iget p2, p0, Lcom/sgscq/vpn/p4;->a:I

    if-le p1, p2, :cond_0

    iget-object p1, p0, Lcom/sgscq/vpn/p4;->b:Ljava/io/Serializable;

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/sgscq/vpn/p4;->b:Ljava/io/Serializable;

    check-cast p2, Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
