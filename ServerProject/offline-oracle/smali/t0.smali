.class public final synthetic Lcom/sgscq/vpn/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sgscq/vpn/w0;
.implements Lq/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sgscq/vpn/t0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/sgscq/vpn/t0;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput p3, p0, Lcom/sgscq/vpn/t0;->a:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/t0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/sgscq/vpn/t0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/sgscq/vpn/v0;

    .line 8
    .line 9
    sget-object v2, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f:[F

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, v1, Lcom/sgscq/vpn/v0;->a:Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->deputyGeneralIds:Ljava/util/List;

    .line 17
    .line 18
    iget v2, p0, Lcom/sgscq/vpn/t0;->a:I

    .line 19
    .line 20
    invoke-interface {v0, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->g(Lcom/sgscq/vpn/v0;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final b(Ljava/net/Proxy;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/t0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La/w;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/sgscq/vpn/t0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/net/URL;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v1, p1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 24
    .line 25
    const/16 v0, 0x2710

    .line 26
    .line 27
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 35
    .line 36
    .line 37
    const-string v0, "Accept"

    .line 38
    .line 39
    const-string v1, "application/json"

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/16 v1, 0xc8

    .line 49
    .line 50
    if-ne v0, v1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    .line 53
    .line 54
    .line 55
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 56
    iget v1, p0, Lcom/sgscq/vpn/t0;->a:I

    .line 57
    .line 58
    if-gt v0, v1, :cond_2

    .line 59
    .line 60
    :try_start_2
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 61
    .line 62
    .line 63
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 64
    :try_start_3
    invoke-static {v0, v1}, Lp/l;->h(Ljava/io/InputStream;I)[B

    .line 65
    .line 66
    .line 67
    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 72
    .line 73
    .line 74
    return-object v1

    .line 75
    :catchall_0
    move-exception v1

    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catchall_1
    move-exception v0

    .line 83
    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    :goto_1
    throw v1

    .line 87
    :cond_2
    new-instance v0, Lq/k;

    .line 88
    .line 89
    const-string v1, "response too large"

    .line 90
    .line 91
    invoke-direct {v0, v1}, Lq/k;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :cond_3
    new-instance v1, Lq/j;

    .line 96
    .line 97
    invoke-direct {v1, v0}, Lq/j;-><init>(I)V

    .line 98
    .line 99
    .line 100
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 101
    :catchall_2
    move-exception v0

    .line 102
    goto :goto_2

    .line 103
    :catchall_3
    move-exception p1

    .line 104
    const/4 v0, 0x0

    .line 105
    move-object v2, v0

    .line 106
    move-object v0, p1

    .line 107
    move-object p1, v2

    .line 108
    :goto_2
    if-eqz p1, :cond_4

    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 111
    .line 112
    .line 113
    :cond_4
    throw v0
.end method

.method public final run()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/t0;->b:Ljava/lang/Object;

    check-cast v0, La/w;

    iget-object v1, p0, Lcom/sgscq/vpn/t0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lcom/sgscq/vpn/t0;->a:I

    invoke-static {v0, v1, v2}, La/w;->l(La/w;Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method
