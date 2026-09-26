.class public final Lc/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/t;
.implements Lp/k;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "sgscq_cloud_opponent_usage_v1"

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lc/e;->a:Ljava/lang/Object;

    const-string p1, "release"

    iput-object p1, p0, Lc/e;->b:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "limited_schedule.bin"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lc/e;->a:Ljava/lang/Object;

    const-string p1, "sgscq_limited_schedule"

    invoke-virtual {p2, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lc/e;->b:Ljava/lang/Object;

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc/e;->a:Ljava/lang/Object;

    const-string p2, "sgscq_cloud_passport_owner_v1"

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lc/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/sgscq/vpn/handler/k0;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e;->a:Ljava/lang/Object;

    iget-object p1, p1, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lm/e;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Lm/e;-><init>(ILandroid/content/Context;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lc/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "offline_cache_directory_failed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "active.json"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lc/e;->a:Ljava/lang/Object;

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "backup.json"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lc/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/Serializable;Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p2, p0, Lc/e;->a:Ljava/lang/Object;

    iput-object p1, p0, Lc/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lc/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lc/e;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static B(Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "union_id"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "union_name"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "union_level"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "union_exp"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "union_notice"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "union_sign"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "user_role"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "union_donate_num"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "union_today_donate"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "union_today_donate_type"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static C(Lcom/sgscq/vpn/cloud/g;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/sgscq/vpn/cloud/m;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/sgscq/vpn/cloud/g;->d:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    move-object v1, p0

    .line 13
    check-cast v1, Lcom/sgscq/vpn/cloud/o;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    move v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v3

    .line 20
    :goto_0
    if-eqz v1, :cond_1

    .line 21
    .line 22
    check-cast v0, Lcom/sgscq/vpn/cloud/m;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_1
    invoke-static {v0}, Lm/e;->J(Lcom/sgscq/vpn/cloud/m;)Ljava/util/LinkedHashMap;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {p1}, Lm/e;->L(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const/16 v5, 0x8

    .line 39
    .line 40
    new-array v5, v5, [Ljava/lang/Object;

    .line 41
    .line 42
    const-string v6, "user_role"

    .line 43
    .line 44
    aput-object v6, v5, v3

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    check-cast p0, Lcom/sgscq/vpn/cloud/o;

    .line 49
    .line 50
    iget p0, p0, Lcom/sgscq/vpn/cloud/o;->a:I

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move p0, v3

    .line 54
    :goto_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    aput-object p0, v5, v2

    .line 59
    .line 60
    const/4 p0, 0x2

    .line 61
    const-string v2, "union_info"

    .line 62
    .line 63
    aput-object v2, v5, p0

    .line 64
    .line 65
    const/4 p0, 0x3

    .line 66
    aput-object v0, v5, p0

    .line 67
    .line 68
    const/4 p0, 0x4

    .line 69
    const-string v6, "union_log"

    .line 70
    .line 71
    aput-object v6, v5, p0

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    new-instance p0, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    new-array v1, v3, [Ljava/lang/Object;

    .line 81
    .line 82
    const-string v3, "content"

    .line 83
    .line 84
    const-string v7, "union_log_welcome"

    .line 85
    .line 86
    invoke-static {v3, v7, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    :goto_3
    const/4 v1, 0x5

    .line 100
    aput-object p0, v5, v1

    .line 101
    .line 102
    const/4 p0, 0x6

    .line 103
    const-string v1, "union_list"

    .line 104
    .line 105
    aput-object v1, v5, p0

    .line 106
    .line 107
    const/4 p0, 0x7

    .line 108
    aput-object p1, v5, p0

    .line 109
    .line 110
    const-string p0, "has_joined"

    .line 111
    .line 112
    invoke-static {p0, v4, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {}, Lc/e;->j0()Ljava/util/LinkedHashMap;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    const-string v4, "return_info"

    .line 121
    .line 122
    invoke-interface {v3, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-interface {v3, v6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    return-object v3
.end method

.method public static D(Ljava/util/LinkedHashMap;)[Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "cmn_modules"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array p0, v2, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static E()Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "id"

    const-string v2, "600001"

    const-string v3, "item_id"

    const-string v4, "600001"

    const-string v5, "num"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "pk_id"

    const-string v3, "1"

    invoke-static {v2, v3, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static G()Ljava/util/ArrayList;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    const-string v4, "num"

    const v3, 0x5f5e100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "exp"

    const-string v8, "donate"

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v3, v1

    move-object v7, v1

    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "data_id"

    invoke-static {v3, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "type"

    const-string v6, "num"

    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v8, "exp"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "donate"

    move-object v5, v1

    move-object v7, v11

    filled-new-array/range {v4 .. v11}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "type"

    const-string v6, "num"

    const/16 v5, 0x9c4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v8, "exp"

    const/16 v5, 0x19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "donate"

    move-object v5, v1

    move-object v7, v11

    filled-new-array/range {v4 .. v11}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static H(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 2

    .line 1
    const-string v0, "union.rankList"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v0, "rank_list"

    .line 15
    .line 16
    invoke-static {p0, v0}, Lc/e;->r0(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    const-string v0, "union.userList"

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    new-instance p0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v0, "user_list"

    .line 35
    .line 36
    invoke-static {p0, v0}, Lc/e;->r0(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_1
    const-string v0, "union.applyList"

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    new-instance p0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lc/e;->j0()Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "return_info"

    .line 59
    .line 60
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    const-string v1, "apply_list"

    .line 64
    .line 65
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_2
    new-instance p0, Lcom/sgscq/vpn/cloud/g;

    .line 70
    .line 71
    invoke-direct {p0}, Lcom/sgscq/vpn/cloud/g;-><init>()V

    .line 72
    .line 73
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-static {p0, v0}, Lc/e;->C(Lcom/sgscq/vpn/cloud/g;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method

.method public static I(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 9

    .line 1
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "code"

    const-string v3, "result"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v5, "msg"

    const-string v7, "error_code"

    move-object v2, v0

    move-object v6, p0

    move-object v8, v0

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "ret"

    invoke-static {v1, v0, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static J(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static K(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/LinkedHashMap;
    .locals 1

    .line 1
    const-string v0, "1"

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string p3, "union_war_formations"

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p3, p0, Ljava/util/Map;

    if-eqz p3, :cond_3

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_3

    check-cast p0, Ljava/util/Map;

    const-string p1, "battle_id"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "pos"

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    if-eqz p0, :cond_3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {p2, v0}, Lc/e;->L(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static L(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 2

    .line 1
    const-string v0, "battle_id"

    .line 2
    .line 3
    const-string v1, "pos"

    .line 4
    .line 5
    invoke-static {v0, p0, v1, p1}, Lc/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static M(ILjava/lang/String;Ljava/util/Map;)Lc/e;
    .locals 28

    .line 1
    move/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, v8}, Lcom/sgscq/vpn/w1;->c1(Ljava/lang/String;)Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x7

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v10, "type"

    .line 22
    .line 23
    const-string v6, "num"

    .line 24
    .line 25
    const-string v11, "id"

    .line 26
    .line 27
    const/4 v12, 0x1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    const-string v4, "item_type"

    .line 31
    .line 32
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v4}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const/16 v5, 0x15

    .line 41
    .line 42
    if-ne v4, v5, :cond_2

    .line 43
    .line 44
    const-string v4, "effect_value"

    .line 45
    .line 46
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    instance-of v4, v1, Ljava/util/Map;

    .line 51
    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    check-cast v1, Ljava/util/Map;

    .line 55
    .line 56
    const-string v4, "add_list"

    .line 57
    .line 58
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    instance-of v4, v1, Ljava/util/Map;

    .line 63
    .line 64
    if-eqz v4, :cond_0

    .line 65
    .line 66
    move-object v4, v1

    .line 67
    check-cast v4, Ljava/util/Map;

    .line 68
    .line 69
    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-static {v5}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-ne v5, v2, :cond_0

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_0
    instance-of v4, v1, Ljava/util/List;

    .line 81
    .line 82
    if-eqz v4, :cond_2

    .line 83
    .line 84
    check-cast v1, Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_2

    .line 95
    .line 96
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    instance-of v5, v4, Ljava/util/Map;

    .line 101
    .line 102
    if-eqz v5, :cond_1

    .line 103
    .line 104
    check-cast v4, Ljava/util/Map;

    .line 105
    .line 106
    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-static {v5}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-ne v5, v2, :cond_1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    sget-object v1, Lcom/sgscq/vpn/handler/j0;->b:Ljava/util/Map;

    .line 118
    .line 119
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Ljava/lang/String;

    .line 124
    .line 125
    if-nez v1, :cond_3

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    filled-new-array {v11, v1, v6, v0}, [Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v10, v3, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    :goto_0
    move-object v4, v0

    .line 141
    :goto_1
    const-string v14, "pk_id"

    .line 142
    .line 143
    if-nez v4, :cond_a

    .line 144
    .line 145
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/p5;->h0(Ljava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    const-string v15, "Item"

    .line 150
    .line 151
    if-eqz v0, :cond_5

    .line 152
    .line 153
    invoke-static/range {p0 .. p2}, Lcom/sgscq/vpn/p5;->c(ILjava/lang/String;Ljava/util/Map;)V

    .line 154
    .line 155
    .line 156
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/p5;->p0(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_4

    .line 161
    .line 162
    const/16 v0, 0x10

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_4
    move v0, v12

    .line 166
    :goto_2
    invoke-static {v7, v0, v8}, Lcom/sgscq/vpn/p5;->e1(IILjava/lang/String;)Ljava/util/LinkedHashMap;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    goto/16 :goto_4

    .line 171
    .line 172
    :cond_5
    invoke-static {v15, v9}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    const-string v4, "item_id"

    .line 185
    .line 186
    const-string v3, "item_num"

    .line 187
    .line 188
    if-eqz v1, :cond_9

    .line 189
    .line 190
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Ljava/util/Map;

    .line 195
    .line 196
    invoke-static {v1, v4, v8}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-nez v2, :cond_7

    .line 201
    .line 202
    invoke-static {v1, v11, v8}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eqz v2, :cond_6

    .line 207
    .line 208
    :cond_7
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_8

    .line 213
    .line 214
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    goto :goto_3

    .line 219
    :cond_8
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    :goto_3
    invoke-static {v0}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    add-int/2addr v0, v7

    .line 228
    invoke-static {v0, v1, v6, v0, v3}, Lc/a;->t(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-static {v5, v9, v1}, Lc/e;->o0(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    .line 232
    .line 233
    .line 234
    move-object v0, v1

    .line 235
    goto :goto_4

    .line 236
    :cond_9
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 237
    .line 238
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 239
    .line 240
    .line 241
    move-object v0, v15

    .line 242
    move-object/from16 v1, p2

    .line 243
    .line 244
    move-object/from16 v16, v2

    .line 245
    .line 246
    move-object/from16 v17, v3

    .line 247
    .line 248
    move-object v3, v14

    .line 249
    move-object v13, v5

    .line 250
    move-object/from16 v5, p1

    .line 251
    .line 252
    invoke-static/range {v0 .. v5}, Lc/a;->x(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    move-object/from16 v0, v16

    .line 256
    .line 257
    move-object v1, v11

    .line 258
    move-object/from16 v2, p1

    .line 259
    .line 260
    move/from16 v3, p0

    .line 261
    .line 262
    move-object v4, v6

    .line 263
    move/from16 v5, p0

    .line 264
    .line 265
    move-object/from16 v6, v17

    .line 266
    .line 267
    invoke-static/range {v0 .. v6}, Lc/a;->z(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    invoke-static {v13, v9, v0}, Lc/e;->o0(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    .line 274
    .line 275
    .line 276
    :goto_4
    new-instance v6, Lc/e;

    .line 277
    .line 278
    new-array v9, v12, [Ljava/util/Map;

    .line 279
    .line 280
    const/4 v1, 0x5

    .line 281
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 282
    .line 283
    .line 284
    move-result-object v11

    .line 285
    const-string v1, "id"

    .line 286
    .line 287
    const-string v2, "num"

    .line 288
    .line 289
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    const-string v4, "pk_id"

    .line 294
    .line 295
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    move-object v0, v1

    .line 300
    move-object/from16 v1, p1

    .line 301
    .line 302
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-static {v10, v11, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    const/4 v1, 0x0

    .line 311
    aput-object v0, v9, v1

    .line 312
    .line 313
    invoke-static {v9}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-direct {v6, v0, v15}, Lc/e;-><init>(Ljava/io/Serializable;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    return-object v6

    .line 321
    :cond_a
    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-static {v1}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    mul-int/2addr v1, v7

    .line 342
    const-string v2, "SkillPiece"

    .line 343
    .line 344
    invoke-static {v2, v9}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 349
    .line 350
    .line 351
    move-result-object v5

    .line 352
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 353
    .line 354
    .line 355
    move-result v7

    .line 356
    if-eqz v7, :cond_c

    .line 357
    .line 358
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v7

    .line 362
    check-cast v7, Ljava/util/Map;

    .line 363
    .line 364
    const-string v8, ""

    .line 365
    .line 366
    const-string v13, "skill_id"

    .line 367
    .line 368
    invoke-static {v7, v11, v8, v13, v0}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 369
    .line 370
    .line 371
    move-result v8

    .line 372
    if-nez v8, :cond_b

    .line 373
    .line 374
    goto :goto_5

    .line 375
    :cond_b
    const-string v5, "skill_piece_num"

    .line 376
    .line 377
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v8

    .line 381
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v8

    .line 385
    invoke-static {v8}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 386
    .line 387
    .line 388
    move-result v8

    .line 389
    add-int/2addr v8, v1

    .line 390
    invoke-static {v8, v7, v6, v8, v5}, Lc/a;->t(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 391
    .line 392
    .line 393
    goto :goto_6

    .line 394
    :cond_c
    const-string v18, "id"

    .line 395
    .line 396
    const-string v20, "skill_id"

    .line 397
    .line 398
    const-string v22, "num"

    .line 399
    .line 400
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 401
    .line 402
    .line 403
    move-result-object v23

    .line 404
    const-string v24, "skill_piece_num"

    .line 405
    .line 406
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 407
    .line 408
    .line 409
    move-result-object v25

    .line 410
    move-object/from16 v19, v0

    .line 411
    .line 412
    move-object/from16 v21, v0

    .line 413
    .line 414
    filled-new-array/range {v18 .. v25}, [Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v5

    .line 418
    invoke-static {v14, v0, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 419
    .line 420
    .line 421
    move-result-object v7

    .line 422
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    :goto_6
    invoke-static {v4, v9, v7}, Lc/e;->p0(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    .line 426
    .line 427
    .line 428
    new-instance v4, Lc/e;

    .line 429
    .line 430
    new-array v5, v12, [Ljava/util/Map;

    .line 431
    .line 432
    const-string v18, "id"

    .line 433
    .line 434
    const-string v20, "skill_id"

    .line 435
    .line 436
    const-string v22, "num"

    .line 437
    .line 438
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 439
    .line 440
    .line 441
    move-result-object v23

    .line 442
    const-string v24, "pk_id"

    .line 443
    .line 444
    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v25

    .line 448
    const-string v26, "skill_piece_num"

    .line 449
    .line 450
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 451
    .line 452
    .line 453
    move-result-object v27

    .line 454
    move-object/from16 v19, v0

    .line 455
    .line 456
    move-object/from16 v21, v0

    .line 457
    .line 458
    filled-new-array/range {v18 .. v27}, [Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    invoke-static {v10, v3, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    const/4 v1, 0x0

    .line 467
    aput-object v0, v5, v1

    .line 468
    .line 469
    invoke-static {v5}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-direct {v4, v0, v2}, Lc/e;-><init>(Ljava/io/Serializable;Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    return-object v4
.end method

.method public static O(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 1

    .line 1
    const-string v0, "union.info"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lc/e;->t(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string v0, "union.rankList"

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {p1}, Lc/e;->m0(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "rank_list"

    .line 27
    .line 28
    invoke-static {p0, p1}, Lc/e;->r0(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_1
    const-string v0, "union.userList"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-static {p1}, Lc/e;->v(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_2
    const-string v0, "union.applyList"

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_3

    .line 53
    .line 54
    new-instance p0, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lc/e;->j0()Ljava/util/LinkedHashMap;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v0, "return_info"

    .line 64
    .line 65
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    const-string v0, "apply_list"

    .line 69
    .line 70
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    return-object p1

    .line 74
    :cond_3
    invoke-static {p1}, Lc/e;->t(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method

.method public static Q(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "unionWar.signUp"

    .line 8
    .line 9
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    .line 17
    const-string v3, "union_war_sign_up"

    .line 18
    .line 19
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string v4, "fight_point"

    .line 23
    .line 24
    const-string v5, "1000"

    .line 25
    .line 26
    invoke-static {v4, v5, v2}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v4, "union_war_fight_point"

    .line 39
    .line 40
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-static/range {p1 .. p1}, Lc/e;->u(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    return-object v1

    .line 51
    :cond_0
    const-string v3, "unionWar.setBattleFormation"

    .line 52
    .line 53
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const-string v4, "battle_id"

    .line 58
    .line 59
    const-string v5, "1"

    .line 60
    .line 61
    if-eqz v3, :cond_2

    .line 62
    .line 63
    invoke-static/range {p1 .. p1}, Lc/e;->d0(Ljava/util/Map;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0, v1, v2}, Lc/e;->y(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const-string v3, "union_war_formations"

    .line 72
    .line 73
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Ljava/util/Map;

    .line 81
    .line 82
    if-nez v0, :cond_1

    .line 83
    .line 84
    invoke-static {v5, v5}, Lc/e;->L(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    const-string v3, "union_war_battle_id"

    .line 93
    .line 94
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    const-string v2, "pos"

    .line 98
    .line 99
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const-string v2, "union_war_pos"

    .line 104
    .line 105
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    invoke-static/range {p1 .. p1}, Lc/e;->u(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    return-object v0

    .line 113
    :cond_2
    const-string v3, "unionWar.getFightingDetails"

    .line 114
    .line 115
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    const-string v6, "return_info"

    .line 120
    .line 121
    const-string v7, "user_all"

    .line 122
    .line 123
    const-string v8, "fight_winner"

    .line 124
    .line 125
    const-string v9, "fight"

    .line 126
    .line 127
    const-string v10, "winner"

    .line 128
    .line 129
    const-string v11, "union_npc_1"

    .line 130
    .line 131
    const-string v12, "to"

    .line 132
    .line 133
    const-string v13, "user_id"

    .line 134
    .line 135
    const-string v14, "from"

    .line 136
    .line 137
    const-string v15, "tag"

    .line 138
    .line 139
    const-string v1, "battle_rounds"

    .line 140
    .line 141
    const-string v0, "union_war_id"

    .line 142
    .line 143
    const/16 v16, 0x0

    .line 144
    .line 145
    if-eqz v3, :cond_6

    .line 146
    .line 147
    invoke-static {v0, v5, v2}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-static {v3}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    invoke-static {v1, v5, v2}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v17

    .line 159
    invoke-static/range {v17 .. v17}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 160
    .line 161
    .line 162
    move-result v17

    .line 163
    invoke-static {v15, v5, v2}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v18

    .line 167
    invoke-static/range {v18 .. v18}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 168
    .line 169
    .line 170
    move-result v18

    .line 171
    invoke-static {v4, v5, v2}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-static {v5}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    move-object/from16 v35, v6

    .line 180
    .line 181
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 182
    .line 183
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-static/range {p1 .. p1}, Lc/e;->n0(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 187
    .line 188
    .line 189
    move-result-object v19

    .line 190
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object v19

    .line 194
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v20

    .line 198
    if-eqz v20, :cond_3

    .line 199
    .line 200
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v20

    .line 204
    move-object/from16 v22, v7

    .line 205
    .line 206
    move-object/from16 v7, v20

    .line 207
    .line 208
    check-cast v7, Ljava/util/Map;

    .line 209
    .line 210
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v20

    .line 214
    move-object/from16 v21, v13

    .line 215
    .line 216
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v13

    .line 220
    invoke-interface {v6, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-object/from16 v13, v21

    .line 224
    .line 225
    move-object/from16 v7, v22

    .line 226
    .line 227
    goto :goto_0

    .line 228
    :cond_3
    move-object/from16 v22, v7

    .line 229
    .line 230
    invoke-static/range {p1 .. p1}, Lc/e;->d0(Ljava/util/Map;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    invoke-static {v14, v7, v2}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    invoke-static/range {p1 .. p1}, Lc/e;->d0(Ljava/util/Map;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v13

    .line 242
    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v19

    .line 246
    if-eqz v19, :cond_4

    .line 247
    .line 248
    move-object v13, v7

    .line 249
    :cond_4
    invoke-static {v12, v11, v2}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v7

    .line 257
    if-eqz v7, :cond_5

    .line 258
    .line 259
    goto :goto_1

    .line 260
    :cond_5
    move-object v2, v11

    .line 261
    :goto_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    filled-new-array {v12, v2, v10, v7}, [Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    invoke-static {v14, v13, v7}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    invoke-static {v7}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    invoke-static {}, Lc/e;->j0()Ljava/util/LinkedHashMap;

    .line 282
    .line 283
    .line 284
    move-result-object v10

    .line 285
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v11

    .line 289
    invoke-interface {v10, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 293
    .line 294
    .line 295
    move-result-object v11

    .line 296
    invoke-interface {v10, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-interface {v10, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-interface {v10, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    invoke-interface {v10, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    invoke-interface {v10, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    invoke-interface {v10, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-interface {v10, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-object/from16 v4, v22

    .line 330
    .line 331
    invoke-interface {v10, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    const-string v19, "battle_rounds"

    .line 339
    .line 340
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 341
    .line 342
    .line 343
    move-result-object v20

    .line 344
    const-string v21, "tag"

    .line 345
    .line 346
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 347
    .line 348
    .line 349
    move-result-object v22

    .line 350
    const-string v23, "battle_id"

    .line 351
    .line 352
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 353
    .line 354
    .line 355
    move-result-object v24

    .line 356
    const-string v25, "from"

    .line 357
    .line 358
    const-string v27, "to"

    .line 359
    .line 360
    const-string v29, "fight"

    .line 361
    .line 362
    const-string v31, "fight_winner"

    .line 363
    .line 364
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 365
    .line 366
    .line 367
    move-result-object v32

    .line 368
    const-string v33, "user_all"

    .line 369
    .line 370
    move-object/from16 v26, v13

    .line 371
    .line 372
    move-object/from16 v28, v2

    .line 373
    .line 374
    move-object/from16 v30, v7

    .line 375
    .line 376
    move-object/from16 v34, v6

    .line 377
    .line 378
    filled-new-array/range {v19 .. v34}, [Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    invoke-static {v0, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    move-object/from16 v2, v35

    .line 387
    .line 388
    invoke-interface {v10, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    return-object v10

    .line 392
    :cond_6
    move-object v2, v6

    .line 393
    move-object v4, v7

    .line 394
    move-object/from16 v21, v13

    .line 395
    .line 396
    const-string v3, "unionWar.getFightingResult"

    .line 397
    .line 398
    move-object v5, v0

    .line 399
    move-object/from16 v0, p0

    .line 400
    .line 401
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    if-nez v3, :cond_8

    .line 406
    .line 407
    const-string v3, "unionWar.getFightingProcess"

    .line 408
    .line 409
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    if-eqz v0, :cond_7

    .line 414
    .line 415
    goto :goto_2

    .line 416
    :cond_7
    invoke-static/range {p1 .. p1}, Lc/e;->u(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    return-object v0

    .line 421
    :cond_8
    :goto_2
    invoke-static {}, Lc/e;->j0()Ljava/util/LinkedHashMap;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 426
    .line 427
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 428
    .line 429
    .line 430
    invoke-static/range {p1 .. p1}, Lc/e;->n0(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 431
    .line 432
    .line 433
    move-result-object v6

    .line 434
    invoke-static/range {p1 .. p1}, Lc/e;->d0(Ljava/util/Map;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v7

    .line 438
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 439
    .line 440
    .line 441
    move-result-object v6

    .line 442
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 443
    .line 444
    .line 445
    move-result v13

    .line 446
    if-eqz v13, :cond_9

    .line 447
    .line 448
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v13

    .line 452
    check-cast v13, Ljava/util/Map;

    .line 453
    .line 454
    move-object/from16 p0, v6

    .line 455
    .line 456
    move-object/from16 v6, v21

    .line 457
    .line 458
    invoke-interface {v13, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v17

    .line 462
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v6

    .line 466
    invoke-interface {v3, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-object/from16 v6, p0

    .line 470
    .line 471
    goto :goto_3

    .line 472
    :cond_9
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 473
    .line 474
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 475
    .line 476
    .line 477
    const/4 v13, 0x1

    .line 478
    move-object/from16 v17, v15

    .line 479
    .line 480
    :goto_4
    const/4 v15, 0x6

    .line 481
    if-gt v13, v15, :cond_c

    .line 482
    .line 483
    const/4 v15, 0x1

    .line 484
    if-ne v13, v15, :cond_a

    .line 485
    .line 486
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 487
    .line 488
    .line 489
    move-result-object v15

    .line 490
    filled-new-array {v12, v11, v10, v15}, [Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v15

    .line 494
    invoke-static {v14, v7, v15}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 495
    .line 496
    .line 497
    move-result-object v15

    .line 498
    filled-new-array {v15}, [Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v15

    .line 502
    invoke-static {v15}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 503
    .line 504
    .line 505
    move-result-object v15

    .line 506
    goto :goto_5

    .line 507
    :cond_a
    new-instance v15, Ljava/util/ArrayList;

    .line 508
    .line 509
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .line 511
    .line 512
    :goto_5
    move-object/from16 p0, v7

    .line 513
    .line 514
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v7

    .line 518
    move-object/from16 v18, v10

    .line 519
    .line 520
    const/4 v10, 0x2

    .line 521
    new-array v10, v10, [Ljava/lang/Object;

    .line 522
    .line 523
    aput-object v8, v10, v16

    .line 524
    .line 525
    move-object/from16 v19, v8

    .line 526
    .line 527
    const/4 v8, 0x1

    .line 528
    if-ne v13, v8, :cond_b

    .line 529
    .line 530
    move/from16 v20, v8

    .line 531
    .line 532
    goto :goto_6

    .line 533
    :cond_b
    const/16 v20, -0x1

    .line 534
    .line 535
    :goto_6
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 536
    .line 537
    .line 538
    move-result-object v20

    .line 539
    aput-object v20, v10, v8

    .line 540
    .line 541
    invoke-static {v9, v15, v10}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 542
    .line 543
    .line 544
    move-result-object v8

    .line 545
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    add-int/lit8 v13, v13, 0x1

    .line 549
    .line 550
    move-object/from16 v7, p0

    .line 551
    .line 552
    move-object/from16 v10, v18

    .line 553
    .line 554
    move-object/from16 v8, v19

    .line 555
    .line 556
    goto :goto_4

    .line 557
    :cond_c
    const/4 v7, 0x1

    .line 558
    move-object/from16 v8, v17

    .line 559
    .line 560
    move v15, v7

    .line 561
    move-object/from16 v16, v0

    .line 562
    .line 563
    move-object/from16 v17, v5

    .line 564
    .line 565
    move/from16 v18, v7

    .line 566
    .line 567
    move-object/from16 v19, v1

    .line 568
    .line 569
    move/from16 v20, v7

    .line 570
    .line 571
    move-object/from16 v21, v8

    .line 572
    .line 573
    invoke-static/range {v15 .. v21}, Lc/a;->s(ILjava/util/LinkedHashMap;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 574
    .line 575
    .line 576
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    const-string v1, "info"

    .line 580
    .line 581
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    const-string v22, "info"

    .line 585
    .line 586
    const-string v24, "union_war_id"

    .line 587
    .line 588
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 589
    .line 590
    .line 591
    move-result-object v25

    .line 592
    const-string v26, "battle_rounds"

    .line 593
    .line 594
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 595
    .line 596
    .line 597
    move-result-object v27

    .line 598
    const-string v28, "tag"

    .line 599
    .line 600
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 601
    .line 602
    .line 603
    move-result-object v29

    .line 604
    move-object/from16 v23, v6

    .line 605
    .line 606
    filled-new-array/range {v22 .. v29}, [Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    invoke-static {v4, v3, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 611
    .line 612
    .line 613
    move-result-object v1

    .line 614
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    return-object v0
.end method

.method public static R(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "union.info"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "union.rankList"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "union.userList"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "union.applyList"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static S(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lc/e;->g0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lc/e;->g0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static T(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lc/e;->g0(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-static {p1}, Lc/e;->g0(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Lc/e;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 35
    :goto_1
    return p0
.end method

.method public static U(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lc/e;->V(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    const-string v2, "union."

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v2, "union.info"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "union.rankList"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "union.userList"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "union.applyList"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "union.getDepotList"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "union.getGoodsList"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "union.donateInfo"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "union.donate"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "union.exchangeGoods"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "union.getUnionActiveList"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "union.allotDepot"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "union.apply"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "union.manage"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "union.chgNotice"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "union.chgSign"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "union.quite"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "union.create"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method public static V(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "unionWar."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "unionWar.signUp"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "unionWar.getBattleFormation"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "unionWar.setBattleFormation"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "unionWar.getFightingResult"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "unionWar.getFightingProcess"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "unionWar.getFightingDetails"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public static Y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"\\s*:\\s*\"?([^\",}\\s]+)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lc/e;->g0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/cloud/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "owner_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lc/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return-object p1

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public static d0(Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "100001"

    const-string v1, "user_id"

    const-string v2, "account_uid"

    invoke-static {v1, v2, v0, p0}, Lc/e;->i0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e()Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "name"

    const-string v2, "union_active"

    const-string v3, "active"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v5, "status"

    move-object v4, v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "1"

    invoke-static {v2, v3, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static e0(Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "\u73a9\u5bb6"

    const-string v1, "user_nickname"

    const-string v2, "nickname"

    invoke-static {v1, v2, v0, p0}, Lc/e;->i0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 9

    .line 1
    const-string v0, "pk_id"

    .line 2
    .line 3
    const-string v1, "1"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "num"

    .line 10
    .line 11
    invoke-static {v3, v1, p1}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v4, 0x1

    .line 20
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const-string v4, "union_depot_list"

    .line 25
    .line 26
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    instance-of v6, v5, Ljava/util/List;

    .line 31
    .line 32
    if-eqz v6, :cond_0

    .line 33
    .line 34
    check-cast v5, Ljava/util/List;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-static {}, Lc/e;->E()Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-eqz v7, :cond_1

    .line 50
    .line 51
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    check-cast v7, Ljava/util/Map;

    .line 56
    .line 57
    invoke-static {v7, v0, v2}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-nez v8, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const/4 v7, 0x0

    .line 65
    :cond_2
    if-nez v7, :cond_3

    .line 66
    .line 67
    const-string p0, "\u4ed3\u5e93\u7269\u54c1\u4e0d\u5b58\u5728"

    .line 68
    .line 69
    invoke-static {p0}, Lc/e;->I(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_3
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-ge v0, v1, :cond_4

    .line 83
    .line 84
    const-string p0, "\u5e93\u5b58\u4e0d\u8db3"

    .line 85
    .line 86
    invoke-static {p0}, Lc/e;->I(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :cond_4
    sub-int/2addr v0, v1

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-interface {v7, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    const-string v0, "member_id"

    .line 103
    .line 104
    const-string v3, ""

    .line 105
    .line 106
    invoke-static {v0, v3, p1}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const-string v0, "union_last_allot_member_id"

    .line 111
    .line 112
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    const-string p1, "union_last_allot_pk_id"

    .line 116
    .line 117
    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    const-string p1, "union_last_allot_num"

    .line 121
    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    const-string p0, "depot_list"

    .line 130
    .line 131
    invoke-static {v5, p0}, Lc/e;->r0(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    const-string p1, "return_info"

    .line 136
    .line 137
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Ljava/util/Map;

    .line 142
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v2, "\u5206\u914d\u4e86"

    .line 146
    .line 147
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v1, "\u4ef6\u516c\u4f1a\u4ed3\u5e93\u7269\u54c1"

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    const-string v1, "log_content"

    .line 163
    .line 164
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    return-object p0
.end method

.method public static f0(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ""

    if-nez p0, :cond_0

    move-object p0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    :cond_1
    const-string v3, "union_today_donate_day"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {p1, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v5

    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v0

    :cond_4
    invoke-interface {p1, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "union_today_donate"

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "union_today_donate_type"

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v5
.end method

.method public static g0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static h(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 2

    .line 1
    const-string v0, "notice"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "union_notice"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u4f1a\u957f"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lc/e;->e0(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u4fee\u6539\u4e86\u516c\u4f1a\u516c\u544a"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "log_content"

    invoke-static {p0, p1}, Lc/e;->r0(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static h0(Ljava/lang/Object;)I
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static i0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_0
    if-nez p0, :cond_1

    return-object p2

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public static j(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 2

    .line 1
    const-string v0, "union_sign"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u4f1a\u957f"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lc/e;->e0(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u4fee\u6539\u4e86\u516c\u4f1a\u5ba3\u8a00"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "log_content"

    invoke-static {p0, p1}, Lc/e;->r0(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static j0()Ljava/util/LinkedHashMap;
    .locals 9

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "code"

    const-string v3, "result"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "msg"

    const-string v6, "success"

    const-string v7, "error_code"

    move-object v2, v0

    move-object v8, v0

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ret"

    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public static k(Ljava/util/Map;Lcom/sgscq/vpn/cloud/k;)Ljava/util/LinkedHashMap;
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/sgscq/vpn/cloud/k;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/sgscq/vpn/cloud/g;

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-object v1, v0, Lcom/sgscq/vpn/cloud/g;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lcom/sgscq/vpn/cloud/o;

    .line 10
    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    iget-object v1, p1, Lcom/sgscq/vpn/cloud/k;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljava/lang/String;

    .line 16
    .line 17
    sget-object v2, Lcom/sgscq/vpn/handler/j0;->a:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x1

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    sget-object v2, Lcom/sgscq/vpn/handler/j0;->c:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    const-string v2, "791684"

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v2, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    move v2, v3

    .line 46
    :goto_1
    if-nez v2, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    invoke-static {p0, v0}, Lc/e;->l(Ljava/util/Map;Lcom/sgscq/vpn/cloud/g;)Z

    .line 50
    .line 51
    .line 52
    iget v0, p1, Lcom/sgscq/vpn/cloud/k;->a:I

    .line 53
    .line 54
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-static {v0, v1, p0}, Lc/e;->M(ILjava/lang/String;Ljava/util/Map;)Lc/e;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object p1, p1, Lcom/sgscq/vpn/cloud/k;->c:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p1, Lcom/sgscq/vpn/battle/a;

    .line 65
    .line 66
    invoke-static {p1}, Lc/e;->s(Lcom/sgscq/vpn/battle/a;)Ljava/util/LinkedHashMap;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object v1, v0, Lc/e;->b:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v1, Ljava/util/List;

    .line 73
    .line 74
    const-string v2, "add_list"

    .line 75
    .line 76
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    const-string v3, "return_info"

    .line 80
    .line 81
    invoke-virtual {p1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    instance-of v4, v3, Ljava/util/Map;

    .line 86
    .line 87
    if-eqz v4, :cond_3

    .line 88
    .line 89
    check-cast v3, Ljava/util/Map;

    .line 90
    .line 91
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    :cond_3
    invoke-virtual {v0, p0}, Lc/e;->F(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    const-string v1, "delta_data"

    .line 99
    .line 100
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    iget-object p0, v0, Lc/e;->a:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p0, Ljava/lang/String;

    .line 106
    .line 107
    const-string v0, "cmn_modules"

    .line 108
    .line 109
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    return-object p1

    .line 113
    :cond_4
    :goto_2
    const-string p0, "\u4e91\u7aef\u516c\u4f1a\u5151\u6362\u7ed3\u679c\u65e0\u6548"

    .line 114
    .line 115
    invoke-static {p0}, Lc/e;->I(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0
.end method

.method public static k0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lc/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/util/Map;Lcom/sgscq/vpn/cloud/g;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lc/e;->B(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/sgscq/vpn/cloud/g;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sgscq/vpn/cloud/m;

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/sgscq/vpn/cloud/g;->d:Ljava/lang/Object;

    check-cast p1, Lcom/sgscq/vpn/cloud/o;

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v2, v1, Lcom/sgscq/vpn/cloud/m;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "union_id"

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v1, Lcom/sgscq/vpn/cloud/m;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "unionId"

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/sgscq/vpn/cloud/m;->b:Ljava/lang/String;

    const-string v3, "union_name"

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/sgscq/vpn/cloud/m;->b:Ljava/lang/String;

    const-string v3, "unionName"

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v1, Lcom/sgscq/vpn/cloud/m;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "union_level"

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v1, Lcom/sgscq/vpn/cloud/m;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "union_exp"

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/sgscq/vpn/cloud/m;->j:Ljava/lang/String;

    const-string v3, "union_notice"

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/sgscq/vpn/cloud/m;->k:Ljava/lang/String;

    const-string v2, "union_sign"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/sgscq/vpn/cloud/o;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "user_role"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/sgscq/vpn/cloud/o;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "union_donate_num"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/sgscq/vpn/cloud/o;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "union_today_donate"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p1, Lcom/sgscq/vpn/cloud/o;->d:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "union_today_donate_type"

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {p0}, Lc/e;->B(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    :goto_1
    invoke-static {p0}, Lc/e;->x(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static l0(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 11

    .line 1
    const-string v0, "union_id"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "unionId"

    .line 12
    .line 13
    :goto_0
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v3, 0x1

    .line 27
    if-lez v1, :cond_1

    .line 28
    .line 29
    move v4, v3

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v4, v2

    .line 32
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/16 v5, 0x16

    .line 37
    .line 38
    new-array v5, v5, [Ljava/lang/Object;

    .line 39
    .line 40
    const-string v6, "union_name"

    .line 41
    .line 42
    aput-object v6, v5, v2

    .line 43
    .line 44
    const-string v7, ""

    .line 45
    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    const-string v8, "unionName"

    .line 49
    .line 50
    invoke-static {v6, v8, v7, p0}, Lc/e;->i0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move-object v6, v7

    .line 56
    :goto_2
    aput-object v6, v5, v3

    .line 57
    .line 58
    const/4 v6, 0x2

    .line 59
    const-string v8, "union_level"

    .line 60
    .line 61
    aput-object v8, v5, v6

    .line 62
    .line 63
    if-eqz v4, :cond_3

    .line 64
    .line 65
    invoke-interface {p0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-static {v6}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    move v6, v2

    .line 79
    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    const/4 v9, 0x3

    .line 84
    aput-object v6, v5, v9

    .line 85
    .line 86
    const/4 v6, 0x4

    .line 87
    const-string v9, "leader_nickname"

    .line 88
    .line 89
    aput-object v9, v5, v6

    .line 90
    .line 91
    if-eqz v4, :cond_4

    .line 92
    .line 93
    invoke-static {p0}, Lc/e;->e0(Ljava/util/Map;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    goto :goto_4

    .line 98
    :cond_4
    move-object v6, v7

    .line 99
    :goto_4
    const/4 v9, 0x5

    .line 100
    aput-object v6, v5, v9

    .line 101
    .line 102
    const/4 v6, 0x6

    .line 103
    const-string v10, "level_union_exp"

    .line 104
    .line 105
    aput-object v10, v5, v6

    .line 106
    .line 107
    if-eqz v4, :cond_5

    .line 108
    .line 109
    const-string v6, "union_exp"

    .line 110
    .line 111
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-static {v6}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    goto :goto_5

    .line 120
    :cond_5
    move v6, v2

    .line 121
    :goto_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    const/4 v10, 0x7

    .line 126
    aput-object v6, v5, v10

    .line 127
    .line 128
    const/16 v6, 0x8

    .line 129
    .line 130
    const-string v10, "level_up_exp"

    .line 131
    .line 132
    aput-object v10, v5, v6

    .line 133
    .line 134
    if-eqz v4, :cond_6

    .line 135
    .line 136
    invoke-interface {p0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-static {v6}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    mul-int/lit16 v6, v6, 0x3e8

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_6
    move v6, v2

    .line 152
    :goto_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    const/16 v10, 0x9

    .line 157
    .line 158
    aput-object v6, v5, v10

    .line 159
    .line 160
    const/16 v6, 0xa

    .line 161
    .line 162
    const-string v10, "rank"

    .line 163
    .line 164
    aput-object v10, v5, v6

    .line 165
    .line 166
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    const/16 v10, 0xb

    .line 171
    .line 172
    aput-object v6, v5, v10

    .line 173
    .line 174
    const/16 v6, 0xc

    .line 175
    .line 176
    const-string v10, "user_num"

    .line 177
    .line 178
    aput-object v10, v5, v6

    .line 179
    .line 180
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    const/16 v10, 0xd

    .line 185
    .line 186
    aput-object v6, v5, v10

    .line 187
    .line 188
    const/16 v6, 0xe

    .line 189
    .line 190
    const-string v10, "user_limit"

    .line 191
    .line 192
    aput-object v10, v5, v6

    .line 193
    .line 194
    if-eqz v4, :cond_7

    .line 195
    .line 196
    invoke-interface {p0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    invoke-static {v6}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    sub-int/2addr v6, v3

    .line 209
    mul-int/2addr v6, v9

    .line 210
    add-int/lit8 v6, v6, 0x1e

    .line 211
    .line 212
    goto :goto_7

    .line 213
    :cond_7
    move v6, v2

    .line 214
    :goto_7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    const/16 v6, 0xf

    .line 219
    .line 220
    aput-object v3, v5, v6

    .line 221
    .line 222
    const/16 v3, 0x10

    .line 223
    .line 224
    const-string v6, "notice"

    .line 225
    .line 226
    aput-object v6, v5, v3

    .line 227
    .line 228
    const/4 v3, 0x0

    .line 229
    if-eqz v4, :cond_8

    .line 230
    .line 231
    const-string v6, "union_notice"

    .line 232
    .line 233
    invoke-static {v6, v3, v7, p0}, Lc/e;->i0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    goto :goto_8

    .line 238
    :cond_8
    move-object v6, v7

    .line 239
    :goto_8
    const/16 v8, 0x11

    .line 240
    .line 241
    aput-object v6, v5, v8

    .line 242
    .line 243
    const/16 v6, 0x12

    .line 244
    .line 245
    const-string v8, "union_sign"

    .line 246
    .line 247
    aput-object v8, v5, v6

    .line 248
    .line 249
    if-eqz v4, :cond_9

    .line 250
    .line 251
    invoke-static {v8, v3, v7, p0}, Lc/e;->i0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    :cond_9
    const/16 v3, 0x13

    .line 256
    .line 257
    aput-object v7, v5, v3

    .line 258
    .line 259
    const/16 v3, 0x14

    .line 260
    .line 261
    const-string v6, "union_fightPoint"

    .line 262
    .line 263
    aput-object v6, v5, v3

    .line 264
    .line 265
    if-eqz v4, :cond_a

    .line 266
    .line 267
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    invoke-static {p0}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    :cond_a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 276
    .line 277
    .line 278
    move-result-object p0

    .line 279
    const/16 v2, 0x15

    .line 280
    .line 281
    aput-object p0, v5, v2

    .line 282
    .line 283
    invoke-static {v0, v1, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    return-object p0
.end method

.method public static m(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 10

    .line 1
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p0}, Lc/e;->f0(Ljava/lang/String;Ljava/util/Map;)Z

    .line 6
    .line 7
    .line 8
    const-string v0, "union_today_donate"

    .line 9
    .line 10
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    const-string p0, "\u4eca\u65e5\u5df2\u6350\u732e"

    .line 21
    .line 22
    invoke-static {p0}, Lc/e;->I(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    const-string v1, "data_id"

    .line 28
    .line 29
    const-string v2, "1"

    .line 30
    .line 31
    invoke-static {v1, v2, p1}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-static {p1, v1}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-lt p1, v1, :cond_7

    .line 41
    .line 42
    invoke-static {}, Lc/e;->G()Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-le p1, v2, :cond_1

    .line 51
    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_1
    invoke-static {}, Lc/e;->G()Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    add-int/lit8 v3, p1, -0x1

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Ljava/util/Map;

    .line 65
    .line 66
    const-string v3, "type"

    .line 67
    .line 68
    invoke-static {v2, v3, v1}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const-string v4, "num"

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    invoke-static {v2, v4, v5}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    const-string v6, "exp"

    .line 80
    .line 81
    invoke-static {v2, v6, v1}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    const-string v7, "donate"

    .line 86
    .line 87
    invoke-static {v2, v7, v1}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-ne v3, v1, :cond_3

    .line 92
    .line 93
    invoke-static {p0}, Lcom/sgscq/vpn/p5;->x(Ljava/util/Map;)J

    .line 94
    .line 95
    .line 96
    move-result-wide v7

    .line 97
    int-to-long v3, v4

    .line 98
    cmp-long v9, v7, v3

    .line 99
    .line 100
    if-gez v9, :cond_2

    .line 101
    .line 102
    const-string p0, "\u94dc\u94b1\u4e0d\u8db3"

    .line 103
    .line 104
    invoke-static {p0}, Lc/e;->I(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :cond_2
    sub-long/2addr v7, v3

    .line 110
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    const-string v4, "user_coin"

    .line 115
    .line 116
    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    const/4 v7, 0x2

    .line 121
    if-ne v3, v7, :cond_5

    .line 122
    .line 123
    const-string v3, "user_gold"

    .line 124
    .line 125
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    invoke-static {v7}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-ge v7, v4, :cond_4

    .line 134
    .line 135
    const-string p0, "\u5143\u5b9d\u4e0d\u8db3"

    .line 136
    .line 137
    invoke-static {p0}, Lc/e;->I(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    return-object p0

    .line 142
    :cond_4
    sub-int/2addr v7, v4

    .line 143
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    :cond_5
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-interface {p0, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    const-string v0, "union_today_donate_type"

    .line 158
    .line 159
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-interface {p0, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    const-string v0, "union_donate_num"

    .line 167
    .line 168
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-static {v3}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    add-int/2addr v3, v2

    .line 177
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    const-string v0, "union_level"

    .line 185
    .line 186
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-static {v2}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    const-string v2, "union_exp"

    .line 199
    .line 200
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-static {v3}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    add-int/2addr v4, v3

    .line 217
    :goto_1
    mul-int/lit16 v3, v1, 0x3e8

    .line 218
    .line 219
    if-lt v4, v3, :cond_6

    .line 220
    .line 221
    sub-int/2addr v4, v3

    .line 222
    add-int/lit8 v1, v1, 0x1

    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    invoke-static {p0}, Lc/e;->q(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    const-string v0, "donate_id"

    .line 244
    .line 245
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    const-string p1, "cmn_modules"

    .line 253
    .line 254
    const-string v0, "Player"

    .line 255
    .line 256
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    return-object p0

    .line 260
    :cond_7
    :goto_2
    const-string p0, "\u6350\u732e\u6863\u4f4d\u4e0d\u5b58\u5728"

    .line 261
    .line 262
    invoke-static {p0}, Lc/e;->I(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    return-object p0
.end method

.method public static m0(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "union_id"

    .line 7
    .line 8
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v1, "unionId"

    .line 16
    .line 17
    :goto_0
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-lez v1, :cond_1

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v1, v2

    .line 35
    :goto_1
    if-nez v1, :cond_2

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_2
    invoke-static {p0}, Lc/e;->l0(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "war_rank"

    .line 47
    .line 48
    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method public static n0(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static/range {p0 .. p0}, Lc/e;->d0(Ljava/util/Map;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string v3, "union_war_battle_id"

    .line 13
    .line 14
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "union_war_pos"

    .line 19
    .line 20
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-static {v0, v2, v3, v4}, Lc/e;->K(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "1"

    .line 29
    .line 30
    const-string v5, "union_npc_1"

    .line 31
    .line 32
    invoke-static {v0, v5, v4, v4}, Lc/e;->K(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const/16 v6, 0xa

    .line 37
    .line 38
    new-array v6, v6, [Ljava/lang/Object;

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    const-string v8, "user_nickname"

    .line 42
    .line 43
    aput-object v8, v6, v7

    .line 44
    .line 45
    invoke-static/range {p0 .. p0}, Lc/e;->e0(Ljava/util/Map;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    const/4 v8, 0x1

    .line 50
    aput-object v7, v6, v8

    .line 51
    .line 52
    const/4 v7, 0x2

    .line 53
    const-string v8, "general_id"

    .line 54
    .line 55
    aput-object v8, v6, v7

    .line 56
    .line 57
    const-string v7, "General"

    .line 58
    .line 59
    invoke-static {v7, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-eqz v9, :cond_2

    .line 72
    .line 73
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    check-cast v9, Ljava/util/Map;

    .line 78
    .line 79
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    if-nez v10, :cond_1

    .line 84
    .line 85
    const-string v10, "id"

    .line 86
    .line 87
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    :cond_1
    if-eqz v10, :cond_0

    .line 92
    .line 93
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-nez v9, :cond_0

    .line 102
    .line 103
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    goto :goto_0

    .line 108
    :cond_2
    const-string v7, "112001"

    .line 109
    .line 110
    :goto_0
    const/4 v8, 0x3

    .line 111
    aput-object v7, v6, v8

    .line 112
    .line 113
    const/4 v7, 0x4

    .line 114
    const-string v8, "fight_point"

    .line 115
    .line 116
    aput-object v8, v6, v7

    .line 117
    .line 118
    const-string v7, "union_war_fight_point"

    .line 119
    .line 120
    const/16 v8, 0x3e8

    .line 121
    .line 122
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-interface {v0, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const/4 v7, 0x5

    .line 139
    aput-object v0, v6, v7

    .line 140
    .line 141
    const/4 v0, 0x6

    .line 142
    const-string v7, "battle_id"

    .line 143
    .line 144
    aput-object v7, v6, v0

    .line 145
    .line 146
    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v0}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const/4 v8, 0x7

    .line 159
    aput-object v0, v6, v8

    .line 160
    .line 161
    const/16 v0, 0x8

    .line 162
    .line 163
    const-string v8, "pos"

    .line 164
    .line 165
    aput-object v8, v6, v0

    .line 166
    .line 167
    invoke-virtual {v3, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {v0}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    const/16 v3, 0x9

    .line 180
    .line 181
    aput-object v0, v6, v3

    .line 182
    .line 183
    const-string v0, "user_id"

    .line 184
    .line 185
    invoke-static {v0, v2, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    const-string v9, "user_nickname"

    .line 193
    .line 194
    const-string v10, "Union NPC"

    .line 195
    .line 196
    const-string v11, "general_id"

    .line 197
    .line 198
    const v2, 0x4214a4e3

    .line 199
    .line 200
    .line 201
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->j1(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v12

    .line 205
    const-string v13, "fight_point"

    .line 206
    .line 207
    const/16 v2, 0x384

    .line 208
    .line 209
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v14

    .line 213
    const-string v15, "battle_id"

    .line 214
    .line 215
    invoke-virtual {v4, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-static {v2}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v16

    .line 227
    const-string v17, "pos"

    .line 228
    .line 229
    invoke-virtual {v4, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-static {v2}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v18

    .line 241
    filled-new-array/range {v9 .. v18}, [Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-static {v0, v5, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    return-object v1
.end method

.method public static o(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lc/e;->j0()Ljava/util/LinkedHashMap;

    move-result-object p0

    const-string v1, "info"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v4, "unionWar"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "return_info"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static o0(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Map;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    const-string v1, "add"

    const-string v2, "upd"

    filled-new-array {v2, p2, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "del"

    invoke-static {p2, v0, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    const-string p2, "Item"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static p0(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Map;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    const-string v1, "add"

    const-string v2, "upd"

    filled-new-array {v2, p2, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "del"

    invoke-static {p2, v0, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    const-string p2, "SkillPiece"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static q(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 10

    .line 1
    const-string v0, "union_donate_num"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc/e;->h0(Ljava/lang/Object;)I

    move-result v0

    const-string v1, "union_today_donate"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lc/e;->h0(Ljava/lang/Object;)I

    move-result p0

    const/4 v1, 0x0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x19

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "user_donate"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "is_donate"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "donate_info"

    invoke-static {}, Lc/e;->G()Ljava/util/ArrayList;

    move-result-object v7

    const-string v8, "donate_records"

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "donate_num"

    invoke-static {v0, v1, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-static {}, Lc/e;->j0()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "return_info"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public static q0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "version_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lc/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static r(ILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-string v3, "item_id"

    .line 15
    .line 16
    const-string v4, "791684"

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/util/Map;

    .line 25
    .line 26
    invoke-static {v2, v3, v4}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/util/Map;

    .line 51
    .line 52
    invoke-static {v1, v3, v4}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const-string p2, "goods_list"

    .line 67
    .line 68
    const-string v1, "user_donate"

    .line 69
    .line 70
    filled-new-array {v1, p0, p2, v0}, [Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const-string p2, "catalog_day"

    .line 75
    .line 76
    invoke-static {p2, p1, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {}, Lc/e;->j0()Ljava/util/LinkedHashMap;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string p2, "return_info"

    .line 85
    .line 86
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    invoke-interface {p1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 90
    .line 91
    .line 92
    return-object p1
.end method

.method public static r0(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 3

    .line 1
    invoke-static {}, Lc/e;->j0()Ljava/util/LinkedHashMap;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "return_info"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static s(Lcom/sgscq/vpn/battle/a;)Ljava/util/LinkedHashMap;
    .locals 41

    .line 1
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/sgscq/vpn/battle/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sgscq/vpn/cloud/l;

    iget v4, v3, Lcom/sgscq/vpn/cloud/l;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "item_id"

    iget-object v6, v3, Lcom/sgscq/vpn/cloud/l;->b:Ljava/lang/String;

    const-string v7, "item_num"

    iget v15, v3, Lcom/sgscq/vpn/cloud/l;->c:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "num"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "donate"

    iget v14, v3, Lcom/sgscq/vpn/cloud/l;->d:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "exchange_num"

    move-object/from16 v19, v2

    iget v2, v3, Lcom/sgscq/vpn/cloud/l;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-string v17, "exchanged_num"

    iget v0, v3, Lcom/sgscq/vpn/cloud/l;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-string v20, "can_exchange"

    move/from16 v21, v0

    iget-boolean v0, v3, Lcom/sgscq/vpn/cloud/l;->g:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move/from16 v23, v14

    move-object/from16 v14, v16

    move/from16 v24, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v20

    move-object/from16 v18, v22

    filled-new-array/range {v5 .. v18}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "pk_id"

    invoke-static {v6, v4, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Lcom/sgscq/vpn/cloud/l;->b:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "791684"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v25, "item_id"

    iget-object v3, v3, Lcom/sgscq/vpn/cloud/l;->b:Ljava/lang/String;

    const-string v27, "item_num"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const-string v29, "num"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const-string v31, "kind"

    const-string v32, "combo_all"

    const-string v33, "donate"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    const-string v35, "exchange_num"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    const-string v37, "exchanged_num"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    const-string v39, "can_exchange"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v40

    move-object/from16 v26, v3

    filled-new-array/range {v25 .. v40}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v4, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v2, v19

    goto/16 :goto_0

    :cond_1
    iget-object v2, v0, Lcom/sgscq/vpn/battle/a;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v0, v0, Lcom/sgscq/vpn/battle/a;->a:I

    invoke-static {v0, v2, v1}, Lc/e;->r(ILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public static t(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 8

    .line 1
    const-string v0, "union_id"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "unionId"

    .line 11
    .line 12
    :goto_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v2, 0x1

    .line 26
    if-lez v0, :cond_1

    .line 27
    .line 28
    move v0, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v1

    .line 31
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const/16 v4, 0x8

    .line 36
    .line 37
    new-array v4, v4, [Ljava/lang/Object;

    .line 38
    .line 39
    const-string v5, "user_role"

    .line 40
    .line 41
    aput-object v5, v4, v1

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-static {v5}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move v5, v1

    .line 59
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    aput-object v5, v4, v2

    .line 64
    .line 65
    const/4 v2, 0x2

    .line 66
    const-string v5, "union_info"

    .line 67
    .line 68
    aput-object v5, v4, v2

    .line 69
    .line 70
    invoke-static {p0}, Lc/e;->l0(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const/4 v6, 0x3

    .line 75
    aput-object v2, v4, v6

    .line 76
    .line 77
    const/4 v2, 0x4

    .line 78
    const-string v6, "union_log"

    .line 79
    .line 80
    aput-object v6, v4, v2

    .line 81
    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    new-array v1, v1, [Ljava/lang/Object;

    .line 90
    .line 91
    const-string v2, "content"

    .line 92
    .line 93
    const-string v7, "union_log_welcome"

    .line 94
    .line 95
    invoke-static {v2, v7, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    :goto_3
    const/4 v1, 0x5

    .line 109
    aput-object v0, v4, v1

    .line 110
    .line 111
    const/4 v0, 0x6

    .line 112
    const-string v1, "union_list"

    .line 113
    .line 114
    aput-object v1, v4, v0

    .line 115
    .line 116
    invoke-static {p0}, Lc/e;->m0(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    const/4 v0, 0x7

    .line 121
    aput-object p0, v4, v0

    .line 122
    .line 123
    const-string p0, "has_joined"

    .line 124
    .line 125
    invoke-static {p0, v3, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-static {}, Lc/e;->j0()Ljava/util/LinkedHashMap;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const-string v2, "return_info"

    .line 134
    .line 135
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    return-object v0
.end method

.method public static u(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 5

    .line 1
    invoke-static {}, Lc/e;->j0()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {p0}, Lc/e;->n0(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p0

    const-string v1, "info"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v4, "unionWar"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    const-string v1, "return_info"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static v(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "union_id"

    .line 7
    .line 8
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v1, "unionId"

    .line 16
    .line 17
    :goto_0
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v3, 0x1

    .line 31
    if-lez v1, :cond_1

    .line 32
    .line 33
    move v1, v3

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v1, v2

    .line 36
    :goto_1
    if-nez v1, :cond_2

    .line 37
    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_2
    invoke-static {p0}, Lc/e;->d0(Ljava/util/Map;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/16 v4, 0x1c

    .line 45
    .line 46
    new-array v4, v4, [Ljava/lang/Object;

    .line 47
    .line 48
    const-string v5, "user_role"

    .line 49
    .line 50
    aput-object v5, v4, v2

    .line 51
    .line 52
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-static {v5}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    aput-object v5, v4, v3

    .line 69
    .line 70
    const/4 v5, 0x2

    .line 71
    const-string v6, "user_vip_level"

    .line 72
    .line 73
    aput-object v6, v4, v5

    .line 74
    .line 75
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {v5}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    const/4 v6, 0x3

    .line 88
    aput-object v5, v4, v6

    .line 89
    .line 90
    const/4 v5, 0x4

    .line 91
    const-string v6, "fightPoint"

    .line 92
    .line 93
    aput-object v6, v4, v5

    .line 94
    .line 95
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-static {v5}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    const/4 v6, 0x5

    .line 108
    aput-object v5, v4, v6

    .line 109
    .line 110
    const/4 v5, 0x6

    .line 111
    const-string v6, "ladder_rank"

    .line 112
    .line 113
    aput-object v6, v4, v5

    .line 114
    .line 115
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-static {v5}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    const/4 v6, 0x7

    .line 128
    aput-object v5, v4, v6

    .line 129
    .line 130
    const/16 v5, 0x8

    .line 131
    .line 132
    const-string v6, "donationState"

    .line 133
    .line 134
    aput-object v6, v4, v5

    .line 135
    .line 136
    const-string v5, "union_today_donate"

    .line 137
    .line 138
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-static {v6}, Lc/e;->J(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    const/16 v7, 0x9

    .line 151
    .line 152
    aput-object v6, v4, v7

    .line 153
    .line 154
    const/16 v6, 0xa

    .line 155
    .line 156
    const-string v7, "user_nickname"

    .line 157
    .line 158
    aput-object v7, v4, v6

    .line 159
    .line 160
    invoke-static {p0}, Lc/e;->e0(Ljava/util/Map;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    const/16 v7, 0xb

    .line 165
    .line 166
    aput-object v6, v4, v7

    .line 167
    .line 168
    const/16 v6, 0xc

    .line 169
    .line 170
    const-string v7, "user_level"

    .line 171
    .line 172
    aput-object v7, v4, v6

    .line 173
    .line 174
    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-static {v6}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    const/16 v6, 0xd

    .line 191
    .line 192
    aput-object v3, v4, v6

    .line 193
    .line 194
    const/16 v3, 0xe

    .line 195
    .line 196
    const-string v6, "user_donate"

    .line 197
    .line 198
    aput-object v6, v4, v3

    .line 199
    .line 200
    const-string v3, "union_donate_num"

    .line 201
    .line 202
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-static {v3}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    const/16 v6, 0xf

    .line 215
    .line 216
    aput-object v3, v4, v6

    .line 217
    .line 218
    const/16 v3, 0x10

    .line 219
    .line 220
    const-string v6, "user_last_login_time"

    .line 221
    .line 222
    aput-object v6, v4, v3

    .line 223
    .line 224
    invoke-interface {p0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    if-eqz v3, :cond_3

    .line 229
    .line 230
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-static {v3}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    int-to-long v6, v3

    .line 239
    goto :goto_2

    .line 240
    :cond_3
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 241
    .line 242
    .line 243
    move-result-wide v6

    .line 244
    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    const/16 v6, 0x11

    .line 249
    .line 250
    aput-object v3, v4, v6

    .line 251
    .line 252
    const/16 v3, 0x12

    .line 253
    .line 254
    const-string v6, "today_donate_num"

    .line 255
    .line 256
    aput-object v6, v4, v3

    .line 257
    .line 258
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-static {v3}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    const/16 v5, 0x13

    .line 271
    .line 272
    aput-object v3, v4, v5

    .line 273
    .line 274
    const/16 v3, 0x14

    .line 275
    .line 276
    const-string v5, "today_donate_type"

    .line 277
    .line 278
    aput-object v5, v4, v3

    .line 279
    .line 280
    const-string v3, "union_today_donate_type"

    .line 281
    .line 282
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-static {v3}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    const/16 v5, 0x15

    .line 295
    .line 296
    aput-object v3, v4, v5

    .line 297
    .line 298
    const/16 v3, 0x16

    .line 299
    .line 300
    const-string v5, "union_war_sign_up"

    .line 301
    .line 302
    aput-object v5, v4, v3

    .line 303
    .line 304
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    invoke-static {p0}, Lc/e;->J(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result p0

    .line 312
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    const/16 v3, 0x17

    .line 317
    .line 318
    aput-object p0, v4, v3

    .line 319
    .line 320
    const/16 p0, 0x18

    .line 321
    .line 322
    const-string v3, "active"

    .line 323
    .line 324
    aput-object v3, v4, p0

    .line 325
    .line 326
    const/16 p0, 0x19

    .line 327
    .line 328
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    aput-object v3, v4, p0

    .line 333
    .line 334
    const/16 p0, 0x1a

    .line 335
    .line 336
    const-string v3, "uw_join_times"

    .line 337
    .line 338
    aput-object v3, v4, p0

    .line 339
    .line 340
    const/16 p0, 0x1b

    .line 341
    .line 342
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    aput-object v2, v4, p0

    .line 347
    .line 348
    const-string p0, "user_id"

    .line 349
    .line 350
    invoke-static {p0, v1, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 351
    .line 352
    .line 353
    move-result-object p0

    .line 354
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    :goto_3
    const-string p0, "user_list"

    .line 358
    .line 359
    invoke-static {v0, p0}, Lc/e;->r0(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 360
    .line 361
    .line 362
    move-result-object p0

    .line 363
    return-object p0
.end method

.method public static x(Ljava/util/Map;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "union_id"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "unionId"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "union_name"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "unionName"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "union_level"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "union_exp"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "union_notice"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "union_sign"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "user_role"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "union_donate_num"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "union_today_donate"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "union_today_donate_type"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static y(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 10

    .line 1
    const-string v0, "battle_id"

    .line 2
    .line 3
    const-string v1, "1"

    .line 4
    .line 5
    invoke-static {v0, v1, p2}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "pos"

    .line 10
    .line 11
    invoke-static {v3, v1, p2}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v6, "union_war_formations"

    .line 21
    .line 22
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    instance-of v7, v7, Ljava/util/Map;

    .line 27
    .line 28
    if-nez v7, :cond_0

    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_0
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    check-cast v6, Ljava/util/Map;

    .line 36
    .line 37
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-eqz v7, :cond_4

    .line 50
    .line 51
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    check-cast v7, Ljava/util/Map$Entry;

    .line 56
    .line 57
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    instance-of v8, v8, Ljava/util/Map;

    .line 62
    .line 63
    if-nez v8, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    check-cast v8, Ljava/util/Map;

    .line 71
    .line 72
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    if-nez v9, :cond_2

    .line 89
    .line 90
    move-object v9, v1

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    :goto_1
    if-nez v8, :cond_3

    .line 97
    .line 98
    move-object v8, v1

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    :goto_2
    invoke-static {v9, v8}, Lc/e;->L(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    :goto_3
    invoke-interface {v5, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_5

    .line 117
    .line 118
    const-string v1, "union_war_battle_id"

    .line 119
    .line 120
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const-string v6, "union_war_pos"

    .line 125
    .line 126
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-static {p1, p0, v1, v6}, Lc/e;->K(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-interface {v5, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    :cond_5
    if-nez p2, :cond_6

    .line 138
    .line 139
    return-object v5

    .line 140
    :cond_6
    const-string p1, "chg_formation"

    .line 141
    .line 142
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    instance-of p2, p1, Ljava/util/Map;

    .line 147
    .line 148
    if-nez p2, :cond_7

    .line 149
    .line 150
    if-eqz p1, :cond_7

    .line 151
    .line 152
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    const-string v1, "{"

    .line 161
    .line 162
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_8

    .line 167
    .line 168
    invoke-static {p2}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    goto :goto_4

    .line 173
    :cond_7
    const/4 p2, 0x0

    .line 174
    :cond_8
    :goto_4
    instance-of v1, p1, Ljava/util/Map;

    .line 175
    .line 176
    const/4 v6, 0x0

    .line 177
    if-eqz v1, :cond_c

    .line 178
    .line 179
    check-cast p1, Ljava/util/Map;

    .line 180
    .line 181
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_c

    .line 194
    .line 195
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    check-cast v1, Ljava/util/Map$Entry;

    .line 200
    .line 201
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    instance-of v7, v7, Ljava/util/Map;

    .line 206
    .line 207
    if-nez v7, :cond_9

    .line 208
    .line 209
    goto :goto_5

    .line 210
    :cond_9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    check-cast v6, Ljava/util/Map;

    .line 215
    .line 216
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    if-nez v7, :cond_a

    .line 233
    .line 234
    move-object v7, v2

    .line 235
    goto :goto_6

    .line 236
    :cond_a
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    :goto_6
    if-nez v6, :cond_b

    .line 241
    .line 242
    move-object v6, v4

    .line 243
    goto :goto_7

    .line 244
    :cond_b
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    :goto_7
    invoke-static {v7, v6}, Lc/e;->L(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    const/4 v6, 0x1

    .line 256
    goto :goto_5

    .line 257
    :cond_c
    if-eqz p2, :cond_e

    .line 258
    .line 259
    invoke-static {p2, v0}, Lc/e;->Y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-static {p2, v3}, Lc/e;->Y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p2

    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-nez v0, :cond_d

    .line 272
    .line 273
    move-object v2, p1

    .line 274
    :cond_d
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    if-nez p1, :cond_e

    .line 279
    .line 280
    move-object v4, p2

    .line 281
    :cond_e
    if-nez v6, :cond_f

    .line 282
    .line 283
    invoke-static {v2, v4}, Lc/e;->L(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-interface {v5, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    :cond_f
    return-object v5
.end method

.method public static z(ILcom/sgscq/vpn/battle/a;)I
    .locals 4

    .line 1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/sgscq/vpn/battle/a;->b:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sgscq/vpn/cloud/l;

    iget v3, v2, Lcom/sgscq/vpn/cloud/l;->a:I

    if-eq v3, p0, :cond_1

    goto :goto_0

    :cond_1
    iget p0, v2, Lcom/sgscq/vpn/cloud/l;->d:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iget v1, v2, Lcom/sgscq/vpn/cloud/l;->e:I

    iget v2, v2, Lcom/sgscq/vpn/cloud/l;->f:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget p1, p1, Lcom/sgscq/vpn/battle/a;->a:I

    div-int/2addr p1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Lcom/sgscq/vpn/battle/a;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/e;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lm/e;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lm/e;->p(Ljava/lang/String;)Lcom/sgscq/vpn/battle/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p1

    .line 10
    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "[CloudGuild] goods list failed: "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "SGSCQ_SRV"

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Lc/a;->u(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method public final F(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 10

    .line 1
    iget-object v0, p0, Lc/e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "SkillPiece"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v2, "del"

    .line 12
    .line 13
    const-string v3, "upd"

    .line 14
    .line 15
    const-string v4, "add"

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    instance-of v6, v0, Ljava/util/Map;

    .line 25
    .line 26
    if-nez v6, :cond_0

    .line 27
    .line 28
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v6, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    filled-new-array {v3, v0, v4, v6}, [Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v2, p1, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-array v0, v5, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-static {v1, p1, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_0
    check-cast v0, Ljava/util/Map;

    .line 60
    .line 61
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    instance-of v6, v6, Ljava/util/List;

    .line 66
    .line 67
    if-eqz v6, :cond_1

    .line 68
    .line 69
    new-instance v6, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    check-cast v7, Ljava/util/List;

    .line 76
    .line 77
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    :goto_0
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    instance-of v7, v7, Ljava/util/List;

    .line 91
    .line 92
    if-eqz v7, :cond_2

    .line 93
    .line 94
    new-instance v7, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Ljava/util/List;

    .line 101
    .line 102
    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    :goto_1
    invoke-static {v1, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    new-instance v8, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .line 119
    .line 120
    new-instance v9, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    filled-new-array {v3, v9, v4, v0}, [Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v2, v8, v0, p1, v1}, Lc/a;->n(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    filled-new-array {v3, v7, v4, p1}, [Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {v2, v6, p1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    new-array v0, v5, [Ljava/lang/Object;

    .line 142
    .line 143
    invoke-static {v1, p1, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    goto/16 :goto_4

    .line 148
    .line 149
    :cond_3
    const-string v0, "Item"

    .line 150
    .line 151
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    instance-of v6, v1, Ljava/util/Map;

    .line 156
    .line 157
    if-nez v6, :cond_4

    .line 158
    .line 159
    new-instance p1, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .line 163
    .line 164
    new-instance v1, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .line 168
    .line 169
    new-instance v6, Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .line 173
    .line 174
    filled-new-array {v3, v1, v4, v6}, [Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-static {v2, p1, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    new-array v1, v5, [Ljava/lang/Object;

    .line 183
    .line 184
    invoke-static {v0, p1, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    goto :goto_4

    .line 189
    :cond_4
    check-cast v1, Ljava/util/Map;

    .line 190
    .line 191
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    instance-of v6, v6, Ljava/util/List;

    .line 196
    .line 197
    if-eqz v6, :cond_5

    .line 198
    .line 199
    new-instance v6, Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    check-cast v7, Ljava/util/List;

    .line 206
    .line 207
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .line 215
    .line 216
    :goto_2
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    instance-of v7, v7, Ljava/util/List;

    .line 221
    .line 222
    if-eqz v7, :cond_6

    .line 223
    .line 224
    new-instance v7, Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    check-cast v1, Ljava/util/List;

    .line 231
    .line 232
    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 233
    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .line 240
    .line 241
    :goto_3
    invoke-static {v0, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    new-instance v8, Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .line 249
    .line 250
    new-instance v9, Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .line 254
    .line 255
    filled-new-array {v3, v9, v4, v1}, [Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-static {v2, v8, v1, p1, v0}, Lc/a;->n(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    filled-new-array {v3, v7, v4, p1}, [Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-static {v2, v6, p1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    new-array v1, v5, [Ljava/lang/Object;

    .line 272
    .line 273
    invoke-static {v0, p1, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    :goto_4
    return-object p1
.end method

.method public final N(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 46

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    invoke-static/range {p1 .. p1}, Lc/e;->U(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    return-object v4

    .line 15
    :cond_0
    iget-object v3, v1, Lc/e;->a:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, Lcom/sgscq/vpn/handler/k0;

    .line 18
    .line 19
    invoke-virtual {v3, v0}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iget-object v5, v3, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 24
    .line 25
    invoke-virtual {v5, v4}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    if-nez v5, :cond_1

    .line 30
    .line 31
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v6, v1, Lc/e;->b:Ljava/lang/Object;

    .line 37
    .line 38
    move-object v7, v6

    .line 39
    check-cast v7, Lm/e;

    .line 40
    .line 41
    if-eqz v7, :cond_2

    .line 42
    .line 43
    invoke-virtual {v7, v4}, Lm/e;->w(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-eqz v8, :cond_2

    .line 48
    .line 49
    const/4 v8, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v8, 0x0

    .line 52
    :goto_0
    if-eqz v7, :cond_3

    .line 53
    .line 54
    const/4 v9, 0x1

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    const/4 v9, 0x0

    .line 57
    :goto_1
    if-eqz v9, :cond_4

    .line 58
    .line 59
    if-eqz v8, :cond_4

    .line 60
    .line 61
    const/4 v8, 0x1

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    const/4 v8, 0x0

    .line 64
    :goto_2
    const-string v9, "union.allotDepot"

    .line 65
    .line 66
    const-string v10, "pk_id"

    .line 67
    .line 68
    const-string v11, "union.getUnionActiveList"

    .line 69
    .line 70
    const-string v12, "union.exchangeGoods"

    .line 71
    .line 72
    const-string v13, "union.donate"

    .line 73
    .line 74
    const-string v14, "union.donateInfo"

    .line 75
    .line 76
    const-string v15, "depot_list"

    .line 77
    .line 78
    move-object/from16 v16, v3

    .line 79
    .line 80
    const-string v3, "union.getGoodsList"

    .line 81
    .line 82
    move-object/from16 v17, v9

    .line 83
    .line 84
    const-string v9, "union.getDepotList"

    .line 85
    .line 86
    move-object/from16 v18, v11

    .line 87
    .line 88
    const-string v11, "cmn"

    .line 89
    .line 90
    const-string v19, "\u672a\u52a0\u5165\u516c\u4f1a"

    .line 91
    .line 92
    move-object/from16 v20, v11

    .line 93
    .line 94
    const-string v11, "union_id"

    .line 95
    .line 96
    const/16 v21, 0x7

    .line 97
    .line 98
    move-object/from16 v22, v10

    .line 99
    .line 100
    const-string v10, "delta_data"

    .line 101
    .line 102
    move-object/from16 v23, v10

    .line 103
    .line 104
    const-string v10, "union_donate_num"

    .line 105
    .line 106
    move-object/from16 v24, v12

    .line 107
    .line 108
    const-string v12, ""

    .line 109
    .line 110
    move-object/from16 v25, v13

    .line 111
    .line 112
    const-string v13, "union.manage"

    .line 113
    .line 114
    move-object/from16 v26, v14

    .line 115
    .line 116
    const-string v14, "0"

    .line 117
    .line 118
    move-object/from16 v27, v10

    .line 119
    .line 120
    const-string v10, "union.apply"

    .line 121
    .line 122
    move-object/from16 v28, v3

    .line 123
    .line 124
    const-string v3, "notice"

    .line 125
    .line 126
    move-object/from16 v29, v15

    .line 127
    .line 128
    const-string v15, "union.create"

    .line 129
    .line 130
    move-object/from16 v30, v9

    .line 131
    .line 132
    const-string v9, "union.applyList"

    .line 133
    .line 134
    const-string v1, "union.userList"

    .line 135
    .line 136
    move-object/from16 v31, v13

    .line 137
    .line 138
    const-string v13, "union.rankList"

    .line 139
    .line 140
    move-object/from16 v32, v11

    .line 141
    .line 142
    const-string v11, "union.info"

    .line 143
    .line 144
    move-object/from16 v33, v14

    .line 145
    .line 146
    const-string v14, "1"

    .line 147
    .line 148
    move-object/from16 v34, v14

    .line 149
    .line 150
    const-string v14, "Player"

    .line 151
    .line 152
    move-object/from16 v35, v14

    .line 153
    .line 154
    const-string v14, "union_sign"

    .line 155
    .line 156
    move-object/from16 v36, v10

    .line 157
    .line 158
    const-string v10, "union_name"

    .line 159
    .line 160
    move-object/from16 v37, v3

    .line 161
    .line 162
    const-string v3, "cmn_modules"

    .line 163
    .line 164
    if-eqz v8, :cond_2d

    .line 165
    .line 166
    const-string v8, "data_id"

    .line 167
    .line 168
    invoke-virtual {v7, v4}, Lm/e;->w(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    if-nez v7, :cond_6

    .line 173
    .line 174
    invoke-static {v5}, Lc/e;->x(Ljava/util/Map;)V

    .line 175
    .line 176
    .line 177
    invoke-static/range {p1 .. p1}, Lc/e;->R(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_5

    .line 182
    .line 183
    invoke-static/range {p1 .. p1}, Lc/e;->H(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    goto/16 :goto_e

    .line 188
    .line 189
    :cond_5
    const-string v0, "\u53ea\u6709\u5f53\u524d\u4e91\u7aef\u89d2\u8272\u53ef\u4ee5\u4f7f\u7528\u516c\u4f1a\u529f\u80fd"

    .line 190
    .line 191
    invoke-static {v0}, Lc/e;->I(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    goto/16 :goto_e

    .line 196
    .line 197
    :cond_6
    :try_start_0
    move-object v7, v6

    .line 198
    check-cast v7, Lm/e;

    .line 199
    .line 200
    invoke-virtual {v7, v4}, Lm/e;->s(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/g;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    invoke-static {v5, v7}, Lc/e;->l(Ljava/util/Map;Lcom/sgscq/vpn/cloud/g;)Z

    .line 205
    .line 206
    .line 207
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v11

    .line 211
    if-eqz v11, :cond_7

    .line 212
    .line 213
    check-cast v6, Lm/e;

    .line 214
    .line 215
    invoke-static {v10, v12, v0}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {v6, v4, v0}, Lm/e;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    goto/16 :goto_5

    .line 228
    .line 229
    :cond_7
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v11

    .line 233
    if-eqz v11, :cond_8

    .line 234
    .line 235
    const-string v0, "rank_list"

    .line 236
    .line 237
    check-cast v6, Lm/e;

    .line 238
    .line 239
    invoke-virtual {v6, v4, v12}, Lm/e;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-static {v1}, Lm/e;->L(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    goto/16 :goto_c

    .line 248
    .line 249
    :cond_8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 253
    const-string v11, "user_list"

    .line 254
    .line 255
    iget-object v13, v7, Lcom/sgscq/vpn/cloud/g;->c:Ljava/lang/Object;

    .line 256
    .line 257
    if-eqz v1, :cond_a

    .line 258
    .line 259
    :try_start_1
    check-cast v13, Lcom/sgscq/vpn/cloud/m;

    .line 260
    .line 261
    if-nez v13, :cond_9

    .line 262
    .line 263
    new-instance v0, Ljava/util/ArrayList;

    .line 264
    .line 265
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .line 267
    .line 268
    goto/16 :goto_a

    .line 269
    .line 270
    :cond_9
    check-cast v6, Lm/e;

    .line 271
    .line 272
    goto/16 :goto_9

    .line 273
    .line 274
    :cond_a
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    if-eqz v1, :cond_c

    .line 279
    .line 280
    check-cast v13, Lcom/sgscq/vpn/cloud/m;

    .line 281
    .line 282
    if-nez v13, :cond_b

    .line 283
    .line 284
    new-instance v0, Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .line 288
    .line 289
    goto :goto_3

    .line 290
    :cond_b
    check-cast v6, Lm/e;

    .line 291
    .line 292
    invoke-virtual {v6, v4}, Lm/e;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    :goto_3
    invoke-static {}, Lc/e;->j0()Ljava/util/LinkedHashMap;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    const-string v3, "return_info"

    .line 301
    .line 302
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    const-string v3, "apply_list"

    .line 306
    .line 307
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-object v0, v1

    .line 311
    goto/16 :goto_e

    .line 312
    .line 313
    :cond_c
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    if-eqz v1, :cond_d

    .line 318
    .line 319
    move-object v1, v6

    .line 320
    check-cast v1, Lm/e;

    .line 321
    .line 322
    invoke-static {v10, v12, v0}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v7

    .line 326
    invoke-static {v14, v12, v0}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v8

    .line 330
    move-object/from16 v9, v37

    .line 331
    .line 332
    invoke-static {v9, v12, v0}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-virtual {v1, v4, v7, v8, v0}, Lm/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/cloud/g;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-static {v5, v0}, Lc/e;->l(Ljava/util/Map;Lcom/sgscq/vpn/cloud/g;)Z

    .line 341
    .line 342
    .line 343
    check-cast v6, Lm/e;

    .line 344
    .line 345
    invoke-virtual {v6, v4, v12}, Lm/e;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    :goto_4
    invoke-static {v0, v1}, Lc/e;->C(Lcom/sgscq/vpn/cloud/g;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    goto/16 :goto_d

    .line 354
    .line 355
    :cond_d
    move-object/from16 v1, v36

    .line 356
    .line 357
    move-object/from16 v9, v37

    .line 358
    .line 359
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 363
    const-string v10, "POST"

    .line 364
    .line 365
    if-eqz v1, :cond_e

    .line 366
    .line 367
    :try_start_2
    move-object v1, v6

    .line 368
    check-cast v1, Lm/e;

    .line 369
    .line 370
    move-object/from16 v8, v32

    .line 371
    .line 372
    move-object/from16 v15, v33

    .line 373
    .line 374
    invoke-static {v8, v15, v0}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-static {v0}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    invoke-virtual {v1, v4}, Lm/e;->E(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    iget-object v1, v1, Lm/e;->b:Ljava/lang/Object;

    .line 386
    .line 387
    check-cast v1, Lcom/sgscq/vpn/cloud/z;

    .line 388
    .line 389
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 390
    .line 391
    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    const-string v8, "/social/guilds/"

    .line 395
    .line 396
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    const-string v0, "/applications"

    .line 403
    .line 404
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    const-string v3, "{}"

    .line 412
    .line 413
    invoke-virtual {v1, v0, v3}, Lcom/sgscq/vpn/cloud/z;->Z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    check-cast v6, Lm/e;

    .line 417
    .line 418
    invoke-virtual {v6, v4, v12}, Lm/e;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    :goto_5
    invoke-static {v7, v0}, Lc/e;->C(Lcom/sgscq/vpn/cloud/g;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    goto/16 :goto_e

    .line 427
    .line 428
    :cond_e
    move-object/from16 v1, v31

    .line 429
    .line 430
    move-object/from16 v15, v33

    .line 431
    .line 432
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result v1

    .line 436
    if-eqz v1, :cond_16

    .line 437
    .line 438
    const-string v1, "type"

    .line 439
    .line 440
    invoke-static {v1, v15, v0}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    invoke-static {v1}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    const-string v3, "target_id"

    .line 449
    .line 450
    invoke-static {v3, v12, v0}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    const/4 v3, 0x6

    .line 455
    const/4 v7, 0x1

    .line 456
    if-ne v1, v7, :cond_f

    .line 457
    .line 458
    move-object v7, v6

    .line 459
    check-cast v7, Lm/e;

    .line 460
    .line 461
    const-string v8, "leader"

    .line 462
    .line 463
    goto :goto_6

    .line 464
    :cond_f
    const/4 v7, 0x2

    .line 465
    if-ne v1, v7, :cond_10

    .line 466
    .line 467
    move-object v7, v6

    .line 468
    check-cast v7, Lm/e;

    .line 469
    .line 470
    const-string v8, "deputy"

    .line 471
    .line 472
    goto :goto_6

    .line 473
    :cond_10
    const/4 v7, 0x3

    .line 474
    if-ne v1, v7, :cond_11

    .line 475
    .line 476
    move-object v7, v6

    .line 477
    check-cast v7, Lm/e;

    .line 478
    .line 479
    const-string v8, "member"

    .line 480
    .line 481
    :goto_6
    invoke-virtual {v7, v4}, Lm/e;->E(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    iget-object v7, v7, Lm/e;->b:Ljava/lang/Object;

    .line 485
    .line 486
    check-cast v7, Lcom/sgscq/vpn/cloud/z;

    .line 487
    .line 488
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    .line 490
    .line 491
    new-instance v9, Ljava/lang/StringBuilder;

    .line 492
    .line 493
    const-string v10, "/social/guild/members/"

    .line 494
    .line 495
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/z;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    const-string v0, "/role"

    .line 506
    .line 507
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    const-string v9, "role"

    .line 515
    .line 516
    invoke-static {v9, v8}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 517
    .line 518
    .line 519
    move-result-object v8

    .line 520
    const-string v9, "POST"

    .line 521
    .line 522
    invoke-virtual {v7, v9, v0, v8}, Lcom/sgscq/vpn/cloud/z;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    const-string v7, "membership"

    .line 535
    .line 536
    invoke-static {v0, v7}, Lcom/sgscq/vpn/cloud/z;->g(La/t;Ljava/lang/String;)La/t;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/z;->G(La/t;)Lcom/sgscq/vpn/cloud/o;

    .line 541
    .line 542
    .line 543
    goto :goto_8

    .line 544
    :cond_11
    const/4 v7, 0x4

    .line 545
    if-ne v1, v7, :cond_12

    .line 546
    .line 547
    move-object v7, v6

    .line 548
    check-cast v7, Lm/e;

    .line 549
    .line 550
    invoke-virtual {v7, v4, v0}, Lm/e;->B(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    goto :goto_8

    .line 554
    :cond_12
    const/4 v7, 0x5

    .line 555
    if-ne v1, v7, :cond_13

    .line 556
    .line 557
    move-object v7, v6

    .line 558
    check-cast v7, Lm/e;

    .line 559
    .line 560
    const/4 v8, 0x1

    .line 561
    goto :goto_7

    .line 562
    :cond_13
    if-ne v1, v3, :cond_14

    .line 563
    .line 564
    move-object v7, v6

    .line 565
    check-cast v7, Lm/e;

    .line 566
    .line 567
    const/4 v8, 0x0

    .line 568
    :goto_7
    invoke-virtual {v7, v4, v0, v8}, Lm/e;->D(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 569
    .line 570
    .line 571
    :cond_14
    :goto_8
    move-object v0, v6

    .line 572
    check-cast v0, Lm/e;

    .line 573
    .line 574
    invoke-virtual {v0, v4}, Lm/e;->s(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/g;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    invoke-static {v5, v0}, Lc/e;->l(Ljava/util/Map;Lcom/sgscq/vpn/cloud/g;)Z

    .line 579
    .line 580
    .line 581
    const/4 v0, 0x5

    .line 582
    if-eq v1, v0, :cond_15

    .line 583
    .line 584
    if-ne v1, v3, :cond_9

    .line 585
    .line 586
    goto :goto_b

    .line 587
    :goto_9
    invoke-virtual {v6, v4}, Lm/e;->r(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    :goto_a
    invoke-static {v0, v11}, Lc/e;->r0(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    goto/16 :goto_e

    .line 596
    .line 597
    :cond_15
    :goto_b
    const-string v0, "apply_list"

    .line 598
    .line 599
    check-cast v6, Lm/e;

    .line 600
    .line 601
    invoke-virtual {v6, v4}, Lm/e;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    :goto_c
    invoke-static {v1, v0}, Lc/e;->r0(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    goto/16 :goto_e

    .line 610
    .line 611
    :cond_16
    const-string v1, "union.chgNotice"

    .line 612
    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    move-result v1

    .line 617
    if-eqz v1, :cond_17

    .line 618
    .line 619
    move-object v1, v6

    .line 620
    check-cast v1, Lm/e;

    .line 621
    .line 622
    invoke-static {v9, v12, v0}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v3

    .line 626
    const/4 v7, 0x0

    .line 627
    invoke-virtual {v1, v4, v3, v7}, Lm/e;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    check-cast v6, Lm/e;

    .line 631
    .line 632
    invoke-virtual {v6, v4}, Lm/e;->s(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/g;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    invoke-static {v5, v1}, Lc/e;->l(Ljava/util/Map;Lcom/sgscq/vpn/cloud/g;)Z

    .line 637
    .line 638
    .line 639
    invoke-static {v5, v0}, Lc/e;->h(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    goto :goto_e

    .line 644
    :cond_17
    const-string v1, "union.chgSign"

    .line 645
    .line 646
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    move-result v1

    .line 650
    if-eqz v1, :cond_18

    .line 651
    .line 652
    move-object v1, v6

    .line 653
    check-cast v1, Lm/e;

    .line 654
    .line 655
    invoke-static {v14, v12, v0}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v3

    .line 659
    const/4 v7, 0x0

    .line 660
    invoke-virtual {v1, v4, v7, v3}, Lm/e;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    check-cast v6, Lm/e;

    .line 664
    .line 665
    invoke-virtual {v6, v4}, Lm/e;->s(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/g;

    .line 666
    .line 667
    .line 668
    move-result-object v1

    .line 669
    invoke-static {v5, v1}, Lc/e;->l(Ljava/util/Map;Lcom/sgscq/vpn/cloud/g;)Z

    .line 670
    .line 671
    .line 672
    invoke-static {v5, v0}, Lc/e;->j(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    goto :goto_e

    .line 677
    :cond_18
    const-string v1, "union.quite"

    .line 678
    .line 679
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 680
    .line 681
    .line 682
    move-result v1

    .line 683
    if-eqz v1, :cond_19

    .line 684
    .line 685
    move-object v0, v6

    .line 686
    check-cast v0, Lm/e;

    .line 687
    .line 688
    invoke-virtual {v0, v4}, Lm/e;->E(Ljava/lang/String;)V

    .line 689
    .line 690
    .line 691
    iget-object v0, v0, Lm/e;->b:Ljava/lang/Object;

    .line 692
    .line 693
    move-object/from16 v24, v0

    .line 694
    .line 695
    check-cast v24, Lcom/sgscq/vpn/cloud/z;

    .line 696
    .line 697
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 698
    .line 699
    .line 700
    const-string v25, "DELETE"

    .line 701
    .line 702
    const-string v26, "/social/guild"

    .line 703
    .line 704
    const/16 v27, 0x0

    .line 705
    .line 706
    const-string v28, "application/json"

    .line 707
    .line 708
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 709
    .line 710
    .line 711
    move-result-object v29

    .line 712
    invoke-virtual/range {v24 .. v29}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 713
    .line 714
    .line 715
    invoke-static {v5}, Lc/e;->x(Ljava/util/Map;)V

    .line 716
    .line 717
    .line 718
    new-instance v0, Lcom/sgscq/vpn/cloud/g;

    .line 719
    .line 720
    invoke-direct {v0}, Lcom/sgscq/vpn/cloud/g;-><init>()V

    .line 721
    .line 722
    .line 723
    check-cast v6, Lm/e;

    .line 724
    .line 725
    invoke-virtual {v6, v4, v12}, Lm/e;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 726
    .line 727
    .line 728
    move-result-object v1

    .line 729
    goto/16 :goto_4

    .line 730
    .line 731
    :goto_d
    move-object/from16 v1, v35

    .line 732
    .line 733
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    goto :goto_e

    .line 737
    :cond_19
    move-object/from16 v1, v35

    .line 738
    .line 739
    check-cast v13, Lcom/sgscq/vpn/cloud/m;

    .line 740
    .line 741
    if-nez v13, :cond_1a

    .line 742
    .line 743
    invoke-static/range {v19 .. v19}, Lc/e;->I(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 744
    .line 745
    .line 746
    move-result-object v0

    .line 747
    :goto_e
    move-object/from16 v9, p0

    .line 748
    .line 749
    :goto_f
    move-object/from16 v1, v23

    .line 750
    .line 751
    goto/16 :goto_15

    .line 752
    .line 753
    :cond_1a
    invoke-static/range {p1 .. p1}, Lc/e;->V(Ljava/lang/String;)Z

    .line 754
    .line 755
    .line 756
    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 757
    if-eqz v9, :cond_1b

    .line 758
    .line 759
    move-object/from16 v9, p0

    .line 760
    .line 761
    :try_start_3
    invoke-virtual {v9, v2, v4, v5, v0}, Lc/e;->P(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    goto :goto_f

    .line 766
    :cond_1b
    move-object/from16 v9, p0

    .line 767
    .line 768
    move-object/from16 v11, v30

    .line 769
    .line 770
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 771
    .line 772
    .line 773
    move-result v11

    .line 774
    if-eqz v11, :cond_1c

    .line 775
    .line 776
    invoke-static {}, Lc/e;->E()Ljava/util/ArrayList;

    .line 777
    .line 778
    .line 779
    move-result-object v0

    .line 780
    move-object/from16 v6, v29

    .line 781
    .line 782
    invoke-static {v0, v6}, Lc/e;->r0(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    goto :goto_f

    .line 787
    :cond_1c
    move-object/from16 v11, v28

    .line 788
    .line 789
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 790
    .line 791
    .line 792
    move-result v11

    .line 793
    if-eqz v11, :cond_1d

    .line 794
    .line 795
    check-cast v6, Lm/e;

    .line 796
    .line 797
    invoke-virtual {v6, v4}, Lm/e;->p(Ljava/lang/String;)Lcom/sgscq/vpn/battle/a;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    iget v1, v0, Lcom/sgscq/vpn/battle/a;->a:I

    .line 802
    .line 803
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 804
    .line 805
    .line 806
    move-result-object v1

    .line 807
    move-object/from16 v7, v27

    .line 808
    .line 809
    invoke-interface {v5, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    invoke-static {v0}, Lc/e;->s(Lcom/sgscq/vpn/battle/a;)Ljava/util/LinkedHashMap;

    .line 813
    .line 814
    .line 815
    move-result-object v0

    .line 816
    goto :goto_f

    .line 817
    :cond_1d
    move-object/from16 v11, v26

    .line 818
    .line 819
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 820
    .line 821
    .line 822
    move-result v11

    .line 823
    if-eqz v11, :cond_1e

    .line 824
    .line 825
    invoke-static {v5}, Lc/e;->q(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 826
    .line 827
    .line 828
    move-result-object v0

    .line 829
    goto :goto_f

    .line 830
    :cond_1e
    move-object/from16 v11, v25

    .line 831
    .line 832
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 833
    .line 834
    .line 835
    move-result v11

    .line 836
    if-eqz v11, :cond_20

    .line 837
    .line 838
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 839
    .line 840
    invoke-direct {v7, v5}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 841
    .line 842
    .line 843
    invoke-static {v7, v0}, Lc/e;->m(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 844
    .line 845
    .line 846
    move-result-object v7

    .line 847
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 848
    .line 849
    const-string v12, "result"

    .line 850
    .line 851
    invoke-virtual {v7, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    move-result-object v12

    .line 855
    invoke-virtual {v11, v12}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 856
    .line 857
    .line 858
    move-result v11

    .line 859
    if-nez v11, :cond_1f

    .line 860
    .line 861
    move-object v0, v7

    .line 862
    goto :goto_f

    .line 863
    :cond_1f
    move-object/from16 v7, v34

    .line 864
    .line 865
    invoke-static {v8, v7, v0}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v7

    .line 869
    invoke-static {v7}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 870
    .line 871
    .line 872
    move-result v7

    .line 873
    check-cast v6, Lm/e;

    .line 874
    .line 875
    invoke-virtual {v6, v4}, Lm/e;->E(Ljava/lang/String;)V

    .line 876
    .line 877
    .line 878
    iget-object v6, v6, Lm/e;->b:Ljava/lang/Object;

    .line 879
    .line 880
    check-cast v6, Lcom/sgscq/vpn/cloud/z;

    .line 881
    .line 882
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 883
    .line 884
    .line 885
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 886
    .line 887
    .line 888
    move-result-object v11

    .line 889
    invoke-static {v8, v11}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 890
    .line 891
    .line 892
    move-result-object v8

    .line 893
    const-string v11, "/social/guild/donations"

    .line 894
    .line 895
    invoke-virtual {v6, v10, v11, v8}, Lcom/sgscq/vpn/cloud/z;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 896
    .line 897
    .line 898
    move-result-object v6

    .line 899
    invoke-virtual {v6}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 900
    .line 901
    .line 902
    move-result-object v6

    .line 903
    invoke-static {v6}, Lcom/sgscq/vpn/cloud/z;->E(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/g;

    .line 904
    .line 905
    .line 906
    move-result-object v6

    .line 907
    invoke-static {v5, v0}, Lc/e;->m(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 908
    .line 909
    .line 910
    invoke-static {v5, v6}, Lc/e;->l(Ljava/util/Map;Lcom/sgscq/vpn/cloud/g;)Z

    .line 911
    .line 912
    .line 913
    invoke-static {v5}, Lc/e;->q(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 914
    .line 915
    .line 916
    move-result-object v0

    .line 917
    const-string v6, "donate_id"

    .line 918
    .line 919
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 920
    .line 921
    .line 922
    move-result-object v7

    .line 923
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    .line 925
    .line 926
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    .line 928
    .line 929
    goto/16 :goto_f

    .line 930
    .line 931
    :cond_20
    move-object/from16 v1, v24

    .line 932
    .line 933
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 934
    .line 935
    .line 936
    move-result v1

    .line 937
    if-eqz v1, :cond_27

    .line 938
    .line 939
    move-object/from16 v1, v22

    .line 940
    .line 941
    invoke-static {v1, v15, v0}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 942
    .line 943
    .line 944
    move-result-object v0

    .line 945
    invoke-static {v0}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 946
    .line 947
    .line 948
    move-result v0

    .line 949
    invoke-virtual {v9, v4}, Lc/e;->A(Ljava/lang/String;)Lcom/sgscq/vpn/battle/a;

    .line 950
    .line 951
    .line 952
    move-result-object v1

    .line 953
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v3

    .line 957
    sget-object v7, Lcom/sgscq/vpn/handler/j0;->a:Ljava/util/List;

    .line 958
    .line 959
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 960
    .line 961
    .line 962
    move-result-object v7

    .line 963
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 964
    .line 965
    .line 966
    move-result v3

    .line 967
    if-nez v3, :cond_21

    .line 968
    .line 969
    move v1, v0

    .line 970
    goto :goto_11

    .line 971
    :cond_21
    if-eqz v1, :cond_24

    .line 972
    .line 973
    iget-object v1, v1, Lcom/sgscq/vpn/battle/a;->b:Ljava/util/List;

    .line 974
    .line 975
    if-nez v1, :cond_22

    .line 976
    .line 977
    goto :goto_10

    .line 978
    :cond_22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 979
    .line 980
    .line 981
    move-result-object v1

    .line 982
    :cond_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 983
    .line 984
    .line 985
    move-result v3

    .line 986
    if-eqz v3, :cond_24

    .line 987
    .line 988
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 989
    .line 990
    .line 991
    move-result-object v3

    .line 992
    check-cast v3, Lcom/sgscq/vpn/cloud/l;

    .line 993
    .line 994
    iget-object v7, v3, Lcom/sgscq/vpn/cloud/l;->b:Ljava/lang/String;

    .line 995
    .line 996
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v7

    .line 1000
    const-string v8, "791684"

    .line 1001
    .line 1002
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1003
    .line 1004
    .line 1005
    move-result v7

    .line 1006
    if-eqz v7, :cond_23

    .line 1007
    .line 1008
    iget v1, v3, Lcom/sgscq/vpn/cloud/l;->a:I

    .line 1009
    .line 1010
    goto :goto_11

    .line 1011
    :cond_24
    :goto_10
    const/4 v1, 0x0

    .line 1012
    :goto_11
    if-gtz v1, :cond_25

    .line 1013
    .line 1014
    const-string v0, "\u516c\u4f1a\u5546\u54c1\u4e0d\u5b58\u5728"

    .line 1015
    .line 1016
    invoke-static {v0}, Lc/e;->I(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v0

    .line 1020
    goto/16 :goto_f

    .line 1021
    .line 1022
    :cond_25
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v0

    .line 1026
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v3

    .line 1030
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1031
    .line 1032
    .line 1033
    move-result v0

    .line 1034
    if-eqz v0, :cond_26

    .line 1035
    .line 1036
    invoke-virtual {v9, v4}, Lc/e;->A(Ljava/lang/String;)Lcom/sgscq/vpn/battle/a;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v0

    .line 1040
    invoke-static {v1, v0}, Lc/e;->z(ILcom/sgscq/vpn/battle/a;)I

    .line 1041
    .line 1042
    .line 1043
    move-result v0

    .line 1044
    goto :goto_12

    .line 1045
    :cond_26
    const/4 v0, 0x1

    .line 1046
    :goto_12
    check-cast v6, Lm/e;

    .line 1047
    .line 1048
    invoke-virtual {v6, v1, v0, v4}, Lm/e;->f(IILjava/lang/String;)Lcom/sgscq/vpn/cloud/k;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v0

    .line 1052
    invoke-static {v5, v0}, Lc/e;->k(Ljava/util/Map;Lcom/sgscq/vpn/cloud/k;)Ljava/util/LinkedHashMap;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v0

    .line 1056
    goto/16 :goto_f

    .line 1057
    .line 1058
    :cond_27
    move-object/from16 v1, v18

    .line 1059
    .line 1060
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1061
    .line 1062
    .line 1063
    move-result v1

    .line 1064
    if-eqz v1, :cond_28

    .line 1065
    .line 1066
    const-string v0, "active_list"

    .line 1067
    .line 1068
    invoke-static {}, Lc/e;->e()Ljava/util/ArrayList;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v1

    .line 1072
    invoke-static {v1, v0}, Lc/e;->r0(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v0

    .line 1076
    goto/16 :goto_f

    .line 1077
    .line 1078
    :cond_28
    move-object/from16 v1, v17

    .line 1079
    .line 1080
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1081
    .line 1082
    .line 1083
    move-result v1

    .line 1084
    if-eqz v1, :cond_29

    .line 1085
    .line 1086
    invoke-static {v5, v0}, Lc/e;->f(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v0

    .line 1090
    goto/16 :goto_f

    .line 1091
    .line 1092
    :cond_29
    check-cast v6, Lm/e;

    .line 1093
    .line 1094
    invoke-virtual {v6, v4, v12}, Lm/e;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v0

    .line 1098
    invoke-static {v7, v0}, Lc/e;->C(Lcom/sgscq/vpn/cloud/g;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1102
    goto/16 :goto_f

    .line 1103
    .line 1104
    :catch_0
    move-exception v0

    .line 1105
    goto :goto_13

    .line 1106
    :catch_1
    move-exception v0

    .line 1107
    move-object/from16 v9, p0

    .line 1108
    .line 1109
    :goto_13
    const-string v1, "[CloudGuild] "

    .line 1110
    .line 1111
    const-string v3, " failed: "

    .line 1112
    .line 1113
    invoke-static {v1, v2, v3}, La/b0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v1

    .line 1117
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v3

    .line 1121
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v1

    .line 1128
    const-string v3, "SGSCQ_SRV"

    .line 1129
    .line 1130
    invoke-static {v3, v1}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    .line 1132
    .line 1133
    invoke-static/range {p1 .. p1}, Lc/e;->R(Ljava/lang/String;)Z

    .line 1134
    .line 1135
    .line 1136
    move-result v1

    .line 1137
    if-eqz v1, :cond_2a

    .line 1138
    .line 1139
    invoke-static/range {p1 .. p1}, Lc/e;->H(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v0

    .line 1143
    goto/16 :goto_f

    .line 1144
    .line 1145
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v1

    .line 1149
    if-nez v1, :cond_2b

    .line 1150
    .line 1151
    const-string v0, "\u4e91\u7aef\u516c\u4f1a\u529f\u80fd\u6682\u65f6\u4e0d\u53ef\u7528"

    .line 1152
    .line 1153
    goto :goto_14

    .line 1154
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v0

    .line 1158
    :goto_14
    invoke-static {v0}, Lc/e;->I(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v0

    .line 1162
    goto/16 :goto_f

    .line 1163
    .line 1164
    :goto_15
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v1

    .line 1168
    instance-of v2, v1, Ljava/util/Map;

    .line 1169
    .line 1170
    if-eqz v2, :cond_2c

    .line 1171
    .line 1172
    check-cast v1, Ljava/util/Map;

    .line 1173
    .line 1174
    goto :goto_16

    .line 1175
    :cond_2c
    move-object v1, v5

    .line 1176
    :goto_16
    invoke-static {v0}, Lc/e;->D(Ljava/util/LinkedHashMap;)[Ljava/lang/String;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v2

    .line 1180
    invoke-virtual {v9, v4, v1, v5, v2}, Lc/e;->p(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v1

    .line 1184
    move-object/from16 v2, v20

    .line 1185
    .line 1186
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    .line 1188
    .line 1189
    move-object/from16 v1, v16

    .line 1190
    .line 1191
    iget-object v2, v1, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1192
    .line 1193
    invoke-virtual {v2, v4, v5}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 1194
    .line 1195
    .line 1196
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v0

    .line 1200
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 1201
    .line 1202
    .line 1203
    move-result-object v0

    .line 1204
    return-object v0

    .line 1205
    :cond_2d
    move-object/from16 v38, v20

    .line 1206
    .line 1207
    move-object/from16 v39, v23

    .line 1208
    .line 1209
    move-object/from16 v7, v27

    .line 1210
    .line 1211
    move-object/from16 v6, v29

    .line 1212
    .line 1213
    move-object/from16 v40, v31

    .line 1214
    .line 1215
    move-object/from16 v8, v32

    .line 1216
    .line 1217
    move-object/from16 v41, v33

    .line 1218
    .line 1219
    move-object/from16 v43, v34

    .line 1220
    .line 1221
    move-object/from16 v44, v35

    .line 1222
    .line 1223
    move-object/from16 v42, v37

    .line 1224
    .line 1225
    move-object/from16 v20, v10

    .line 1226
    .line 1227
    move-object/from16 v23, v17

    .line 1228
    .line 1229
    move-object/from16 v27, v24

    .line 1230
    .line 1231
    move-object/from16 v10, v28

    .line 1232
    .line 1233
    move-object/from16 v17, v15

    .line 1234
    .line 1235
    move-object/from16 v24, v18

    .line 1236
    .line 1237
    move-object/from16 v15, v26

    .line 1238
    .line 1239
    move-object/from16 v18, v14

    .line 1240
    .line 1241
    move-object/from16 v26, v22

    .line 1242
    .line 1243
    move-object v14, v1

    .line 1244
    move-object/from16 v22, v12

    .line 1245
    .line 1246
    move-object/from16 v1, v25

    .line 1247
    .line 1248
    move-object/from16 v25, v3

    .line 1249
    .line 1250
    move-object/from16 v3, v30

    .line 1251
    .line 1252
    move-object/from16 v45, v16

    .line 1253
    .line 1254
    move-object/from16 v16, v11

    .line 1255
    .line 1256
    move-object/from16 v11, v45

    .line 1257
    .line 1258
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v12

    .line 1262
    invoke-static {v12, v5}, Lc/e;->f0(Ljava/lang/String;Ljava/util/Map;)Z

    .line 1263
    .line 1264
    .line 1265
    move-result v12

    .line 1266
    if-eqz v12, :cond_2e

    .line 1267
    .line 1268
    iget-object v12, v11, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1269
    .line 1270
    invoke-virtual {v12, v4, v5}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 1271
    .line 1272
    .line 1273
    :cond_2e
    invoke-static/range {p1 .. p1}, Lc/e;->V(Ljava/lang/String;)Z

    .line 1274
    .line 1275
    .line 1276
    move-result v12

    .line 1277
    move-object/from16 v28, v4

    .line 1278
    .line 1279
    const-string v4, "unionId"

    .line 1280
    .line 1281
    if-eqz v12, :cond_32

    .line 1282
    .line 1283
    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1284
    .line 1285
    .line 1286
    move-result v1

    .line 1287
    if-eqz v1, :cond_2f

    .line 1288
    .line 1289
    move-object v4, v8

    .line 1290
    :cond_2f
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v1

    .line 1294
    invoke-static {v1}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 1295
    .line 1296
    .line 1297
    move-result v1

    .line 1298
    const/4 v3, 0x0

    .line 1299
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 1300
    .line 1301
    .line 1302
    move-result v1

    .line 1303
    if-lez v1, :cond_30

    .line 1304
    .line 1305
    const/4 v1, 0x1

    .line 1306
    goto :goto_17

    .line 1307
    :cond_30
    const/4 v1, 0x0

    .line 1308
    :goto_17
    if-nez v1, :cond_31

    .line 1309
    .line 1310
    invoke-static/range {v19 .. v19}, Lc/e;->I(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v0

    .line 1314
    goto :goto_19

    .line 1315
    :cond_31
    invoke-static {v2, v5, v0}, Lc/e;->Q(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v0

    .line 1319
    goto/16 :goto_1c

    .line 1320
    .line 1321
    :cond_32
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1322
    .line 1323
    .line 1324
    move-result v12

    .line 1325
    if-eqz v12, :cond_33

    .line 1326
    .line 1327
    goto :goto_18

    .line 1328
    :cond_33
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1329
    .line 1330
    .line 1331
    move-result v12

    .line 1332
    if-eqz v12, :cond_34

    .line 1333
    .line 1334
    goto :goto_18

    .line 1335
    :cond_34
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1336
    .line 1337
    .line 1338
    move-result v9

    .line 1339
    if-eqz v9, :cond_35

    .line 1340
    .line 1341
    :goto_18
    move-object/from16 v3, v28

    .line 1342
    .line 1343
    move-object/from16 v6, v39

    .line 1344
    .line 1345
    goto/16 :goto_23

    .line 1346
    .line 1347
    :cond_35
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1348
    .line 1349
    .line 1350
    move-result v3

    .line 1351
    if-eqz v3, :cond_36

    .line 1352
    .line 1353
    invoke-static {}, Lc/e;->E()Ljava/util/ArrayList;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v0

    .line 1357
    invoke-static {v0, v6}, Lc/e;->r0(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v0

    .line 1361
    goto :goto_19

    .line 1362
    :cond_36
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1363
    .line 1364
    .line 1365
    move-result v3

    .line 1366
    if-eqz v3, :cond_37

    .line 1367
    .line 1368
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v0

    .line 1372
    invoke-static {v0}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 1373
    .line 1374
    .line 1375
    move-result v0

    .line 1376
    invoke-static {}, Lcom/sgscq/vpn/handler/j0;->b()Ljava/lang/String;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v1

    .line 1380
    invoke-static {v5}, Lcom/sgscq/vpn/handler/j0;->f(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v2

    .line 1384
    invoke-static {v0, v1, v2}, Lc/e;->r(ILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v0

    .line 1388
    goto :goto_19

    .line 1389
    :cond_37
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1390
    .line 1391
    .line 1392
    move-result v3

    .line 1393
    if-eqz v3, :cond_38

    .line 1394
    .line 1395
    invoke-static {v5}, Lc/e;->q(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v0

    .line 1399
    :goto_19
    move-object/from16 v6, v39

    .line 1400
    .line 1401
    goto/16 :goto_21

    .line 1402
    .line 1403
    :cond_38
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1404
    .line 1405
    .line 1406
    move-result v1

    .line 1407
    if-eqz v1, :cond_39

    .line 1408
    .line 1409
    invoke-static {v5, v0}, Lc/e;->m(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v0

    .line 1413
    goto :goto_1c

    .line 1414
    :cond_39
    move-object/from16 v1, v27

    .line 1415
    .line 1416
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1417
    .line 1418
    .line 1419
    move-result v1

    .line 1420
    if-eqz v1, :cond_47

    .line 1421
    .line 1422
    move-object/from16 v1, v26

    .line 1423
    .line 1424
    move-object/from16 v3, v43

    .line 1425
    .line 1426
    invoke-static {v1, v3, v0}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v0

    .line 1430
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v2

    .line 1434
    invoke-static {v2}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 1435
    .line 1436
    .line 1437
    move-result v2

    .line 1438
    invoke-static {v5}, Lcom/sgscq/vpn/handler/j0;->f(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v3

    .line 1442
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v3

    .line 1446
    :cond_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1447
    .line 1448
    .line 1449
    move-result v4

    .line 1450
    if-eqz v4, :cond_3b

    .line 1451
    .line 1452
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v4

    .line 1456
    check-cast v4, Ljava/util/Map;

    .line 1457
    .line 1458
    invoke-static {v4, v1, v0}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1459
    .line 1460
    .line 1461
    move-result v6

    .line 1462
    if-eqz v6, :cond_3a

    .line 1463
    .line 1464
    goto :goto_1a

    .line 1465
    :cond_3b
    const/4 v4, 0x0

    .line 1466
    :goto_1a
    if-nez v4, :cond_3c

    .line 1467
    .line 1468
    const-string v0, "\u5546\u54c1\u4e0d\u5b58\u5728"

    .line 1469
    .line 1470
    goto :goto_1b

    .line 1471
    :cond_3c
    const-string v1, "donate"

    .line 1472
    .line 1473
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v1

    .line 1477
    invoke-static {v1}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 1478
    .line 1479
    .line 1480
    move-result v1

    .line 1481
    const-string v3, "exchange_num"

    .line 1482
    .line 1483
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v3

    .line 1487
    invoke-static {v3}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 1488
    .line 1489
    .line 1490
    move-result v3

    .line 1491
    const-string v6, "exchanged_num"

    .line 1492
    .line 1493
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v6

    .line 1497
    invoke-static {v6}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 1498
    .line 1499
    .line 1500
    move-result v6

    .line 1501
    sub-int/2addr v3, v6

    .line 1502
    if-gtz v3, :cond_3d

    .line 1503
    .line 1504
    const-string v0, "\u4eca\u65e5\u5df2\u5151\u6362"

    .line 1505
    .line 1506
    goto :goto_1b

    .line 1507
    :cond_3d
    if-ge v2, v1, :cond_3e

    .line 1508
    .line 1509
    const-string v0, "\u8d21\u732e\u4e0d\u8db3"

    .line 1510
    .line 1511
    :goto_1b
    invoke-static {v0}, Lc/e;->I(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v0

    .line 1515
    :goto_1c
    move-object/from16 v6, v39

    .line 1516
    .line 1517
    goto/16 :goto_22

    .line 1518
    .line 1519
    :cond_3e
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v6

    .line 1523
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1524
    .line 1525
    .line 1526
    move-result v6

    .line 1527
    if-eqz v6, :cond_3f

    .line 1528
    .line 1529
    const/4 v6, 0x1

    .line 1530
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    .line 1531
    .line 1532
    .line 1533
    move-result v6

    .line 1534
    div-int v6, v2, v6

    .line 1535
    .line 1536
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    .line 1537
    .line 1538
    .line 1539
    move-result v3

    .line 1540
    goto :goto_1d

    .line 1541
    :cond_3f
    const/4 v3, 0x1

    .line 1542
    :goto_1d
    mul-int/2addr v1, v3

    .line 1543
    sub-int/2addr v2, v1

    .line 1544
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v1

    .line 1548
    invoke-interface {v5, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    .line 1550
    .line 1551
    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1552
    .line 1553
    .line 1554
    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1555
    add-int/lit8 v0, v0, -0x1

    .line 1556
    .line 1557
    const/4 v1, 0x6

    .line 1558
    if-ne v0, v1, :cond_40

    .line 1559
    .line 1560
    const/4 v0, 0x5

    .line 1561
    :cond_40
    if-ltz v0, :cond_45

    .line 1562
    .line 1563
    if-lt v0, v1, :cond_41

    .line 1564
    .line 1565
    goto :goto_20

    .line 1566
    :cond_41
    invoke-static {}, Lcom/sgscq/vpn/handler/j0;->b()Ljava/lang/String;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v1

    .line 1570
    invoke-static {v1, v5}, Lcom/sgscq/vpn/handler/j0;->e(Ljava/lang/String;Ljava/util/Map;)I

    .line 1571
    .line 1572
    .line 1573
    move-result v2

    .line 1574
    const/4 v6, 0x5

    .line 1575
    if-ne v0, v6, :cond_42

    .line 1576
    .line 1577
    shr-int/lit8 v6, v2, 0x5

    .line 1578
    .line 1579
    and-int/lit8 v6, v6, 0x1f

    .line 1580
    .line 1581
    const/4 v8, 0x1

    .line 1582
    goto :goto_1e

    .line 1583
    :cond_42
    const/4 v6, 0x1

    .line 1584
    shl-int v8, v6, v0

    .line 1585
    .line 1586
    and-int/2addr v8, v2

    .line 1587
    if-nez v8, :cond_43

    .line 1588
    .line 1589
    const/4 v8, 0x0

    .line 1590
    move/from16 v45, v8

    .line 1591
    .line 1592
    move v8, v6

    .line 1593
    move/from16 v6, v45

    .line 1594
    .line 1595
    goto :goto_1e

    .line 1596
    :cond_43
    move v8, v6

    .line 1597
    :goto_1e
    const-string v9, "union_goods_exchange_day"

    .line 1598
    .line 1599
    invoke-interface {v5, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    .line 1601
    .line 1602
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    .line 1603
    .line 1604
    .line 1605
    move-result v1

    .line 1606
    add-int/2addr v1, v6

    .line 1607
    const/4 v6, 0x5

    .line 1608
    if-ne v0, v6, :cond_44

    .line 1609
    .line 1610
    and-int/lit8 v2, v2, 0x1f

    .line 1611
    .line 1612
    const/16 v0, 0x1e

    .line 1613
    .line 1614
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 1615
    .line 1616
    .line 1617
    move-result v0

    .line 1618
    and-int/lit8 v0, v0, 0x1f

    .line 1619
    .line 1620
    shl-int/2addr v0, v6

    .line 1621
    goto :goto_1f

    .line 1622
    :cond_44
    shl-int v0, v8, v0

    .line 1623
    .line 1624
    :goto_1f
    or-int/2addr v0, v2

    .line 1625
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1626
    .line 1627
    .line 1628
    move-result-object v0

    .line 1629
    const-string v1, "union_goods_exchange_mask"

    .line 1630
    .line 1631
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    .line 1633
    .line 1634
    :catch_2
    :cond_45
    :goto_20
    const-string v0, "item_id"

    .line 1635
    .line 1636
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1637
    .line 1638
    .line 1639
    move-result-object v0

    .line 1640
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1641
    .line 1642
    .line 1643
    move-result-object v0

    .line 1644
    const-string v1, "item_num"

    .line 1645
    .line 1646
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1647
    .line 1648
    .line 1649
    move-result-object v1

    .line 1650
    invoke-static {v1}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 1651
    .line 1652
    .line 1653
    move-result v1

    .line 1654
    const/4 v2, 0x1

    .line 1655
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 1656
    .line 1657
    .line 1658
    move-result v1

    .line 1659
    mul-int/2addr v1, v3

    .line 1660
    invoke-static {v1, v0, v5}, Lc/e;->M(ILjava/lang/String;Ljava/util/Map;)Lc/e;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v0

    .line 1664
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1665
    .line 1666
    .line 1667
    move-result-object v1

    .line 1668
    invoke-static {v1}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 1669
    .line 1670
    .line 1671
    move-result v1

    .line 1672
    invoke-static {}, Lcom/sgscq/vpn/handler/j0;->b()Ljava/lang/String;

    .line 1673
    .line 1674
    .line 1675
    move-result-object v2

    .line 1676
    invoke-static {v5}, Lcom/sgscq/vpn/handler/j0;->f(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v3

    .line 1680
    invoke-static {v1, v2, v3}, Lc/e;->r(ILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 1681
    .line 1682
    .line 1683
    move-result-object v1

    .line 1684
    iget-object v2, v0, Lc/e;->b:Ljava/lang/Object;

    .line 1685
    .line 1686
    check-cast v2, Ljava/util/List;

    .line 1687
    .line 1688
    const-string v3, "add_list"

    .line 1689
    .line 1690
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    .line 1692
    .line 1693
    const-string v3, "return_info"

    .line 1694
    .line 1695
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    .line 1697
    .line 1698
    move-result-object v3

    .line 1699
    instance-of v4, v3, Ljava/util/Map;

    .line 1700
    .line 1701
    if-eqz v4, :cond_46

    .line 1702
    .line 1703
    check-cast v3, Ljava/util/Map;

    .line 1704
    .line 1705
    const-string v4, "add_list"

    .line 1706
    .line 1707
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1708
    .line 1709
    .line 1710
    :cond_46
    invoke-virtual {v0, v5}, Lc/e;->F(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1711
    .line 1712
    .line 1713
    move-result-object v2

    .line 1714
    move-object/from16 v6, v39

    .line 1715
    .line 1716
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    .line 1718
    .line 1719
    iget-object v0, v0, Lc/e;->a:Ljava/lang/Object;

    .line 1720
    .line 1721
    check-cast v0, Ljava/lang/String;

    .line 1722
    .line 1723
    move-object/from16 v9, v25

    .line 1724
    .line 1725
    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    .line 1727
    .line 1728
    move-object v0, v1

    .line 1729
    goto/16 :goto_22

    .line 1730
    .line 1731
    :cond_47
    move-object/from16 v1, v24

    .line 1732
    .line 1733
    move-object/from16 v9, v25

    .line 1734
    .line 1735
    move-object/from16 v6, v39

    .line 1736
    .line 1737
    move-object/from16 v3, v43

    .line 1738
    .line 1739
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1740
    .line 1741
    .line 1742
    move-result v1

    .line 1743
    if-eqz v1, :cond_48

    .line 1744
    .line 1745
    invoke-static {}, Lc/e;->e()Ljava/util/ArrayList;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v0

    .line 1749
    const-string v1, "active_list"

    .line 1750
    .line 1751
    invoke-static {v0, v1}, Lc/e;->r0(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1752
    .line 1753
    .line 1754
    move-result-object v0

    .line 1755
    :goto_21
    move-object/from16 v3, v28

    .line 1756
    .line 1757
    goto/16 :goto_24

    .line 1758
    .line 1759
    :cond_48
    move-object/from16 v1, v23

    .line 1760
    .line 1761
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1762
    .line 1763
    .line 1764
    move-result v1

    .line 1765
    if-eqz v1, :cond_49

    .line 1766
    .line 1767
    invoke-static {v5, v0}, Lc/e;->f(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1768
    .line 1769
    .line 1770
    move-result-object v0

    .line 1771
    goto/16 :goto_22

    .line 1772
    .line 1773
    :cond_49
    move-object/from16 v1, v36

    .line 1774
    .line 1775
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1776
    .line 1777
    .line 1778
    move-result v1

    .line 1779
    if-eqz v1, :cond_4a

    .line 1780
    .line 1781
    invoke-static {v8, v3, v0}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1782
    .line 1783
    .line 1784
    move-result-object v0

    .line 1785
    const-string v1, "union_apply_id"

    .line 1786
    .line 1787
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1788
    .line 1789
    .line 1790
    invoke-static {v5}, Lc/e;->t(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1791
    .line 1792
    .line 1793
    move-result-object v0

    .line 1794
    goto/16 :goto_22

    .line 1795
    .line 1796
    :cond_4a
    move-object/from16 v1, v40

    .line 1797
    .line 1798
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1799
    .line 1800
    .line 1801
    move-result v1

    .line 1802
    if-eqz v1, :cond_4b

    .line 1803
    .line 1804
    const-string v1, "target_id"

    .line 1805
    .line 1806
    move-object/from16 v3, v22

    .line 1807
    .line 1808
    invoke-static {v1, v3, v0}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1809
    .line 1810
    .line 1811
    move-result-object v1

    .line 1812
    const-string v2, "union_manage_target_id"

    .line 1813
    .line 1814
    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    .line 1816
    .line 1817
    const-string v1, "type"

    .line 1818
    .line 1819
    move-object/from16 v2, v41

    .line 1820
    .line 1821
    invoke-static {v1, v2, v0}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1822
    .line 1823
    .line 1824
    move-result-object v0

    .line 1825
    invoke-static {v0}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 1826
    .line 1827
    .line 1828
    move-result v0

    .line 1829
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1830
    .line 1831
    .line 1832
    move-result-object v0

    .line 1833
    const-string v1, "union_manage_type"

    .line 1834
    .line 1835
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1836
    .line 1837
    .line 1838
    invoke-static {v5}, Lc/e;->v(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1839
    .line 1840
    .line 1841
    move-result-object v0

    .line 1842
    goto/16 :goto_22

    .line 1843
    .line 1844
    :cond_4b
    move-object/from16 v3, v22

    .line 1845
    .line 1846
    const-string v1, "union.chgNotice"

    .line 1847
    .line 1848
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1849
    .line 1850
    .line 1851
    move-result v1

    .line 1852
    if-eqz v1, :cond_4c

    .line 1853
    .line 1854
    invoke-static {v5, v0}, Lc/e;->h(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1855
    .line 1856
    .line 1857
    move-result-object v0

    .line 1858
    goto/16 :goto_22

    .line 1859
    .line 1860
    :cond_4c
    const-string v1, "union.chgSign"

    .line 1861
    .line 1862
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1863
    .line 1864
    .line 1865
    move-result v1

    .line 1866
    if-eqz v1, :cond_4d

    .line 1867
    .line 1868
    invoke-static {v5, v0}, Lc/e;->j(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1869
    .line 1870
    .line 1871
    move-result-object v0

    .line 1872
    goto/16 :goto_22

    .line 1873
    .line 1874
    :cond_4d
    const-string v1, "union.quite"

    .line 1875
    .line 1876
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1877
    .line 1878
    .line 1879
    move-result v1

    .line 1880
    if-eqz v1, :cond_4e

    .line 1881
    .line 1882
    const/4 v0, 0x0

    .line 1883
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1884
    .line 1885
    .line 1886
    move-result-object v0

    .line 1887
    invoke-interface {v5, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1888
    .line 1889
    .line 1890
    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1891
    .line 1892
    .line 1893
    move-object/from16 v1, v20

    .line 1894
    .line 1895
    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1896
    .line 1897
    .line 1898
    const-string v1, "unionName"

    .line 1899
    .line 1900
    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1901
    .line 1902
    .line 1903
    const-string v1, "union_notice"

    .line 1904
    .line 1905
    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    .line 1907
    .line 1908
    move-object/from16 v10, v18

    .line 1909
    .line 1910
    invoke-interface {v5, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1911
    .line 1912
    .line 1913
    const-string v1, "user_role"

    .line 1914
    .line 1915
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1916
    .line 1917
    .line 1918
    invoke-static {v5}, Lc/e;->t(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1919
    .line 1920
    .line 1921
    move-result-object v0

    .line 1922
    move-object/from16 v12, v44

    .line 1923
    .line 1924
    invoke-interface {v0, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1925
    .line 1926
    .line 1927
    goto :goto_22

    .line 1928
    :cond_4e
    move-object/from16 v13, v17

    .line 1929
    .line 1930
    move-object/from16 v10, v18

    .line 1931
    .line 1932
    move-object/from16 v1, v20

    .line 1933
    .line 1934
    move-object/from16 v12, v44

    .line 1935
    .line 1936
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1937
    .line 1938
    .line 1939
    move-result v13

    .line 1940
    if-eqz v13, :cond_4f

    .line 1941
    .line 1942
    invoke-static {v1, v3, v0}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1943
    .line 1944
    .line 1945
    move-result-object v2

    .line 1946
    const/4 v13, 0x1

    .line 1947
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1948
    .line 1949
    .line 1950
    move-result-object v13

    .line 1951
    invoke-interface {v5, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1952
    .line 1953
    .line 1954
    invoke-interface {v5, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1955
    .line 1956
    .line 1957
    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1958
    .line 1959
    .line 1960
    const-string v1, "unionName"

    .line 1961
    .line 1962
    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1963
    .line 1964
    .line 1965
    invoke-static {v10, v3, v0}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1966
    .line 1967
    .line 1968
    move-result-object v1

    .line 1969
    invoke-interface {v5, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1970
    .line 1971
    .line 1972
    move-object/from16 v1, v42

    .line 1973
    .line 1974
    invoke-static {v1, v3, v0}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1975
    .line 1976
    .line 1977
    move-result-object v0

    .line 1978
    const-string v1, "union_notice"

    .line 1979
    .line 1980
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    .line 1982
    .line 1983
    const-string v0, "user_role"

    .line 1984
    .line 1985
    invoke-interface {v5, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1986
    .line 1987
    .line 1988
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1989
    .line 1990
    .line 1991
    move-result-object v0

    .line 1992
    invoke-static {v0}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 1993
    .line 1994
    .line 1995
    move-result v0

    .line 1996
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1997
    .line 1998
    .line 1999
    move-result-object v0

    .line 2000
    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    .line 2002
    .line 2003
    invoke-static {v5}, Lc/e;->t(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 2004
    .line 2005
    .line 2006
    move-result-object v0

    .line 2007
    invoke-interface {v0, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2008
    .line 2009
    .line 2010
    :goto_22
    iget-object v1, v11, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2011
    .line 2012
    move-object/from16 v3, v28

    .line 2013
    .line 2014
    invoke-virtual {v1, v3, v5}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 2015
    .line 2016
    .line 2017
    goto :goto_24

    .line 2018
    :cond_4f
    move-object/from16 v0, v16

    .line 2019
    .line 2020
    move-object/from16 v3, v28

    .line 2021
    .line 2022
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2023
    .line 2024
    .line 2025
    move-result v0

    .line 2026
    if-eqz v0, :cond_50

    .line 2027
    .line 2028
    :goto_23
    invoke-static {v2, v5}, Lc/e;->O(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 2029
    .line 2030
    .line 2031
    move-result-object v0

    .line 2032
    goto :goto_24

    .line 2033
    :cond_50
    invoke-static {v5}, Lc/e;->t(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 2034
    .line 2035
    .line 2036
    move-result-object v0

    .line 2037
    :goto_24
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2038
    .line 2039
    .line 2040
    move-result-object v1

    .line 2041
    instance-of v2, v1, Ljava/util/Map;

    .line 2042
    .line 2043
    if-eqz v2, :cond_51

    .line 2044
    .line 2045
    check-cast v1, Ljava/util/Map;

    .line 2046
    .line 2047
    goto :goto_25

    .line 2048
    :cond_51
    move-object v1, v5

    .line 2049
    :goto_25
    invoke-static {v0}, Lc/e;->D(Ljava/util/LinkedHashMap;)[Ljava/lang/String;

    .line 2050
    .line 2051
    .line 2052
    move-result-object v2

    .line 2053
    move-object/from16 v4, p0

    .line 2054
    .line 2055
    invoke-virtual {v4, v3, v1, v5, v2}, Lc/e;->p(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 2056
    .line 2057
    .line 2058
    move-result-object v1

    .line 2059
    move-object/from16 v2, v38

    .line 2060
    .line 2061
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2062
    .line 2063
    .line 2064
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 2065
    .line 2066
    .line 2067
    move-result-object v0

    .line 2068
    invoke-virtual {v11, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 2069
    .line 2070
    .line 2071
    move-result-object v0

    .line 2072
    return-object v0
.end method

.method public final P(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    const-string v0, "unionWar.signUp"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lc/e;->b:Ljava/lang/Object;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    const-string v0, "union_war_sign_up"

    .line 14
    .line 15
    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string v2, "fight_point"

    .line 19
    .line 20
    const-string v3, "1000"

    .line 21
    .line 22
    invoke-static {v2, v3, p4}, Lc/e;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p4

    .line 26
    invoke-static {p4}, Lc/e;->h0(Ljava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result p4

    .line 30
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    const-string v2, "union_war_fight_point"

    .line 35
    .line 36
    invoke-interface {p3, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    check-cast v1, Lm/e;

    .line 40
    .line 41
    invoke-virtual {v1, p2}, Lm/e;->t(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {p2}, Lc/e;->o(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    return-object p2

    .line 53
    :cond_0
    const-string v0, "unionWar.setBattleFormation"

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-static {p3}, Lc/e;->d0(Ljava/util/Map;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1, p3, p4}, Lc/e;->y(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string p4, "union_war_formations"

    .line 70
    .line 71
    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    check-cast v1, Lm/e;

    .line 75
    .line 76
    invoke-virtual {v1, p2}, Lm/e;->E(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object p2, v1, Lm/e;->b:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p2, Lcom/sgscq/vpn/cloud/z;

    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance p3, Ljava/util/LinkedHashMap;

    .line 87
    .line 88
    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string p4, "chg_formation"

    .line 92
    .line 93
    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const-string p1, "POST"

    .line 97
    .line 98
    const-string p4, "/social/guild/war/formation"

    .line 99
    .line 100
    invoke-virtual {p2, p1, p4, p3}, Lcom/sgscq/vpn/cloud/z;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/z;->F(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/q;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1}, Lm/e;->K(Lcom/sgscq/vpn/cloud/q;)Ljava/util/ArrayList;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    :goto_0
    invoke-static {p1}, Lc/e;->o(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    return-object p1

    .line 121
    :cond_1
    const-string v0, "unionWar.getBattleFormation"

    .line 122
    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_2

    .line 128
    .line 129
    check-cast v1, Lm/e;

    .line 130
    .line 131
    invoke-virtual {v1, p2}, Lm/e;->t(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    goto :goto_0

    .line 136
    :cond_2
    invoke-static {p1, p3, p4}, Lc/e;->Q(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    return-object p1
.end method

.method public final declared-synchronized W(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lc/e;->Z(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/n0;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iget-boolean v0, p1, Lcom/sgscq/vpn/cloud/n0;->a:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "cloud"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "local"

    .line 14
    .line 15
    :goto_0
    iget-object p1, p1, Lcom/sgscq/vpn/cloud/n0;->c:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "cloud"

    .line 18
    .line 19
    invoke-static {v0}, Lc/e;->g0(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x1

    .line 28
    const/4 v3, 0x0

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-static {p1}, Lc/e;->g0(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    invoke-static {p1, p2}, Lc/e;->T(Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move v2, v3

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const-string p2, "local"

    .line 51
    .line 52
    invoke-static {v0}, Lc/e;->g0(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    invoke-static {p1}, Lc/e;->g0(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    :goto_1
    monitor-exit p0

    .line 73
    return v2

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    monitor-exit p0

    .line 76
    throw p1
.end method

.method public final declared-synchronized X(Ljava/lang/String;)Z
    .locals 3

    .line 1
    monitor-enter p0

    :try_start_0
    new-instance v0, Lm/e;

    iget-object v1, p0, Lc/e;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lm/e;-><init>(ILandroid/content/Context;)V

    invoke-virtual {v0}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p0, p1, v0}, Lc/e;->W(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized Z(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/n0;
    .locals 6

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lc/e;->g0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lc/e;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1}, Lc/e;->b0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/e;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-static {p1}, Lc/e;->k0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc/e;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/SharedPreferences;

    invoke-static {p1}, Lc/e;->q0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {v1, v0}, Lc/e;->S(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    new-instance v4, Lcom/sgscq/vpn/cloud/n0;

    const-string v5, "cloud"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    invoke-direct {v4, v3, v2, v0, p1}, Lcom/sgscq/vpn/cloud/n0;-><init>(ZZLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lc/e;->a:Ljava/lang/Object;

    :try_start_0
    sget-object v1, Lc/b0;->a:Lc/b0;

    move-object v2, v0

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lc/b0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to create instance of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final declared-synchronized a0(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lc/e;->g0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Lc/e;->g0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/e;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lc/e;->b0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-static {p1}, Lc/e;->k0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cloud"

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-static {p1}, Lc/e;->q0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\u4e91\u5b58\u6863\u5f52\u5c5e\u4fdd\u5b58\u5931\u8d25"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u4e91\u5b58\u6863\u5f52\u5c5e\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()[B
    .locals 5

    .line 1
    iget-object v0, p0, Lc/e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Ljava/io/File;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0

    .line 14
    :cond_0
    move-object v1, v0

    .line 15
    check-cast v1, Ljava/io/File;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    const-wide/32 v3, 0x10000

    .line 22
    .line 23
    .line 24
    cmp-long v1, v1, v3

    .line 25
    .line 26
    if-gtz v1, :cond_1

    .line 27
    .line 28
    new-instance v1, Ljava/io/FileInputStream;

    .line 29
    .line 30
    check-cast v0, Ljava/io/File;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 33
    .line 34
    .line 35
    const/high16 v0, 0x10000

    .line 36
    .line 37
    :try_start_0
    invoke-static {v1, v0}, Lp/l;->h(Ljava/io/InputStream;I)[B

    .line 38
    .line 39
    .line 40
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_1
    move-exception v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    throw v0

    .line 55
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 56
    .line 57
    const-string v1, "cache too large"

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0
.end method

.method public final d(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "highest_revision"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final g([B)V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc/e;->a:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    move-object p1, v1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    move-object p1, v1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "cannot replace schedule cache"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    check-cast v1, Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "cannot move schedule cache"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method public final i()J
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "highest_revision"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lc/e;->g0(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-static {p2}, Lc/e;->g0(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_6

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lc/e;->Z(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/n0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p2}, Lc/e;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iget-boolean v1, v0, Lcom/sgscq/vpn/cloud/n0;->a:Z

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-boolean v1, v0, Lcom/sgscq/vpn/cloud/n0;->b:Z

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    const-string v1, "cloud"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string v1, ""

    .line 44
    .line 45
    :goto_0
    iget-object v0, v0, Lcom/sgscq/vpn/cloud/n0;->c:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v0}, Lc/e;->g0(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {p2}, Lc/e;->g0(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const/4 v4, 0x0

    .line 60
    if-nez v3, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_4

    .line 67
    .line 68
    const-string v2, "cloud"

    .line 69
    .line 70
    invoke-static {v1}, Lc/e;->g0(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    const/4 v3, 0x1

    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    invoke-static {v0}, Lc/e;->g0(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_2

    .line 90
    .line 91
    move v2, v3

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    move v2, v4

    .line 94
    :goto_1
    if-nez v2, :cond_3

    .line 95
    .line 96
    invoke-static {v1, v0}, Lc/e;->S(Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    :cond_3
    move v4, v3

    .line 103
    :cond_4
    if-eqz v4, :cond_5

    .line 104
    .line 105
    iget-object v0, p0, Lc/e;->b:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v0, Landroid/content/SharedPreferences;

    .line 108
    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {p1}, Lc/e;->b0(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .line 123
    .line 124
    monitor-exit p0

    .line 125
    return-void

    .line 126
    :cond_5
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 127
    .line 128
    const-string p2, "\u666e\u901a\u672c\u5730\u5b58\u6863\u4e0d\u80fd\u8f6c\u6362\u4e3a\u4e91\u5b58\u6863"

    .line 129
    .line 130
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :cond_6
    :goto_2
    monitor-exit p0

    .line 135
    return-void

    .line 136
    :catchall_0
    move-exception p1

    .line 137
    monitor-exit p0

    .line 138
    throw p1
.end method

.method public final varargs p(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 10

    .line 1
    iget-object v0, p0, Lc/e;->a:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/handler/k0;

    iget-object v1, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->a()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4, p3}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->c()I

    move-result v3

    const-string v4, "user_gold"

    invoke-virtual {v0, v3, v4, p3}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v3

    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->b()I

    move-result v4

    const-string v5, "user_energy"

    invoke-virtual {v0, v4, v5, p3}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v4

    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->d()I

    move-result v5

    const-string v8, "user_power"

    invoke-virtual {v0, v5, v8, p3}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v5

    move-object v8, p1

    move-object v9, p3

    invoke-virtual/range {v1 .. v9}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p3, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-virtual {p3, p2, p1, p4}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized w(Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lc/e;->g0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/e;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lc/e;->b0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lc/e;->k0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lc/e;->q0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
