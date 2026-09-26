.class public abstract Lq/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static volatile b:Lc/i;

.field public static volatile c:Lcom/sgscq/vpn/cloud/b0;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lq/e;->a:Ljava/lang/Object;

    .line 7
    .line 8
    const-string v0, "114.114.114.114"

    .line 9
    .line 10
    invoke-static {v0}, Lc/i;->d(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lc/i;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v2, v3, v0, v1}, Lc/i;-><init>(ZLjava/lang/String;Ljava/net/InetAddress;)V

    .line 18
    .line 19
    .line 20
    sput-object v2, Lq/e;->b:Lc/i;

    .line 21
    .line 22
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    .line 1
    sget-object v0, Lq/e;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lq/e;->a:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lq/e;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :cond_1
    new-instance v1, Lcom/sgscq/vpn/cloud/b0;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v2, 0x3

    .line 22
    invoke-direct {v1, v2, p0}, Lcom/sgscq/vpn/cloud/b0;-><init>(ILandroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lq/e;->c:Lcom/sgscq/vpn/cloud/b0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    :try_start_1
    const-string v2, "app_dns_server"

    .line 29
    .line 30
    const-string v3, "114.114.114.114"

    .line 31
    .line 32
    iget-object v4, v1, Lcom/sgscq/vpn/cloud/b0;->b:Landroid/content/SharedPreferences;

    .line 33
    .line 34
    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2}, Lc/i;->d(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    new-instance v3, Lc/i;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const/4 v5, 0x1

    .line 49
    invoke-direct {v3, v5, v4, v2}, Lc/i;-><init>(ZLjava/lang/String;Ljava/net/InetAddress;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/sgscq/vpn/cloud/b0;->k()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-static {v4}, Lc/i;->d(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v3, Lc/i;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-direct {v3, p0, v2, v1}, Lc/i;-><init>(ZLjava/lang/String;Ljava/net/InetAddress;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_1

    .line 75
    :catch_0
    :try_start_2
    const-string v1, "114.114.114.114"

    .line 76
    .line 77
    invoke-static {v1}, Lc/i;->d(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    new-instance v3, Lc/i;

    .line 82
    .line 83
    invoke-direct {v3, p0, v1, v2}, Lc/i;-><init>(ZLjava/lang/String;Ljava/net/InetAddress;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    sput-object v3, Lq/e;->b:Lc/i;

    .line 87
    .line 88
    monitor-exit v0

    .line 89
    return-void

    .line 90
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    throw p0
.end method

.method public static b(Ljava/lang/String;)Lc/i;
    .locals 4

    .line 1
    sget-object v0, Lq/e;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lc/i;->d(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lc/i;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v2, v1, p0}, Lc/i;-><init>(ZLjava/lang/String;Ljava/net/InetAddress;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lq/e;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/sgscq/vpn/cloud/b0;->b:Landroid/content/SharedPreferences;

    .line 22
    .line 23
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string v3, "app_dns_enabled"

    .line 28
    .line 29
    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v2, "app_dns_server"

    .line 34
    .line 35
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lq/e;->b:Lc/i;

    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string v0, "DNS \u914d\u7f6e\u5c1a\u672a\u521d\u59cb\u5316"

    .line 48
    .line 49
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method
