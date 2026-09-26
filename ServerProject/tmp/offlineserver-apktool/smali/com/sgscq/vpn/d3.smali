.class public final Lcom/sgscq/vpn/d3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sgscq/vpn/d3;->d:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sgscq/vpn/d3;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/d3;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/d3;->d:Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {p1, v1, v2, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lcom/sgscq/vpn/d3;->e:Ljava/lang/Object;

    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/sgscq/vpn/d3;->b:J

    const/16 p1, 0x100

    iput p1, p0, Lcom/sgscq/vpn/d3;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IJ)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/vpn/d3;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/vpn/d3;->d:Ljava/lang/Object;

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    iput-object p3, p0, Lcom/sgscq/vpn/d3;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sgscq/vpn/d3;->a:I

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, p5, p6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sgscq/vpn/d3;->b:J

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;IJ)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/d3;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sgscq/vpn/d3;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sgscq/vpn/d3;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sgscq/vpn/d3;->a:I

    iput-wide p5, p0, Lcom/sgscq/vpn/d3;->b:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(JLjava/lang/String;Ljava/lang/String;[B)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sgscq/vpn/d3;->e:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/sgscq/vpn/a3;

    .line 11
    .line 12
    invoke-direct {v1, p1, p2}, Lcom/sgscq/vpn/a3;-><init>(J)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/sgscq/vpn/d3;->e:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/4 p3, 0x0

    .line 35
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    new-instance p4, Lcom/sgscq/vpn/b3;

    .line 46
    .line 47
    invoke-virtual {p5}, [B->clone()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p5

    .line 51
    check-cast p5, [B

    .line 52
    .line 53
    iget-wide v1, p0, Lcom/sgscq/vpn/d3;->b:J

    .line 54
    .line 55
    add-long/2addr p1, v1

    .line 56
    invoke-direct {p4, p5, p1, p2}, Lcom/sgscq/vpn/b3;-><init>([BJ)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p3, p4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    :goto_0
    iget-object p1, p0, Lcom/sgscq/vpn/d3;->e:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p1, Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iget p2, p0, Lcom/sgscq/vpn/d3;->a:I

    .line 71
    .line 72
    if-le p1, p2, :cond_0

    .line 73
    .line 74
    iget-object p1, p0, Lcom/sgscq/vpn/d3;->e:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p1, Ljava/util/LinkedHashMap;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Ljava/lang/String;

    .line 91
    .line 92
    iget-object p2, p0, Lcom/sgscq/vpn/d3;->e:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p2, Ljava/util/LinkedHashMap;

    .line 95
    .line 96
    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    monitor-exit p0

    .line 101
    return-void

    .line 102
    :catchall_0
    move-exception p1

    .line 103
    monitor-exit p0

    .line 104
    throw p1
.end method

.method public final b(Ljava/lang/String;JILjava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/d3;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/sgscq/vpn/d3;->b:J

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x7530

    cmp-long p2, p2, v0

    if-gtz p2, :cond_1

    iget-object p2, p0, Lcom/sgscq/vpn/d3;->d:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/sgscq/vpn/d3;->a:I

    if-ne p1, p4, :cond_1

    iget-object p1, p0, Lcom/sgscq/vpn/d3;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/LinkedHashMap;

    iget-object p2, p0, Lcom/sgscq/vpn/d3;->c:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    invoke-direct {p1, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(JLjava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/d3;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sgscq/vpn/c3;

    if-eqz p3, :cond_2

    iget-wide v0, p3, Lcom/sgscq/vpn/c3;->b:J

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p3, Lcom/sgscq/vpn/c3;->a:Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
