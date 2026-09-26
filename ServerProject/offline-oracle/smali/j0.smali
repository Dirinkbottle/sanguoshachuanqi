.class public final synthetic Lcom/sgscq/vpn/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/Application;

.field public final synthetic b:Lcom/sgscq/vpn/m0;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Landroid/app/Application;Lcom/sgscq/vpn/m0;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/j0;->a:Landroid/app/Application;

    iput-object p2, p0, Lcom/sgscq/vpn/j0;->b:Lcom/sgscq/vpn/m0;

    iput-object p3, p0, Lcom/sgscq/vpn/j0;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/sgscq/vpn/j0;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/j0;->c:Ljava/lang/String;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/sgscq/vpn/j0;->d:J

    .line 4
    .line 5
    iget-object v3, p0, Lcom/sgscq/vpn/j0;->a:Landroid/app/Application;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/sgscq/vpn/j0;->b:Lcom/sgscq/vpn/m0;

    .line 8
    .line 9
    const-string v5, "CrashReporter"

    .line 10
    .line 11
    if-eqz v4, :cond_2

    .line 12
    .line 13
    :try_start_0
    iget-boolean v6, v4, Lcom/sgscq/vpn/m0;->c:Z

    .line 14
    .line 15
    if-nez v6, :cond_1

    .line 16
    .line 17
    iget-boolean v6, v4, Lcom/sgscq/vpn/m0;->d:Z

    .line 18
    .line 19
    if-eqz v6, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v6, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v6, 0x1

    .line 25
    :goto_1
    if-eqz v6, :cond_2

    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    invoke-static {v3}, Lcom/sgscq/vpn/n0;->j(Landroid/app/Application;)Lcom/sgscq/vpn/l0;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    invoke-static {v6, v7, v8, v4, v0}, Lcom/sgscq/vpn/n0;->f(JLcom/sgscq/vpn/l0;Lcom/sgscq/vpn/m0;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v3, v0}, Lcom/sgscq/vpn/n0;->u(Landroid/app/Application;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v4, "\u4e0a\u4e00\u4f1a\u8bdd\u5d29\u6e83\u8bb0\u5f55\u5931\u8d25: "

    .line 53
    .line 54
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v5, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_2
    :try_start_1
    invoke-static {v3, v1, v2}, Lcom/sgscq/vpn/n0;->o(Landroid/app/Application;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :catchall_1
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v1, "\u7cfb\u7edf\u9000\u51fa\u8bb0\u5f55\u8bfb\u53d6\u5931\u8d25: "

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v5, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :goto_3
    return-void
.end method
