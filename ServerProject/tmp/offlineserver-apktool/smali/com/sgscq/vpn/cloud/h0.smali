.class public final synthetic Lcom/sgscq/vpn/cloud/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sgscq/vpn/u5;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/cloud/l0;Ljava/io/File;Ljava/lang/String;I)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/sgscq/vpn/cloud/h0;->a:I

    iput-object p1, p0, Lcom/sgscq/vpn/cloud/h0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sgscq/vpn/cloud/h0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sgscq/vpn/cloud/h0;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sgscq/vpn/y2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    iput v0, p0, Lcom/sgscq/vpn/cloud/h0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/cloud/h0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sgscq/vpn/cloud/h0;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/sgscq/vpn/cloud/h0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/sgscq/vpn/v5;)Lcom/sgscq/vpn/v5;
    .locals 4

    .line 1
    iget p1, p0, Lcom/sgscq/vpn/cloud/h0;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object p1, p0, Lcom/sgscq/vpn/cloud/h0;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lcom/sgscq/vpn/cloud/l0;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/h0;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/io/File;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/h0;->d:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/sgscq/vpn/cloud/l0;->k(Ljava/io/File;Ljava/lang/String;)Lcom/sgscq/vpn/v5;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :pswitch_1
    iget-object p1, p0, Lcom/sgscq/vpn/cloud/h0;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Lcom/sgscq/vpn/cloud/l0;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/h0;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Ljava/io/File;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/h0;->d:Ljava/lang/String;

    .line 31
    .line 32
    monitor-enter p1

    .line 33
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v3, p1, Lcom/sgscq/vpn/cloud/l0;->k:Lcom/sgscq/vpn/s5;

    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/util/List;

    .line 44
    .line 45
    if-nez v3, :cond_0

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/sgscq/vpn/cloud/l0;->v(Ljava/io/File;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    iget-object v0, p1, Lcom/sgscq/vpn/cloud/l0;->k:Lcom/sgscq/vpn/s5;

    .line 52
    .line 53
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Lcom/sgscq/vpn/v5;

    .line 71
    .line 72
    iget-object v3, v2, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    monitor-exit p1

    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    monitor-exit p1

    .line 84
    throw v0

    .line 85
    :catch_0
    :cond_2
    monitor-exit p1

    .line 86
    const/4 v2, 0x0

    .line 87
    :goto_0
    return-object v2

    .line 88
    :goto_1
    iget-object p1, p0, Lcom/sgscq/vpn/cloud/h0;->b:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p1, Lcom/sgscq/vpn/cloud/l0;

    .line 91
    .line 92
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/h0;->c:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v0, Ljava/io/File;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/h0;->d:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p1, v0, v1}, Lcom/sgscq/vpn/cloud/l0;->k(Ljava/io/File;Ljava/lang/String;)Lcom/sgscq/vpn/v5;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    return-object p1

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/h0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/sgscq/vpn/y2;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/h0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/sgscq/vpn/y2;->f:Lcom/sgscq/vpn/h5;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/sgscq/vpn/cloud/h0;->d:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/4 v4, 0x0

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v5, 0x1

    .line 22
    if-eqz v1, :cond_4

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v6, "ladder_honor_day"

    .line 32
    .line 33
    const-string v7, ""

    .line 34
    .line 35
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-eqz v8, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-nez v7, :cond_3

    .line 55
    .line 56
    const-string v7, "user_honor"

    .line 57
    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-interface {v3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move v4, v5

    .line 69
    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    .line 70
    .line 71
    invoke-virtual {v0, v2, v3}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 72
    .line 73
    .line 74
    :cond_5
    move v4, v5

    .line 75
    :goto_1
    return v4
.end method
