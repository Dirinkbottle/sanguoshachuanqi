.class public abstract Lcom/sgscq/vpn/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sgscq/vpn/x0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sgscq/vpn/x0;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/z0;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/sgscq/vpn/f;Lcom/sgscq/vpn/z;Lcom/sgscq/vpn/d1;)La/t;
    .locals 4

    new-instance v0, La/t;

    invoke-direct {v0}, La/t;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "schema_version"

    invoke-virtual {v0, v3, v2}, La/t;->k(Ljava/lang/String;Ljava/lang/Number;)V

    const/16 v2, 0x80

    invoke-static {p2, v2}, Lcom/sgscq/vpn/z0;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v3, "event_id"

    invoke-virtual {v0, v3, p2}, La/t;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "event_type"

    invoke-virtual {v0, p2, p0}, La/t;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "event_source"

    invoke-virtual {v0, p0, p1}, La/t;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "occurred_at"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, La/t;->k(Ljava/lang/String;Ljava/lang/Number;)V

    const-string p0, "device_hash"

    invoke-static {p5, v2}, Lcom/sgscq/vpn/z0;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, La/t;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "install_id"

    invoke-static {p6, v2}, Lcom/sgscq/vpn/z0;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, La/t;->l(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x40

    invoke-static {p7, p0}, Lcom/sgscq/vpn/z0;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "app_version_name"

    invoke-virtual {v0, p2, p1}, La/t;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app_version_code"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, La/t;->k(Ljava/lang/String;Ljava/lang/Number;)V

    const/16 p1, 0x20

    const-string p2, "release"

    invoke-static {p2, p1}, Lcom/sgscq/vpn/z0;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "build_type"

    invoke-virtual {v0, p2, p1}, La/t;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p9, Lcom/sgscq/vpn/f;->c:Z

    const/4 p2, 0x0

    const/16 p3, 0x100

    if-eqz p1, :cond_0

    iget-object p1, p9, Lcom/sgscq/vpn/f;->a:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/sgscq/vpn/z0;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    new-instance p4, La/t;

    invoke-direct {p4}, La/t;-><init>()V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    .line 2
    sget-object p6, La/s;->a:La/s;

    if-nez p5, :cond_1

    move-object p7, p6

    goto :goto_1

    :cond_1
    new-instance p7, La/x;

    invoke-direct {p7, p5}, La/x;-><init>(Ljava/lang/Boolean;)V

    :goto_1
    const-string p5, "bound"

    invoke-virtual {p4, p5, p7}, La/t;->j(Ljava/lang/String;La/q;)V

    const-string p7, ""

    if-eqz p1, :cond_2

    .line 3
    iget-object p8, p9, Lcom/sgscq/vpn/f;->a:Ljava/lang/String;

    invoke-static {p8, p3}, Lcom/sgscq/vpn/z0;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p8

    goto :goto_2

    :cond_2
    move-object p8, p7

    :goto_2
    const-string v2, "user_id"

    invoke-virtual {p4, v2, p8}, La/t;->l(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    iget-object p8, p9, Lcom/sgscq/vpn/f;->b:Ljava/lang/String;

    invoke-static {p8, p3}, Lcom/sgscq/vpn/z0;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p8

    goto :goto_3

    :cond_3
    move-object p8, p7

    :goto_3
    const-string v3, "name"

    invoke-virtual {p4, v3, p8}, La/t;->l(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    iget p1, p9, Lcom/sgscq/vpn/f;->f:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_4

    :cond_4
    move p1, p2

    :goto_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p8, "reported_level"

    invoke-virtual {p4, p8, p1}, La/t;->k(Ljava/lang/String;Ljava/lang/Number;)V

    const-string p1, "afdian"

    .line 4
    invoke-virtual {v0, p1, p4}, La/t;->j(Ljava/lang/String;La/q;)V

    .line 5
    iget-boolean p1, p10, Lcom/sgscq/vpn/z;->b:Z

    if-eqz p1, :cond_5

    iget-object p1, p10, Lcom/sgscq/vpn/z;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/sgscq/vpn/z0;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    move p1, v1

    goto :goto_5

    :cond_5
    move p1, p2

    :goto_5
    new-instance p4, La/t;

    invoke-direct {p4}, La/t;-><init>()V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p8

    if-nez p8, :cond_6

    move-object p9, p6

    goto :goto_6

    .line 6
    :cond_6
    new-instance p9, La/x;

    invoke-direct {p9, p8}, La/x;-><init>(Ljava/lang/Boolean;)V

    :goto_6
    invoke-virtual {p4, p5, p9}, La/t;->j(Ljava/lang/String;La/q;)V

    if-eqz p1, :cond_7

    .line 7
    iget-object p8, p10, Lcom/sgscq/vpn/z;->a:Ljava/lang/String;

    invoke-static {p8, p0}, Lcom/sgscq/vpn/z0;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_7
    move-object p0, p7

    :goto_7
    const-string p8, "uid"

    invoke-virtual {p4, p8, p0}, La/t;->l(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    iget-object p0, p10, Lcom/sgscq/vpn/z;->f:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/sgscq/vpn/z0;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :cond_8
    move-object p0, p7

    :goto_8
    invoke-virtual {p4, v3, p0}, La/t;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "bilibili"

    .line 8
    invoke-virtual {v0, p0, p4}, La/t;->j(Ljava/lang/String;La/q;)V

    .line 9
    iget-boolean p0, p11, Lcom/sgscq/vpn/d1;->b:Z

    if-eqz p0, :cond_9

    iget-object p0, p11, Lcom/sgscq/vpn/d1;->a:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/sgscq/vpn/z0;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_9

    :cond_9
    move v1, p2

    :goto_9
    new-instance p0, La/t;

    invoke-direct {p0}, La/t;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_a

    .line 10
    :cond_a
    new-instance p6, La/x;

    invoke-direct {p6, p1}, La/x;-><init>(Ljava/lang/Boolean;)V

    :goto_a
    invoke-virtual {p0, p5, p6}, La/t;->j(Ljava/lang/String;La/q;)V

    if-eqz v1, :cond_b

    .line 11
    iget-object p1, p11, Lcom/sgscq/vpn/d1;->a:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/sgscq/vpn/z0;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :cond_b
    move-object p1, p7

    :goto_b
    invoke-virtual {p0, v2, p1}, La/t;->l(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_c

    iget-object p1, p11, Lcom/sgscq/vpn/d1;->f:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/sgscq/vpn/z0;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p7

    :cond_c
    invoke-virtual {p0, v3, p7}, La/t;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "douyin"

    .line 12
    invoke-virtual {v0, p1, p0}, La/t;->j(Ljava/lang/String;La/q;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "startup"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string v1, "bind"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "refresh"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "unbind"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    const-string v4, "app"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "afdian"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "bilibili"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "douyin"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v2, v3

    :cond_3
    return v2

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    move v2, v3

    :cond_5
    return v2
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p1, p2}, Lcom/sgscq/vpn/z0;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance p0, Lcom/sgscq/vpn/h;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sgscq/vpn/h;-><init>(ILandroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sgscq/vpn/h;->j()Lcom/sgscq/vpn/f;

    move-result-object v4

    new-instance p0, Lcom/sgscq/vpn/b0;

    invoke-direct {p0, v1}, Lcom/sgscq/vpn/b0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sgscq/vpn/b0;->b()Lcom/sgscq/vpn/z;

    move-result-object v5

    new-instance p0, Lcom/sgscq/vpn/h;

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sgscq/vpn/h;-><init>(ILandroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sgscq/vpn/h;->l()Lcom/sgscq/vpn/d1;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/sgscq/vpn/z0;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sgscq/vpn/f;Lcom/sgscq/vpn/z;Lcom/sgscq/vpn/d1;)V

    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sgscq/vpn/f;Lcom/sgscq/vpn/z;Lcom/sgscq/vpn/d1;)V
    .locals 16

    .line 1
    invoke-static/range {p1 .. p2}, Lcom/sgscq/vpn/z0;->c(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 v4, 0x1c

    .line 28
    .line 29
    if-lt v2, v4, :cond_1

    .line 30
    .line 31
    invoke-static {v1}, Lcom/sgscq/vpn/h0;->a(Landroid/content/pm/PackageInfo;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    long-to-int v2, v4

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/16 v2, 0x17

    .line 38
    .line 39
    :goto_0
    move v12, v2

    .line 40
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v7

    .line 52
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->E(Landroid/content/Context;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v2, "device_identity"

    .line 61
    .line 62
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v2, ""

    .line 67
    .line 68
    const-string v3, "install_id"

    .line 69
    .line 70
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_2

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    :goto_1
    move-object v10, v2

    .line 88
    goto :goto_3

    .line 89
    :cond_3
    :goto_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :goto_3
    iget-object v11, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 110
    .line 111
    move-object/from16 v4, p1

    .line 112
    .line 113
    move-object/from16 v5, p2

    .line 114
    .line 115
    move-object/from16 v13, p3

    .line 116
    .line 117
    move-object/from16 v14, p4

    .line 118
    .line 119
    move-object/from16 v15, p5

    .line 120
    .line 121
    invoke-static/range {v4 .. v15}, Lcom/sgscq/vpn/z0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/sgscq/vpn/f;Lcom/sgscq/vpn/z;Lcom/sgscq/vpn/d1;)La/t;

    .line 122
    .line 123
    .line 124
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    invoke-virtual {v0}, La/q;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    array-length v1, v0

    .line 136
    const v2, 0x8000

    .line 137
    .line 138
    .line 139
    if-le v1, v2, :cond_4

    .line 140
    .line 141
    return-void

    .line 142
    :cond_4
    new-instance v1, Lcom/sgscq/vpn/b;

    .line 143
    .line 144
    const/4 v2, 0x2

    .line 145
    invoke-direct {v1, v0, v2}, Lcom/sgscq/vpn/b;-><init>(Ljava/lang/Object;I)V

    .line 146
    .line 147
    .line 148
    sget-object v0, Lcom/sgscq/vpn/z0;->a:Ljava/util/concurrent/ExecutorService;

    .line 149
    .line 150
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const-string v1, "build payload failed: "

    .line 164
    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const-string v1, "DeviceAudit"

    .line 170
    .line 171
    invoke-static {v1, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    return-void
.end method
