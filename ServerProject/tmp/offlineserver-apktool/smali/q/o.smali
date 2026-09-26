.class public abstract Lq/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static volatile b:Lcom/sgscq/vpn/config/f;

.field public static volatile c:Lcom/sgscq/vpn/cloud/b0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq/o;->a:Ljava/lang/Object;

    invoke-static {}, Lcom/sgscq/vpn/config/f;->a()Lcom/sgscq/vpn/config/f;

    move-result-object v0

    sput-object v0, Lq/o;->b:Lcom/sgscq/vpn/config/f;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lq/o;->c:Lcom/sgscq/vpn/cloud/b0;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lq/o;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lq/o;->c:Lcom/sgscq/vpn/cloud/b0;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Lcom/sgscq/vpn/cloud/b0;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lcom/sgscq/vpn/cloud/b0;-><init>(ILandroid/content/Context;)V

    invoke-static {v1}, Lq/o;->b(Lcom/sgscq/vpn/cloud/b0;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_0
.end method

.method public static b(Lcom/sgscq/vpn/cloud/b0;)V
    .locals 4

    .line 1
    invoke-static {}, Lq/i;->h()V

    .line 2
    .line 3
    .line 4
    sput-object p0, Lq/o;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/b0;->b:Landroid/content/SharedPreferences;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/sgscq/vpn/cloud/b0;->k()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_0
    const-string p0, "service_proxy_type"

    .line 18
    .line 19
    const-string v2, "http"

    .line 20
    .line 21
    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v2, "service_proxy_host"

    .line 26
    .line 27
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "service_proxy_port"

    .line 32
    .line 33
    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {p0, v2, v0}, Lcom/sgscq/vpn/config/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/config/f;

    .line 38
    .line 39
    .line 40
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_1

    .line 42
    :catch_0
    :goto_0
    invoke-static {}, Lcom/sgscq/vpn/config/f;->a()Lcom/sgscq/vpn/config/f;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    :goto_1
    sput-object p0, Lq/o;->b:Lcom/sgscq/vpn/config/f;

    .line 47
    .line 48
    return-void
.end method

.method public static c(Ljava/net/URL;)Ljava/net/Proxy;
    .locals 2

    .line 1
    sget-object v0, Lq/o;->b:Lcom/sgscq/vpn/config/f;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/sgscq/vpn/config/f;->a:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v1, "sgscq.com"

    .line 12
    .line 13
    invoke-static {p0, v1}, Lcom/sgscq/vpn/config/f;->c(Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string v1, "ifdian.net"

    .line 20
    .line 21
    invoke-static {p0, v1}, Lcom/sgscq/vpn/config/f;->c(Ljava/lang/String;Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    :cond_0
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    :goto_0
    if-eqz p0, :cond_2

    .line 31
    .line 32
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->P0(Lcom/sgscq/vpn/config/f;)Ljava/net/Proxy;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/4 p0, 0x0

    .line 38
    :goto_1
    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/config/f;
    .locals 1

    .line 1
    sget-object v0, Lq/o;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1, p2}, Lcom/sgscq/vpn/config/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/config/f;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {}, Lq/i;->h()V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lq/o;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/sgscq/vpn/cloud/b0;->b:Landroid/content/SharedPreferences;

    .line 15
    .line 16
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, "service_proxy_enabled"

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/sgscq/vpn/config/f;->b:Ljava/lang/String;

    .line 28
    .line 29
    const-string v0, "service_proxy_type"

    .line 30
    .line 31
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p2, "service_proxy_host"

    .line 36
    .line 37
    iget-object v0, p0, Lcom/sgscq/vpn/config/f;->c:Ljava/lang/String;

    .line 38
    .line 39
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget p2, p0, Lcom/sgscq/vpn/config/f;->d:I

    .line 44
    .line 45
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const-string v0, "service_proxy_port"

    .line 50
    .line 51
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 56
    .line 57
    .line 58
    sput-object p0, Lq/o;->b:Lcom/sgscq/vpn/config/f;

    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string p1, "\u4ee3\u7406\u914d\u7f6e\u5c1a\u672a\u521d\u59cb\u5316"

    .line 64
    .line 65
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method
