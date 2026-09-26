.class public final Lcom/sgscq/vpn/u6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/sgscq/vpn/t6;

.field public final b:Lcom/sgscq/vpn/t6;

.field public c:I

.field public volatile d:Z

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sgscq/vpn/t6;

    invoke-direct {v0}, Lcom/sgscq/vpn/t6;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/u6;->a:Lcom/sgscq/vpn/t6;

    new-instance v0, Lcom/sgscq/vpn/t6;

    invoke-direct {v0}, Lcom/sgscq/vpn/t6;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/u6;->b:Lcom/sgscq/vpn/t6;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sgscq/vpn/u6;->c:I

    iput-boolean v0, p0, Lcom/sgscq/vpn/u6;->d:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/u6;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/u6;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/sgscq/vpn/u6;->d:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget v1, p0, Lcom/sgscq/vpn/u6;->c:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/high16 v2, 0x6400000

    if-le v1, v2, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sgscq/vpn/u6;->d:Z

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sgscq/vpn/u6;->a:Lcom/sgscq/vpn/t6;

    array-length v2, p1

    invoke-virtual {v1, p1, v2}, Lcom/sgscq/vpn/t6;->a([BI)V

    iget v1, p0, Lcom/sgscq/vpn/u6;->c:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/sgscq/vpn/u6;->c:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Ljava/io/ByteArrayOutputStream;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/u6;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/sgscq/vpn/u6;->a:Lcom/sgscq/vpn/t6;

    .line 5
    .line 6
    iget v2, v1, Lcom/sgscq/vpn/t6;->a:I

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/16 v3, 0x3000

    .line 12
    .line 13
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget v3, v1, Lcom/sgscq/vpn/t6;->a:I

    .line 18
    .line 19
    sub-int/2addr v3, v2

    .line 20
    iget-object v1, v1, Lcom/sgscq/vpn/t6;->b:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_3

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, [B

    .line 37
    .line 38
    const/high16 v5, 0x10000

    .line 39
    .line 40
    if-lt v3, v5, :cond_1

    .line 41
    .line 42
    sub-int/2addr v3, v5

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    sub-int/2addr v5, v3

    .line 45
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-gtz v5, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {p1, v4, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 53
    .line 54
    .line 55
    sub-int/2addr v2, v5

    .line 56
    const/4 v3, 0x0

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    :goto_1
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p1
.end method

.method public final c(I[B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/u6;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/sgscq/vpn/u6;->d:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget v1, p0, Lcom/sgscq/vpn/u6;->c:I

    add-int/2addr v1, p1

    const/high16 v2, 0x6400000

    if-le v1, v2, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sgscq/vpn/u6;->d:Z

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sgscq/vpn/u6;->b:Lcom/sgscq/vpn/t6;

    invoke-virtual {v1, p2, p1}, Lcom/sgscq/vpn/t6;->a([BI)V

    iget p2, p0, Lcom/sgscq/vpn/u6;->c:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/sgscq/vpn/u6;->c:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
