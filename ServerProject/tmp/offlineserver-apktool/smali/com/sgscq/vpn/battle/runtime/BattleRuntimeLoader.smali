.class public final Lcom/sgscq/vpn/battle/runtime/BattleRuntimeLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static instantiate(Landroid/content/Context;[B)Lo/h;
    .locals 1

    .line 1
    invoke-static {}, Lcom/sgscq/vpn/q1;->g()V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-nez p0, :cond_0

    const-class p0, Lcom/sgscq/vpn/battle/runtime/BattleRuntimeLoader;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    :goto_0
    invoke-static {p1, p0}, Lcom/sgscq/vpn/q1;->c(Ljava/nio/ByteBuffer;Ljava/lang/ClassLoader;)Ldalvik/system/InMemoryDexClassLoader;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/q1;->d(Ldalvik/system/InMemoryDexClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/sgscq/battle/api/BattleRuntime;

    if-eqz p1, :cond_1

    new-instance p1, Lo/h;

    check-cast p0, Lcom/sgscq/battle/api/BattleRuntime;

    invoke-direct {p1, p0}, Lo/h;-><init>(Lcom/sgscq/battle/api/BattleRuntime;)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "battle_runtime_type_invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static load(Landroid/content/Context;Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;[B[B)Lo/h;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/sgscq/vpn/battle/runtime/BattleRuntimeLoader;->loadVerified(Landroid/content/Context;Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;[B[B)Lo/h;

    move-result-object p0

    return-object p0
.end method

.method public static loadVerified(Landroid/content/Context;Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;[B[B)Lo/h;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/sgscq/battle/api/BattleRuntimeStatus;->UNSUPPORTED_ANDROID:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    .line 8
    .line 9
    new-instance p1, Lo/h;

    .line 10
    .line 11
    new-instance p2, Lo/g;

    .line 12
    .line 13
    invoke-direct {p2, p0}, Lo/g;-><init>(Lcom/sgscq/battle/api/BattleRuntimeStatus;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p2}, Lo/h;-><init>(Lcom/sgscq/battle/api/BattleRuntime;)V

    .line 17
    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :try_start_0
    iget-object v1, p1, Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;->environment:Ljava/lang/String;

    .line 22
    .line 23
    iget v2, p1, Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;->versionCode:I

    .line 24
    .line 25
    invoke-static {p2, p3, v1, v2}, Lo/b;->a([B[BLjava/lang/String;I)[B

    .line 26
    .line 27
    .line 28
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    :try_start_1
    iget-object p1, p1, Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;->dexSha256:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p2}, Lcom/sgscq/vpn/battle/runtime/BattleRuntimeLoader;->sha256([B)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    sget-object p0, Lcom/sgscq/battle/api/BattleRuntimeStatus;->INTEGRITY_REJECTED:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    .line 42
    .line 43
    new-instance p1, Lo/h;

    .line 44
    .line 45
    new-instance v1, Lo/g;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lo/g;-><init>(Lcom/sgscq/battle/api/BattleRuntimeStatus;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, v1}, Lo/h;-><init>(Lcom/sgscq/battle/api/BattleRuntime;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 51
    .line 52
    .line 53
    if-eqz p2, :cond_1

    .line 54
    .line 55
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 59
    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_2
    :try_start_2
    invoke-static {p0, p2}, Lcom/sgscq/vpn/battle/runtime/BattleRuntimeLoader;->instantiate(Landroid/content/Context;[B)Lo/h;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    iget-object p1, p0, Lo/h;->a:Lcom/sgscq/battle/api/BattleRuntime;

    .line 67
    .line 68
    invoke-interface {p1}, Lcom/sgscq/battle/api/BattleRuntime;->status()Lcom/sgscq/battle/api/BattleRuntimeStatus;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    sget-object v1, Lcom/sgscq/battle/api/BattleRuntimeStatus;->READY:Lcom/sgscq/battle/api/BattleRuntimeStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 73
    .line 74
    if-ne p1, v1, :cond_3

    .line 75
    .line 76
    const/4 p1, 0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    move p1, v0

    .line 79
    :goto_0
    if-eqz p1, :cond_4

    .line 80
    .line 81
    :try_start_3
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, [B

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lo/h;->initialize([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    .line 89
    .line 90
    :catchall_0
    :cond_4
    if-eqz p2, :cond_5

    .line 91
    .line 92
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 93
    .line 94
    .line 95
    :cond_5
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 96
    .line 97
    .line 98
    return-object p0

    .line 99
    :catchall_1
    const/4 p2, 0x0

    .line 100
    :catchall_2
    :try_start_4
    sget-object p0, Lcom/sgscq/battle/api/BattleRuntimeStatus;->MODULE_LOAD_FAILED:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    .line 101
    .line 102
    new-instance p1, Lo/h;

    .line 103
    .line 104
    new-instance v1, Lo/g;

    .line 105
    .line 106
    invoke-direct {v1, p0}, Lo/g;-><init>(Lcom/sgscq/battle/api/BattleRuntimeStatus;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {p1, v1}, Lo/h;-><init>(Lcom/sgscq/battle/api/BattleRuntime;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 110
    .line 111
    .line 112
    if-eqz p2, :cond_6

    .line 113
    .line 114
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 115
    .line 116
    .line 117
    :cond_6
    if-eqz p3, :cond_7

    .line 118
    .line 119
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 120
    .line 121
    .line 122
    :cond_7
    return-object p1

    .line 123
    :catchall_3
    move-exception p0

    .line 124
    if-eqz p2, :cond_8

    .line 125
    .line 126
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 127
    .line 128
    .line 129
    :cond_8
    if-eqz p3, :cond_9

    .line 130
    .line 131
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 132
    .line 133
    .line 134
    :cond_9
    throw p0
.end method

.method public static sha256([B)Ljava/lang/String;
    .locals 6

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%02x"

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
