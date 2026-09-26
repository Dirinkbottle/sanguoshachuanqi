.class public final Lp/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/Object;

.field public static volatile c:Lp/d;


# instance fields
.field public final a:La/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lp/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(La/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/d;->a:La/a;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lp/d;
    .locals 4

    .line 1
    sget-object v0, Lp/d;->c:Lp/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lp/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lp/d;->c:Lp/d;

    if-nez v1, :cond_1

    invoke-static {p0}, Lp/l;->c(Landroid/content/Context;)Lp/l;

    move-result-object p0

    new-instance v1, Lp/d;

    new-instance v2, La/a;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v3}, La/a;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v1, v2}, Lp/d;-><init>(La/a;)V

    sput-object v1, Lp/d;->c:Lp/d;

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c(Lm/e;J)Lp/a;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget-object p0, p0, Lm/e;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lp/a;

    .line 24
    .line 25
    invoke-virtual {v1, p1, p2}, Lp/a;->a(J)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_2
    iget-wide v1, v1, Lp/a;->e:J

    .line 33
    .line 34
    cmp-long v1, v1, p1

    .line 35
    .line 36
    if-lez v1, :cond_1

    .line 37
    .line 38
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final a()Lp/b;
    .locals 5

    .line 1
    iget-object v0, p0, Lp/d;->a:La/a;

    .line 2
    .line 3
    iget-object v0, v0, La/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lp/l;

    .line 6
    .line 7
    iget-object v1, v0, Lp/l;->n:Lp/b;

    .line 8
    .line 9
    iget-object v2, v0, Lp/l;->c:Lp/h;

    .line 10
    .line 11
    check-cast v2, Lcom/sgscq/vpn/k;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/sgscq/vpn/k;->c()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-boolean v4, v0, Lp/l;->l:Z

    .line 20
    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    iget-object v0, v0, Lp/l;->e:Lp/g;

    .line 24
    .line 25
    check-cast v0, La/w;

    .line 26
    .line 27
    iget v0, v0, La/w;->a:I

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    packed-switch v0, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_0
    move v0, v4

    .line 35
    goto :goto_1

    .line 36
    :goto_0
    sget-boolean v0, Lcom/sgscq/vpn/c7;->i:Z

    .line 37
    .line 38
    :goto_1
    if-nez v0, :cond_0

    .line 39
    .line 40
    iget-wide v0, v1, Lp/b;->c:J

    .line 41
    .line 42
    cmp-long v0, v0, v2

    .line 43
    .line 44
    if-lez v0, :cond_0

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_0
    const/4 v4, 0x0

    .line 48
    :goto_2
    if-eqz v4, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lp/d;->a:La/a;

    .line 51
    .line 52
    iget-object v0, v0, La/a;->b:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lp/l;

    .line 55
    .line 56
    iget-object v0, v0, Lp/l;->n:Lp/b;

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_1
    const/4 v0, 0x0

    .line 60
    :goto_3
    return-object v0

    .line 61
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public final d(J)Ljava/util/List;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lp/d;->a()Lp/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lp/d;->a:La/a;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v2, La/a;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lp/l;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2, v1}, Lp/l;->i(JLcom/sgscq/vpn/f3;)Z

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 23
    .line 24
    const/4 v4, 0x2

    .line 25
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    new-instance v5, Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Lp/b;->e:Lm/e;

    .line 34
    .line 35
    iget-object v0, v0, Lm/e;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_5

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    check-cast v6, Lp/a;

    .line 54
    .line 55
    invoke-virtual {v6, p1, p2}, Lp/a;->a(J)Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-ge v8, v4, :cond_4

    .line 64
    .line 65
    iget-object v8, v6, Lp/a;->a:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-eqz v9, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    if-nez v7, :cond_3

    .line 75
    .line 76
    iget-wide v9, v6, Lp/a;->e:J

    .line 77
    .line 78
    cmp-long v7, v9, p1

    .line 79
    .line 80
    if-gtz v7, :cond_3

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    :cond_4
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-lt v6, v4, :cond_1

    .line 94
    .line 95
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-ge v0, v4, :cond_6

    .line 100
    .line 101
    iget-object v0, v2, La/a;->b:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v0, Lp/l;

    .line 104
    .line 105
    invoke-virtual {v0, p1, p2, v1}, Lp/l;->i(JLcom/sgscq/vpn/f3;)Z

    .line 106
    .line 107
    .line 108
    :cond_6
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    return-object p1
.end method
