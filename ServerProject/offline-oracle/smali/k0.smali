.class public final synthetic Lcom/sgscq/vpn/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic a:Landroid/app/Application;

.field public final synthetic b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Application;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/k0;->a:Landroid/app/Application;

    iput-object p2, p0, Lcom/sgscq/vpn/k0;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/k0;->a:Landroid/app/Application;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sgscq/vpn/k0;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 4
    .line 5
    const-string v2, "\u5d29\u6e83\u62a5\u544a\u843d\u76d8\u5931\u8d25: "

    .line 6
    .line 7
    sget-boolean v3, Lcom/sgscq/vpn/n0;->e:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    goto :goto_3

    .line 12
    :cond_0
    const/4 v3, 0x1

    .line 13
    sput-boolean v3, Lcom/sgscq/vpn/n0;->e:Z

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    invoke-static {v0}, Lcom/sgscq/vpn/n0;->j(Landroid/app/Application;)Lcom/sgscq/vpn/l0;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    const-string v7, ""

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    :goto_0
    if-nez p1, :cond_2

    .line 34
    .line 35
    const-wide/16 v8, -0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    .line 39
    .line 40
    .line 41
    move-result-wide v8

    .line 42
    :goto_1
    invoke-static {}, Lcom/sgscq/vpn/n0;->g()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v11

    .line 46
    move-object v10, p2

    .line 47
    invoke-static/range {v4 .. v11}, Lcom/sgscq/vpn/n0;->e(JLcom/sgscq/vpn/l0;Ljava/lang/String;JLjava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v0, v4}, Lcom/sgscq/vpn/n0;->u(Landroid/app/Application;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v4, "sgscq_crash_v1"

    .line 55
    .line 56
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v4, "java_crash_at"

    .line 65
    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v5

    .line 70
    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    :try_start_1
    const-string v4, "CrashReporter"

    .line 80
    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    .line 95
    .line 96
    :goto_2
    sput-boolean v3, Lcom/sgscq/vpn/n0;->e:Z

    .line 97
    .line 98
    :goto_3
    if-eqz v1, :cond_3

    .line 99
    .line 100
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    return-void

    .line 104
    :catchall_1
    move-exception p1

    .line 105
    sput-boolean v3, Lcom/sgscq/vpn/n0;->e:Z

    .line 106
    .line 107
    throw p1
.end method
