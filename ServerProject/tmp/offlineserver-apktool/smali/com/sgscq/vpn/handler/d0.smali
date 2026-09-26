.class public final Lcom/sgscq/vpn/handler/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/Map;

.field public static d:Ljava/util/Map;

.field public static e:Lcom/sgscq/vpn/w1;

.field public static final f:Ljava/util/Set;

.field public static final g:[C

.field public static volatile h:Ljava/util/LinkedHashMap;

.field public static final i:[Ljava/lang/String;


# instance fields
.field public final a:Lcom/sgscq/vpn/handler/k0;

.field public final b:Lm/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "600210"

    .line 7
    .line 8
    const-string v2, "600207"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "600211"

    .line 14
    .line 15
    const-string v2, "600208"

    .line 16
    .line 17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/sgscq/vpn/handler/d0;->c:Ljava/util/Map;

    .line 25
    .line 26
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 27
    .line 28
    const-string v1, "600206"

    .line 29
    .line 30
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/sgscq/vpn/handler/d0;->f:Ljava/util/Set;

    .line 42
    .line 43
    const/4 v0, 0x5

    .line 44
    new-array v0, v0, [C

    .line 45
    .line 46
    fill-array-data v0, :array_0

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/sgscq/vpn/handler/d0;->g:[C

    .line 50
    .line 51
    const-string v0, "upd"

    .line 52
    .line 53
    const-string v1, "update_list"

    .line 54
    .line 55
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lcom/sgscq/vpn/handler/d0;->i:[Ljava/lang/String;

    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
    .end array-data
.end method

.method public constructor <init>(Lcom/sgscq/vpn/handler/k0;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/sgscq/vpn/handler/d0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_5

    .line 11
    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "atlas_visibility_config.json"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 19
    .line 20
    .line 21
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    .line 23
    .line 24
    new-instance v1, Ljava/io/InputStreamReader;

    .line 25
    .line 26
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 27
    .line 28
    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 32
    .line 33
    .line 34
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const/16 v2, 0x800

    .line 40
    .line 41
    new-array v2, v2, [C

    .line 42
    .line 43
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/Reader;->read([C)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-ltz v3, :cond_1

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-virtual {v1, v2, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-static {v1}, La/w;->r(Ljava/lang/String;)La/q;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, La/q;->f()La/t;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v2, "generals"

    .line 80
    .line 81
    invoke-static {v1, v2}, Lm/e;->z(La/t;Ljava/lang/String;)Ljava/util/LinkedHashSet;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const-string v3, "skills"

    .line 86
    .line 87
    invoke-static {v1, v3}, Lm/e;->z(La/t;Ljava/lang/String;)Ljava/util/LinkedHashSet;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const-string v4, "equipments"

    .line 92
    .line 93
    invoke-static {v1, v4}, Lm/e;->z(La/t;Ljava/lang/String;)Ljava/util/LinkedHashSet;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    new-instance v4, Lm/e;

    .line 98
    .line 99
    invoke-direct {v4, v2, v3, v1}, Lm/e;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    :goto_1
    invoke-static {}, Lm/e;->e()Lm/e;

    .line 104
    .line 105
    .line 106
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 108
    .line 109
    .line 110
    if-eqz p1, :cond_5

    .line 111
    .line 112
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_6

    .line 116
    :catchall_0
    move-exception v1

    .line 117
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :catchall_1
    move-exception v0

    .line 122
    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    :goto_3
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 126
    :catchall_2
    move-exception v0

    .line 127
    if-eqz p1, :cond_4

    .line 128
    .line 129
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :catchall_3
    move-exception p1

    .line 134
    :try_start_8
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    :cond_4
    :goto_4
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 138
    :catch_0
    move-exception p1

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v1, "[Atlas] visibility config unavailable: "

    .line 142
    .line 143
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string v1, "SGSCQ_SRV"

    .line 147
    .line 148
    invoke-static {p1, v0, v1}, Lc/a;->u(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :goto_5
    invoke-static {}, Lm/e;->e()Lm/e;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    :cond_5
    :goto_6
    iput-object v4, p0, Lcom/sgscq/vpn/handler/d0;->b:Lm/e;

    .line 156
    .line 157
    return-void
.end method

.method public static A(Ljava/util/Map;)I
    .locals 1

    .line 1
    const-string v0, "evolution_chest_refresh_times"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/handler/d0;->m0(Ljava/lang/Object;I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static B(C)Ljava/util/ArrayList;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x41

    const/16 v2, 0x2e

    const/16 v3, 0xa

    const-string v4, "600206"

    const/4 v5, 0x1

    if-ne p0, v1, :cond_0

    invoke-static {v4, v3, v2, v5}, Lcom/sgscq/vpn/handler/d0;->w0(Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x42

    const/4 v6, 0x2

    if-ne p0, v1, :cond_1

    const-string p0, "600209"

    const/16 v1, 0x2f

    invoke-static {p0, v5, v1, v5}, Lcom/sgscq/vpn/handler/d0;->w0(Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v6, v2, v5}, Lcom/sgscq/vpn/handler/d0;->w0(Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x43

    const/16 v7, 0xc8

    const/16 v8, 0x8

    const-string v9, "600012"

    const/16 v10, 0x16

    const-string v11, "600027"

    if-ne p0, v1, :cond_2

    invoke-static {v4, v5, v2, v5}, Lcom/sgscq/vpn/handler/d0;->w0(Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "600080"

    invoke-static {p0, v5, v6, v6}, Lcom/sgscq/vpn/handler/d0;->w0(Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p0, 0x1f4

    invoke-static {v11, p0, v10, v6}, Lcom/sgscq/vpn/handler/d0;->w0(Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9, v7, v8, v6}, Lcom/sgscq/vpn/handler/d0;->w0(Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/16 v1, 0x44

    const/16 v2, 0x64

    if-ne p0, v1, :cond_3

    invoke-static {v11, v7, v10, v6}, Lcom/sgscq/vpn/handler/d0;->w0(Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9, v2, v8, v6}, Lcom/sgscq/vpn/handler/d0;->w0(Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "600087"

    const/16 v1, 0x27

    invoke-static {p0, v3, v1, v5}, Lcom/sgscq/vpn/handler/d0;->w0(Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "600078"

    invoke-static {p0, v5, v6, v6}, Lcom/sgscq/vpn/handler/d0;->w0(Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "600013"

    const/16 v1, 0x9

    invoke-static {p0, v3, v1, v6}, Lcom/sgscq/vpn/handler/d0;->w0(Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/16 v1, 0x45

    if-ne p0, v1, :cond_4

    invoke-static {v11, v2, v10, v6}, Lcom/sgscq/vpn/handler/d0;->w0(Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p0, 0x32

    invoke-static {v9, p0, v8, v6}, Lcom/sgscq/vpn/handler/d0;->w0(Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "600009"

    const/4 v1, 0x7

    invoke-static {p0, v5, v1, v5}, Lcom/sgscq/vpn/handler/d0;->w0(Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public static C(Lcom/sgscq/vpn/w1;)Ljava/util/Map;
    .locals 9

    .line 1
    sget-object v0, Lcom/sgscq/vpn/handler/d0;->c:Ljava/util/Map;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    sget-object v1, Lcom/sgscq/vpn/handler/d0;->e:Lcom/sgscq/vpn/w1;

    .line 7
    .line 8
    if-ne p0, v1, :cond_1

    .line 9
    .line 10
    sget-object v1, Lcom/sgscq/vpn/handler/d0;->d:Ljava/util/Map;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->n:Ljava/util/ArrayList;

    .line 21
    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->R1()V

    .line 25
    .line 26
    .line 27
    :cond_2
    iget-object v2, p0, Lcom/sgscq/vpn/w1;->n:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_9

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0, v3}, Lcom/sgscq/vpn/w1;->c1(Ljava/lang/String;)Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-nez v4, :cond_4

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    const/4 v5, -0x1

    .line 53
    const-string v6, "item_type"

    .line 54
    .line 55
    invoke-static {v5, v6, v4}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    const/16 v8, 0x2f

    .line 60
    .line 61
    if-eq v7, v8, :cond_5

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_5
    const-string v7, "related_id"

    .line 65
    .line 66
    const-string v8, "0"

    .line 67
    .line 68
    invoke-interface {v4, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-nez v7, :cond_3

    .line 81
    .line 82
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-eqz v7, :cond_6

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_6
    invoke-virtual {p0, v4}, Lcom/sgscq/vpn/w1;->c1(Ljava/lang/String;)Ljava/util/Map;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    if-nez v7, :cond_7

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_7
    invoke-static {v5, v6, v7}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    const/16 v6, 0x2e

    .line 101
    .line 102
    if-eq v5, v6, :cond_8

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_8
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_9
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_a

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_a
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    :goto_1
    sput-object v0, Lcom/sgscq/vpn/handler/d0;->d:Ljava/util/Map;

    .line 121
    .line 122
    sput-object p0, Lcom/sgscq/vpn/handler/d0;->e:Lcom/sgscq/vpn/w1;

    .line 123
    .line 124
    return-object v0
.end method

.method public static D(Ljava/util/List;Ljava/util/LinkedHashMap;)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lcom/sgscq/vpn/handler/d0;->y(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static E(Ljava/util/List;II)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "grant_type"

    const/4 v3, 0x5

    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    if-eq v2, p1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_1

    const-string v2, "item_type"

    const/4 v3, -0x1

    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    if-eq v2, p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/sgscq/vpn/handler/d0;->y(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {p0, p3}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    check-cast p3, Ljava/util/Map;

    .line 20
    .line 21
    const-string v0, ""

    .line 22
    .line 23
    invoke-static {p3, p1, v0, p2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    return-object p3

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public static G(Ljava/util/LinkedHashMap;)I
    .locals 3

    .line 1
    const-string v0, "type"

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_3

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    double-to-int p0, v1

    return p0

    :cond_2
    :goto_0
    return v0

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    double-to-int p0, v1

    return p0

    :catch_0
    :cond_5
    :goto_1
    return v0
.end method

.method public static H(Ljava/util/Map;Ljava/util/LinkedHashMap;)Ljava/util/Map;
    .locals 4

    .line 1
    const-string v0, "general_id"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v2, "General"

    .line 14
    .line 15
    invoke-static {v2, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/util/Map;

    .line 34
    .line 35
    const-string v3, "id"

    .line 36
    .line 37
    invoke-static {v2, v3, v1, v0, p1}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    return-object v2

    .line 44
    :cond_1
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method

.method public static I(Ljava/util/Map;Ljava/util/Map;Ljava/util/LinkedHashMap;)V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "item_id"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "item_num"

    .line 19
    .line 20
    invoke-static {v4, v5, v1}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    const-string v7, "grant_type"

    .line 25
    .line 26
    const/4 v8, 0x5

    .line 27
    invoke-static {v8, v7, v1}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    const/4 v8, 0x6

    .line 32
    if-ne v7, v8, :cond_0

    .line 33
    .line 34
    invoke-static {v6, v3, v0}, Lcom/sgscq/vpn/w1;->k(ILjava/lang/String;Ljava/util/Map;)V

    .line 35
    .line 36
    .line 37
    const-string v1, "GeneralSoul"

    .line 38
    .line 39
    const-string v2, "general_id"

    .line 40
    .line 41
    invoke-static {v1, v2, v3, v0}, Lcom/sgscq/vpn/handler/d0;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto/16 :goto_4

    .line 46
    .line 47
    :cond_0
    const-string v8, "id"

    .line 48
    .line 49
    const-string v9, "pk_id"

    .line 50
    .line 51
    const-string v10, "num"

    .line 52
    .line 53
    const/16 v11, 0x8

    .line 54
    .line 55
    const/4 v12, 0x0

    .line 56
    if-ne v7, v11, :cond_4

    .line 57
    .line 58
    const-string v7, "9"

    .line 59
    .line 60
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v13

    .line 64
    if-eqz v13, :cond_1

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    move-object v4, v3

    .line 72
    :goto_0
    invoke-static {v7, v4}, Lc/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v14

    .line 76
    const-string v15, "EquipmentPiece"

    .line 77
    .line 78
    const-string v13, "equipment_id"

    .line 79
    .line 80
    invoke-static {v15, v13, v4, v0}, Lcom/sgscq/vpn/handler/d0;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 81
    .line 82
    .line 83
    move-result-object v13

    .line 84
    if-nez v13, :cond_2

    .line 85
    .line 86
    const-string v13, "id"

    .line 87
    .line 88
    const-string v16, "item_id"

    .line 89
    .line 90
    move-object/from16 v35, v15

    .line 91
    .line 92
    move-object/from16 v15, v16

    .line 93
    .line 94
    const-string v17, "piece_id"

    .line 95
    .line 96
    const-string v19, "equipment_id"

    .line 97
    .line 98
    const-string v21, "equip_id"

    .line 99
    .line 100
    const-string v23, "num"

    .line 101
    .line 102
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v24

    .line 106
    const-string v25, "item_num"

    .line 107
    .line 108
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v26

    .line 112
    const-string v27, "equipment_piece_num"

    .line 113
    .line 114
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v28

    .line 118
    const-string v29, "item_type"

    .line 119
    .line 120
    const/16 v16, 0xf

    .line 121
    .line 122
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v30

    .line 126
    const-string v31, "type"

    .line 127
    .line 128
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v32

    .line 132
    const-string v33, "is_new"

    .line 133
    .line 134
    sget-object v34, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 135
    .line 136
    move-object v11, v14

    .line 137
    move-object/from16 v16, v11

    .line 138
    .line 139
    move-object/from16 v18, v11

    .line 140
    .line 141
    move-object/from16 v20, v4

    .line 142
    .line 143
    move-object/from16 v22, v4

    .line 144
    .line 145
    filled-new-array/range {v13 .. v34}, [Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-static {v9, v11, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    move-object/from16 v9, v35

    .line 154
    .line 155
    invoke-static {v9, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-object v0, v4

    .line 163
    goto :goto_1

    .line 164
    :cond_2
    move-object v9, v15

    .line 165
    move-object v0, v13

    .line 166
    :goto_1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-interface {v0, v10, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    invoke-static {v4, v12}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    add-int/2addr v4, v6

    .line 183
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-interface {v0, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    const-string v5, "equipment_piece_num"

    .line 198
    .line 199
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-eqz v4, :cond_3

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_3
    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    :goto_2
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    invoke-interface {v1, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-object v1, v9

    .line 224
    goto/16 :goto_4

    .line 225
    .line 226
    :cond_4
    const-string v4, "item_type"

    .line 227
    .line 228
    const/16 v7, 0x13

    .line 229
    .line 230
    invoke-static {v7, v4, v1}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 231
    .line 232
    .line 233
    invoke-static {v3}, Lcom/sgscq/vpn/p5;->h0(Ljava/lang/String;)Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    const-string v4, "Item"

    .line 238
    .line 239
    if-eqz v1, :cond_5

    .line 240
    .line 241
    invoke-static {v6, v3, v0}, Lcom/sgscq/vpn/p5;->c(ILjava/lang/String;Ljava/util/Map;)V

    .line 242
    .line 243
    .line 244
    const/4 v0, 0x0

    .line 245
    goto :goto_3

    .line 246
    :cond_5
    invoke-static {v4, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-static {v3, v1, v0}, Lcom/sgscq/vpn/handler/d0;->q0(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    if-eqz v7, :cond_6

    .line 255
    .line 256
    invoke-static {v7}, Lcom/sgscq/vpn/handler/d0;->U(Ljava/util/Map;)I

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    add-int/2addr v0, v6

    .line 261
    invoke-static {v0, v7, v5, v0, v10}, Lc/a;->t(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 262
    .line 263
    .line 264
    move-object v0, v7

    .line 265
    goto :goto_3

    .line 266
    :cond_6
    invoke-static {v4, v0}, Lcom/sgscq/vpn/w1;->e2(Ljava/lang/String;Ljava/util/Map;)I

    .line 267
    .line 268
    .line 269
    move-result v7

    .line 270
    new-instance v11, Ljava/util/HashMap;

    .line 271
    .line 272
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    invoke-virtual {v11, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v11, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-virtual {v11, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-virtual {v11, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    const-string v3, "effect_time"

    .line 307
    .line 308
    invoke-virtual {v11, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    const-string v2, "is_new"

    .line 312
    .line 313
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 314
    .line 315
    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    new-instance v2, Ljava/util/ArrayList;

    .line 322
    .line 323
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .line 325
    .line 326
    new-instance v3, Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .line 330
    .line 331
    const-string v5, "add"

    .line 332
    .line 333
    const-string v6, "upd"

    .line 334
    .line 335
    filled-new-array {v6, v3, v5, v1}, [Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    const-string v3, "del"

    .line 340
    .line 341
    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-object v0, v11

    .line 349
    :goto_3
    move-object v1, v4

    .line 350
    :goto_4
    if-eqz v0, :cond_7

    .line 351
    .line 352
    new-instance v2, Ln/a;

    .line 353
    .line 354
    const/16 v3, 0x15

    .line 355
    .line 356
    invoke-direct {v2, v3}, Ln/a;-><init>(I)V

    .line 357
    .line 358
    .line 359
    move-object/from16 v3, p2

    .line 360
    .line 361
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    check-cast v1, Ljava/util/List;

    .line 366
    .line 367
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    :cond_7
    return-void
.end method

.method public static J(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Lcom/sgscq/vpn/handler/b0;
    .locals 28

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    new-instance v7, Lcom/sgscq/vpn/handler/b0;

    .line 4
    .line 5
    invoke-direct {v7}, Lcom/sgscq/vpn/handler/b0;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v8, "general_id"

    .line 9
    .line 10
    const-string v9, ""

    .line 11
    .line 12
    move-object/from16 v0, p1

    .line 13
    .line 14
    invoke-interface {v0, v8, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v10, v7, Lcom/sgscq/vpn/handler/b0;->g:Ljava/util/ArrayList;

    .line 23
    .line 24
    new-instance v2, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v11, "upd"

    .line 30
    .line 31
    const-string v12, "add"

    .line 32
    .line 33
    if-eqz v6, :cond_4

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_0
    const-string v3, "Atlas"

    .line 43
    .line 44
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    instance-of v4, v3, Ljava/util/Map;

    .line 49
    .line 50
    if-nez v4, :cond_1

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_1
    check-cast v3, Ljava/util/Map;

    .line 54
    .line 55
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/d0;->t0(Ljava/util/Map;)Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v1, v4}, Lcom/sgscq/vpn/handler/d0;->Q(Ljava/lang/String;Ljava/util/Map;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_3

    .line 64
    .line 65
    invoke-static {v1, v4}, Lcom/sgscq/vpn/handler/d0;->N(Ljava/lang/String;Ljava/util/Map;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    const/4 v0, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    :goto_0
    invoke-static/range {p0 .. p1}, Lcom/sgscq/vpn/handler/d0;->R(Ljava/util/Map;Ljava/util/Map;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    :goto_1
    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v2, v4, v1, v0}, Lcom/sgscq/vpn/handler/d0;->W(Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {v2, v3, v1, v0}, Lcom/sgscq/vpn/handler/d0;->W(Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    :cond_4
    :goto_2
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 93
    .line 94
    .line 95
    sget-object v0, Lcom/sgscq/vpn/handler/y0;->a:Ljava/util/Set;

    .line 96
    .line 97
    const-string v0, "surrender_progress"

    .line 98
    .line 99
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    instance-of v1, v0, Ljava/util/Map;

    .line 104
    .line 105
    if-eqz v1, :cond_5

    .line 106
    .line 107
    check-cast v0, Ljava/util/Map;

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_5
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 111
    .line 112
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 113
    .line 114
    .line 115
    :goto_3
    move-object/from16 v1, p2

    .line 116
    .line 117
    invoke-static {v6, v1, v7, v0}, Lcom/sgscq/vpn/handler/y0;->l(Ljava/util/Map;Ljava/util/List;Lcom/sgscq/vpn/handler/b0;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 118
    .line 119
    .line 120
    if-eqz p3, :cond_27

    .line 121
    .line 122
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v13

    .line 126
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_27

    .line 131
    .line 132
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    instance-of v1, v0, Ljava/util/Map;

    .line 137
    .line 138
    if-nez v1, :cond_6

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_6
    check-cast v0, Ljava/util/Map;

    .line 142
    .line 143
    const-string v14, "id"

    .line 144
    .line 145
    invoke-interface {v0, v14, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v15

    .line 153
    const-string v1, "num"

    .line 154
    .line 155
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 156
    .line 157
    invoke-static {v0, v1, v2, v3}, Lcom/sgscq/vpn/handler/d0;->a0(Ljava/util/Map;Ljava/lang/String;D)D

    .line 158
    .line 159
    .line 160
    move-result-wide v2

    .line 161
    double-to-int v5, v2

    .line 162
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-nez v2, :cond_26

    .line 167
    .line 168
    if-gtz v5, :cond_7

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_7
    const-string v2, "type"

    .line 172
    .line 173
    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    .line 174
    .line 175
    invoke-static {v0, v2, v3, v4}, Lcom/sgscq/vpn/handler/d0;->a0(Ljava/util/Map;Ljava/lang/String;D)D

    .line 176
    .line 177
    .line 178
    move-result-wide v2

    .line 179
    double-to-int v2, v2

    .line 180
    invoke-static {v15}, Lcom/sgscq/vpn/p5;->h0(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    const-string v4, " "

    .line 185
    .line 186
    move-object/from16 p1, v13

    .line 187
    .line 188
    const-string v13, "SGSCQ_SRV"

    .line 189
    .line 190
    if-eqz v3, :cond_8

    .line 191
    .line 192
    invoke-static {v5, v15, v6}, Lcom/sgscq/vpn/p5;->c(ILjava/lang/String;Ljava/util/Map;)V

    .line 193
    .line 194
    .line 195
    const/4 v0, 0x1

    .line 196
    iput-boolean v0, v7, Lcom/sgscq/vpn/handler/b0;->i:Z

    .line 197
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    const-string v1, "[Surrender] currency +"

    .line 201
    .line 202
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-static {v13, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    move-object/from16 v13, p1

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_8
    iget-object v3, v7, Lcom/sgscq/vpn/handler/b0;->d:Ljava/util/ArrayList;

    .line 225
    .line 226
    move-object/from16 p2, v1

    .line 227
    .line 228
    iget-object v1, v7, Lcom/sgscq/vpn/handler/b0;->b:Ljava/util/ArrayList;

    .line 229
    .line 230
    move-object/from16 v16, v11

    .line 231
    .line 232
    const-string v11, "Skill"

    .line 233
    .line 234
    move-object/from16 v17, v12

    .line 235
    .line 236
    const-string v12, "pk_id"

    .line 237
    .line 238
    move-object/from16 p3, v0

    .line 239
    .line 240
    const/4 v0, 0x1

    .line 241
    if-ne v2, v0, :cond_e

    .line 242
    .line 243
    invoke-static {v15, v6}, Lcom/sgscq/vpn/handler/d0;->P(Ljava/lang/String;Ljava/util/Map;)Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_9

    .line 248
    .line 249
    invoke-static {v5, v15, v6}, Lcom/sgscq/vpn/handler/d0;->c(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string v1, "[Surrender] duplicate general -> soul +"

    .line 259
    .line 260
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    goto/16 :goto_9

    .line 264
    .line 265
    :cond_9
    const/4 v0, 0x0

    .line 266
    :goto_5
    if-ge v0, v5, :cond_f

    .line 267
    .line 268
    new-instance v2, Ljava/util/HashSet;

    .line 269
    .line 270
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 271
    .line 272
    .line 273
    invoke-static {v11, v6}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    if-eqz v4, :cond_a

    .line 286
    .line 287
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    check-cast v4, Ljava/util/Map;

    .line 292
    .line 293
    invoke-interface {v4, v12, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    goto :goto_6

    .line 305
    :cond_a
    const/4 v3, 0x0

    .line 306
    invoke-static {v3}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-virtual {v3, v15, v6}, Lcom/sgscq/vpn/w1;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    if-nez v3, :cond_b

    .line 315
    .line 316
    const-string v2, "[Surrender] skip non-surrenderable general +"

    .line 317
    .line 318
    invoke-virtual {v2, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-static {v13, v2}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    goto :goto_8

    .line 326
    :cond_b
    iget-object v4, v7, Lcom/sgscq/vpn/handler/b0;->a:Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    invoke-static {v11, v6}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    :cond_c
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 340
    .line 341
    .line 342
    move-result v4

    .line 343
    if-eqz v4, :cond_d

    .line 344
    .line 345
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v4

    .line 349
    check-cast v4, Ljava/util/Map;

    .line 350
    .line 351
    invoke-interface {v4, v12, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v14

    .line 355
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v14

    .line 359
    invoke-virtual {v2, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v14

    .line 363
    if-nez v14, :cond_c

    .line 364
    .line 365
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    goto :goto_7

    .line 369
    :cond_d
    const-string v2, "[Surrender] general +"

    .line 370
    .line 371
    invoke-virtual {v2, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-static {v13, v2}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    :goto_8
    add-int/lit8 v0, v0, 0x1

    .line 379
    .line 380
    goto :goto_5

    .line 381
    :cond_e
    const/4 v0, 0x6

    .line 382
    if-ne v2, v0, :cond_10

    .line 383
    .line 384
    invoke-static {v5, v15, v6}, Lcom/sgscq/vpn/handler/d0;->c(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    const-string v1, "[Surrender] soul +"

    .line 394
    .line 395
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    :goto_9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    invoke-static {v13, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    :cond_f
    move-object/from16 v18, v9

    .line 415
    .line 416
    goto/16 :goto_c

    .line 417
    .line 418
    :cond_10
    const/4 v0, 0x3

    .line 419
    const-string v3, "general_pk_id"

    .line 420
    .line 421
    move-object/from16 v18, v9

    .line 422
    .line 423
    const-string v9, "0"

    .line 424
    .line 425
    move-object/from16 v19, v1

    .line 426
    .line 427
    const-string v1, "level"

    .line 428
    .line 429
    if-ne v2, v0, :cond_15

    .line 430
    .line 431
    const/4 v0, 0x0

    .line 432
    :goto_a
    if-ge v0, v5, :cond_14

    .line 433
    .line 434
    const-string v2, "Equipment"

    .line 435
    .line 436
    invoke-static {v2, v6}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    const/4 v11, 0x1

    .line 441
    move-object/from16 v20, v13

    .line 442
    .line 443
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 444
    .line 445
    .line 446
    move-result-object v13

    .line 447
    move-object/from16 v21, v4

    .line 448
    .line 449
    const-string v4, "next_pk_Equipment"

    .line 450
    .line 451
    invoke-static {v11, v4, v6}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    .line 452
    .line 453
    .line 454
    move-result v11

    .line 455
    if-gtz v11, :cond_11

    .line 456
    .line 457
    const/4 v11, 0x1

    .line 458
    :cond_11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 459
    .line 460
    .line 461
    move-result-object v19

    .line 462
    :goto_b
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    .line 463
    .line 464
    .line 465
    move-result v22

    .line 466
    if-eqz v22, :cond_13

    .line 467
    .line 468
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v22

    .line 472
    move/from16 v23, v5

    .line 473
    .line 474
    move-object/from16 v5, v22

    .line 475
    .line 476
    check-cast v5, Ljava/util/Map;

    .line 477
    .line 478
    move/from16 v22, v0

    .line 479
    .line 480
    const/4 v0, 0x0

    .line 481
    invoke-static {v0, v12, v5}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    if-lt v0, v11, :cond_12

    .line 486
    .line 487
    add-int/lit8 v0, v0, 0x1

    .line 488
    .line 489
    move v11, v0

    .line 490
    :cond_12
    move/from16 v0, v22

    .line 491
    .line 492
    move/from16 v5, v23

    .line 493
    .line 494
    goto :goto_b

    .line 495
    :cond_13
    move/from16 v22, v0

    .line 496
    .line 497
    move/from16 v23, v5

    .line 498
    .line 499
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 500
    .line 501
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 502
    .line 503
    .line 504
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v5

    .line 508
    invoke-interface {v0, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    const-string v5, "equipment_id"

    .line 515
    .line 516
    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-object/from16 v24, v14

    .line 520
    .line 521
    const-string v14, "equip_id"

    .line 522
    .line 523
    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    const-string v14, "eid"

    .line 527
    .line 528
    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    const-string v14, "equipment_level"

    .line 535
    .line 536
    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    const-string v14, "refine_level"

    .line 540
    .line 541
    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    const-string v13, "refine_exp"

    .line 545
    .line 546
    const/4 v14, 0x0

    .line 547
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 548
    .line 549
    .line 550
    move-result-object v14

    .line 551
    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    const/4 v13, 0x0

    .line 555
    invoke-interface {v0, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    invoke-interface {v0, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    const-string v14, "user_general_id"

    .line 562
    .line 563
    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    const-string v13, "is_wear"

    .line 567
    .line 568
    invoke-interface {v0, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    const-string v13, "wear"

    .line 572
    .line 573
    invoke-interface {v0, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    new-instance v13, Ljava/util/ArrayList;

    .line 577
    .line 578
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .line 580
    .line 581
    const-string v14, "bore_list"

    .line 582
    .line 583
    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    add-int/lit8 v11, v11, 0x1

    .line 590
    .line 591
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 592
    .line 593
    .line 594
    move-result-object v2

    .line 595
    invoke-interface {v6, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    iget-object v2, v7, Lcom/sgscq/vpn/handler/b0;->e:Ljava/util/ArrayList;

    .line 599
    .line 600
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    invoke-static {v5, v15, v10, v6}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 604
    .line 605
    .line 606
    add-int/lit8 v0, v22, 0x1

    .line 607
    .line 608
    move-object/from16 v13, v20

    .line 609
    .line 610
    move-object/from16 v4, v21

    .line 611
    .line 612
    move/from16 v5, v23

    .line 613
    .line 614
    move-object/from16 v14, v24

    .line 615
    .line 616
    goto/16 :goto_a

    .line 617
    .line 618
    :cond_14
    move-object/from16 v21, v4

    .line 619
    .line 620
    move/from16 v23, v5

    .line 621
    .line 622
    move-object/from16 v20, v13

    .line 623
    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    .line 625
    .line 626
    const-string v1, "[Surrender] equipment +"

    .line 627
    .line 628
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    invoke-static {v13, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    :goto_c
    move-object/from16 v13, p1

    .line 648
    .line 649
    move-object/from16 v11, v16

    .line 650
    .line 651
    move-object/from16 v12, v17

    .line 652
    .line 653
    move-object/from16 v9, v18

    .line 654
    .line 655
    goto/16 :goto_4

    .line 656
    .line 657
    :cond_15
    move-object/from16 v24, v14

    .line 658
    .line 659
    const/4 v0, 0x0

    .line 660
    const/4 v14, 0x4

    .line 661
    if-ne v2, v14, :cond_19

    .line 662
    .line 663
    const/4 v2, 0x1

    .line 664
    move-object/from16 v14, p3

    .line 665
    .line 666
    invoke-static {v2, v1, v14}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    .line 667
    .line 668
    .line 669
    move-result v14

    .line 670
    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    .line 671
    .line 672
    .line 673
    move-result v14

    .line 674
    move v2, v0

    .line 675
    :goto_d
    if-ge v2, v5, :cond_18

    .line 676
    .line 677
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    move-object/from16 p3, v1

    .line 682
    .line 683
    instance-of v1, v0, Ljava/util/Map;

    .line 684
    .line 685
    if-eqz v1, :cond_16

    .line 686
    .line 687
    check-cast v0, Ljava/util/Map;

    .line 688
    .line 689
    move/from16 v20, v2

    .line 690
    .line 691
    move-object/from16 v21, v8

    .line 692
    .line 693
    move-object/from16 v8, v16

    .line 694
    .line 695
    move-object/from16 v16, v10

    .line 696
    .line 697
    move-object/from16 v10, v17

    .line 698
    .line 699
    goto :goto_e

    .line 700
    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    .line 701
    .line 702
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .line 704
    .line 705
    new-instance v1, Ljava/util/ArrayList;

    .line 706
    .line 707
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 708
    .line 709
    .line 710
    move/from16 v20, v2

    .line 711
    .line 712
    new-instance v2, Ljava/util/ArrayList;

    .line 713
    .line 714
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 715
    .line 716
    .line 717
    move-object/from16 v21, v8

    .line 718
    .line 719
    move-object/from16 v8, v16

    .line 720
    .line 721
    move-object/from16 v16, v10

    .line 722
    .line 723
    move-object/from16 v10, v17

    .line 724
    .line 725
    filled-new-array {v8, v1, v10, v2}, [Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object v1

    .line 729
    const-string v2, "del"

    .line 730
    .line 731
    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    invoke-interface {v6, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    :goto_e
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object v1

    .line 742
    instance-of v2, v1, Ljava/util/List;

    .line 743
    .line 744
    if-eqz v2, :cond_17

    .line 745
    .line 746
    check-cast v1, Ljava/util/List;

    .line 747
    .line 748
    goto :goto_f

    .line 749
    :cond_17
    invoke-static {v0, v10}, Lc/a;->o(Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 750
    .line 751
    .line 752
    move-result-object v1

    .line 753
    :goto_f
    move-object v2, v1

    .line 754
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 755
    .line 756
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 757
    .line 758
    .line 759
    const/4 v0, 0x1

    .line 760
    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    .line 761
    .line 762
    .line 763
    move-result v0

    .line 764
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    move-object/from16 v17, v8

    .line 769
    .line 770
    move-object v8, v0

    .line 771
    move-object v0, v11

    .line 772
    move-object/from16 p2, v1

    .line 773
    .line 774
    move-object/from16 v22, v10

    .line 775
    .line 776
    move-object/from16 v10, v19

    .line 777
    .line 778
    move-object/from16 v27, v11

    .line 779
    .line 780
    move-object/from16 v11, p3

    .line 781
    .line 782
    move-object/from16 p3, v27

    .line 783
    .line 784
    move-object/from16 v1, p0

    .line 785
    .line 786
    move/from16 v19, v20

    .line 787
    .line 788
    move/from16 v20, v14

    .line 789
    .line 790
    move-object v14, v2

    .line 791
    move-object/from16 v2, p2

    .line 792
    .line 793
    move-object/from16 v23, v3

    .line 794
    .line 795
    move-object v3, v12

    .line 796
    move-object/from16 v25, v7

    .line 797
    .line 798
    move-object v7, v4

    .line 799
    move-object/from16 v4, v23

    .line 800
    .line 801
    move-object/from16 v26, v12

    .line 802
    .line 803
    move v12, v5

    .line 804
    move-object v5, v9

    .line 805
    invoke-static/range {v0 .. v5}, Lc/a;->x(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    const-string v0, "skill_id"

    .line 809
    .line 810
    move-object/from16 v1, p2

    .line 811
    .line 812
    invoke-interface {v1, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    .line 814
    .line 815
    move-object/from16 v3, v24

    .line 816
    .line 817
    invoke-interface {v1, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    const-string v2, "skill_code"

    .line 821
    .line 822
    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    const-string v2, "card_type"

    .line 826
    .line 827
    const-string v4, "4"

    .line 828
    .line 829
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    .line 831
    .line 832
    invoke-interface {v1, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    const-string v2, "skill_level"

    .line 836
    .line 837
    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    .line 839
    .line 840
    const-string v2, "position"

    .line 841
    .line 842
    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    const-string v2, "pos"

    .line 846
    .line 847
    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    const-string v2, "skill_position"

    .line 851
    .line 852
    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    .line 854
    .line 855
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 856
    .line 857
    .line 858
    move-result-wide v4

    .line 859
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v2

    .line 863
    const-string v4, "get_time"

    .line 864
    .line 865
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    const-string v2, "is_natural"

    .line 869
    .line 870
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 871
    .line 872
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    .line 874
    .line 875
    const-string v2, "exp"

    .line 876
    .line 877
    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    const-string v2, "extra_level"

    .line 881
    .line 882
    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    .line 884
    .line 885
    const-string v2, "advanced_level"

    .line 886
    .line 887
    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    .line 889
    .line 890
    const/4 v2, 0x0

    .line 891
    invoke-static {v2}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 892
    .line 893
    .line 894
    move-result-object v4

    .line 895
    invoke-virtual {v4, v15, v1}, Lcom/sgscq/vpn/w1;->S(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 896
    .line 897
    .line 898
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 899
    .line 900
    .line 901
    invoke-static {v0, v15, v2, v6}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 902
    .line 903
    .line 904
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    .line 906
    .line 907
    add-int/lit8 v2, v19, 0x1

    .line 908
    .line 909
    move-object v4, v7

    .line 910
    move-object/from16 v19, v10

    .line 911
    .line 912
    move-object v1, v11

    .line 913
    move v5, v12

    .line 914
    move-object/from16 v10, v16

    .line 915
    .line 916
    move-object/from16 v16, v17

    .line 917
    .line 918
    move/from16 v14, v20

    .line 919
    .line 920
    move-object/from16 v8, v21

    .line 921
    .line 922
    move-object/from16 v17, v22

    .line 923
    .line 924
    move-object/from16 v3, v23

    .line 925
    .line 926
    move-object/from16 v7, v25

    .line 927
    .line 928
    move-object/from16 v12, v26

    .line 929
    .line 930
    move-object/from16 v11, p3

    .line 931
    .line 932
    goto/16 :goto_d

    .line 933
    .line 934
    :cond_18
    move v12, v5

    .line 935
    move-object/from16 v25, v7

    .line 936
    .line 937
    move-object/from16 v21, v8

    .line 938
    .line 939
    move-object/from16 v22, v17

    .line 940
    .line 941
    move-object v7, v4

    .line 942
    move-object/from16 v17, v16

    .line 943
    .line 944
    move-object/from16 v16, v10

    .line 945
    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    .line 947
    .line 948
    const-string v1, "[Surrender] skill +"

    .line 949
    .line 950
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 951
    .line 952
    .line 953
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 954
    .line 955
    .line 956
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    .line 958
    .line 959
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    .line 961
    .line 962
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v0

    .line 966
    invoke-static {v13, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    .line 968
    .line 969
    move-object/from16 v10, v18

    .line 970
    .line 971
    move-object/from16 v0, v25

    .line 972
    .line 973
    goto/16 :goto_18

    .line 974
    .line 975
    :cond_19
    move-object/from16 v25, v7

    .line 976
    .line 977
    move-object/from16 v21, v8

    .line 978
    .line 979
    move-object/from16 v26, v12

    .line 980
    .line 981
    move-object/from16 v22, v17

    .line 982
    .line 983
    move-object/from16 v3, v24

    .line 984
    .line 985
    move-object v7, v4

    .line 986
    move v12, v5

    .line 987
    move-object/from16 v17, v16

    .line 988
    .line 989
    move-object/from16 v16, v10

    .line 990
    .line 991
    const/16 v1, 0x8

    .line 992
    .line 993
    const-string v4, "9"

    .line 994
    .line 995
    const-string v5, "9\\d{6}"

    .line 996
    .line 997
    if-eq v2, v1, :cond_23

    .line 998
    .line 999
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 1000
    .line 1001
    .line 1002
    move-result v1

    .line 1003
    if-eqz v1, :cond_1a

    .line 1004
    .line 1005
    goto :goto_11

    .line 1006
    :cond_1a
    const/4 v1, 0x0

    .line 1007
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v1

    .line 1011
    invoke-virtual {v1, v15}, Lcom/sgscq/vpn/w1;->c1(Ljava/lang/String;)Ljava/util/Map;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v2

    .line 1015
    if-eqz v2, :cond_1b

    .line 1016
    .line 1017
    const-string v8, "item_type"

    .line 1018
    .line 1019
    const/4 v10, -0x1

    .line 1020
    invoke-static {v10, v8, v2}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    .line 1021
    .line 1022
    .line 1023
    move-result v2

    .line 1024
    const/16 v8, 0xf

    .line 1025
    .line 1026
    if-ne v2, v8, :cond_1b

    .line 1027
    .line 1028
    const/4 v1, 0x1

    .line 1029
    goto :goto_12

    .line 1030
    :cond_1b
    invoke-virtual {v15, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 1031
    .line 1032
    .line 1033
    move-result v2

    .line 1034
    if-eqz v2, :cond_1d

    .line 1035
    .line 1036
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 1037
    .line 1038
    .line 1039
    move-result v2

    .line 1040
    const/4 v8, 0x7

    .line 1041
    if-ne v2, v8, :cond_1c

    .line 1042
    .line 1043
    invoke-virtual {v15, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1044
    .line 1045
    .line 1046
    move-result v2

    .line 1047
    if-eqz v2, :cond_1c

    .line 1048
    .line 1049
    const/4 v2, 0x1

    .line 1050
    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v8

    .line 1054
    goto :goto_10

    .line 1055
    :cond_1c
    const/4 v2, 0x1

    .line 1056
    move-object v8, v15

    .line 1057
    :goto_10
    invoke-virtual {v1, v8}, Lcom/sgscq/vpn/w1;->z0(Ljava/lang/String;)Ljava/util/Map;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v1

    .line 1061
    if-eqz v1, :cond_1d

    .line 1062
    .line 1063
    move v1, v2

    .line 1064
    goto :goto_12

    .line 1065
    :cond_1d
    :goto_11
    move v1, v0

    .line 1066
    :goto_12
    if-eqz v1, :cond_1e

    .line 1067
    .line 1068
    goto :goto_15

    .line 1069
    :cond_1e
    const-string v1, "Item"

    .line 1070
    .line 1071
    invoke-static {v1, v6}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v1

    .line 1075
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v2

    .line 1079
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1080
    .line 1081
    .line 1082
    move-result v4

    .line 1083
    const-string v5, "item_id"

    .line 1084
    .line 1085
    const-string v8, "item_num"

    .line 1086
    .line 1087
    if-eqz v4, :cond_20

    .line 1088
    .line 1089
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v4

    .line 1093
    check-cast v4, Ljava/util/Map;

    .line 1094
    .line 1095
    move-object/from16 v10, v18

    .line 1096
    .line 1097
    invoke-static {v4, v3, v10, v5, v15}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1098
    .line 1099
    .line 1100
    move-result v11

    .line 1101
    if-eqz v11, :cond_1f

    .line 1102
    .line 1103
    invoke-interface {v4, v8, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v0

    .line 1107
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v0

    .line 1111
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1112
    .line 1113
    .line 1114
    move-result v0

    .line 1115
    add-int/2addr v0, v12

    .line 1116
    move-object/from16 v11, p2

    .line 1117
    .line 1118
    invoke-static {v0, v4, v8, v0, v11}, Lc/a;->t(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 1119
    .line 1120
    .line 1121
    const/4 v0, 0x1

    .line 1122
    goto :goto_14

    .line 1123
    :cond_1f
    move-object/from16 v18, v10

    .line 1124
    .line 1125
    goto :goto_13

    .line 1126
    :cond_20
    move-object/from16 v11, p2

    .line 1127
    .line 1128
    move-object/from16 v10, v18

    .line 1129
    .line 1130
    const/4 v4, 0x0

    .line 1131
    :goto_14
    if-nez v0, :cond_21

    .line 1132
    .line 1133
    move-object/from16 v0, v26

    .line 1134
    .line 1135
    invoke-static {v0, v15, v3, v15}, Lc/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v4

    .line 1139
    invoke-virtual {v4, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    .line 1141
    .line 1142
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v0

    .line 1146
    invoke-virtual {v4, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    .line 1148
    .line 1149
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v0

    .line 1153
    invoke-virtual {v4, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    .line 1155
    .line 1156
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1157
    .line 1158
    .line 1159
    :cond_21
    move-object/from16 v0, v25

    .line 1160
    .line 1161
    if-eqz v4, :cond_22

    .line 1162
    .line 1163
    iget-object v1, v0, Lcom/sgscq/vpn/handler/b0;->c:Ljava/util/ArrayList;

    .line 1164
    .line 1165
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    .line 1167
    .line 1168
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1169
    .line 1170
    const-string v2, "[Surrender] item +"

    .line 1171
    .line 1172
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1173
    .line 1174
    .line 1175
    goto :goto_17

    .line 1176
    :cond_23
    :goto_15
    move-object/from16 v10, v18

    .line 1177
    .line 1178
    move-object/from16 v0, v25

    .line 1179
    .line 1180
    invoke-virtual {v15, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 1181
    .line 1182
    .line 1183
    move-result v1

    .line 1184
    if-eqz v1, :cond_24

    .line 1185
    .line 1186
    goto :goto_16

    .line 1187
    :cond_24
    const-string v1, "2\\d{5}"

    .line 1188
    .line 1189
    invoke-virtual {v15, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 1190
    .line 1191
    .line 1192
    move-result v1

    .line 1193
    if-eqz v1, :cond_25

    .line 1194
    .line 1195
    invoke-virtual {v4, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v15

    .line 1199
    :cond_25
    :goto_16
    invoke-static {v12, v15, v6}, Lcom/sgscq/vpn/cloud/m0;->c1(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v1

    .line 1203
    iget-object v2, v0, Lcom/sgscq/vpn/handler/b0;->f:Ljava/util/ArrayList;

    .line 1204
    .line 1205
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    .line 1207
    .line 1208
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1209
    .line 1210
    const-string v2, "[Surrender] equipment piece +"

    .line 1211
    .line 1212
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1213
    .line 1214
    .line 1215
    :goto_17
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    .line 1220
    .line 1221
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v1

    .line 1228
    invoke-static {v13, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    .line 1230
    .line 1231
    goto :goto_18

    .line 1232
    :cond_26
    move-object v0, v7

    .line 1233
    move-object/from16 v21, v8

    .line 1234
    .line 1235
    move-object/from16 v16, v10

    .line 1236
    .line 1237
    move-object/from16 v17, v11

    .line 1238
    .line 1239
    move-object/from16 v22, v12

    .line 1240
    .line 1241
    move-object/from16 p1, v13

    .line 1242
    .line 1243
    move-object v10, v9

    .line 1244
    :goto_18
    move-object/from16 v13, p1

    .line 1245
    .line 1246
    move-object v7, v0

    .line 1247
    move-object v9, v10

    .line 1248
    move-object/from16 v10, v16

    .line 1249
    .line 1250
    move-object/from16 v11, v17

    .line 1251
    .line 1252
    move-object/from16 v8, v21

    .line 1253
    .line 1254
    move-object/from16 v12, v22

    .line 1255
    .line 1256
    goto/16 :goto_4

    .line 1257
    .line 1258
    :cond_27
    move-object v0, v7

    .line 1259
    return-object v0
.end method

.method public static N(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "claimed_evolution_"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/d0;->S(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static O(Ljava/util/Map;)Z
    .locals 2

    .line 1
    const-string v0, ""

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "id"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "item_id"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/sgscq/vpn/handler/d0;->f:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static P(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "General"

    .line 9
    .line 10
    invoke-static {v0, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/util/Map;

    .line 29
    .line 30
    const-string v1, "id"

    .line 31
    .line 32
    const-string v2, ""

    .line 33
    .line 34
    const-string v3, "general_id"

    .line 35
    .line 36
    invoke-static {v0, v1, v2, v3, p0}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 45
    return p0
.end method

.method public static Q(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "claimed_"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sgscq/vpn/handler/d0;->S(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_3

    check-cast p0, Ljava/util/Map;

    const-string p1, "claimed"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "rewarded"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1}, Lcom/sgscq/vpn/handler/d0;->S(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p0}, Lcom/sgscq/vpn/handler/d0;->S(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    :goto_0
    return v0
.end method

.method public static R(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 7

    .line 1
    const-string v0, "general_id"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p0}, Lcom/sgscq/vpn/handler/d0;->t0(Ljava/util/Map;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/d0;->Q(Ljava/lang/String;Ljava/util/Map;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    return v3

    .line 25
    :cond_0
    invoke-static {p0, p1, v1}, Lcom/sgscq/vpn/handler/d0;->o(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "surrender_list"

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    instance-of v2, p1, Ljava/util/List;

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    check-cast p1, Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_5

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    instance-of v5, v2, Ljava/util/Map;

    .line 58
    .line 59
    if-nez v5, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    check-cast v2, Ljava/util/Map;

    .line 63
    .line 64
    const-string v5, "surrender_type"

    .line 65
    .line 66
    const-string v6, "34"

    .line 67
    .line 68
    invoke-static {v2, v5, v6}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-nez v5, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    const-string v5, "surrender_status"

    .line 76
    .line 77
    invoke-static {v3, v5, v2}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eq v2, v4, :cond_2

    .line 82
    .line 83
    move p1, v4

    .line 84
    goto :goto_2

    .line 85
    :cond_5
    :goto_1
    move p1, v3

    .line 86
    :goto_2
    if-eqz p1, :cond_6

    .line 87
    .line 88
    return v3

    .line 89
    :cond_6
    const-string p1, "evolution_surrender_list"

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    instance-of p1, p0, Ljava/util/List;

    .line 96
    .line 97
    if-eqz p1, :cond_8

    .line 98
    .line 99
    check-cast p0, Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_7

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_7
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/d0;->N(Ljava/lang/String;Ljava/util/Map;)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    return p0

    .line 113
    :cond_8
    :goto_3
    return v4
.end method

.method public static S(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-ne p0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public static T(Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "item_id"

    .line 6
    .line 7
    invoke-static {p0, v0, v1, v2}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static U(Ljava/util/Map;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "item_num"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "num"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/handler/d0;->m0(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static W(Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 5

    .line 1
    instance-of v0, p1, Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    check-cast p1, Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_b

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v1, v0, Ljava/util/Map;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    check-cast v0, Ljava/util/Map;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    const-string v2, "type"

    .line 31
    .line 32
    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x1

    .line 37
    if-eq v2, v3, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-string v2, "pk_id"

    .line 41
    .line 42
    const-string v3, ""

    .line 43
    .line 44
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v4, "general_id"

    .line 49
    .line 50
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-nez v2, :cond_3

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    instance-of v4, v2, Ljava/lang/Number;

    .line 58
    .line 59
    if-eqz v4, :cond_4

    .line 60
    .line 61
    check-cast v2, Ljava/lang/Number;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_7

    .line 77
    .line 78
    const-string v4, "null"

    .line 79
    .line 80
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_5

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_5
    const-string v3, "\\d+\\.0+"

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_6

    .line 94
    .line 95
    invoke-static {v2, v1}, Lcom/sgscq/vpn/handler/d0;->c0(Ljava/lang/Object;I)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    goto :goto_2

    .line 104
    :cond_6
    move-object v3, v2

    .line 105
    :cond_7
    :goto_2
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_8

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_8
    const-string v1, "1"

    .line 113
    .line 114
    if-eqz p3, :cond_9

    .line 115
    .line 116
    const-string v2, "0"

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_9
    move-object v2, v1

    .line 120
    :goto_3
    const-string v3, "general_status"

    .line 121
    .line 122
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    if-eqz p3, :cond_a

    .line 126
    .line 127
    const-string v1, "2"

    .line 128
    .line 129
    :cond_a
    const-string v2, "atlas_status"

    .line 130
    .line 131
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 135
    .line 136
    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :cond_b
    return-void
.end method

.method public static X(Ljava/lang/Object;)I
    .locals 5

    .line 1
    instance-of v0, p0, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/Map;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast v2, Ljava/util/Map;

    const-string v3, "combat_level"

    invoke-static {v1, v3, v2}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v3

    const-string v4, "level"

    invoke-static {v1, v4, v2}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static varargs Y(Ljava/util/Map;[Ljava/lang/String;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p1, v2

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sgscq/vpn/handler/d0;->c0(Ljava/lang/Object;I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "user_info"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/util/Map;

    array-length v1, p1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v4, p1, v2

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sgscq/vpn/handler/d0;->c0(Ljava/lang/Object;I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return v3
.end method

.method public static Z(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static a(ILjava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 20

    .line 1
    move/from16 v0, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v15, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    const/16 v1, 0x14

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/16 v1, 0xf

    goto :goto_0

    :cond_2
    const/16 v1, 0x13

    :goto_0
    const-string v2, "id"

    const-string v3, "item_num"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "num"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "grant_type"

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "type"

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "item_type"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-string v17, "weight"

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v2

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v19, v13

    move-object/from16 v13, v18

    filled-new-array/range {v0 .. v13}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "item_id"

    invoke-static {v1, v14, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-interface {v15, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a0(Ljava/util/Map;Ljava/lang/String;D)D
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    return-wide p0

    :cond_0
    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    :cond_1
    return-wide p2
.end method

.method public static b(ILjava/util/List;Ljava/util/LinkedHashMap;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-lt v0, p0, :cond_1

    return-void

    :cond_1
    invoke-static {v1}, Lcom/sgscq/vpn/handler/d0;->y(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static b0(ILjava/lang/String;Ljava/util/Map;)I
    .locals 0

    .line 1
    if-nez p2, :cond_0

    return p0

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/sgscq/vpn/handler/d0;->c0(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static c(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 8

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sgscq/vpn/w1;->k(ILjava/lang/String;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "GeneralSoul"

    .line 5
    .line 6
    invoke-static {v0, p2}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const-string v2, "general_id"

    .line 19
    .line 20
    const-string v1, "id"

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/util/Map;

    .line 29
    .line 30
    const-string v3, ""

    .line 31
    .line 32
    invoke-static {v0, v1, v3, v2, p1}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_1
    const-string p2, "pk_id"

    .line 40
    .line 41
    invoke-static {p2, p1, v1, p1}, Lc/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const-string v5, "num"

    .line 46
    .line 47
    const/4 v6, 0x1

    .line 48
    const-string v7, "card_type"

    .line 49
    .line 50
    move-object v1, p2

    .line 51
    move-object v3, p1

    .line 52
    move v4, p0

    .line 53
    invoke-static/range {v1 .. v7}, Lc/a;->z(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object p2
.end method

.method public static c0(Ljava/lang/Object;I)I
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    return p1
.end method

.method public static d(Ljava/util/LinkedHashSet;Ljava/lang/Object;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "\\d{5,}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static d0(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/Map;)V
    .locals 2

    .line 1
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/d0;->r0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const-string v0, "0"

    invoke-static {p3, v0}, Lcom/sgscq/vpn/handler/d0;->r0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static e(Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/lang/Object;Lm/e;)V
    .locals 2

    .line 1
    instance-of v0, p2, Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p3, :cond_1

    .line 7
    .line 8
    invoke-static {}, Lm/e;->e()Lm/e;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    :cond_1
    check-cast p2, Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_5

    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    instance-of v1, v0, Ljava/util/Map;

    .line 29
    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    check-cast v0, Ljava/util/Map;

    .line 41
    .line 42
    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, v1}, Lm/e;->x(Ljava/util/LinkedHashMap;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    const-string v0, "pk_id"

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lm/e;->P(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_2

    .line 70
    .line 71
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_5
    return-void
.end method

.method public static e0(Ljava/lang/Object;)Ljava/util/Map;
    .locals 4

    .line 1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Map;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/String;

    :try_start_0
    invoke-static {p0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return-object v0

    :catch_0
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\"([^\"]+)\"\\s*:\\s*(-?\\d+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/d0;->c0(Ljava/lang/Object;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    return-object v0

    :cond_3
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public static f(Ljava/util/LinkedHashMap;Ljava/util/Map;)V
    .locals 4

    .line 1
    const-string v0, "evolution_chest_free_times"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/d0;->m0(Ljava/lang/Object;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v2, "free_times"

    .line 17
    .line 18
    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-string v0, "evolution_chest_refresh_times"

    .line 22
    .line 23
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/d0;->m0(Ljava/lang/Object;I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v2, "refresh_times"

    .line 36
    .line 37
    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const-string v0, "evolution_chest_open_times"

    .line 41
    .line 42
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/d0;->m0(Ljava/lang/Object;I)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "open_times"

    .line 55
    .line 56
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    const-string v0, "evolution_chest_free_refresh_times"

    .line 60
    .line 61
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const/4 v0, 0x3

    .line 66
    invoke-static {p1, v0}, Lcom/sgscq/vpn/handler/d0;->m0(Ljava/lang/Object;I)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string v0, "free_refresh_times"

    .line 75
    .line 76
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    const/16 p1, 0x14

    .line 80
    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const/4 v0, 0x1

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const/16 v1, 0xa

    .line 91
    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const-string v2, "single_price"

    .line 97
    .line 98
    const-string v3, "multi_price"

    .line 99
    .line 100
    filled-new-array {v2, v0, v3, v1}, [Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const-string v1, "refresh_price"

    .line 105
    .line 106
    invoke-static {v1, p1, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const-string v0, "cost"

    .line 111
    .line 112
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public static f0(Ljava/lang/String;Ljava/util/Map;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    invoke-static {v1, v0}, Lcom/sgscq/vpn/handler/d0;->c0(Ljava/lang/Object;I)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static g(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/LinkedHashMap;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static g0(Ljava/util/Map;Ljava/util/Map;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    if-gtz p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/sgscq/vpn/handler/d0;->U(Ljava/util/Map;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sub-int/2addr v0, p2

    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const-string v0, "num"

    .line 15
    .line 16
    const-string v1, "item_num"

    .line 17
    .line 18
    invoke-static {p2, p1, v0, p2, v1}, Lc/a;->t(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    if-gtz p2, :cond_1

    .line 22
    .line 23
    const-string p2, "Item"

    .line 24
    .line 25
    invoke-static {p2, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    const-string p0, "pk_id"

    .line 33
    .line 34
    const-string p2, ""

    .line 35
    .line 36
    invoke-interface {p1, p0, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public static h(Lcom/sgscq/vpn/handler/j;Ljava/util/Map;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/handler/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "delta_data"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_0
    const-string v2, "cmn_modules"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sgscq/vpn/handler/d0;->s0(Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/sgscq/vpn/handler/j;->a(Ljava/util/Map;Ljava/util/AbstractCollection;)V

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/handler/j;->b(Ljava/util/Map;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public static h0(Lcom/sgscq/vpn/w1;Ljava/util/Map;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "item_id"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->c1(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "related_id"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    invoke-static {p0}, Lcom/sgscq/vpn/handler/d0;->C(Lcom/sgscq/vpn/w1;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_4
    return-object v1
.end method

.method public static i(III)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static i0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "add"

    const-string v2, "upd"

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sgscq/vpn/handler/d0;->g(Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/handler/d0;->g(Ljava/lang/Object;Ljava/util/ArrayList;)V

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    filled-new-array {v2, v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "del"

    invoke-static {v0, p0, p1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static j()Ljava/util/LinkedHashMap;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "error_code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ret"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "result"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "msg"

    const-string v3, "success"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "surrender_list"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "complete_list"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "item_id"

    const-string v3, "600000"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "item_status"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "all_status"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "all_progress"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "all_progressed"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "rewards"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "evolution_surrender_list"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "evolution_item_id"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "evolution_item_status"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static j0(ILjava/util/ArrayList;)Ljava/util/List;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->floorMod(II)I

    move-result p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    add-int v2, v1, p0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static k0(Ljava/util/Map;Ljava/lang/String;D)D
    .locals 1

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    :cond_0
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_3

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-wide p0

    :cond_2
    :goto_0
    return-wide p2

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    return-wide p0

    :catch_0
    :cond_5
    :goto_1
    return-wide p2
.end method

.method public static l(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    new-instance v0, La/o;

    .line 2
    .line 3
    invoke-direct {v0}, La/o;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/sgscq/vpn/p5;->X(Landroid/content/Context;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Lcom/sgscq/vpn/handler/GameFeatureHandler$1;

    .line 11
    .line 12
    invoke-direct {v2}, Lcom/sgscq/vpn/handler/GameFeatureHandler$1;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/util/Map;

    .line 24
    .line 25
    const-string v2, "evolution_buffs.json"

    .line 26
    .line 27
    invoke-static {p0, v2}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v3, Lcom/sgscq/vpn/handler/GameFeatureHandler$2;

    .line 32
    .line 33
    invoke-direct {v3}, Lcom/sgscq/vpn/handler/GameFeatureHandler$2;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v0, v2, v3}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/util/Map;

    .line 45
    .line 46
    const-string v3, "evolutions.json"

    .line 47
    .line 48
    invoke-static {p0, v3}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    new-instance v4, Lcom/sgscq/vpn/handler/GameFeatureHandler$3;

    .line 53
    .line 54
    invoke-direct {v4}, Lcom/sgscq/vpn/handler/GameFeatureHandler$3;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v0, v3, v4}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Ljava/util/List;

    .line 66
    .line 67
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v4, "evolution_id"

    .line 73
    .line 74
    const-string v5, "general_id"

    .line 75
    .line 76
    const-string v6, ""

    .line 77
    .line 78
    if-eqz v0, :cond_0

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-eqz v7, :cond_0

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    check-cast v7, Ljava/util/Map;

    .line 95
    .line 96
    invoke-static {v7, v4, v6, v5}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    const/4 v0, 0x2

    .line 105
    invoke-static {v0}, Lcom/sgscq/vpn/handler/t0;->C(I)Ljava/util/LinkedHashSet;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-static {v0}, Lcom/sgscq/vpn/handler/t0;->C(I)Ljava/util/LinkedHashSet;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/sgscq/vpn/handler/t0;->o(Ljava/util/LinkedHashSet;)Ljava/util/LinkedHashSet;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {p0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 122
    .line 123
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 124
    .line 125
    .line 126
    if-eqz v1, :cond_1

    .line 127
    .line 128
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    if-eqz v9, :cond_1

    .line 137
    .line 138
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    check-cast v9, Ljava/lang/String;

    .line 143
    .line 144
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    const-string v10, "forge_piece"

    .line 149
    .line 150
    invoke-static {v9, v10, v8, v6, p0}, Lcom/sgscq/vpn/handler/d0;->q(Ljava/lang/Object;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/sgscq/vpn/w1;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_1
    if-eqz v2, :cond_5

    .line 155
    .line 156
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-eqz v3, :cond_5

    .line 169
    .line 170
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    instance-of v7, v3, Ljava/util/Map;

    .line 175
    .line 176
    if-nez v7, :cond_2

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_2
    check-cast v3, Ljava/util/Map;

    .line 180
    .line 181
    const-string v7, "is_open"

    .line 182
    .line 183
    const-string v9, "1"

    .line 184
    .line 185
    invoke-interface {v3, v7, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    if-nez v7, :cond_3

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_3
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    if-nez v9, :cond_4

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_4
    invoke-interface {v3, v4, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    const-string v9, "item_list"

    .line 228
    .line 229
    invoke-static {v3, v9, v8, v7, p0}, Lcom/sgscq/vpn/handler/d0;->q(Ljava/lang/Object;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/sgscq/vpn/w1;)V

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 240
    .line 241
    .line 242
    return-object p0
.end method

.method public static l0(ILjava/lang/String;Ljava/util/Map;)I
    .locals 1

    .line 1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return p0

    :cond_0
    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    double-to-int p0, p1

    :cond_2
    :goto_0
    return p0

    :cond_3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    double-to-int p0, p1

    :catch_0
    :cond_5
    :goto_1
    return p0
.end method

.method public static m()Ljava/util/LinkedHashMap;
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

.method public static m0(Ljava/lang/Object;I)I
    .locals 2

    .line 1
    if-nez p0, :cond_0

    return p1

    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    double-to-int p0, v0

    return p0

    :cond_2
    :goto_0
    return p1

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    double-to-int p0, v0

    return p0

    :catch_0
    :cond_5
    :goto_1
    return p1
.end method

.method public static n(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 3

    .line 1
    const-string v0, "general_id"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0, p0}, Lcom/sgscq/vpn/handler/d0;->P(Ljava/lang/String;Ljava/util/Map;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/sgscq/vpn/handler/d0;->j()Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    if-eqz p2, :cond_1

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    :cond_1
    const-string v1, "surrender_progress"

    .line 33
    .line 34
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    instance-of v2, v1, Ljava/util/Map;

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    check-cast v1, Ljava/util/Map;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move-object v1, p2

    .line 46
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/sgscq/vpn/handler/d0;->o(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/d0;->Q(Ljava/lang/String;Ljava/util/Map;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    const/4 p2, 0x1

    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v2, "item_status"

    .line 62
    .line 63
    invoke-interface {p0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    const-string v2, "all_status"

    .line 67
    .line 68
    invoke-interface {p0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/d0;->N(Ljava/lang/String;Ljava/util/Map;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string p2, "evolution_item_status"

    .line 82
    .line 83
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    const-string p2, "evolution_all_status"

    .line 87
    .line 88
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    :cond_4
    return-object p0
.end method

.method public static n0(Ljava/util/ArrayList;Ljava/util/Random;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/sgscq/vpn/handler/d0;->y(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_1
    invoke-static {p0, p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int v2, v0, v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public static o(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 26

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
    const-string v3, "surrender_gift_id"

    .line 8
    .line 9
    const-string v4, "600000"

    .line 10
    .line 11
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    const-string v3, "evolution_surrender_gift_id"

    .line 20
    .line 21
    invoke-interface {v1, v3, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    new-instance v4, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v11, "rewards"

    .line 35
    .line 36
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    instance-of v7, v5, Ljava/util/List;

    .line 41
    .line 42
    if-eqz v7, :cond_0

    .line 43
    .line 44
    move-object v4, v5

    .line 45
    check-cast v4, Ljava/util/List;

    .line 46
    .line 47
    :cond_0
    move-object v12, v4

    .line 48
    new-instance v4, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v13, "evolution_rewards"

    .line 54
    .line 55
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    instance-of v7, v5, Ljava/util/List;

    .line 60
    .line 61
    if-eqz v7, :cond_1

    .line 62
    .line 63
    move-object v4, v5

    .line 64
    check-cast v4, Ljava/util/List;

    .line 65
    .line 66
    :cond_1
    move-object v14, v4

    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-static {v4}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v5}, Lcom/sgscq/vpn/w1;->V1()Lcom/sgscq/vpn/a7;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    new-instance v7, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    new-instance v8, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    new-instance v9, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v10, "general_id"

    .line 92
    .line 93
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    if-eqz v10, :cond_2

    .line 98
    .line 99
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    :cond_2
    const-string v10, "surrender_tasks"

    .line 104
    .line 105
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    instance-of v15, v10, Ljava/util/List;

    .line 110
    .line 111
    const/16 v21, 0x0

    .line 112
    .line 113
    move-object/from16 v23, v3

    .line 114
    .line 115
    const/4 v3, 0x1

    .line 116
    if-nez v15, :cond_3

    .line 117
    .line 118
    new-instance v4, Lcom/sgscq/vpn/battle/e;

    .line 119
    .line 120
    invoke-direct {v4, v3, v7, v8, v9}, Lcom/sgscq/vpn/battle/e;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 121
    .line 122
    .line 123
    move-object/from16 v24, v13

    .line 124
    .line 125
    goto/16 :goto_8

    .line 126
    .line 127
    :cond_3
    if-eqz v0, :cond_7

    .line 128
    .line 129
    if-eqz v4, :cond_7

    .line 130
    .line 131
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-eqz v3, :cond_4

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_4
    const-string v3, "EvolutionInfo"

    .line 139
    .line 140
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    instance-of v15, v3, Ljava/util/Map;

    .line 145
    .line 146
    if-nez v15, :cond_5

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_5
    check-cast v3, Ljava/util/Map;

    .line 150
    .line 151
    const-string v15, "add"

    .line 152
    .line 153
    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v15

    .line 157
    invoke-static {v15, v4}, Lcom/sgscq/vpn/cloud/m0;->d1(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v15

    .line 161
    if-nez v15, :cond_6

    .line 162
    .line 163
    const-string v15, "upd"

    .line 164
    .line 165
    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-static {v3, v4}, Lcom/sgscq/vpn/cloud/m0;->d1(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    if-eqz v3, :cond_7

    .line 174
    .line 175
    :cond_6
    const/4 v3, 0x1

    .line 176
    goto :goto_1

    .line 177
    :cond_7
    :goto_0
    move/from16 v3, v21

    .line 178
    .line 179
    :goto_1
    check-cast v10, Ljava/util/List;

    .line 180
    .line 181
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v10

    .line 189
    if-eqz v10, :cond_11

    .line 190
    .line 191
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v10

    .line 195
    instance-of v15, v10, Ljava/util/Map;

    .line 196
    .line 197
    if-nez v15, :cond_8

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_8
    check-cast v10, Ljava/util/Map;

    .line 201
    .line 202
    const-string v15, "surrender_id"

    .line 203
    .line 204
    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v15

    .line 208
    if-eqz v15, :cond_9

    .line 209
    .line 210
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v15

    .line 214
    goto :goto_3

    .line 215
    :cond_9
    const/4 v15, 0x0

    .line 216
    :goto_3
    move-object/from16 v16, v4

    .line 217
    .line 218
    const-string v4, "surrender_type"

    .line 219
    .line 220
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    if-eqz v4, :cond_a

    .line 225
    .line 226
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    goto :goto_4

    .line 231
    :cond_a
    const/4 v4, 0x0

    .line 232
    :goto_4
    move-object/from16 v24, v13

    .line 233
    .line 234
    if-eqz v5, :cond_c

    .line 235
    .line 236
    if-eqz v15, :cond_b

    .line 237
    .line 238
    iget-object v13, v5, Lcom/sgscq/vpn/a7;->b:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v13, Ljava/util/Set;

    .line 241
    .line 242
    invoke-interface {v13, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v13

    .line 246
    if-eqz v13, :cond_b

    .line 247
    .line 248
    const/4 v13, 0x1

    .line 249
    goto :goto_5

    .line 250
    :cond_b
    move/from16 v13, v21

    .line 251
    .line 252
    :goto_5
    if-nez v13, :cond_d

    .line 253
    .line 254
    :cond_c
    const-string v13, "34"

    .line 255
    .line 256
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    if-eqz v4, :cond_e

    .line 261
    .line 262
    :cond_d
    const/4 v4, 0x1

    .line 263
    goto :goto_6

    .line 264
    :cond_e
    move/from16 v4, v21

    .line 265
    .line 266
    :goto_6
    if-eqz v4, :cond_f

    .line 267
    .line 268
    if-eqz v3, :cond_10

    .line 269
    .line 270
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    goto :goto_7

    .line 274
    :cond_f
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    :cond_10
    :goto_7
    move-object/from16 v4, v16

    .line 278
    .line 279
    move-object/from16 v13, v24

    .line 280
    .line 281
    goto :goto_2

    .line 282
    :cond_11
    move-object/from16 v24, v13

    .line 283
    .line 284
    new-instance v4, Lcom/sgscq/vpn/battle/e;

    .line 285
    .line 286
    const/4 v3, 0x1

    .line 287
    invoke-direct {v4, v3, v7, v8, v9}, Lcom/sgscq/vpn/battle/e;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 288
    .line 289
    .line 290
    :goto_8
    iget-object v3, v4, Lcom/sgscq/vpn/battle/e;->a:Ljava/util/List;

    .line 291
    .line 292
    invoke-static {v3, v0, v2, v1}, Lcom/sgscq/vpn/handler/d0;->p(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/sgscq/vpn/handler/c0;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    iget-object v5, v4, Lcom/sgscq/vpn/battle/e;->b:Ljava/util/List;

    .line 297
    .line 298
    invoke-static {v5, v0, v2, v1}, Lcom/sgscq/vpn/handler/d0;->p(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/sgscq/vpn/handler/c0;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    iget-object v4, v4, Lcom/sgscq/vpn/battle/e;->c:Ljava/util/List;

    .line 303
    .line 304
    invoke-static {v4, v0, v2, v1}, Lcom/sgscq/vpn/handler/d0;->p(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/sgscq/vpn/handler/c0;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    new-instance v1, Ljava/util/ArrayList;

    .line 309
    .line 310
    iget-object v2, v3, Lcom/sgscq/vpn/handler/c0;->a:Ljava/util/List;

    .line 311
    .line 312
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 313
    .line 314
    .line 315
    iget-object v2, v5, Lcom/sgscq/vpn/handler/c0;->a:Ljava/util/List;

    .line 316
    .line 317
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 318
    .line 319
    .line 320
    new-instance v2, Ljava/util/ArrayList;

    .line 321
    .line 322
    iget-object v4, v3, Lcom/sgscq/vpn/handler/c0;->b:Ljava/util/List;

    .line 323
    .line 324
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 325
    .line 326
    .line 327
    iget-object v4, v5, Lcom/sgscq/vpn/handler/c0;->b:Ljava/util/List;

    .line 328
    .line 329
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 330
    .line 331
    .line 332
    iget-object v13, v0, Lcom/sgscq/vpn/handler/c0;->b:Ljava/util/List;

    .line 333
    .line 334
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 335
    .line 336
    .line 337
    iget v15, v3, Lcom/sgscq/vpn/handler/c0;->c:I

    .line 338
    .line 339
    iget v3, v3, Lcom/sgscq/vpn/handler/c0;->d:I

    .line 340
    .line 341
    invoke-static {v15, v3}, Lcom/sgscq/vpn/handler/y0;->f(II)Z

    .line 342
    .line 343
    .line 344
    move-result v25

    .line 345
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 346
    .line 347
    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 348
    .line 349
    .line 350
    const-string v18, "error_code"

    .line 351
    .line 352
    const-string v20, "ret"

    .line 353
    .line 354
    const-string v22, "code"

    .line 355
    .line 356
    move/from16 v16, v21

    .line 357
    .line 358
    move-object/from16 v17, v10

    .line 359
    .line 360
    move/from16 v19, v21

    .line 361
    .line 362
    invoke-static/range {v16 .. v22}, Lc/a;->s(ILjava/util/LinkedHashMap;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 363
    .line 364
    .line 365
    const-string v4, "result"

    .line 366
    .line 367
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 368
    .line 369
    invoke-interface {v10, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    const-string v4, "msg"

    .line 373
    .line 374
    const-string v5, "success"

    .line 375
    .line 376
    invoke-interface {v10, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    const-string v4, "surrender_list"

    .line 380
    .line 381
    invoke-interface {v10, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    const-string v1, "complete_list"

    .line 385
    .line 386
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    const-string v5, "item_id"

    .line 390
    .line 391
    const-string v8, "item_status"

    .line 392
    .line 393
    const-string v1, "all_status"

    .line 394
    .line 395
    move-object v4, v10

    .line 396
    move/from16 v7, v25

    .line 397
    .line 398
    move/from16 v9, v25

    .line 399
    .line 400
    move-object/from16 v16, v13

    .line 401
    .line 402
    move-object v13, v10

    .line 403
    move-object v10, v1

    .line 404
    invoke-static/range {v4 .. v10}, Lc/a;->z(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    const-string v3, "all_progress"

    .line 412
    .line 413
    invoke-interface {v13, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    const-string v3, "all_progressed"

    .line 421
    .line 422
    invoke-interface {v13, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    invoke-interface {v13, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-object/from16 v1, v24

    .line 429
    .line 430
    invoke-interface {v13, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    const-string v1, "evolution_surrender_list"

    .line 434
    .line 435
    iget-object v3, v0, Lcom/sgscq/vpn/handler/c0;->a:Ljava/util/List;

    .line 436
    .line 437
    invoke-interface {v13, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    const-string v1, "evolution_item_id"

    .line 441
    .line 442
    move-object/from16 v3, v23

    .line 443
    .line 444
    invoke-interface {v13, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    iget v1, v0, Lcom/sgscq/vpn/handler/c0;->c:I

    .line 448
    .line 449
    iget v0, v0, Lcom/sgscq/vpn/handler/c0;->d:I

    .line 450
    .line 451
    invoke-static {v1, v0}, Lcom/sgscq/vpn/handler/y0;->f(II)Z

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    const-string v4, "evolution_item_status"

    .line 460
    .line 461
    invoke-interface {v13, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    const-string v3, "normal_all_status"

    .line 465
    .line 466
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    invoke-interface {v13, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    new-instance v3, Ljava/util/ArrayList;

    .line 474
    .line 475
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 476
    .line 477
    .line 478
    const-string v2, "normal_complete_list"

    .line 479
    .line 480
    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    invoke-static {v1, v0}, Lcom/sgscq/vpn/handler/y0;->f(II)Z

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    const-string v1, "evolution_all_status"

    .line 492
    .line 493
    invoke-interface {v13, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    new-instance v0, Ljava/util/ArrayList;

    .line 497
    .line 498
    move-object/from16 v1, v16

    .line 499
    .line 500
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 501
    .line 502
    .line 503
    const-string v1, "evolution_complete_list"

    .line 504
    .line 505
    invoke-interface {v13, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    return-object v13
.end method

.method public static o0(Ljava/util/List;Ljava/util/Random;)Ljava/util/LinkedHashMap;
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    :goto_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const-string p0, "item_num"

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "num"

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static p(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/sgscq/vpn/handler/c0;
    .locals 45

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7, v6}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const-string v6, "general_id"

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, ""

    if-nez v8, :cond_0

    move-object/from16 v8, p3

    invoke-interface {v8, v6, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    move-object/from16 v8, p3

    :goto_1
    const-string v10, "surrender_id"

    invoke-virtual {v7, v10, v9}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const-string v13, "progress_num"

    invoke-static {v12, v13, v7}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v14

    if-gtz v14, :cond_1

    goto :goto_2

    :cond_1
    move v12, v14

    :goto_2
    move-object/from16 v14, p2

    invoke-static {v5, v11, v14}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v5

    const-string v15, "source_type"

    move-object/from16 v16, v3

    const-string v3, "0"

    const-string v8, "param_value"

    const-string v14, "map_id"

    move-object/from16 v17, v1

    const-string v1, "source"

    move-object/from16 v18, v10

    const-string v10, "surrender_type"

    move-object/from16 v19, v2

    const-string v2, "type"

    if-eqz v0, :cond_87

    move-object/from16 v20, v11

    const/4 v11, 0x1

    .line 1
    invoke-static {v11, v13, v7}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v11

    if-gtz v11, :cond_2

    const/4 v11, 0x1

    :cond_2
    move-object/from16 v21, v13

    const/4 v13, 0x0

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    move/from16 v22, v4

    invoke-virtual {v7, v2, v9}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v7, v10, v4}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move/from16 v23, v12

    .line 2
    new-instance v12, Ljava/util/LinkedHashSet;

    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    move-object/from16 v24, v6

    const-string v6, "limit_first"

    move-object/from16 v25, v15

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v12, v15}, Lcom/sgscq/vpn/handler/d0;->d(Ljava/util/LinkedHashSet;Ljava/lang/Object;)V

    const-string v15, "limit_second"

    move-object/from16 v26, v3

    invoke-virtual {v7, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/sgscq/vpn/handler/d0;->d(Ljava/util/LinkedHashSet;Ljava/lang/Object;)V

    const-string v3, "limit_third"

    invoke-virtual {v7, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/sgscq/vpn/handler/d0;->d(Ljava/util/LinkedHashSet;Ljava/lang/Object;)V

    invoke-virtual {v7, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v27, v15

    instance-of v15, v3, Ljava/util/List;

    if-eqz v15, :cond_4

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v28, v3

    instance-of v3, v15, Ljava/util/Map;

    if-nez v3, :cond_3

    goto :goto_4

    :cond_3
    check-cast v15, Ljava/util/Map;

    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/sgscq/vpn/handler/d0;->d(Ljava/util/LinkedHashSet;Ljava/lang/Object;)V

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/sgscq/vpn/handler/d0;->d(Ljava/util/LinkedHashSet;Ljava/lang/Object;)V

    :goto_4
    move-object/from16 v3, v28

    goto :goto_3

    .line 3
    :cond_4
    invoke-virtual {v7, v2, v9}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v10, v3}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v15, "29"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    move-object/from16 v28, v8

    goto :goto_7

    :cond_5
    move-object/from16 v28, v8

    const-string v8, "13"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "24"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_8

    :cond_6
    invoke-virtual {v7, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v8, v3, Ljava/util/List;

    if-eqz v8, :cond_9

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v29, v3

    instance-of v3, v8, Ljava/util/Map;

    if-nez v3, :cond_7

    goto :goto_6

    :cond_7
    check-cast v8, Ljava/util/Map;

    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_8

    :cond_8
    :goto_6
    move-object/from16 v3, v29

    goto :goto_5

    :cond_9
    :goto_7
    const/4 v3, 0x0

    goto :goto_9

    :cond_a
    :goto_8
    const/4 v3, 0x1

    :goto_9
    if-eqz v3, :cond_11

    const-string v3, "dungeon_stars"

    .line 4
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v8, v3, Ljava/lang/String;

    if-eqz v8, :cond_d

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_a
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_d

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v31, v14

    move-object/from16 v14, v30

    check-cast v14, Ljava/lang/String;

    move-object/from16 v30, v10

    invoke-static {v14}, Lcom/sgscq/vpn/handler/d0;->Z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v32, v2

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v33, v15

    const-string v15, "\""

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_b

    :cond_b
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_b

    :cond_c
    move-object/from16 v10, v30

    move-object/from16 v14, v31

    move-object/from16 v2, v32

    move-object/from16 v15, v33

    goto :goto_a

    :cond_d
    move-object/from16 v32, v2

    move-object/from16 v30, v10

    move-object/from16 v31, v14

    move-object/from16 v33, v15

    invoke-static {v3}, Lcom/sgscq/vpn/handler/d0;->e0(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/sgscq/vpn/handler/d0;->Z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/sgscq/vpn/handler/d0;->f0(Ljava/lang/String;Ljava/util/Map;)I

    move-result v10

    if-lez v10, :cond_f

    goto :goto_b

    :cond_f
    invoke-static {v8, v2}, Lcom/sgscq/vpn/handler/d0;->f0(Ljava/lang/String;Ljava/util/Map;)I

    move-result v8

    if-lez v8, :cond_e

    :goto_b
    const/4 v2, 0x1

    goto :goto_c

    :cond_10
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_12

    .line 5
    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_d

    :cond_11
    move-object/from16 v32, v2

    move-object/from16 v30, v10

    move-object/from16 v31, v14

    move-object/from16 v33, v15

    :cond_12
    :goto_d
    const-string v2, "3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {v11, v6, v7}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    const-string v3, "user_vip_level"

    const-string v8, "vip_level"

    const-string v10, "vip"

    filled-new-array {v3, v8, v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sgscq/vpn/handler/d0;->Y(Ljava/util/Map;[Ljava/lang/String;)I

    move-result v3

    if-lt v3, v2, :cond_13

    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_13
    const-string v2, "6"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "tower_total_challenge_times"

    const-string v3, "tower_total_fight_times"

    const-string v8, "surrender_tower_challenge_times"

    filled-new-array {v2, v3, v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sgscq/vpn/handler/d0;->Y(Ljava/util/Map;[Ljava/lang/String;)I

    move-result v2

    invoke-static {v11, v5, v2}, Lcom/sgscq/vpn/handler/d0;->i(III)I

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_14
    const-string v2, "4"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "arena_total_fight_times"

    const-string v3, "competition_total_fight_times"

    const-string v8, "surrender_total_arena_fights"

    filled-new-array {v2, v3, v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sgscq/vpn/handler/d0;->Y(Ljava/util/Map;[Ljava/lang/String;)I

    move-result v2

    invoke-static {v11, v5, v2}, Lcom/sgscq/vpn/handler/d0;->i(III)I

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_15
    const-string v2, "7"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {v11, v6, v7}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    const-string v3, "tower_last_run_point_progress"

    const-string v8, "tower_point_progress"

    const-string v10, "tower_max_point_progress"

    const-string v14, "tower_last_run_max_point_progress"

    filled-new-array {v10, v14, v3, v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sgscq/vpn/handler/d0;->Y(Ljava/util/Map;[Ljava/lang/String;)I

    move-result v3

    if-lt v3, v2, :cond_16

    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_16
    const-string v2, "8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "ladder_total_fight_times"

    const-string v3, "ladder_total_battle_times"

    const-string v8, "surrender_ladder_fight_times"

    filled-new-array {v2, v3, v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sgscq/vpn/handler/d0;->Y(Ljava/util/Map;[Ljava/lang/String;)I

    move-result v2

    invoke-static {v11, v5, v2}, Lcom/sgscq/vpn/handler/d0;->i(III)I

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_17
    const-string v2, "9"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_1d

    invoke-static {v11, v6, v7}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    const/4 v8, 0x1

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const-string v8, "ladder_best_rank"

    const-string v10, "ladder_rank"

    const-string v14, "best_ladder_rank"

    filled-new-array {v8, v10, v14}, [Ljava/lang/String;

    move-result-object v8

    const v10, 0x7fffffff

    const/4 v14, 0x0

    :goto_e
    if-ge v14, v3, :cond_19

    .line 6
    aget-object v3, v8, v14

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v15, 0x0

    invoke-static {v3, v15}, Lcom/sgscq/vpn/handler/d0;->c0(Ljava/lang/Object;I)I

    move-result v3

    if-lez v3, :cond_18

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v10, v3

    :cond_18
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x3

    goto :goto_e

    :cond_19
    const-string v3, "user_info"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v14, v3, Ljava/util/Map;

    if-eqz v14, :cond_1b

    check-cast v3, Ljava/util/Map;

    const/4 v14, 0x0

    :goto_f
    const/4 v15, 0x3

    if-ge v14, v15, :cond_1b

    aget-object v15, v8, v14

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v29, v3

    const/4 v3, 0x0

    invoke-static {v15, v3}, Lcom/sgscq/vpn/handler/d0;->c0(Ljava/lang/Object;I)I

    move-result v3

    if-lez v3, :cond_1a

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_1a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v29

    goto :goto_f

    :cond_1b
    const v3, 0x7fffffff

    if-ne v10, v3, :cond_1c

    const/4 v10, 0x0

    :cond_1c
    if-lez v10, :cond_1d

    if-gt v10, v2, :cond_1d

    .line 7
    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_1d
    const-string v2, "14"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "friend_count"

    const-string v3, "total_friend_count"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sgscq/vpn/handler/d0;->Y(Ljava/util/Map;[Ljava/lang/String;)I

    move-result v2

    const-string v3, "Friend"

    .line 8
    invoke-static {v3, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-string v8, "relationship_friends"

    .line 9
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 10
    instance-of v10, v8, Ljava/util/List;

    if-eqz v10, :cond_1e

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_10

    :cond_1e
    const/4 v8, 0x0

    .line 11
    :goto_10
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v11, v5, v2}, Lcom/sgscq/vpn/handler/d0;->i(III)I

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_1f
    const-string v2, "15"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "user_login_days"

    const-string v3, "user_count_login_days"

    const-string v8, "activity_cumulative_login_days"

    const-string v10, "total_login_days"

    const-string v14, "login_days"

    filled-new-array {v8, v10, v14, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sgscq/vpn/handler/d0;->Y(Ljava/util/Map;[Ljava/lang/String;)I

    move-result v2

    invoke-static {v11, v5, v2}, Lcom/sgscq/vpn/handler/d0;->i(III)I

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_20
    const-string v2, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 12
    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_11

    :cond_21
    const-string v3, "surrender_progress"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v8, v3, Ljava/util/Map;

    if-nez v8, :cond_22

    :goto_11
    const/4 v3, 0x0

    move-object/from16 v14, v26

    goto :goto_14

    :cond_22
    check-cast v3, Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v10, 0x0

    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_25

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v15, v14, v3}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v15

    if-gtz v15, :cond_23

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v29, v8

    const-string v8, "claimed_"

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v14, v26

    invoke-interface {v3, v8, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/sgscq/vpn/handler/d0;->S(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    goto :goto_13

    :cond_23
    move-object/from16 v29, v8

    move-object/from16 v14, v26

    :goto_13
    add-int/lit8 v10, v10, 0x1

    :cond_24
    move-object/from16 v26, v14

    move-object/from16 v8, v29

    goto :goto_12

    :cond_25
    move-object/from16 v14, v26

    move v3, v10

    :goto_14
    if-lez v3, :cond_27

    .line 13
    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_15

    :cond_26
    move-object/from16 v14, v26

    :cond_27
    :goto_15
    const-string v3, "17"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v8, "2"

    const-string v10, "18"

    const-string v15, "Skill"

    move-object/from16 v26, v6

    const-string v6, "add"

    if-eqz v3, :cond_40

    .line 14
    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    move/from16 v29, v5

    const-string v5, "id"

    if-eqz v3, :cond_29

    :cond_28
    move-object/from16 v34, v4

    move/from16 v36, v11

    goto :goto_17

    :cond_29
    const-string v3, "Equipment"

    invoke-static {v3, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    move-object/from16 v35, v3

    move-object/from16 v3, v34

    check-cast v3, Ljava/util/Map;

    move-object/from16 v34, v4

    invoke-interface {v3, v5, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move/from16 v36, v11

    const-string v11, "equipment_id"

    invoke-interface {v3, v11, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x1

    goto :goto_18

    :cond_2a
    move-object/from16 v4, v34

    move-object/from16 v3, v35

    move/from16 v11, v36

    goto :goto_16

    :goto_17
    const/4 v3, 0x0

    :goto_18
    if-nez v3, :cond_3f

    .line 15
    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_19

    :cond_2b
    const-string v3, "Atlas"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/Map;

    if-nez v4, :cond_2c

    goto :goto_19

    :cond_2c
    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/List;

    if-nez v4, :cond_2d

    :goto_19
    const/4 v3, 0x0

    goto/16 :goto_21

    :cond_2d
    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v35, v3

    instance-of v3, v11, Ljava/util/Map;

    if-nez v3, :cond_2e

    goto :goto_20

    :cond_2e
    check-cast v11, Ljava/util/Map;

    const-string v3, "atlas_status"

    .line 16
    invoke-interface {v11, v3, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_30

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_1b

    :cond_2f
    const/4 v3, 0x0

    goto :goto_1c

    :cond_30
    :goto_1b
    const/4 v3, 0x1

    :goto_1c
    if-nez v3, :cond_31

    goto :goto_20

    .line 17
    :cond_31
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    move-object/from16 v38, v3

    move-object/from16 v3, v37

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v11}, Lcom/sgscq/vpn/handler/d0;->u(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v37

    if-nez v37, :cond_33

    invoke-static {v3}, Lcom/sgscq/vpn/handler/d0;->Z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lcom/sgscq/vpn/handler/d0;->u(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_1e

    :cond_32
    move-object/from16 v3, v38

    goto :goto_1d

    :cond_33
    :goto_1e
    const/4 v3, 0x1

    goto :goto_1f

    :cond_34
    const/4 v3, 0x0

    :goto_1f
    if-eqz v3, :cond_35

    add-int/lit8 v4, v4, 0x1

    :cond_35
    :goto_20
    move-object/from16 v3, v35

    goto :goto_1a

    :cond_36
    move v3, v4

    :goto_21
    if-gtz v3, :cond_3f

    .line 18
    invoke-virtual {v7, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/List;

    if-nez v4, :cond_38

    :cond_37
    move-object/from16 v8, v25

    goto :goto_23

    :cond_38
    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v8, v4, Ljava/util/Map;

    if-nez v8, :cond_39

    goto :goto_22

    :cond_39
    check-cast v4, Ljava/util/Map;

    move-object/from16 v8, v25

    .line 19
    invoke-static {v4, v8, v10}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    const/4 v3, 0x1

    goto :goto_24

    :cond_3a
    move-object/from16 v25, v8

    goto :goto_22

    :goto_23
    const/4 v3, 0x0

    :goto_24
    if-eqz v3, :cond_3e

    .line 20
    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_26

    :cond_3b
    invoke-static {v15, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v5, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v25, v3

    const-string v3, "skill_id"

    invoke-interface {v4, v3, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const/4 v3, 0x1

    goto :goto_27

    :cond_3c
    move-object/from16 v3, v25

    goto :goto_25

    :cond_3d
    :goto_26
    const/4 v3, 0x0

    :goto_27
    if-eqz v3, :cond_3e

    goto :goto_28

    :cond_3e
    move/from16 v11, v36

    goto :goto_29

    :cond_3f
    move-object/from16 v8, v25

    :goto_28
    move/from16 v11, v36

    .line 21
    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_29

    :cond_40
    move-object/from16 v34, v4

    move/from16 v29, v5

    move-object/from16 v8, v25

    :goto_29
    move-object/from16 v3, v34

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    const-string v4, "surrender_total_ladder_target_kills"

    const-string v5, "ladder_total_target_kills"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "ladder_kill_counts"

    invoke-static {v0, v5, v12, v4}, Lcom/sgscq/vpn/handler/d0;->v0(Ljava/util/Map;Ljava/lang/String;Ljava/util/LinkedHashSet;[Ljava/lang/String;)I

    move-result v4

    move/from16 v5, v29

    invoke-static {v11, v5, v4}, Lcom/sgscq/vpn/handler/d0;->i(III)I

    move-result v4

    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_2a

    :cond_41
    move/from16 v5, v29

    :goto_2a
    const-string v4, "22"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    move-object/from16 v4, v26

    invoke-static {v11, v4, v7}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v10

    move-object/from16 v25, v8

    .line 22
    invoke-static {v0, v7}, Lcom/sgscq/vpn/handler/d0;->H(Ljava/util/Map;Ljava/util/LinkedHashMap;)Ljava/util/Map;

    move-result-object v8

    if-nez v8, :cond_42

    const/4 v8, 0x0

    move-object/from16 v26, v1

    move-object/from16 v29, v12

    goto :goto_2b

    :cond_42
    move-object/from16 v26, v1

    const-string v1, "insight_level"

    move-object/from16 v29, v12

    const/4 v12, 0x0

    invoke-static {v12, v1, v8}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    if-gtz v1, :cond_43

    const-string v1, "breachLevel"

    invoke-static {v12, v1, v8}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    :cond_43
    add-int/lit8 v1, v1, -0x1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_2b
    if-lt v8, v10, :cond_45

    .line 23
    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_2c

    :cond_44
    move-object/from16 v25, v8

    move-object/from16 v29, v12

    move-object/from16 v4, v26

    move-object/from16 v26, v1

    :cond_45
    :goto_2c
    const-string v1, "32"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v8, "skill_level"

    const-string v10, "level"

    if-eqz v1, :cond_4e

    invoke-static {v11, v4, v7}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    .line 24
    invoke-static {v0, v7}, Lcom/sgscq/vpn/handler/d0;->H(Ljava/util/Map;Ljava/util/LinkedHashMap;)Ljava/util/Map;

    move-result-object v12

    if-nez v12, :cond_46

    const/4 v2, 0x0

    move-object/from16 v36, v4

    move/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v37, v7

    move-object/from16 v38, v9

    move-object/from16 v39, v15

    goto/16 :goto_31

    :cond_46
    move/from16 v34, v5

    const-string v5, "general_pk_id"

    move-object/from16 v35, v6

    const-string v6, "pk_id"

    move-object/from16 v36, v4

    .line 25
    invoke-static {v12, v5, v9, v6}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v37, v7

    const-string v7, "general_naturalskill_id"

    .line 26
    invoke-interface {v12, v7, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/16 v38, 0x0

    move-object/from16 v39, v15

    move/from16 v15, v38

    :goto_2d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_4d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v40, v12

    move-object/from16 v12, v38

    check-cast v12, Ljava/util/Map;

    invoke-interface {v12, v6, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v41, v6

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v5, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v42, v5

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v38, v9

    const-string v9, "is_natural"

    .line 27
    invoke-static {v12, v9, v14, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_48

    move-object/from16 v43, v2

    .line 28
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_47

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    goto :goto_2e

    :cond_47
    const/4 v2, 0x0

    goto :goto_2f

    :cond_48
    move-object/from16 v43, v2

    :cond_49
    :goto_2e
    const/4 v2, 0x1

    :goto_2f
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4a

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4c

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    goto :goto_30

    :cond_4a
    if-nez v2, :cond_4b

    goto :goto_30

    :cond_4b
    const/4 v2, 0x1

    invoke-static {v2, v10, v12}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    invoke-static {v2, v8, v12}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v15

    :cond_4c
    :goto_30
    move-object/from16 v9, v38

    move-object/from16 v12, v40

    move-object/from16 v6, v41

    move-object/from16 v5, v42

    move-object/from16 v2, v43

    goto/16 :goto_2d

    :cond_4d
    move-object/from16 v38, v9

    move v2, v15

    :goto_31
    if-lt v2, v1, :cond_4f

    .line 29
    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_32

    :cond_4e
    move-object/from16 v36, v4

    move/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v37, v7

    move-object/from16 v38, v9

    move-object/from16 v39, v15

    :cond_4f
    :goto_32
    const-string v1, "33"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    move-object/from16 v2, v36

    move-object/from16 v1, v37

    invoke-static {v11, v2, v1}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v4

    const-string v5, "Combat"

    .line 30
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/util/List;

    if-eqz v6, :cond_50

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/sgscq/vpn/handler/d0;->X(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v6, v35

    goto :goto_33

    :cond_50
    instance-of v6, v5, Ljava/util/Map;

    if-eqz v6, :cond_51

    check-cast v5, Ljava/util/Map;

    move-object/from16 v6, v35

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/sgscq/vpn/handler/d0;->X(Ljava/lang/Object;)I

    move-result v7

    const-string v9, "upd"

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/sgscq/vpn/handler/d0;->X(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_33

    :cond_51
    move-object/from16 v6, v35

    const/4 v5, 0x0

    :goto_33
    if-lt v5, v4, :cond_53

    .line 31
    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_34

    :cond_52
    move-object/from16 v6, v35

    move-object/from16 v2, v36

    move-object/from16 v1, v37

    :cond_53
    :goto_34
    const-string v4, "12"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    move-object/from16 v4, v27

    invoke-static {v11, v4, v1}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v5

    .line 32
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/d0;->H(Ljava/util/Map;Ljava/util/LinkedHashMap;)Ljava/util/Map;

    move-result-object v7

    move-object/from16 v9, v38

    if-nez v7, :cond_54

    goto/16 :goto_38

    :cond_54
    invoke-virtual {v1, v2, v9}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v27

    packed-switch v27, :pswitch_data_0

    :goto_35
    const/4 v15, -0x1

    goto :goto_36

    :pswitch_0
    const-string v15, "4"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_55

    goto :goto_35

    :cond_55
    const/4 v15, 0x3

    goto :goto_36

    :pswitch_1
    const-string v15, "3"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_56

    goto :goto_35

    :cond_56
    const/4 v15, 0x2

    goto :goto_36

    :pswitch_2
    const-string v15, "2"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_57

    goto :goto_35

    :cond_57
    const/4 v15, 0x1

    goto :goto_36

    :pswitch_3
    const-string v15, "1"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_58

    goto :goto_35

    :cond_58
    const/4 v15, 0x0

    :goto_36
    packed-switch v15, :pswitch_data_1

    goto :goto_38

    :pswitch_4
    const-string v12, "wisdom"

    goto :goto_37

    :pswitch_5
    const-string v12, "hp"

    goto :goto_37

    :pswitch_6
    const-string v12, "defense"

    goto :goto_37

    :pswitch_7
    const-string v12, "attack"

    :goto_37
    const-string v15, "base_"

    invoke-virtual {v15, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x0

    .line 33
    aget-object v12, v12, v15

    invoke-interface {v7, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_59

    goto :goto_38

    :cond_59
    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v12, v7, Ljava/lang/Number;

    if-eqz v12, :cond_5a

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v35

    goto :goto_39

    :cond_5a
    :try_start_0
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v35
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_39

    :catch_0
    :goto_38
    const-wide/16 v35, 0x0

    :goto_39
    move-object v7, v14

    int-to-double v14, v5

    cmpl-double v5, v35, v14

    if-ltz v5, :cond_5c

    .line 34
    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_3a

    :cond_5b
    move-object v7, v14

    move-object/from16 v4, v27

    move-object/from16 v9, v38

    :cond_5c
    :goto_3a
    const-string v5, "25"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    const-string v5, "surrender_total_cultivate_times"

    const-string v12, "total_cultivate_times"

    const-string v14, "cultivate_total_times"

    filled-new-array {v5, v12, v14}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sgscq/vpn/handler/d0;->Y(Ljava/util/Map;[Ljava/lang/String;)I

    move-result v5

    move/from16 v12, v34

    invoke-static {v11, v12, v5}, Lcom/sgscq/vpn/handler/d0;->i(III)I

    move-result v5

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_3b

    :cond_5d
    move/from16 v12, v34

    :goto_3b
    const-string v5, "26"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    const-string v5, "total_breakthrough_times"

    const-string v14, "total_insight_times"

    const-string v15, "surrender_total_breakthrough_times"

    move-object/from16 v27, v7

    const-string v7, "surrender_total_insight_times"

    filled-new-array {v15, v7, v5, v14}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sgscq/vpn/handler/d0;->Y(Ljava/util/Map;[Ljava/lang/String;)I

    move-result v5

    invoke-static {v11, v12, v5}, Lcom/sgscq/vpn/handler/d0;->i(III)I

    move-result v5

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_3c

    :cond_5e
    move-object/from16 v27, v7

    :goto_3c
    const-string v5, "28"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    const-string v5, "surrender_total_skill_upgrade_times"

    const-string v7, "skill_total_upgrade_times"

    const-string v14, "total_skill_upgrade_times"

    filled-new-array {v5, v7, v14}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sgscq/vpn/handler/d0;->Y(Ljava/util/Map;[Ljava/lang/String;)I

    move-result v5

    invoke-static {v11, v12, v5}, Lcom/sgscq/vpn/handler/d0;->i(III)I

    move-result v5

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_5f
    move-object/from16 v5, v33

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    const-string v5, "dungeon_total_fight_times"

    const-string v7, "surrender_dungeon_fight_times"

    .line 35
    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sgscq/vpn/handler/d0;->Y(Ljava/util/Map;[Ljava/lang/String;)I

    move-result v5

    const-string v7, "dungeon_fight_counts"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/sgscq/vpn/handler/d0;->e0(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_60

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v33, v14

    invoke-static {v15, v7}, Lcom/sgscq/vpn/handler/d0;->f0(Ljava/lang/String;Ljava/util/Map;)I

    move-result v14

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v15}, Lcom/sgscq/vpn/handler/d0;->Z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v7}, Lcom/sgscq/vpn/handler/d0;->f0(Ljava/lang/String;Ljava/util/Map;)I

    move-result v14

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v14, v33

    goto :goto_3d

    .line 36
    :cond_60
    invoke-static {v11, v12, v5}, Lcom/sgscq/vpn/handler/d0;->i(III)I

    move-result v5

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_61
    const-string v5, "30"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    const-string v5, "surrender_total_god_skill_book_compose_times"

    const-string v7, "god_skill_book_compose_times"

    const-string v14, "skill_book_compose_times"

    filled-new-array {v5, v7, v14}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sgscq/vpn/handler/d0;->Y(Ljava/util/Map;[Ljava/lang/String;)I

    move-result v5

    invoke-static {v11, v12, v5}, Lcom/sgscq/vpn/handler/d0;->i(III)I

    move-result v5

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_62
    const-string v5, "31"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-static {v11, v2, v1}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v5

    const-string v7, "max_skill_level"

    const-string v14, "skill_max_level"

    .line 37
    filled-new-array {v7, v14}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/sgscq/vpn/handler/d0;->Y(Ljava/util/Map;[Ljava/lang/String;)I

    move-result v7

    move-object/from16 v14, v39

    invoke-static {v14, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_63

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    move-object/from16 v33, v14

    const/4 v14, 0x0

    invoke-static {v14, v10, v15}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v14

    invoke-static {v14, v8, v15}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v14

    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v14, v33

    goto :goto_3e

    :cond_63
    if-lt v7, v5, :cond_64

    .line 38
    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_64
    const-string v5, "37"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "status"

    const-string v8, "EvolutionInfo"

    if-eqz v5, :cond_6d

    const/4 v2, 0x0

    invoke-static {v2, v4, v1}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    invoke-static {v1}, Lcom/sgscq/vpn/handler/d0;->p0(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashSet;

    move-result-object v3

    .line 39
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_65

    goto :goto_3f

    :cond_65
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/util/Map;

    if-nez v5, :cond_66

    goto :goto_3f

    :cond_66
    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/util/List;

    if-nez v5, :cond_67

    :goto_3f
    const/4 v3, 0x0

    goto :goto_43

    :cond_67
    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    instance-of v8, v6, Ljava/util/Map;

    if-nez v8, :cond_68

    :goto_41
    move-object/from16 v10, v24

    goto :goto_42

    :cond_68
    check-cast v6, Ljava/util/Map;

    const/4 v8, 0x0

    invoke-static {v8, v7, v6}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v10

    const/4 v12, 0x1

    if-eq v10, v12, :cond_69

    goto :goto_41

    :cond_69
    move-object/from16 v10, v24

    invoke-interface {v6, v10, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6a

    goto :goto_42

    :cond_6a
    const-string v12, "evolution_level"

    invoke-static {v8, v12, v6}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v12

    const-string v13, "sub_level"

    invoke-static {v8, v13, v6}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v6

    mul-int/lit8 v12, v12, 0xa

    add-int/2addr v12, v6

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_42
    move-object/from16 v24, v10

    goto :goto_40

    :cond_6b
    move v3, v5

    :goto_43
    if-lez v2, :cond_6c

    if-lt v3, v2, :cond_6c

    goto/16 :goto_4d

    :cond_6c
    const/4 v2, 0x0

    goto/16 :goto_4e

    :cond_6d
    move-object/from16 v10, v24

    const-string v5, "35"

    .line 40
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    invoke-static {v1}, Lcom/sgscq/vpn/handler/d0;->p0(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashSet;

    move-result-object v5

    .line 41
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6e

    goto :goto_45

    :cond_6e
    invoke-static {v8, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6f
    :goto_44
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_71

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const/4 v14, 0x0

    invoke-static {v14, v7, v8}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_70

    goto :goto_44

    :cond_70
    const-string v14, "resource_id"

    invoke-interface {v8, v14, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v8, v10, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6f

    const/4 v5, 0x1

    goto :goto_46

    :cond_71
    :goto_45
    const/4 v5, 0x0

    :goto_46
    if-eqz v5, :cond_72

    .line 42
    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_72
    const-string v5, "21"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    const-string v5, "surrender_ladder_rank_hours"

    const-string v6, "ladder_rank_top_hours"

    const-string v7, "ladder_top_rank_hours"

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sgscq/vpn/handler/d0;->Y(Ljava/util/Map;[Ljava/lang/String;)I

    move-result v5

    invoke-static {v11, v12, v5}, Lcom/sgscq/vpn/handler/d0;->i(III)I

    move-result v5

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_73
    const-string v5, "41"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    const-string v5, "surrender_ladder_rank_total_hours"

    const-string v6, "ladder_rank_total_top_hours"

    const-string v7, "ladder_total_top_rank_hours"

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sgscq/vpn/handler/d0;->Y(Ljava/util/Map;[Ljava/lang/String;)I

    move-result v5

    invoke-static {v11, v12, v5}, Lcom/sgscq/vpn/handler/d0;->i(III)I

    move-result v5

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_74
    const-string v5, "23"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    const/4 v5, 0x1

    invoke-static {v5, v2, v1}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v5

    if-gtz v5, :cond_75

    const/4 v5, 0x1

    :cond_75
    const-string v6, "tower_best_rank"

    const/4 v7, 0x0

    .line 43
    invoke-static {v7, v6, v0}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v6

    const-string v8, "tower_last_run_rank"

    invoke-static {v7, v8, v0}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v8

    if-lez v8, :cond_77

    if-lez v6, :cond_76

    if-ge v8, v6, :cond_77

    :cond_76
    move v6, v8

    :cond_77
    const-string v8, "tower_current_rank"

    invoke-static {v7, v8, v0}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v7

    const-string v8, "tower_rank"

    invoke-static {v7, v8, v0}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v7

    if-lez v7, :cond_79

    if-lez v6, :cond_78

    if-ge v7, v6, :cond_79

    :cond_78
    move v6, v7

    :cond_79
    if-lez v6, :cond_7a

    const/4 v7, 0x1

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-gt v6, v5, :cond_7a

    const/4 v5, 0x1

    goto :goto_47

    :cond_7a
    const/4 v5, 0x0

    :goto_47
    if-eqz v5, :cond_7b

    .line 44
    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_7b
    const-string v5, "20"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7c

    const-string v5, "surrender_tower_rank_days"

    const-string v6, "tower_rank_top_days"

    const-string v7, "tower_top_rank_days"

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sgscq/vpn/handler/d0;->Y(Ljava/util/Map;[Ljava/lang/String;)I

    move-result v5

    invoke-static {v11, v12, v5}, Lcom/sgscq/vpn/handler/d0;->i(III)I

    move-result v5

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_7c
    const-string v5, "40"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    const-string v5, "surrender_tower_rank_total_days"

    const-string v6, "tower_rank_total_top_days"

    const-string v7, "tower_total_top_rank_days"

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sgscq/vpn/handler/d0;->Y(Ljava/util/Map;[Ljava/lang/String;)I

    move-result v5

    invoke-static {v11, v12, v5}, Lcom/sgscq/vpn/handler/d0;->i(III)I

    move-result v5

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_7d
    const-string v5, "34"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_83

    const-string v5, "surrender_god_weapon_forge_progress"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "god_weapon_forge_progress"

    move-object/from16 v7, v29

    invoke-static {v0, v6, v7, v5}, Lcom/sgscq/vpn/handler/d0;->v0(Ljava/util/Map;Ljava/lang/String;Ljava/util/LinkedHashSet;[Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v2, v1}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    invoke-static {v6, v4, v1}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v4

    if-lez v2, :cond_82

    if-gtz v4, :cond_7e

    goto :goto_4a

    .line 45
    :cond_7e
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    div-int/lit8 v6, v4, 0x64

    rem-int/lit8 v4, v4, 0x64

    const-string v8, "MagicalEqu"

    invoke-static {v8, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_48
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_82

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    .line 46
    invoke-static {v14, v10, v9, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7f

    goto :goto_48

    :cond_7f
    const-string v15, "magic_vip_level"

    move-object/from16 v24, v2

    const/4 v2, 0x1

    .line 47
    invoke-static {v2, v15, v14}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    const-string v15, "magic_level"

    invoke-static {v2, v15, v14}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    const-string v15, "magic_sub_level"

    move-object/from16 v29, v8

    const/4 v8, 0x0

    invoke-static {v8, v15, v14}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v8

    if-gt v2, v6, :cond_81

    if-ne v2, v6, :cond_80

    if-lt v8, v4, :cond_80

    goto :goto_49

    :cond_80
    move-object/from16 v2, v24

    move-object/from16 v8, v29

    goto :goto_48

    :cond_81
    :goto_49
    const/4 v2, 0x1

    goto :goto_4b

    :cond_82
    :goto_4a
    const/4 v2, 0x0

    .line 48
    :goto_4b
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v11, v12, v2}, Lcom/sgscq/vpn/handler/d0;->i(III)I

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_4c

    :cond_83
    move-object/from16 v7, v29

    :goto_4c
    const-string v2, "36"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    const-string v2, "surrender_total_evolution_box_open_times"

    const-string v4, "evolution_box_open_times"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sgscq/vpn/handler/d0;->Y(Ljava/util/Map;[Ljava/lang/String;)I

    move-result v2

    invoke-static {v11, v12, v2}, Lcom/sgscq/vpn/handler/d0;->i(III)I

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_84
    const-string v2, "38"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    const-string v2, "surrender_total_evolution_battle_times"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "evolution_battle_counts"

    invoke-static {v0, v4, v7, v2}, Lcom/sgscq/vpn/handler/d0;->v0(Ljava/util/Map;Ljava/lang/String;Ljava/util/LinkedHashSet;[Ljava/lang/String;)I

    move-result v2

    invoke-static {v11, v12, v2}, Lcom/sgscq/vpn/handler/d0;->i(III)I

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_85
    const-string v2, "39"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    const-string v2, "ladder_total_rank_salary"

    const-string v3, "total_ladder_rank_salary"

    const-string v4, "surrender_ladder_rank_salary"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sgscq/vpn/handler/d0;->Y(Ljava/util/Map;[Ljava/lang/String;)I

    move-result v2

    invoke-static {v11, v12, v2}, Lcom/sgscq/vpn/handler/d0;->i(III)I

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v11, v2

    goto :goto_4d

    :cond_86
    move v11, v13

    :goto_4d
    move v2, v11

    goto :goto_4e

    :cond_87
    move-object/from16 v26, v1

    move-object/from16 v32, v2

    move-object/from16 v27, v3

    move/from16 v22, v4

    move-object v1, v7

    move-object/from16 v28, v8

    move-object/from16 v30, v10

    move-object/from16 v20, v11

    move/from16 v23, v12

    move-object/from16 v21, v13

    move-object/from16 v31, v14

    move-object/from16 v25, v15

    move v12, v5

    const/4 v2, 0x0

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_4e
    move/from16 v12, v23

    .line 49
    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v12, :cond_88

    const/4 v4, 0x1

    goto :goto_4f

    :cond_88
    const/4 v4, 0x0

    :goto_4f
    if-ne v4, v3, :cond_89

    add-int/lit8 v3, v22, 0x1

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_89
    move-object/from16 v5, v19

    move/from16 v3, v22

    .line 50
    :goto_50
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v7, v18

    invoke-virtual {v1, v7, v9}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "surrender_title"

    invoke-virtual {v1, v7, v9}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "surrender_desc"

    invoke-virtual {v1, v7, v9}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v32

    invoke-virtual {v1, v7, v9}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v10, v30

    invoke-virtual {v1, v10, v8}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "type_name"

    invoke-virtual {v1, v8, v9}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v10, "govern_value"

    invoke-virtual {v1, v10, v8}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v10, v21

    invoke-interface {v6, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v8, "progressed_num"

    invoke-interface {v6, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "progress_total"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "surrender_status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v4, v26

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v8, v1, Ljava/util/List;

    if-eqz v8, :cond_8e

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    instance-of v10, v8, Ljava/util/Map;

    if-nez v10, :cond_8a

    goto :goto_51

    :cond_8a
    check-cast v8, Ljava/util/Map;

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v11, v25

    move-object/from16 v12, v27

    invoke-interface {v8, v11, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v10, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "source_desc"

    invoke-interface {v8, v13, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v10, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "button_name"

    invoke-interface {v8, v13, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v10, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v28

    invoke-interface {v8, v13, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v10, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v14, v31

    invoke-interface {v8, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8b

    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v10, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_8b
    invoke-virtual {v10, v11, v9}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_8c

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_8c

    const-string v15, "dungeon_id"

    invoke-interface {v10, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "dungeonId"

    invoke-interface {v10, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8c
    invoke-virtual {v10, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_8d

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_8d

    const-string v15, "chapter_id"

    invoke-interface {v10, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "chapterId"

    invoke-interface {v10, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_8d
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v25, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move-object/from16 v31, v14

    goto/16 :goto_51

    :cond_8e
    invoke-interface {v6, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v17

    .line 53
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    move v4, v3

    move-object/from16 v3, v16

    move-object/from16 v44, v5

    move v5, v2

    move-object/from16 v2, v44

    goto/16 :goto_0

    :cond_8f
    move-object v5, v2

    move/from16 v22, v4

    new-instance v0, Lcom/sgscq/vpn/handler/c0;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v3, v22

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/sgscq/vpn/handler/c0;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public static p0(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashSet;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v1, "limit_first"

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sgscq/vpn/handler/d0;->d(Ljava/util/LinkedHashSet;Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    const/4 v1, 0x1

    if-gt p0, v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static q(Ljava/lang/Object;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/sgscq/vpn/w1;)V
    .locals 5

    .line 1
    instance-of v0, p0, Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p0, Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0, p1, p2, p3, p4}, Lcom/sgscq/vpn/handler/d0;->q(Ljava/lang/Object;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/sgscq/vpn/w1;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    check-cast p0, Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    instance-of v1, v0, Ljava/util/List;

    .line 38
    .line 39
    if-eqz v1, :cond_9

    .line 40
    .line 41
    check-cast v0, Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_9

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    instance-of v2, v1, Ljava/util/List;

    .line 58
    .line 59
    if-nez v2, :cond_4

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    check-cast v1, Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    const/4 v3, 0x3

    .line 69
    if-ge v2, v3, :cond_5

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_5
    const/4 v2, 0x0

    .line 73
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const/4 v3, 0x2

    .line 82
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const/4 v3, 0x5

    .line 91
    invoke-static {v1, v3}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    const/4 v3, 0x6

    .line 96
    if-ne v1, v3, :cond_6

    .line 97
    .line 98
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-nez v3, :cond_3

    .line 103
    .line 104
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-nez v3, :cond_6

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_6
    const-string v3, "600213"

    .line 112
    .line 113
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_7

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_7
    const/16 v3, 0x8

    .line 121
    .line 122
    if-ne v1, v3, :cond_8

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_8
    invoke-static {v1, v2, p2}, Lcom/sgscq/vpn/handler/d0;->a(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 126
    .line 127
    .line 128
    invoke-static {p4}, Lcom/sgscq/vpn/handler/d0;->C(Lcom/sgscq/vpn/w1;)Ljava/util/Map;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    check-cast v3, Ljava/lang/String;

    .line 137
    .line 138
    if-eqz v3, :cond_3

    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-nez v4, :cond_3

    .line 145
    .line 146
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-nez v2, :cond_3

    .line 151
    .line 152
    invoke-static {v1, v3, p2}, Lcom/sgscq/vpn/handler/d0;->a(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_9
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    :cond_a
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_b

    .line 169
    .line 170
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    check-cast v0, Ljava/util/Map$Entry;

    .line 175
    .line 176
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-nez v1, :cond_a

    .line 185
    .line 186
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {v0, p1, p2, p3, p4}, Lcom/sgscq/vpn/handler/d0;->q(Ljava/lang/Object;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/sgscq/vpn/w1;)V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_b
    return-void
.end method

.method public static q0(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;
    .locals 13

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "effect_time"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    const/4 v5, 0x0

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/util/Map;

    .line 21
    .line 22
    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-nez v6, :cond_1

    .line 27
    .line 28
    invoke-static {v1}, Lcom/sgscq/vpn/handler/d0;->T(Ljava/util/Map;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-eqz v6, :cond_1

    .line 37
    .line 38
    move v6, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v6, v3

    .line 41
    :goto_0
    if-eqz v6, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move-object v1, v5

    .line 45
    :goto_1
    sget-object v0, Lcom/sgscq/vpn/handler/d0;->i:[Ljava/lang/String;

    .line 46
    .line 47
    const-string v6, "Item"

    .line 48
    .line 49
    if-nez v1, :cond_d

    .line 50
    .line 51
    array-length v7, v0

    .line 52
    move v8, v3

    .line 53
    :goto_2
    if-ge v8, v7, :cond_d

    .line 54
    .line 55
    aget-object v9, v0, v8

    .line 56
    .line 57
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    instance-of v11, v10, Ljava/util/Map;

    .line 62
    .line 63
    if-nez v11, :cond_3

    .line 64
    .line 65
    new-instance v9, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    check-cast v10, Ljava/util/Map;

    .line 72
    .line 73
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    instance-of v10, v9, Ljava/util/List;

    .line 78
    .line 79
    if-nez v10, :cond_4

    .line 80
    .line 81
    new-instance v9, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_4
    check-cast v9, Ljava/util/List;

    .line 88
    .line 89
    :goto_3
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v10

    .line 97
    if-eqz v10, :cond_b

    .line 98
    .line 99
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    check-cast v10, Ljava/util/Map;

    .line 104
    .line 105
    invoke-static {v3, v2, v10}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 106
    .line 107
    .line 108
    move-result v11

    .line 109
    if-nez v11, :cond_5

    .line 110
    .line 111
    invoke-static {v10}, Lcom/sgscq/vpn/handler/d0;->T(Ljava/util/Map;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v11

    .line 119
    if-eqz v11, :cond_5

    .line 120
    .line 121
    move v11, v4

    .line 122
    goto :goto_5

    .line 123
    :cond_5
    move v11, v3

    .line 124
    :goto_5
    if-nez v11, :cond_6

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_6
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    instance-of v9, v1, Ljava/util/Map;

    .line 132
    .line 133
    const-string v11, "add"

    .line 134
    .line 135
    if-eqz v9, :cond_7

    .line 136
    .line 137
    move-object v12, v1

    .line 138
    check-cast v12, Ljava/util/Map;

    .line 139
    .line 140
    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    if-ne v12, p1, :cond_7

    .line 145
    .line 146
    goto :goto_7

    .line 147
    :cond_7
    if-eqz v9, :cond_8

    .line 148
    .line 149
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 150
    .line 151
    check-cast v1, Ljava/util/Map;

    .line 152
    .line 153
    invoke-direct {v9, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 154
    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_8
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 158
    .line 159
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 160
    .line 161
    .line 162
    :goto_6
    invoke-interface {v9, v11, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    const-string v1, "del"

    .line 166
    .line 167
    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    instance-of v11, v11, Ljava/util/List;

    .line 172
    .line 173
    if-nez v11, :cond_9

    .line 174
    .line 175
    new-instance v11, Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-interface {v9, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    :cond_9
    const-string v1, "upd"

    .line 184
    .line 185
    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    instance-of v11, v11, Ljava/util/List;

    .line 190
    .line 191
    if-nez v11, :cond_a

    .line 192
    .line 193
    new-instance v11, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-interface {v9, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    :cond_a
    invoke-interface {p2, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    :goto_7
    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-object v1, v10

    .line 208
    :cond_b
    if-eqz v1, :cond_c

    .line 209
    .line 210
    goto :goto_8

    .line 211
    :cond_c
    add-int/lit8 v8, v8, 0x1

    .line 212
    .line 213
    goto/16 :goto_2

    .line 214
    .line 215
    :cond_d
    :goto_8
    if-nez v1, :cond_e

    .line 216
    .line 217
    return-object v5

    .line 218
    :cond_e
    const-string p0, "pk_id"

    .line 219
    .line 220
    const-string p1, ""

    .line 221
    .line 222
    invoke-interface {v1, p0, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    if-nez v2, :cond_14

    .line 235
    .line 236
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    instance-of v2, p2, Ljava/util/Map;

    .line 241
    .line 242
    if-nez v2, :cond_f

    .line 243
    .line 244
    goto :goto_c

    .line 245
    :cond_f
    check-cast p2, Ljava/util/Map;

    .line 246
    .line 247
    array-length v2, v0

    .line 248
    move v5, v3

    .line 249
    :goto_9
    if-ge v5, v2, :cond_14

    .line 250
    .line 251
    aget-object v6, v0, v5

    .line 252
    .line 253
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    instance-of v8, v7, Ljava/util/List;

    .line 258
    .line 259
    if-nez v8, :cond_10

    .line 260
    .line 261
    goto :goto_b

    .line 262
    :cond_10
    new-instance v8, Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .line 266
    .line 267
    check-cast v7, Ljava/util/List;

    .line 268
    .line 269
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    move v9, v3

    .line 274
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 275
    .line 276
    .line 277
    move-result v10

    .line 278
    if-eqz v10, :cond_12

    .line 279
    .line 280
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v10

    .line 284
    instance-of v11, v10, Ljava/util/Map;

    .line 285
    .line 286
    if-eqz v11, :cond_11

    .line 287
    .line 288
    move-object v11, v10

    .line 289
    check-cast v11, Ljava/util/Map;

    .line 290
    .line 291
    invoke-static {v11, p0, p1}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    move-result v11

    .line 295
    if-eqz v11, :cond_11

    .line 296
    .line 297
    move v9, v4

    .line 298
    goto :goto_a

    .line 299
    :cond_11
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    goto :goto_a

    .line 303
    :cond_12
    if-eqz v9, :cond_13

    .line 304
    .line 305
    invoke-interface {p2, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    :cond_13
    :goto_b
    add-int/lit8 v5, v5, 0x1

    .line 309
    .line 310
    goto :goto_9

    .line 311
    :cond_14
    :goto_c
    return-object v1
.end method

.method public static r(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/Map;)V
    .locals 3

    .line 1
    const-string v0, "id"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "skill_code"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "card_type"

    const-string v2, "4"

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "level"

    const-string v2, "1"

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "skill_name"

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "name"

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_3

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p0, "skill_type"

    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "type"

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 p0, 0x0

    const-string p1, "grade"

    invoke-static {p0, p1, p3}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public static r0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public static s(Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Random;Ljava/lang/String;)Ljava/util/List;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    const-string v2, "evolution_chest_preview_batch"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    invoke-static {v0, v2, v3, v1}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const-string v4, "evolution_chest_preview"

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    instance-of v5, v3, Ljava/util/List;

    .line 24
    .line 25
    if-nez v5, :cond_1

    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_1
    check-cast v3, Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    const/16 v6, 0x8

    .line 36
    .line 37
    if-eq v5, v6, :cond_2

    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_2
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 42
    .line 43
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-eqz v7, :cond_3

    .line 55
    .line 56
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    check-cast v7, Ljava/util/Map;

    .line 61
    .line 62
    invoke-static {v7}, Lcom/sgscq/vpn/handler/d0;->y(Ljava/util/Map;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    new-instance v6, Ljava/util/LinkedHashSet;

    .line 71
    .line 72
    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-eqz v8, :cond_7

    .line 84
    .line 85
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    instance-of v9, v8, Ljava/util/Map;

    .line 90
    .line 91
    if-nez v9, :cond_4

    .line 92
    .line 93
    goto/16 :goto_3

    .line 94
    .line 95
    :cond_4
    check-cast v8, Ljava/util/Map;

    .line 96
    .line 97
    invoke-static {v8}, Lcom/sgscq/vpn/handler/d0;->y(Ljava/util/Map;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    invoke-virtual {v5, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    check-cast v10, Ljava/util/Map;

    .line 106
    .line 107
    if-eqz v10, :cond_8

    .line 108
    .line 109
    const/4 v11, 0x1

    .line 110
    const-string v12, "num"

    .line 111
    .line 112
    invoke-static {v11, v12, v8}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    const-string v14, "item_num"

    .line 117
    .line 118
    invoke-static {v13, v14, v8}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 119
    .line 120
    .line 121
    move-result v13

    .line 122
    invoke-static {v11, v12, v10}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 123
    .line 124
    .line 125
    move-result v15

    .line 126
    invoke-static {v15, v14, v10}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 127
    .line 128
    .line 129
    move-result v15

    .line 130
    if-ne v13, v15, :cond_5

    .line 131
    .line 132
    invoke-static {v11, v14, v8}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 133
    .line 134
    .line 135
    move-result v13

    .line 136
    invoke-static {v13, v12, v8}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 137
    .line 138
    .line 139
    move-result v13

    .line 140
    invoke-static {v11, v14, v10}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 141
    .line 142
    .line 143
    move-result v14

    .line 144
    invoke-static {v14, v12, v10}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 145
    .line 146
    .line 147
    move-result v12

    .line 148
    if-ne v13, v12, :cond_5

    .line 149
    .line 150
    const/4 v12, -0x1

    .line 151
    const-string v13, "item_type"

    .line 152
    .line 153
    invoke-static {v12, v13, v8}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 154
    .line 155
    .line 156
    move-result v14

    .line 157
    invoke-static {v12, v13, v10}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 158
    .line 159
    .line 160
    move-result v12

    .line 161
    if-ne v14, v12, :cond_5

    .line 162
    .line 163
    const-string v12, "grade"

    .line 164
    .line 165
    invoke-static {v11, v12, v8}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 166
    .line 167
    .line 168
    move-result v13

    .line 169
    invoke-static {v11, v12, v10}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 170
    .line 171
    .line 172
    move-result v12

    .line 173
    if-ne v13, v12, :cond_5

    .line 174
    .line 175
    const-string v12, "type"

    .line 176
    .line 177
    invoke-static {v11, v12, v8}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    invoke-static {v11, v12, v10}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    if-ne v8, v10, :cond_5

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_5
    const/4 v11, 0x0

    .line 189
    :goto_2
    if-nez v11, :cond_6

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_6
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_7
    invoke-interface {v6}, Ljava/util/Set;->size()I

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    invoke-interface {v5}, Ljava/util/Map;->size()I

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    const/16 v7, 0x8

    .line 205
    .line 206
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    if-ge v6, v5, :cond_9

    .line 211
    .line 212
    :cond_8
    :goto_3
    const/4 v3, 0x0

    .line 213
    :cond_9
    if-eqz v3, :cond_a

    .line 214
    .line 215
    return-object v3

    .line 216
    :cond_a
    invoke-static/range {p1 .. p2}, Lcom/sgscq/vpn/handler/d0;->n0(Ljava/util/ArrayList;Ljava/util/Random;)Ljava/util/ArrayList;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    return-object v3
.end method

.method public static s0(Ljava/lang/Object;)Ljava/util/LinkedHashSet;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "TeamGeneral"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static t(Ljava/util/Map;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "evolution_chest_day"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "evolution_chest_free_refresh_times"

    const-string v7, "evolution_chest_free_times"

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "evolution_chest_refresh_times"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "evolution_chest_open_times"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {p0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public static t0(Ljava/util/Map;)Ljava/util/Map;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    const-string v0, "surrender_progress"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0
.end method

.method public static u(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 7

    .line 1
    const-string v0, "pk_id"

    const-string v1, "general_id"

    const-string v2, "skill_id"

    const-string v3, "equipment_id"

    const-string v4, "item_id"

    const-string v5, "id"

    const-string v6, "resource_id"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static u0(Ljava/util/Map;)Z
    .locals 15

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/w1;->D2(Ljava/util/Map;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "Equipment"

    .line 11
    .line 12
    invoke-static {v2, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const-string v4, "id"

    .line 25
    .line 26
    const-string v5, "equipment_id"

    .line 27
    .line 28
    const-string v6, ""

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/util/Map;

    .line 37
    .line 38
    const-string v7, "equip_id"

    .line 39
    .line 40
    invoke-static {v3, v4, v6, v7, v5}, Lc/a;->k(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_0

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-string v2, "Atlas"

    .line 55
    .line 56
    invoke-static {v2, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    const-string v8, "1"

    .line 69
    .line 70
    const-string v9, "pk_id"

    .line 71
    .line 72
    const-string v10, "resource_id"

    .line 73
    .line 74
    const-string v11, "type"

    .line 75
    .line 76
    const-string v12, "atlas_status"

    .line 77
    .line 78
    const/4 v13, 0x0

    .line 79
    if-eqz v7, :cond_5

    .line 80
    .line 81
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    check-cast v7, Ljava/util/Map;

    .line 86
    .line 87
    invoke-static {v13, v11, v7}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    const/4 v14, 0x3

    .line 92
    if-eq v11, v14, :cond_3

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    invoke-static {v7, v9, v6, v10, v5}, Lc/a;->k(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    invoke-virtual {v1, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    if-eqz v9, :cond_2

    .line 104
    .line 105
    invoke-static {v13, v12, v7}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    const/4 v10, 0x1

    .line 110
    if-lt v9, v10, :cond_4

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    invoke-interface {v7, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    const-string v0, "general_status"

    .line 117
    .line 118
    const-string v8, "0"

    .line 119
    .line 120
    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    const/4 v0, 0x1

    .line 124
    goto :goto_1

    .line 125
    :cond_5
    new-instance v1, Ljava/util/HashSet;

    .line 126
    .line 127
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v3, "Skill"

    .line 131
    .line 132
    invoke-static {v3, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    const-string v7, "skill_id"

    .line 145
    .line 146
    if-eqz v5, :cond_7

    .line 147
    .line 148
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    check-cast v5, Ljava/util/Map;

    .line 153
    .line 154
    invoke-static {v5, v4, v6, v7}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    if-nez v7, :cond_6

    .line 163
    .line 164
    const-string v7, "null"

    .line 165
    .line 166
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    if-nez v7, :cond_6

    .line 171
    .line 172
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_7
    invoke-static {v2, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    :cond_8
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_b

    .line 189
    .line 190
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    check-cast v2, Ljava/util/Map;

    .line 195
    .line 196
    invoke-static {v13, v11, v2}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    const/4 v4, 0x4

    .line 201
    if-eq v3, v4, :cond_9

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_9
    invoke-static {v2, v9, v6, v10, v7}, Lc/a;->k(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-eqz v3, :cond_8

    .line 213
    .line 214
    invoke-static {v13, v12, v2}, Lcom/sgscq/vpn/handler/d0;->b0(ILjava/lang/String;Ljava/util/Map;)I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    const/4 v4, 0x1

    .line 219
    if-lt v3, v4, :cond_a

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_a
    invoke-interface {v2, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move v0, v4

    .line 226
    goto :goto_3

    .line 227
    :cond_b
    return v0
.end method

.method public static v(I)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x5

    .line 12
    invoke-static {v2}, Lcom/sgscq/vpn/handler/t0;->C(I)Ljava/util/LinkedHashSet;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Lcom/sgscq/vpn/handler/t0;->C(I)Ljava/util/LinkedHashSet;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Lcom/sgscq/vpn/handler/t0;->o(Ljava/util/LinkedHashSet;)Ljava/util/LinkedHashSet;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, "|"

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_0

    .line 64
    .line 65
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Ljava/lang/CharSequence;

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_0

    .line 79
    .line 80
    const-string v4, ","

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, "|r"

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0
.end method

.method public static varargs v0(Ljava/util/Map;Ljava/lang/String;Ljava/util/LinkedHashSet;[Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {p0, p3}, Lcom/sgscq/vpn/handler/d0;->Y(Ljava/util/Map;[Ljava/lang/String;)I

    move-result p3

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/d0;->e0(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2, p0}, Lcom/sgscq/vpn/handler/d0;->f0(Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {p2}, Lcom/sgscq/vpn/handler/d0;->Z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0}, Lcom/sgscq/vpn/handler/d0;->f0(Ljava/lang/String;Ljava/util/Map;)I

    move-result p2

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_0

    :cond_0
    return p3
.end method

.method public static w(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "code"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v3, "result"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "msg"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    aput-object p0, v2, v0

    const/4 p0, 0x6

    const-string v0, "error_code"

    aput-object v0, v2, p0

    const/4 p0, 0x7

    const-string v0, "e_evolution_1011"

    aput-object v0, v2, p0

    const/16 p0, 0x8

    const-string v0, "chest_list"

    aput-object v0, v2, p0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "evolution_chest_preview"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    const/16 v0, 0x9

    aput-object p0, v2, v0

    const-string p0, "ret"

    invoke-static {p0, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    if-eqz p1, :cond_1

    invoke-static {p0, p1}, Lcom/sgscq/vpn/handler/d0;->f(Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    :cond_1
    return-object p0
.end method

.method public static w0(Ljava/lang/String;III)Ljava/util/LinkedHashMap;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    const-string v0, "id"

    const-string v2, "item_num"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "num"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "grant_type"

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "type"

    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/y2;->s(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "item_type"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "weight"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "grade"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v16, "is_new"

    sget-object v17, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array/range {v0 .. v17}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "item_id"

    move-object/from16 v2, p0

    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public static x(ZLjava/util/Map;Ljava/util/List;Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ret"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "result"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "msg"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p3, "error_code"

    invoke-interface {v0, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "chest_list"

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/sgscq/vpn/handler/d0;->f(Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    return-object v0
.end method

.method public static y(Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "grant_type"

    const/4 v2, 0x5

    invoke-static {v2, v1, p0}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "id"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "item_id"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static z(Ljava/util/Map;)C
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const-string v2, "grant_type"

    .line 8
    .line 9
    const/4 v3, 0x5

    .line 10
    invoke-static {v3, v2, v0}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x6

    .line 15
    if-ne v2, v3, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x43

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    const-string v2, "item_type"

    .line 21
    .line 22
    const/4 v3, -0x1

    .line 23
    invoke-static {v3, v2, v0}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/16 v3, 0x2e

    .line 28
    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/d0;->O(Ljava/util/Map;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    const/16 v0, 0x41

    .line 38
    .line 39
    return v0

    .line 40
    :cond_2
    const/16 v3, 0x2f

    .line 41
    .line 42
    if-ne v2, v3, :cond_3

    .line 43
    .line 44
    const/16 v0, 0x42

    .line 45
    .line 46
    return v0

    .line 47
    :cond_3
    const-string v2, "id"

    .line 48
    .line 49
    const-string v3, ""

    .line 50
    .line 51
    const-string v4, "item_id"

    .line 52
    .line 53
    invoke-static {v0, v2, v3, v4}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/4 v5, 0x1

    .line 58
    const-string v6, "num"

    .line 59
    .line 60
    invoke-static {v5, v6, v0}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    const-string v8, "item_num"

    .line 65
    .line 66
    invoke-static {v7, v8, v0}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    sget-object v7, Lcom/sgscq/vpn/handler/d0;->h:Ljava/util/LinkedHashMap;

    .line 71
    .line 72
    const-string v9, "#"

    .line 73
    .line 74
    if-eqz v7, :cond_4

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_4
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 78
    .line 79
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 80
    .line 81
    .line 82
    sget-object v10, Lcom/sgscq/vpn/handler/d0;->g:[C

    .line 83
    .line 84
    array-length v11, v10

    .line 85
    :goto_0
    if-ge v1, v11, :cond_7

    .line 86
    .line 87
    aget-char v12, v10, v1

    .line 88
    .line 89
    invoke-static {v12}, Lcom/sgscq/vpn/handler/d0;->B(C)Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    move-result-object v13

    .line 93
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v13

    .line 97
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v14

    .line 101
    if-eqz v14, :cond_6

    .line 102
    .line 103
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v14

    .line 107
    check-cast v14, Ljava/util/Map;

    .line 108
    .line 109
    invoke-interface {v14, v4, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v15

    .line 113
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v15

    .line 117
    move-object/from16 v16, v3

    .line 118
    .line 119
    invoke-static {v5, v6, v14}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    invoke-static {v3, v8, v14}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v14

    .line 131
    if-eqz v14, :cond_5

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 153
    .line 154
    .line 155
    move-result-object v14

    .line 156
    invoke-interface {v7, v3, v14}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    :goto_2
    move-object/from16 v3, v16

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_6
    move-object/from16 v16, v3

    .line 163
    .line 164
    add-int/lit8 v1, v1, 0x1

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_7
    sput-object v7, Lcom/sgscq/vpn/handler/d0;->h:Ljava/util/LinkedHashMap;

    .line 168
    .line 169
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Ljava/lang/Character;

    .line 192
    .line 193
    if-nez v0, :cond_8

    .line 194
    .line 195
    const/4 v0, 0x0

    .line 196
    goto :goto_4

    .line 197
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    :goto_4
    return v0
.end method


# virtual methods
.method public final K(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 51

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v3

    .line 11
    :cond_0
    const-string v3, "server.getList"

    .line 12
    .line 13
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/16 v4, 0xa

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    const-string v6, "SGSCQ_SRV"

    .line 21
    .line 22
    const-string v7, "ret"

    .line 23
    .line 24
    iget-object v8, v1, Lcom/sgscq/vpn/handler/d0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 25
    .line 26
    if-eqz v3, :cond_4

    .line 27
    .line 28
    const-string v0, "port"

    .line 29
    .line 30
    const-string v2, "host"

    .line 31
    .line 32
    const-string v3, "name"

    .line 33
    .line 34
    const-string v9, "status"

    .line 35
    .line 36
    new-instance v10, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    const-string v11, "name"

    .line 46
    .line 47
    const-string v12, "\u5355\u673a\u670d\u52a1\u5668"

    .line 48
    .line 49
    const-string v13, "serverId"

    .line 50
    .line 51
    const-string v15, "status"

    .line 52
    .line 53
    const-string v17, "host"

    .line 54
    .line 55
    const-string v18, "127.0.0.1"

    .line 56
    .line 57
    const-string v19, "port"

    .line 58
    .line 59
    iget v14, v8, Lcom/sgscq/vpn/handler/k0;->e:I

    .line 60
    .line 61
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v20

    .line 65
    move-object v14, v5

    .line 66
    move-object/from16 v16, v5

    .line 67
    .line 68
    filled-new-array/range {v11 .. v20}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    const-string v12, "id"

    .line 73
    .line 74
    invoke-static {v12, v5, v11}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    :try_start_0
    iget-object v11, v8, Lcom/sgscq/vpn/handler/k0;->b:Landroid/content/SharedPreferences;

    .line 82
    .line 83
    const-string v13, "custom_servers"

    .line 84
    .line 85
    const-string v14, "[]"

    .line 86
    .line 87
    invoke-interface {v11, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    invoke-static {v11}, Lcom/sgscq/vpn/p5;->t1(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    const/4 v13, 0x0

    .line 96
    :goto_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v14

    .line 100
    if-ge v13, v14, :cond_3

    .line 101
    .line 102
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v14

    .line 106
    instance-of v15, v14, Ljava/util/Map;

    .line 107
    .line 108
    if-eqz v15, :cond_2

    .line 109
    .line 110
    check-cast v14, Ljava/util/Map;

    .line 111
    .line 112
    add-int/lit8 v15, v13, 0x64

    .line 113
    .line 114
    invoke-interface {v14, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v16

    .line 118
    move-object/from16 p1, v5

    .line 119
    .line 120
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    move-object/from16 p2, v11

    .line 125
    .line 126
    new-array v11, v4, [Ljava/lang/Object;

    .line 127
    .line 128
    const/16 v17, 0x0

    .line 129
    .line 130
    aput-object v3, v11, v17

    .line 131
    .line 132
    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v17

    .line 136
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v17

    .line 140
    const/16 v18, 0x1

    .line 141
    .line 142
    aput-object v17, v11, v18

    .line 143
    .line 144
    const-string v17, "serverId"

    .line 145
    .line 146
    const/16 v18, 0x2

    .line 147
    .line 148
    aput-object v17, v11, v18

    .line 149
    .line 150
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v15

    .line 154
    const/16 v17, 0x3

    .line 155
    .line 156
    aput-object v15, v11, v17

    .line 157
    .line 158
    const/4 v15, 0x4

    .line 159
    aput-object v9, v11, v15

    .line 160
    .line 161
    if-eqz v16, :cond_1

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_1
    move-object/from16 v16, p1

    .line 165
    .line 166
    :goto_1
    const/4 v15, 0x5

    .line 167
    aput-object v16, v11, v15

    .line 168
    .line 169
    const/4 v15, 0x6

    .line 170
    aput-object v2, v11, v15

    .line 171
    .line 172
    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v15

    .line 176
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v15

    .line 180
    const/16 v16, 0x7

    .line 181
    .line 182
    aput-object v15, v11, v16

    .line 183
    .line 184
    const/16 v15, 0x8

    .line 185
    .line 186
    aput-object v0, v11, v15

    .line 187
    .line 188
    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v14

    .line 192
    const/16 v15, 0x9

    .line 193
    .line 194
    aput-object v14, v11, v15

    .line 195
    .line 196
    invoke-static {v12, v5, v11}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_2
    move-object/from16 p1, v5

    .line 205
    .line 206
    move-object/from16 p2, v11

    .line 207
    .line 208
    :goto_2
    add-int/lit8 v13, v13, 0x1

    .line 209
    .line 210
    move-object/from16 v5, p1

    .line 211
    .line 212
    move-object/from16 v11, p2

    .line 213
    .line 214
    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string v3, "Custom servers parse: "

    .line 219
    .line 220
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-static {v0, v2, v6}, Lc/a;->u(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :cond_3
    const/4 v0, 0x0

    .line 227
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    const-string v11, "code"

    .line 232
    .line 233
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v12

    .line 237
    const-string v13, "result"

    .line 238
    .line 239
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 240
    .line 241
    const-string v15, "msg"

    .line 242
    .line 243
    const-string v16, "success"

    .line 244
    .line 245
    const-string v17, "data"

    .line 246
    .line 247
    const-string v3, "serverList"

    .line 248
    .line 249
    new-array v0, v0, [Ljava/lang/Object;

    .line 250
    .line 251
    invoke-static {v3, v10, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 252
    .line 253
    .line 254
    move-result-object v18

    .line 255
    filled-new-array/range {v11 .. v18}, [Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-static {v7, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-virtual {v8, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    return-object v0

    .line 272
    :cond_4
    const-string v3, "notify.activate"

    .line 273
    .line 274
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    if-eqz v3, :cond_5

    .line 279
    .line 280
    const/4 v0, 0x0

    .line 281
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    const-string v9, "code"

    .line 286
    .line 287
    const-string v11, "result"

    .line 288
    .line 289
    sget-object v18, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 290
    .line 291
    const-string v13, "msg"

    .line 292
    .line 293
    const-string v14, "success"

    .line 294
    .line 295
    const-string v15, "error_code"

    .line 296
    .line 297
    const-string v17, "isActive"

    .line 298
    .line 299
    move-object v10, v0

    .line 300
    move-object/from16 v12, v18

    .line 301
    .line 302
    move-object/from16 v16, v0

    .line 303
    .line 304
    filled-new-array/range {v9 .. v18}, [Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-static {v7, v0, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v8, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    return-object v0

    .line 321
    :cond_5
    const-string v3, "atlas.getList"

    .line 322
    .line 323
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    const-string v4, "general_id"

    .line 328
    .line 329
    const-string v5, "cmn"

    .line 330
    .line 331
    const-string v9, "General"

    .line 332
    .line 333
    const-string v10, "user_power"

    .line 334
    .line 335
    const-string v11, "user_energy"

    .line 336
    .line 337
    const-string v12, "user_gold"

    .line 338
    .line 339
    const-string v13, "Atlas"

    .line 340
    .line 341
    if-eqz v3, :cond_2b

    .line 342
    .line 343
    invoke-virtual {v8, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    iget-object v3, v8, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 348
    .line 349
    invoke-virtual {v3, v2}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 350
    .line 351
    .line 352
    move-result-object v15

    .line 353
    new-instance v14, Ljava/util/ArrayList;

    .line 354
    .line 355
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .line 357
    .line 358
    :try_start_1
    iget-object v0, v8, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 359
    .line 360
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 361
    .line 362
    .line 363
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 364
    goto :goto_3

    .line 365
    :catch_1
    const/4 v0, 0x0

    .line 366
    :goto_3
    move-object/from16 v23, v5

    .line 367
    .line 368
    move-object/from16 v24, v7

    .line 369
    .line 370
    move-object v5, v0

    .line 371
    const-string v7, "add"

    .line 372
    .line 373
    move-object/from16 v25, v9

    .line 374
    .line 375
    iget-object v9, v1, Lcom/sgscq/vpn/handler/d0;->b:Lm/e;

    .line 376
    .line 377
    if-eqz v15, :cond_27

    .line 378
    .line 379
    if-eqz v5, :cond_6

    .line 380
    .line 381
    invoke-virtual {v5, v15}, Lcom/sgscq/vpn/w1;->g2(Ljava/util/Map;)Z

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    if-eqz v0, :cond_6

    .line 386
    .line 387
    const/4 v0, 0x1

    .line 388
    goto :goto_4

    .line 389
    :cond_6
    const/4 v0, 0x0

    .line 390
    :goto_4
    invoke-static {v15}, Lcom/sgscq/vpn/handler/d0;->u0(Ljava/util/Map;)Z

    .line 391
    .line 392
    .line 393
    move-result v16

    .line 394
    if-eqz v16, :cond_7

    .line 395
    .line 396
    const/4 v0, 0x1

    .line 397
    :cond_7
    if-eqz v0, :cond_8

    .line 398
    .line 399
    invoke-virtual {v3, v2, v15}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 400
    .line 401
    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    const-string v1, "[Atlas] normalized saved atlas before getList uid="

    .line 405
    .line 406
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-static {v6, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    :cond_8
    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    instance-of v1, v0, Ljava/util/Map;

    .line 424
    .line 425
    if-eqz v1, :cond_27

    .line 426
    .line 427
    check-cast v0, Ljava/util/Map;

    .line 428
    .line 429
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    instance-of v1, v0, Ljava/util/List;

    .line 434
    .line 435
    if-eqz v1, :cond_27

    .line 436
    .line 437
    check-cast v0, Ljava/util/List;

    .line 438
    .line 439
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    if-eqz v0, :cond_27

    .line 448
    .line 449
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    move-object/from16 p1, v1

    .line 454
    .line 455
    instance-of v1, v0, Ljava/util/Map;

    .line 456
    .line 457
    if-eqz v1, :cond_26

    .line 458
    .line 459
    check-cast v0, Ljava/util/Map;

    .line 460
    .line 461
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 462
    .line 463
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 464
    .line 465
    .line 466
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 475
    .line 476
    .line 477
    move-result v16

    .line 478
    if-eqz v16, :cond_a

    .line 479
    .line 480
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v16

    .line 484
    check-cast v16, Ljava/util/Map$Entry;

    .line 485
    .line 486
    move-object/from16 p2, v0

    .line 487
    .line 488
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    instance-of v0, v0, Ljava/lang/String;

    .line 493
    .line 494
    if-eqz v0, :cond_9

    .line 495
    .line 496
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    check-cast v0, Ljava/lang/String;

    .line 501
    .line 502
    move-object/from16 v26, v3

    .line 503
    .line 504
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-object/from16 v0, p2

    .line 512
    .line 513
    move-object/from16 v3, v26

    .line 514
    .line 515
    goto :goto_6

    .line 516
    :cond_9
    move-object/from16 v0, p2

    .line 517
    .line 518
    goto :goto_6

    .line 519
    :cond_a
    move-object/from16 v26, v3

    .line 520
    .line 521
    invoke-virtual {v9, v1}, Lm/e;->x(Ljava/util/LinkedHashMap;)Z

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    if-eqz v0, :cond_b

    .line 526
    .line 527
    move-object/from16 v1, p1

    .line 528
    .line 529
    move-object/from16 v3, v26

    .line 530
    .line 531
    goto :goto_5

    .line 532
    :cond_b
    const-string v0, "count"

    .line 533
    .line 534
    const/4 v3, 0x1

    .line 535
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 536
    .line 537
    .line 538
    move-result-object v3

    .line 539
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    const-string v0, "resource_id"

    .line 543
    .line 544
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    move-result v3

    .line 548
    move-object/from16 p2, v9

    .line 549
    .line 550
    const-string v9, "null"

    .line 551
    .line 552
    move-object/from16 v27, v7

    .line 553
    .line 554
    const-string v7, "0"

    .line 555
    .line 556
    move-object/from16 v28, v13

    .line 557
    .line 558
    const-string v13, "skill_id"

    .line 559
    .line 560
    if-eqz v3, :cond_c

    .line 561
    .line 562
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v3

    .line 566
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v3

    .line 570
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    move-result v3

    .line 574
    if-nez v3, :cond_c

    .line 575
    .line 576
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v3

    .line 580
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v3

    .line 584
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 585
    .line 586
    .line 587
    move-result v3

    .line 588
    if-eqz v3, :cond_11

    .line 589
    .line 590
    :cond_c
    if-eqz v5, :cond_11

    .line 591
    .line 592
    invoke-static {v1}, Lcom/sgscq/vpn/handler/d0;->G(Ljava/util/LinkedHashMap;)I

    .line 593
    .line 594
    .line 595
    move-result v3

    .line 596
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    move-result v16

    .line 600
    if-eqz v16, :cond_d

    .line 601
    .line 602
    invoke-interface {v1, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    move-result v16

    .line 606
    if-nez v16, :cond_d

    .line 607
    .line 608
    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v3

    .line 612
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v3

    .line 616
    move-object/from16 v29, v2

    .line 617
    .line 618
    invoke-virtual {v5, v3}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    if-eqz v2, :cond_10

    .line 623
    .line 624
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v2

    .line 628
    goto :goto_8

    .line 629
    :cond_d
    move-object/from16 v29, v2

    .line 630
    .line 631
    invoke-interface {v1, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    move-result v2

    .line 635
    if-eqz v2, :cond_e

    .line 636
    .line 637
    invoke-virtual {v1, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    goto :goto_8

    .line 642
    :cond_e
    const-string v2, "equipment_id"

    .line 643
    .line 644
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    move-result v16

    .line 648
    if-eqz v16, :cond_f

    .line 649
    .line 650
    goto :goto_7

    .line 651
    :cond_f
    const/16 v2, 0xa

    .line 652
    .line 653
    if-ne v3, v2, :cond_10

    .line 654
    .line 655
    const-string v2, "godness_id"

    .line 656
    .line 657
    :goto_7
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v2

    .line 661
    :goto_8
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v2

    .line 665
    goto :goto_9

    .line 666
    :cond_10
    const/4 v2, 0x0

    .line 667
    :goto_9
    if-eqz v2, :cond_12

    .line 668
    .line 669
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 670
    .line 671
    .line 672
    move-result v3

    .line 673
    if-nez v3, :cond_12

    .line 674
    .line 675
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    move-result v3

    .line 679
    if-nez v3, :cond_12

    .line 680
    .line 681
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 682
    .line 683
    .line 684
    move-result v3

    .line 685
    if-nez v3, :cond_12

    .line 686
    .line 687
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    goto :goto_a

    .line 691
    :cond_11
    move-object/from16 v29, v2

    .line 692
    .line 693
    :cond_12
    :goto_a
    if-eqz v5, :cond_25

    .line 694
    .line 695
    invoke-static {v1}, Lcom/sgscq/vpn/handler/d0;->G(Ljava/util/LinkedHashMap;)I

    .line 696
    .line 697
    .line 698
    move-result v2

    .line 699
    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v3

    .line 703
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v3

    .line 707
    move-object/from16 v16, v10

    .line 708
    .line 709
    new-instance v10, Ljava/lang/StringBuilder;

    .line 710
    .line 711
    move-object/from16 v17, v11

    .line 712
    .line 713
    const-string v11, "[Atlas] Entry: type="

    .line 714
    .line 715
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    const-string v2, " general_id="

    .line 722
    .line 723
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v2

    .line 733
    invoke-static {v6, v2}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 737
    .line 738
    .line 739
    move-result v2

    .line 740
    const-string v10, ": "

    .line 741
    .line 742
    if-eqz v2, :cond_22

    .line 743
    .line 744
    invoke-interface {v1, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 745
    .line 746
    .line 747
    move-result v2

    .line 748
    if-nez v2, :cond_22

    .line 749
    .line 750
    const-string v2, "general_type"

    .line 751
    .line 752
    const-string v11, "general_naturalskill_id"

    .line 753
    .line 754
    const-string v13, "star"

    .line 755
    .line 756
    move-object/from16 v18, v4

    .line 757
    .line 758
    const-string v4, "grade"

    .line 759
    .line 760
    move-object/from16 v19, v12

    .line 761
    .line 762
    const-string v12, "fighting"

    .line 763
    .line 764
    move-object/from16 v30, v8

    .line 765
    .line 766
    const-string v8, "general_wisdom"

    .line 767
    .line 768
    move-object/from16 v20, v15

    .line 769
    .line 770
    const-string v15, "general_defense"

    .line 771
    .line 772
    move-object/from16 v21, v14

    .line 773
    .line 774
    const-string v14, "general_attack"

    .line 775
    .line 776
    move-object/from16 v22, v10

    .line 777
    .line 778
    const-string v10, "general_hp"

    .line 779
    .line 780
    move-object/from16 v31, v9

    .line 781
    .line 782
    const-string v9, "lieutenant_skill_id"

    .line 783
    .line 784
    move-object/from16 v32, v7

    .line 785
    .line 786
    const-string v7, "[Atlas] General name: "

    .line 787
    .line 788
    move-object/from16 v33, v9

    .line 789
    .line 790
    const-string v9, "[Atlas] General attrs: hp="

    .line 791
    .line 792
    move-object/from16 v34, v2

    .line 793
    .line 794
    const-string v2, "[Atlas] General not found: "

    .line 795
    .line 796
    move-object/from16 v35, v11

    .line 797
    .line 798
    const-string v11, "[Atlas] General found: "

    .line 799
    .line 800
    move-object/from16 v36, v0

    .line 801
    .line 802
    const-string v0, "[Atlas] Enriching general: "

    .line 803
    .line 804
    move-object/from16 v37, v13

    .line 805
    .line 806
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    .line 807
    .line 808
    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    .line 813
    .line 814
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    invoke-static {v6, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v5, v3}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 822
    .line 823
    .line 824
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    .line 825
    const-string v13, "general_orbit"

    .line 826
    .line 827
    if-nez v0, :cond_14

    .line 828
    .line 829
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 830
    .line 831
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 832
    .line 833
    .line 834
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    invoke-static {v6, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    .line 843
    .line 844
    const/4 v0, 0x0

    .line 845
    invoke-static {v0, v13, v1}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 846
    .line 847
    .line 848
    move-result v0

    .line 849
    if-lez v0, :cond_13

    .line 850
    .line 851
    goto :goto_b

    .line 852
    :cond_13
    const/4 v0, 0x1

    .line 853
    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 854
    .line 855
    .line 856
    move-result-object v0

    .line 857
    invoke-interface {v1, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    .line 859
    .line 860
    move-object v4, v5

    .line 861
    goto/16 :goto_13

    .line 862
    .line 863
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 864
    .line 865
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    .line 870
    .line 871
    const-string v11, " keys="

    .line 872
    .line 873
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 877
    .line 878
    .line 879
    move-result-object v11

    .line 880
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 881
    .line 882
    .line 883
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v2

    .line 887
    invoke-static {v6, v2}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v5, v3}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v2

    .line 894
    if-eqz v2, :cond_15

    .line 895
    .line 896
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 897
    .line 898
    .line 899
    move-result v11

    .line 900
    if-nez v11, :cond_15

    .line 901
    .line 902
    const-string v11, "general_name"

    .line 903
    .line 904
    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    .line 906
    .line 907
    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 908
    .line 909
    .line 910
    move-result-object v2

    .line 911
    invoke-static {v6, v2}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 912
    .line 913
    .line 914
    :cond_15
    move-object v7, v3

    .line 915
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 916
    .line 917
    :try_start_4
    invoke-static {v0, v10, v2, v3}, Lcom/sgscq/vpn/handler/d0;->k0(Ljava/util/Map;Ljava/lang/String;D)D

    .line 918
    .line 919
    .line 920
    move-result-wide v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 921
    move-object/from16 v46, v4

    .line 922
    .line 923
    move-object v11, v5

    .line 924
    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    .line 925
    .line 926
    :try_start_5
    invoke-static {v0, v14, v4, v5}, Lcom/sgscq/vpn/handler/d0;->k0(Ljava/util/Map;Ljava/lang/String;D)D

    .line 927
    .line 928
    .line 929
    move-result-wide v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 930
    move-object/from16 v48, v11

    .line 931
    .line 932
    move-object/from16 v47, v12

    .line 933
    .line 934
    const-wide/high16 v11, 0x403e000000000000L    # 30.0

    .line 935
    .line 936
    :try_start_6
    invoke-static {v0, v15, v11, v12}, Lcom/sgscq/vpn/handler/d0;->k0(Ljava/util/Map;Ljava/lang/String;D)D

    .line 937
    .line 938
    .line 939
    move-result-wide v11

    .line 940
    move-object/from16 v49, v13

    .line 941
    .line 942
    move-object/from16 v38, v14

    .line 943
    .line 944
    const-wide/high16 v13, 0x4034000000000000L    # 20.0

    .line 945
    .line 946
    invoke-static {v0, v8, v13, v14}, Lcom/sgscq/vpn/handler/d0;->k0(Ljava/util/Map;Ljava/lang/String;D)D

    .line 947
    .line 948
    .line 949
    move-result-wide v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 950
    move-object/from16 v50, v7

    .line 951
    .line 952
    :try_start_7
    new-instance v7, Ljava/lang/StringBuilder;

    .line 953
    .line 954
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    const-string v9, " atk="

    .line 961
    .line 962
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 966
    .line 967
    .line 968
    const-string v9, " def="

    .line 969
    .line 970
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    .line 972
    .line 973
    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 974
    .line 975
    .line 976
    const-string v9, " wis="

    .line 977
    .line 978
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    .line 980
    .line 981
    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 982
    .line 983
    .line 984
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 985
    .line 986
    .line 987
    move-result-object v7

    .line 988
    invoke-static {v6, v7}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    .line 990
    .line 991
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v7

    .line 995
    invoke-interface {v1, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 999
    .line 1000
    .line 1001
    move-result-object v7

    .line 1002
    move-object/from16 v9, v38

    .line 1003
    .line 1004
    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    .line 1006
    .line 1007
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v7

    .line 1011
    invoke-interface {v1, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    .line 1013
    .line 1014
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v7

    .line 1018
    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    .line 1020
    .line 1021
    const-string v7, "base_hp"

    .line 1022
    .line 1023
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v8

    .line 1027
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    .line 1029
    .line 1030
    const-string v7, "base_attack"

    .line 1031
    .line 1032
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v8

    .line 1036
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    .line 1038
    .line 1039
    const-string v7, "base_defense"

    .line 1040
    .line 1041
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v8

    .line 1045
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    .line 1047
    .line 1048
    const-string v7, "base_wisdom"

    .line 1049
    .line 1050
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v8

    .line 1054
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    .line 1056
    .line 1057
    const-string v7, "attr_hp"

    .line 1058
    .line 1059
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v8

    .line 1063
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    .line 1065
    .line 1066
    const-string v7, "attr_attack"

    .line 1067
    .line 1068
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v8

    .line 1072
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    const-string v7, "attr_defense"

    .line 1076
    .line 1077
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v8

    .line 1081
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    .line 1083
    .line 1084
    const-string v7, "attr_wisdom"

    .line 1085
    .line 1086
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v8

    .line 1090
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    .line 1092
    .line 1093
    move-object/from16 v7, v47

    .line 1094
    .line 1095
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v8

    .line 1099
    move-wide/from16 v38, v2

    .line 1100
    .line 1101
    move-wide/from16 v40, v4

    .line 1102
    .line 1103
    move-wide/from16 v42, v11

    .line 1104
    .line 1105
    move-wide/from16 v44, v13

    .line 1106
    .line 1107
    invoke-static/range {v38 .. v45}, Lcom/sgscq/vpn/w1;->x(DDDD)D

    .line 1108
    .line 1109
    .line 1110
    move-result-wide v2

    .line 1111
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v2

    .line 1115
    invoke-static {v8, v2}, Lcom/sgscq/vpn/handler/d0;->r0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v2

    .line 1119
    const-string v3, "base_fighting"

    .line 1120
    .line 1121
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    .line 1123
    .line 1124
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    .line 1126
    .line 1127
    const-string v3, "fighting_point"

    .line 1128
    .line 1129
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    .line 1131
    .line 1132
    const-string v3, "fight_point"

    .line 1133
    .line 1134
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    .line 1136
    .line 1137
    const-string v3, "general_fighting"

    .line 1138
    .line 1139
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    .line 1141
    .line 1142
    const-string v2, "general_hp_step"

    .line 1143
    .line 1144
    const-string v3, "hp_step"

    .line 1145
    .line 1146
    invoke-static {v2, v3, v1, v0}, Lcom/sgscq/vpn/handler/d0;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    .line 1147
    .line 1148
    .line 1149
    const-string v2, "general_attack_step"

    .line 1150
    .line 1151
    const-string v3, "attack_step"

    .line 1152
    .line 1153
    invoke-static {v2, v3, v1, v0}, Lcom/sgscq/vpn/handler/d0;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    .line 1154
    .line 1155
    .line 1156
    const-string v2, "general_defense_step"

    .line 1157
    .line 1158
    const-string v3, "defense_step"

    .line 1159
    .line 1160
    invoke-static {v2, v3, v1, v0}, Lcom/sgscq/vpn/handler/d0;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    .line 1161
    .line 1162
    .line 1163
    const-string v2, "general_wisdom_step"

    .line 1164
    .line 1165
    const-string v3, "wisdom_step"

    .line 1166
    .line 1167
    invoke-static {v2, v3, v1, v0}, Lcom/sgscq/vpn/handler/d0;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    .line 1168
    .line 1169
    .line 1170
    const-string v2, "fighting_step"

    .line 1171
    .line 1172
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v3

    .line 1176
    if-eqz v3, :cond_17

    .line 1177
    .line 1178
    instance-of v4, v3, Ljava/lang/Number;

    .line 1179
    .line 1180
    if-eqz v4, :cond_16

    .line 1181
    .line 1182
    check-cast v3, Ljava/lang/Number;

    .line 1183
    .line 1184
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    .line 1185
    .line 1186
    .line 1187
    move-result-wide v3

    .line 1188
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 1189
    .line 1190
    .line 1191
    move-result v5

    .line 1192
    if-nez v5, :cond_17

    .line 1193
    .line 1194
    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    .line 1195
    .line 1196
    .line 1197
    move-result v5

    .line 1198
    if-nez v5, :cond_17

    .line 1199
    .line 1200
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v3

    .line 1204
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 1205
    .line 1206
    .line 1207
    goto :goto_c

    .line 1208
    :cond_16
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v3

    .line 1212
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 1213
    .line 1214
    .line 1215
    move-result-wide v3

    .line 1216
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 1217
    .line 1218
    .line 1219
    move-result v5

    .line 1220
    if-nez v5, :cond_17

    .line 1221
    .line 1222
    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    .line 1223
    .line 1224
    .line 1225
    move-result v5

    .line 1226
    if-nez v5, :cond_17

    .line 1227
    .line 1228
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v3

    .line 1232
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 1233
    .line 1234
    .line 1235
    :catch_2
    :cond_17
    :goto_c
    const/4 v2, 0x0

    .line 1236
    move-object/from16 v3, v46

    .line 1237
    .line 1238
    :try_start_9
    invoke-static {v2, v3, v0}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 1239
    .line 1240
    .line 1241
    move-result v4

    .line 1242
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v4

    .line 1246
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    .line 1248
    .line 1249
    move-object/from16 v3, v37

    .line 1250
    .line 1251
    invoke-static {v2, v3, v0}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 1252
    .line 1253
    .line 1254
    move-result v2

    .line 1255
    if-lez v2, :cond_18

    .line 1256
    .line 1257
    goto :goto_d

    .line 1258
    :cond_18
    const/4 v2, 0x1

    .line 1259
    :goto_d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v2

    .line 1263
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    .line 1265
    .line 1266
    const-string v2, "general_sex"

    .line 1267
    .line 1268
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v3

    .line 1272
    if-eqz v3, :cond_1a

    .line 1273
    .line 1274
    instance-of v4, v3, Ljava/lang/Number;

    .line 1275
    .line 1276
    if-eqz v4, :cond_19

    .line 1277
    .line 1278
    check-cast v3, Ljava/lang/Number;

    .line 1279
    .line 1280
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 1281
    .line 1282
    .line 1283
    move-result v3

    .line 1284
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v3

    .line 1288
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 1289
    .line 1290
    .line 1291
    goto :goto_e

    .line 1292
    :cond_19
    :try_start_a
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v3

    .line 1296
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 1297
    .line 1298
    .line 1299
    move-result-wide v3

    .line 1300
    double-to-int v3, v3

    .line 1301
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v3

    .line 1305
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 1306
    .line 1307
    .line 1308
    :catch_3
    :cond_1a
    :goto_e
    const/4 v2, 0x0

    .line 1309
    move-object/from16 v3, v49

    .line 1310
    .line 1311
    :try_start_b
    invoke-static {v2, v3, v0}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 1312
    .line 1313
    .line 1314
    move-result v4

    .line 1315
    if-gtz v4, :cond_1b

    .line 1316
    .line 1317
    invoke-static {v2, v3, v1}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 1318
    .line 1319
    .line 1320
    move-result v4

    .line 1321
    :cond_1b
    if-gtz v4, :cond_1c

    .line 1322
    .line 1323
    const/4 v4, 0x1

    .line 1324
    :cond_1c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v2

    .line 1328
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    .line 1330
    .line 1331
    move-object/from16 v2, v36

    .line 1332
    .line 1333
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v3

    .line 1337
    check-cast v3, Ljava/lang/String;

    .line 1338
    .line 1339
    if-eqz v3, :cond_1d

    .line 1340
    .line 1341
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1342
    .line 1343
    .line 1344
    move-result v4

    .line 1345
    if-nez v4, :cond_1d

    .line 1346
    .line 1347
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    .line 1349
    .line 1350
    :cond_1d
    move-object/from16 v2, v35

    .line 1351
    .line 1352
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v3

    .line 1356
    check-cast v3, Ljava/lang/String;

    .line 1357
    .line 1358
    if-eqz v3, :cond_1e

    .line 1359
    .line 1360
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1361
    .line 1362
    .line 1363
    move-result v4

    .line 1364
    if-nez v4, :cond_1e

    .line 1365
    .line 1366
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    .line 1368
    .line 1369
    :cond_1e
    move-object/from16 v2, v34

    .line 1370
    .line 1371
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v3

    .line 1375
    if-eqz v3, :cond_1f

    .line 1376
    .line 1377
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    .line 1379
    .line 1380
    :cond_1f
    move-object/from16 v2, v32

    .line 1381
    .line 1382
    move-object/from16 v3, v33

    .line 1383
    .line 1384
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v0

    .line 1388
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1392
    move-object/from16 v4, v48

    .line 1393
    .line 1394
    :try_start_c
    invoke-virtual {v4, v0}, Lcom/sgscq/vpn/w1;->e1(Ljava/lang/String;)Ljava/util/Map;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 1398
    const-string v7, "skill_type_lieutenant"

    .line 1399
    .line 1400
    if-eqz v5, :cond_21

    .line 1401
    .line 1402
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1403
    .line 1404
    .line 1405
    move-result v5

    .line 1406
    if-nez v5, :cond_21

    .line 1407
    .line 1408
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1409
    .line 1410
    .line 1411
    move-result v5

    .line 1412
    if-nez v5, :cond_21

    .line 1413
    .line 1414
    move-object/from16 v5, v31

    .line 1415
    .line 1416
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1417
    .line 1418
    .line 1419
    move-result v5

    .line 1420
    if-eqz v5, :cond_20

    .line 1421
    .line 1422
    goto :goto_f

    .line 1423
    :cond_20
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    .line 1425
    .line 1426
    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    .line 1428
    .line 1429
    const-wide/16 v2, 0x0

    .line 1430
    .line 1431
    invoke-virtual {v4, v1, v0, v2, v3}, Lcom/sgscq/vpn/w1;->G2(Ljava/util/Map;Ljava/lang/String;D)Z

    .line 1432
    .line 1433
    .line 1434
    goto/16 :goto_13

    .line 1435
    .line 1436
    :cond_21
    :goto_f
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    .line 1438
    .line 1439
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    .line 1441
    .line 1442
    const-string v0, "ls_type"

    .line 1443
    .line 1444
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    .line 1446
    .line 1447
    const-string v0, "ls_value"

    .line 1448
    .line 1449
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 1450
    .line 1451
    .line 1452
    goto/16 :goto_13

    .line 1453
    .line 1454
    :catch_4
    move-exception v0

    .line 1455
    goto :goto_11

    .line 1456
    :catch_5
    move-exception v0

    .line 1457
    goto :goto_10

    .line 1458
    :catch_6
    move-exception v0

    .line 1459
    move-object/from16 v50, v7

    .line 1460
    .line 1461
    :goto_10
    move-object/from16 v4, v48

    .line 1462
    .line 1463
    goto :goto_11

    .line 1464
    :catch_7
    move-exception v0

    .line 1465
    move-object/from16 v50, v7

    .line 1466
    .line 1467
    move-object v4, v11

    .line 1468
    goto :goto_11

    .line 1469
    :catch_8
    move-exception v0

    .line 1470
    move-object v4, v5

    .line 1471
    move-object/from16 v50, v7

    .line 1472
    .line 1473
    goto :goto_11

    .line 1474
    :catch_9
    move-exception v0

    .line 1475
    move-object/from16 v50, v3

    .line 1476
    .line 1477
    move-object v4, v5

    .line 1478
    :goto_11
    const-string v2, "[Atlas] enrichGeneral failed for "

    .line 1479
    .line 1480
    move-object/from16 v5, v22

    .line 1481
    .line 1482
    move-object/from16 v3, v50

    .line 1483
    .line 1484
    invoke-static {v2, v3, v5}, La/b0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v2

    .line 1488
    invoke-static {v0, v2, v6}, Lc/a;->u(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1489
    .line 1490
    .line 1491
    goto :goto_13

    .line 1492
    :cond_22
    move-object/from16 v18, v4

    .line 1493
    .line 1494
    move-object v4, v5

    .line 1495
    move-object/from16 v30, v8

    .line 1496
    .line 1497
    move-object v5, v10

    .line 1498
    move-object/from16 v19, v12

    .line 1499
    .line 1500
    move-object/from16 v21, v14

    .line 1501
    .line 1502
    move-object/from16 v20, v15

    .line 1503
    .line 1504
    invoke-interface {v1, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1505
    .line 1506
    .line 1507
    move-result v0

    .line 1508
    if-eqz v0, :cond_24

    .line 1509
    .line 1510
    invoke-virtual {v1, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v0

    .line 1514
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v2

    .line 1518
    :try_start_e
    invoke-virtual {v4, v2}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v0

    .line 1522
    if-eqz v0, :cond_23

    .line 1523
    .line 1524
    invoke-virtual {v4, v2}, Lcom/sgscq/vpn/w1;->m1(Ljava/lang/String;)Ljava/lang/String;

    .line 1525
    .line 1526
    .line 1527
    move-result-object v3

    .line 1528
    if-eqz v3, :cond_23

    .line 1529
    .line 1530
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1531
    .line 1532
    .line 1533
    move-result v7

    .line 1534
    if-nez v7, :cond_23

    .line 1535
    .line 1536
    goto :goto_12

    .line 1537
    :cond_23
    move-object v3, v2

    .line 1538
    :goto_12
    invoke-static {v2, v3, v1, v0}, Lcom/sgscq/vpn/handler/d0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/Map;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 1539
    .line 1540
    .line 1541
    goto :goto_13

    .line 1542
    :catch_a
    move-exception v0

    .line 1543
    const-string v3, "[Atlas] enrichSkill failed for "

    .line 1544
    .line 1545
    invoke-static {v3, v2, v5}, La/b0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    .line 1547
    .line 1548
    move-result-object v2

    .line 1549
    invoke-static {v0, v2, v6}, Lc/a;->u(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1550
    .line 1551
    .line 1552
    :cond_24
    :goto_13
    move-object/from16 v2, v21

    .line 1553
    .line 1554
    goto :goto_14

    .line 1555
    :cond_25
    move-object/from16 v18, v4

    .line 1556
    .line 1557
    move-object v4, v5

    .line 1558
    move-object/from16 v30, v8

    .line 1559
    .line 1560
    move-object/from16 v16, v10

    .line 1561
    .line 1562
    move-object/from16 v17, v11

    .line 1563
    .line 1564
    move-object/from16 v19, v12

    .line 1565
    .line 1566
    move-object/from16 v20, v15

    .line 1567
    .line 1568
    move-object v2, v14

    .line 1569
    :goto_14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1570
    .line 1571
    .line 1572
    goto :goto_15

    .line 1573
    :cond_26
    move-object/from16 v29, v2

    .line 1574
    .line 1575
    move-object/from16 v26, v3

    .line 1576
    .line 1577
    move-object/from16 v18, v4

    .line 1578
    .line 1579
    move-object v4, v5

    .line 1580
    move-object/from16 v27, v7

    .line 1581
    .line 1582
    move-object/from16 v30, v8

    .line 1583
    .line 1584
    move-object/from16 p2, v9

    .line 1585
    .line 1586
    move-object/from16 v16, v10

    .line 1587
    .line 1588
    move-object/from16 v17, v11

    .line 1589
    .line 1590
    move-object/from16 v19, v12

    .line 1591
    .line 1592
    move-object/from16 v28, v13

    .line 1593
    .line 1594
    move-object v2, v14

    .line 1595
    move-object/from16 v20, v15

    .line 1596
    .line 1597
    :goto_15
    move-object/from16 v1, p1

    .line 1598
    .line 1599
    move-object/from16 v9, p2

    .line 1600
    .line 1601
    move-object v14, v2

    .line 1602
    move-object v5, v4

    .line 1603
    move-object/from16 v10, v16

    .line 1604
    .line 1605
    move-object/from16 v11, v17

    .line 1606
    .line 1607
    move-object/from16 v4, v18

    .line 1608
    .line 1609
    move-object/from16 v12, v19

    .line 1610
    .line 1611
    move-object/from16 v15, v20

    .line 1612
    .line 1613
    move-object/from16 v3, v26

    .line 1614
    .line 1615
    move-object/from16 v7, v27

    .line 1616
    .line 1617
    move-object/from16 v13, v28

    .line 1618
    .line 1619
    move-object/from16 v2, v29

    .line 1620
    .line 1621
    move-object/from16 v8, v30

    .line 1622
    .line 1623
    goto/16 :goto_5

    .line 1624
    .line 1625
    :cond_27
    move-object/from16 v29, v2

    .line 1626
    .line 1627
    move-object/from16 v26, v3

    .line 1628
    .line 1629
    move-object/from16 v27, v7

    .line 1630
    .line 1631
    move-object/from16 v30, v8

    .line 1632
    .line 1633
    move-object/from16 p2, v9

    .line 1634
    .line 1635
    move-object/from16 v16, v10

    .line 1636
    .line 1637
    move-object/from16 v17, v11

    .line 1638
    .line 1639
    move-object/from16 v19, v12

    .line 1640
    .line 1641
    move-object/from16 v28, v13

    .line 1642
    .line 1643
    move-object v2, v14

    .line 1644
    move-object/from16 v20, v15

    .line 1645
    .line 1646
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 1647
    .line 1648
    .line 1649
    move-result-wide v0

    .line 1650
    long-to-int v15, v0

    .line 1651
    if-eqz v20, :cond_28

    .line 1652
    .line 1653
    move-object/from16 v1, v30

    .line 1654
    .line 1655
    iget-object v14, v1, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1656
    .line 1657
    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 1658
    .line 1659
    .line 1660
    move-result v0

    .line 1661
    int-to-long v3, v0

    .line 1662
    move-object/from16 v5, v20

    .line 1663
    .line 1664
    invoke-virtual {v1, v3, v4, v5}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 1665
    .line 1666
    .line 1667
    move-result-wide v3

    .line 1668
    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 1669
    .line 1670
    .line 1671
    move-result v0

    .line 1672
    move-object/from16 v7, v19

    .line 1673
    .line 1674
    invoke-virtual {v1, v0, v7, v5}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1675
    .line 1676
    .line 1677
    move-result v0

    .line 1678
    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 1679
    .line 1680
    .line 1681
    move-result v7

    .line 1682
    move-object/from16 v8, v17

    .line 1683
    .line 1684
    invoke-virtual {v1, v7, v8, v5}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1685
    .line 1686
    .line 1687
    move-result v17

    .line 1688
    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 1689
    .line 1690
    .line 1691
    move-result v7

    .line 1692
    move-object/from16 v9, v16

    .line 1693
    .line 1694
    invoke-virtual {v1, v7, v9, v5}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1695
    .line 1696
    .line 1697
    move-result v18

    .line 1698
    move/from16 v16, v0

    .line 1699
    .line 1700
    move-wide/from16 v19, v3

    .line 1701
    .line 1702
    move-object/from16 v21, v29

    .line 1703
    .line 1704
    move-object/from16 v22, v5

    .line 1705
    .line 1706
    invoke-virtual/range {v14 .. v22}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 1707
    .line 1708
    .line 1709
    move-result-object v0

    .line 1710
    goto :goto_16

    .line 1711
    :cond_28
    move-object/from16 v5, v20

    .line 1712
    .line 1713
    move-object/from16 v1, v30

    .line 1714
    .line 1715
    new-instance v0, Lorg/json/JSONObject;

    .line 1716
    .line 1717
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1718
    .line 1719
    .line 1720
    :goto_16
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 1721
    .line 1722
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1723
    .line 1724
    .line 1725
    new-instance v4, Ljava/util/ArrayList;

    .line 1726
    .line 1727
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1728
    .line 1729
    .line 1730
    new-instance v7, Ljava/util/LinkedHashSet;

    .line 1731
    .line 1732
    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1733
    .line 1734
    .line 1735
    const-string v8, "upd"

    .line 1736
    .line 1737
    if-eqz v5, :cond_2a

    .line 1738
    .line 1739
    move-object/from16 v10, v28

    .line 1740
    .line 1741
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1742
    .line 1743
    .line 1744
    move-result-object v9

    .line 1745
    instance-of v11, v9, Ljava/util/Map;

    .line 1746
    .line 1747
    if-eqz v11, :cond_29

    .line 1748
    .line 1749
    check-cast v9, Ljava/util/Map;

    .line 1750
    .line 1751
    move-object/from16 v11, v27

    .line 1752
    .line 1753
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    .line 1755
    .line 1756
    move-result-object v12

    .line 1757
    move-object/from16 v13, p2

    .line 1758
    .line 1759
    invoke-static {v4, v7, v12, v13}, Lcom/sgscq/vpn/handler/d0;->e(Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/lang/Object;Lm/e;)V

    .line 1760
    .line 1761
    .line 1762
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v9

    .line 1766
    invoke-static {v4, v7, v9, v13}, Lcom/sgscq/vpn/handler/d0;->e(Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/lang/Object;Lm/e;)V

    .line 1767
    .line 1768
    .line 1769
    goto :goto_17

    .line 1770
    :cond_29
    move-object/from16 v11, v27

    .line 1771
    .line 1772
    goto :goto_17

    .line 1773
    :cond_2a
    move-object/from16 v11, v27

    .line 1774
    .line 1775
    move-object/from16 v10, v28

    .line 1776
    .line 1777
    :goto_17
    new-instance v9, Ljava/util/ArrayList;

    .line 1778
    .line 1779
    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1780
    .line 1781
    .line 1782
    new-instance v7, Ljava/util/ArrayList;

    .line 1783
    .line 1784
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1785
    .line 1786
    .line 1787
    filled-new-array {v8, v4, v11, v7}, [Ljava/lang/Object;

    .line 1788
    .line 1789
    .line 1790
    move-result-object v4

    .line 1791
    const-string v7, "del"

    .line 1792
    .line 1793
    invoke-static {v7, v9, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v4

    .line 1797
    invoke-interface {v3, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1798
    .line 1799
    .line 1800
    move-object/from16 v4, v25

    .line 1801
    .line 1802
    invoke-static {v4, v5}, Lcom/sgscq/vpn/handler/d0;->i0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1803
    .line 1804
    .line 1805
    move-result-object v7

    .line 1806
    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    .line 1808
    .line 1809
    const-string v7, "Skill"

    .line 1810
    .line 1811
    invoke-static {v7, v5}, Lcom/sgscq/vpn/handler/d0;->i0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1812
    .line 1813
    .line 1814
    move-result-object v5

    .line 1815
    invoke-interface {v3, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1816
    .line 1817
    .line 1818
    filled-new-array {v10, v4, v7}, [Ljava/lang/String;

    .line 1819
    .line 1820
    .line 1821
    move-result-object v4

    .line 1822
    move-object/from16 v5, v26

    .line 1823
    .line 1824
    invoke-virtual {v5, v3, v0, v4}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 1825
    .line 1826
    .line 1827
    move-result-object v0

    .line 1828
    new-instance v3, Lcom/sgscq/vpn/y1;

    .line 1829
    .line 1830
    invoke-direct {v3}, Lcom/sgscq/vpn/y1;-><init>()V

    .line 1831
    .line 1832
    .line 1833
    const-string v4, "error_code"

    .line 1834
    .line 1835
    const/4 v5, 0x0

    .line 1836
    invoke-virtual {v3, v4, v5}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 1837
    .line 1838
    .line 1839
    move-object/from16 v4, v24

    .line 1840
    .line 1841
    invoke-virtual {v3, v4, v5}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 1842
    .line 1843
    .line 1844
    const-string v4, "code"

    .line 1845
    .line 1846
    invoke-virtual {v3, v4, v5}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 1847
    .line 1848
    .line 1849
    const-string v4, "result"

    .line 1850
    .line 1851
    const/4 v5, 0x1

    .line 1852
    invoke-virtual {v3, v4, v5}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    .line 1853
    .line 1854
    .line 1855
    const-string v4, "msg"

    .line 1856
    .line 1857
    const-string v5, "success"

    .line 1858
    .line 1859
    invoke-virtual {v3, v4, v5}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    .line 1861
    .line 1862
    const-string v4, "atlas_list"

    .line 1863
    .line 1864
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1865
    .line 1866
    .line 1867
    move-result-object v5

    .line 1868
    invoke-virtual {v3, v4, v5}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    .line 1870
    .line 1871
    move-object/from16 v5, v23

    .line 1872
    .line 1873
    invoke-virtual {v3, v5, v0}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    .line 1875
    .line 1876
    invoke-virtual {v3}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    .line 1877
    .line 1878
    .line 1879
    move-result-object v0

    .line 1880
    const-string v3, "[Atlas] uid="

    .line 1881
    .line 1882
    const-string v4, " count="

    .line 1883
    .line 1884
    move-object/from16 v5, v29

    .line 1885
    .line 1886
    invoke-static {v3, v5, v4}, La/b0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1887
    .line 1888
    .line 1889
    move-result-object v3

    .line 1890
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1891
    .line 1892
    .line 1893
    move-result v2

    .line 1894
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1895
    .line 1896
    .line 1897
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1898
    .line 1899
    .line 1900
    move-result-object v2

    .line 1901
    invoke-static {v6, v2}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    .line 1903
    .line 1904
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 1905
    .line 1906
    .line 1907
    move-result-object v0

    .line 1908
    return-object v0

    .line 1909
    :cond_2b
    move-object/from16 v18, v4

    .line 1910
    .line 1911
    move-object v1, v8

    .line 1912
    move-object v4, v9

    .line 1913
    move-object v9, v10

    .line 1914
    move-object v8, v11

    .line 1915
    move-object v7, v12

    .line 1916
    move-object v10, v13

    .line 1917
    const-string v3, "atlas.getSurrenderList"

    .line 1918
    .line 1919
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1920
    .line 1921
    .line 1922
    move-result v3

    .line 1923
    if-eqz v3, :cond_41

    .line 1924
    .line 1925
    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 1926
    .line 1927
    .line 1928
    move-result-object v0

    .line 1929
    const-string v3, ""

    .line 1930
    .line 1931
    move-object/from16 v6, v18

    .line 1932
    .line 1933
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    .line 1935
    .line 1936
    move-result-object v2

    .line 1937
    check-cast v2, Ljava/lang/String;

    .line 1938
    .line 1939
    iget-object v11, v1, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1940
    .line 1941
    invoke-virtual {v11, v0}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 1942
    .line 1943
    .line 1944
    move-result-object v12

    .line 1945
    if-nez v12, :cond_2c

    .line 1946
    .line 1947
    new-instance v12, Ljava/util/LinkedHashMap;

    .line 1948
    .line 1949
    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1950
    .line 1951
    .line 1952
    :cond_2c
    invoke-static {v12}, Lcom/sgscq/vpn/handler/d0;->u0(Ljava/util/Map;)Z

    .line 1953
    .line 1954
    .line 1955
    move-result v13

    .line 1956
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/handler/d0;->V()Ljava/util/ArrayList;

    .line 1957
    .line 1958
    .line 1959
    move-result-object v14

    .line 1960
    new-instance v15, Ljava/util/LinkedHashMap;

    .line 1961
    .line 1962
    move-object/from16 v16, v4

    .line 1963
    .line 1964
    invoke-static {v12}, Lcom/sgscq/vpn/handler/d0;->t0(Ljava/util/Map;)Ljava/util/Map;

    .line 1965
    .line 1966
    .line 1967
    move-result-object v4

    .line 1968
    invoke-direct {v15, v4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1969
    .line 1970
    .line 1971
    if-nez v2, :cond_2d

    .line 1972
    .line 1973
    move-object v2, v3

    .line 1974
    goto :goto_18

    .line 1975
    :cond_2d
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1976
    .line 1977
    .line 1978
    move-result-object v2

    .line 1979
    :goto_18
    invoke-static {v12}, Lcom/sgscq/vpn/handler/d0;->t0(Ljava/util/Map;)Ljava/util/Map;

    .line 1980
    .line 1981
    .line 1982
    move-result-object v4

    .line 1983
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 1984
    .line 1985
    .line 1986
    move-result v17

    .line 1987
    if-nez v17, :cond_31

    .line 1988
    .line 1989
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 1990
    .line 1991
    .line 1992
    move-result v17

    .line 1993
    if-eqz v17, :cond_2f

    .line 1994
    .line 1995
    :cond_2e
    move-object/from16 v28, v10

    .line 1996
    .line 1997
    goto :goto_1a

    .line 1998
    :cond_2f
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1999
    .line 2000
    .line 2001
    move-result-object v17

    .line 2002
    :goto_19
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 2003
    .line 2004
    .line 2005
    move-result v18

    .line 2006
    if-eqz v18, :cond_2e

    .line 2007
    .line 2008
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2009
    .line 2010
    .line 2011
    move-result-object v18

    .line 2012
    move-object/from16 v28, v10

    .line 2013
    .line 2014
    move-object/from16 v10, v18

    .line 2015
    .line 2016
    check-cast v10, Ljava/util/Map;

    .line 2017
    .line 2018
    if-eqz v10, :cond_30

    .line 2019
    .line 2020
    invoke-static {v10, v6, v3, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2021
    .line 2022
    .line 2023
    move-result v18

    .line 2024
    if-eqz v18, :cond_30

    .line 2025
    .line 2026
    goto :goto_1b

    .line 2027
    :cond_30
    move-object/from16 v10, v28

    .line 2028
    .line 2029
    goto :goto_19

    .line 2030
    :goto_1a
    const/4 v10, 0x0

    .line 2031
    :goto_1b
    if-eqz v10, :cond_32

    .line 2032
    .line 2033
    invoke-static {v2, v12}, Lcom/sgscq/vpn/handler/d0;->P(Ljava/lang/String;Ljava/util/Map;)Z

    .line 2034
    .line 2035
    .line 2036
    move-result v17

    .line 2037
    if-eqz v17, :cond_32

    .line 2038
    .line 2039
    invoke-static {v12, v10, v4}, Lcom/sgscq/vpn/handler/d0;->n(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 2040
    .line 2041
    .line 2042
    move-result-object v4

    .line 2043
    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2044
    .line 2045
    .line 2046
    goto :goto_1c

    .line 2047
    :cond_31
    move-object/from16 v28, v10

    .line 2048
    .line 2049
    const/4 v10, 0x0

    .line 2050
    :cond_32
    const/4 v4, 0x0

    .line 2051
    :goto_1c
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 2052
    .line 2053
    .line 2054
    move-result v17

    .line 2055
    if-eqz v17, :cond_33

    .line 2056
    .line 2057
    move-object v10, v14

    .line 2058
    goto :goto_1e

    .line 2059
    :cond_33
    if-eqz v10, :cond_35

    .line 2060
    .line 2061
    invoke-static {v12, v10}, Lcom/sgscq/vpn/handler/d0;->R(Ljava/util/Map;Ljava/util/Map;)Z

    .line 2062
    .line 2063
    .line 2064
    move-result v17

    .line 2065
    if-eqz v17, :cond_34

    .line 2066
    .line 2067
    goto :goto_1d

    .line 2068
    :cond_34
    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 2069
    .line 2070
    .line 2071
    move-result-object v10

    .line 2072
    goto :goto_1e

    .line 2073
    :cond_35
    :goto_1d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2074
    .line 2075
    .line 2076
    move-result-object v10

    .line 2077
    :goto_1e
    invoke-static {v10, v12}, Lcom/sgscq/vpn/handler/y0;->c(Ljava/util/List;Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;

    .line 2078
    .line 2079
    .line 2080
    move-result-object v10

    .line 2081
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 2082
    .line 2083
    .line 2084
    move-result v2

    .line 2085
    if-nez v2, :cond_36

    .line 2086
    .line 2087
    if-nez v4, :cond_3b

    .line 2088
    .line 2089
    invoke-static {}, Lcom/sgscq/vpn/handler/d0;->j()Ljava/util/LinkedHashMap;

    .line 2090
    .line 2091
    .line 2092
    move-result-object v4

    .line 2093
    goto :goto_21

    .line 2094
    :cond_36
    new-instance v2, Ljava/util/ArrayList;

    .line 2095
    .line 2096
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2097
    .line 2098
    .line 2099
    invoke-static {v12}, Lcom/sgscq/vpn/handler/d0;->t0(Ljava/util/Map;)Ljava/util/Map;

    .line 2100
    .line 2101
    .line 2102
    move-result-object v4

    .line 2103
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2104
    .line 2105
    .line 2106
    move-result-object v14

    .line 2107
    :goto_1f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 2108
    .line 2109
    .line 2110
    move-result v17

    .line 2111
    if-eqz v17, :cond_3a

    .line 2112
    .line 2113
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2114
    .line 2115
    .line 2116
    move-result-object v17

    .line 2117
    move-object/from16 p1, v14

    .line 2118
    .line 2119
    move-object/from16 v14, v17

    .line 2120
    .line 2121
    check-cast v14, Ljava/util/Map;

    .line 2122
    .line 2123
    if-nez v14, :cond_37

    .line 2124
    .line 2125
    move-object/from16 v14, p1

    .line 2126
    .line 2127
    goto :goto_1f

    .line 2128
    :cond_37
    invoke-interface {v14, v6, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2129
    .line 2130
    .line 2131
    move-result-object v17

    .line 2132
    move-object/from16 v18, v3

    .line 2133
    .line 2134
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2135
    .line 2136
    .line 2137
    move-result-object v3

    .line 2138
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 2139
    .line 2140
    .line 2141
    move-result v17

    .line 2142
    if-nez v17, :cond_39

    .line 2143
    .line 2144
    invoke-static {v3, v12}, Lcom/sgscq/vpn/handler/d0;->P(Ljava/lang/String;Ljava/util/Map;)Z

    .line 2145
    .line 2146
    .line 2147
    move-result v17

    .line 2148
    if-eqz v17, :cond_39

    .line 2149
    .line 2150
    invoke-static {v12, v14}, Lcom/sgscq/vpn/handler/d0;->R(Ljava/util/Map;Ljava/util/Map;)Z

    .line 2151
    .line 2152
    .line 2153
    move-result v17

    .line 2154
    if-eqz v17, :cond_38

    .line 2155
    .line 2156
    goto :goto_20

    .line 2157
    :cond_38
    invoke-static {v12, v14, v4}, Lcom/sgscq/vpn/handler/d0;->n(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 2158
    .line 2159
    .line 2160
    move-result-object v14

    .line 2161
    invoke-interface {v14, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2162
    .line 2163
    .line 2164
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2165
    .line 2166
    .line 2167
    :cond_39
    :goto_20
    move-object/from16 v14, p1

    .line 2168
    .line 2169
    move-object/from16 v3, v18

    .line 2170
    .line 2171
    goto :goto_1f

    .line 2172
    :cond_3a
    invoke-static {}, Lcom/sgscq/vpn/handler/d0;->j()Ljava/util/LinkedHashMap;

    .line 2173
    .line 2174
    .line 2175
    move-result-object v4

    .line 2176
    const-string v3, "general_list"

    .line 2177
    .line 2178
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2179
    .line 2180
    .line 2181
    const-string v3, "list"

    .line 2182
    .line 2183
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2184
    .line 2185
    .line 2186
    :cond_3b
    :goto_21
    invoke-static {v10, v4}, Lcom/sgscq/vpn/handler/d0;->h(Lcom/sgscq/vpn/handler/j;Ljava/util/Map;)V

    .line 2187
    .line 2188
    .line 2189
    invoke-static {v12}, Lcom/sgscq/vpn/handler/d0;->t0(Ljava/util/Map;)Ljava/util/Map;

    .line 2190
    .line 2191
    .line 2192
    move-result-object v2

    .line 2193
    invoke-interface {v15, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 2194
    .line 2195
    .line 2196
    move-result v2

    .line 2197
    xor-int/lit8 v2, v2, 0x1

    .line 2198
    .line 2199
    invoke-static {v12}, Lcom/sgscq/vpn/handler/d0;->u0(Ljava/util/Map;)Z

    .line 2200
    .line 2201
    .line 2202
    move-result v3

    .line 2203
    or-int/2addr v3, v13

    .line 2204
    const-string v6, "surrender_info"

    .line 2205
    .line 2206
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2207
    .line 2208
    .line 2209
    move-result v6

    .line 2210
    if-nez v3, :cond_3c

    .line 2211
    .line 2212
    if-nez v6, :cond_3c

    .line 2213
    .line 2214
    if-eqz v2, :cond_3d

    .line 2215
    .line 2216
    :cond_3c
    invoke-virtual {v11, v0, v12}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 2217
    .line 2218
    .line 2219
    :cond_3d
    if-eqz v6, :cond_3f

    .line 2220
    .line 2221
    const-string v2, "delta_data"

    .line 2222
    .line 2223
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2224
    .line 2225
    .line 2226
    move-result-object v3

    .line 2227
    instance-of v3, v3, Ljava/util/Map;

    .line 2228
    .line 2229
    if-eqz v3, :cond_3e

    .line 2230
    .line 2231
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2232
    .line 2233
    .line 2234
    move-result-object v2

    .line 2235
    check-cast v2, Ljava/util/Map;

    .line 2236
    .line 2237
    goto :goto_22

    .line 2238
    :cond_3e
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 2239
    .line 2240
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2241
    .line 2242
    .line 2243
    :goto_22
    const-string v3, "cmn_modules"

    .line 2244
    .line 2245
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2246
    .line 2247
    .line 2248
    move-result-object v3

    .line 2249
    invoke-static {v3}, Lcom/sgscq/vpn/handler/d0;->s0(Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 2250
    .line 2251
    .line 2252
    move-result-object v3

    .line 2253
    const-string v6, "Player"

    .line 2254
    .line 2255
    invoke-interface {v3, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2256
    .line 2257
    .line 2258
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 2259
    .line 2260
    .line 2261
    move-result-wide v13

    .line 2262
    long-to-int v6, v13

    .line 2263
    iget-object v10, v1, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2264
    .line 2265
    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 2266
    .line 2267
    .line 2268
    move-result v13

    .line 2269
    int-to-long v13, v13

    .line 2270
    invoke-virtual {v1, v13, v14, v12}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 2271
    .line 2272
    .line 2273
    move-result-wide v24

    .line 2274
    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 2275
    .line 2276
    .line 2277
    move-result v13

    .line 2278
    invoke-virtual {v1, v13, v7, v12}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 2279
    .line 2280
    .line 2281
    move-result v21

    .line 2282
    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 2283
    .line 2284
    .line 2285
    move-result v7

    .line 2286
    invoke-virtual {v1, v7, v8, v12}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 2287
    .line 2288
    .line 2289
    move-result v22

    .line 2290
    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 2291
    .line 2292
    .line 2293
    move-result v7

    .line 2294
    invoke-virtual {v1, v7, v9, v12}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 2295
    .line 2296
    .line 2297
    move-result v23

    .line 2298
    move-object/from16 v19, v10

    .line 2299
    .line 2300
    move/from16 v20, v6

    .line 2301
    .line 2302
    move-object/from16 v26, v0

    .line 2303
    .line 2304
    move-object/from16 v27, v12

    .line 2305
    .line 2306
    invoke-virtual/range {v19 .. v27}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 2307
    .line 2308
    .line 2309
    move-result-object v0

    .line 2310
    const/4 v6, 0x0

    .line 2311
    new-array v6, v6, [Ljava/lang/String;

    .line 2312
    .line 2313
    invoke-interface {v3, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2314
    .line 2315
    .line 2316
    move-result-object v3

    .line 2317
    check-cast v3, [Ljava/lang/String;

    .line 2318
    .line 2319
    invoke-virtual {v11, v2, v0, v3}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 2320
    .line 2321
    .line 2322
    move-result-object v0

    .line 2323
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 2324
    .line 2325
    .line 2326
    move-result-object v0

    .line 2327
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2328
    .line 2329
    .line 2330
    goto :goto_23

    .line 2331
    :cond_3f
    if-eqz v3, :cond_40

    .line 2332
    .line 2333
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 2334
    .line 2335
    .line 2336
    move-result-wide v2

    .line 2337
    long-to-int v2, v2

    .line 2338
    iget-object v3, v1, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2339
    .line 2340
    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 2341
    .line 2342
    .line 2343
    move-result v6

    .line 2344
    int-to-long v13, v6

    .line 2345
    invoke-virtual {v1, v13, v14, v12}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 2346
    .line 2347
    .line 2348
    move-result-wide v24

    .line 2349
    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 2350
    .line 2351
    .line 2352
    move-result v6

    .line 2353
    invoke-virtual {v1, v6, v7, v12}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 2354
    .line 2355
    .line 2356
    move-result v21

    .line 2357
    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 2358
    .line 2359
    .line 2360
    move-result v6

    .line 2361
    invoke-virtual {v1, v6, v8, v12}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 2362
    .line 2363
    .line 2364
    move-result v22

    .line 2365
    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 2366
    .line 2367
    .line 2368
    move-result v6

    .line 2369
    invoke-virtual {v1, v6, v9, v12}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 2370
    .line 2371
    .line 2372
    move-result v23

    .line 2373
    move-object/from16 v19, v3

    .line 2374
    .line 2375
    move/from16 v20, v2

    .line 2376
    .line 2377
    move-object/from16 v26, v0

    .line 2378
    .line 2379
    move-object/from16 v27, v12

    .line 2380
    .line 2381
    invoke-virtual/range {v19 .. v27}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 2382
    .line 2383
    .line 2384
    move-result-object v0

    .line 2385
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 2386
    .line 2387
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2388
    .line 2389
    .line 2390
    move-object/from16 v3, v28

    .line 2391
    .line 2392
    invoke-static {v3, v12}, Lcom/sgscq/vpn/handler/d0;->i0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 2393
    .line 2394
    .line 2395
    move-result-object v6

    .line 2396
    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2397
    .line 2398
    .line 2399
    move-object/from16 v6, v16

    .line 2400
    .line 2401
    invoke-static {v6, v12}, Lcom/sgscq/vpn/handler/d0;->i0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 2402
    .line 2403
    .line 2404
    move-result-object v7

    .line 2405
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2406
    .line 2407
    .line 2408
    filled-new-array {v3, v6}, [Ljava/lang/String;

    .line 2409
    .line 2410
    .line 2411
    move-result-object v3

    .line 2412
    invoke-virtual {v11, v2, v0, v3}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 2413
    .line 2414
    .line 2415
    move-result-object v0

    .line 2416
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 2417
    .line 2418
    .line 2419
    move-result-object v0

    .line 2420
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2421
    .line 2422
    .line 2423
    :cond_40
    :goto_23
    invoke-static {v4}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 2424
    .line 2425
    .line 2426
    move-result-object v0

    .line 2427
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 2428
    .line 2429
    .line 2430
    move-result-object v0

    .line 2431
    return-object v0

    .line 2432
    :cond_41
    const-string v3, "menu.notice"

    .line 2433
    .line 2434
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2435
    .line 2436
    .line 2437
    move-result v3

    .line 2438
    if-eqz v3, :cond_42

    .line 2439
    .line 2440
    :try_start_f
    invoke-static {}, Lcom/sgscq/vpn/handler/d0;->m()Ljava/util/LinkedHashMap;

    .line 2441
    .line 2442
    .line 2443
    move-result-object v0

    .line 2444
    const/4 v2, 0x1

    .line 2445
    new-array v2, v2, [Ljava/util/Map;

    .line 2446
    .line 2447
    const-string v3, "content"

    .line 2448
    .line 2449
    const-string v4, "\u53ea\u8981\u6ca1\u6709\u4e0d\u53ef\u6297\u529b\u6216\u5176\u4ed6\u5916\u90e8\u56e0\u7d20\u5f71\u54cd\uff0c\u6211\u4f1a\u5c3d\u529b\u8ba9\u6e38\u620f\u4e00\u76f4\u66f4\u65b0\u4e0b\u53bb\u3002\n\n\u4e91\u529f\u80fd\u7684\u521d\u8877\uff0c\u662f\u5e0c\u671b\u8ba9\u5927\u5bb6\u591a\u4e00\u70b9\u7c7b\u4f3c\u670d\u52a1\u5668\u7684\u6e38\u620f\u4f53\u9a8c\u3002\u8bf7\u4e0d\u8981\u5c06\u5176\u7528\u4e8e\u5916\u6302\u3001\u5237\u53d6\u8d44\u6e90\u6216\u6076\u610f\u5229\u7528 BUG\uff0c\u4e5f\u5e0c\u671b\u5927\u5bb6\u5171\u540c\u73cd\u60dc\u8fd9\u4efd\u529f\u80fd\u3002\n\n\u672c\u6e38\u620f\u59cb\u7ec8\u4ee5\u5355\u673a\u7248\u5f62\u5f0f\u63d0\u4f9b\uff0c\u4e91\u529f\u80fd\u4ec5\u4f5c\u4e3a\u9644\u52a0\u4f53\u9a8c\uff0c\u4e0d\u4ee3\u8868\u3001\u4e5f\u4e0d\u627f\u8bfa\u63d0\u4f9b\u6301\u7eed\u6216\u7a33\u5b9a\u7684\u8054\u673a\u670d\u52a1\u3002\n\n\u7231\u53d1\u7535\u4ec5\u4ee3\u8868\u4e2a\u4eba\u81ea\u613f\u652f\u6301\uff0c\u4e0d\u6784\u6210\u4efb\u4f55\u670d\u52a1\u8d2d\u4e70\u884c\u4e3a\uff0c\u4e5f\u4e0d\u627f\u8bfa\u5411\u53d1\u7535\u7528\u6237\u63d0\u4f9b\u989d\u5916\u670d\u52a1\u3002\n\n\u4f7f\u7528\u4e91\u529f\u80fd\u65f6\uff0c\u4f1a\u540c\u6b65\u7231\u53d1\u7535\u8d26\u6237\u6807\u8bc6\u3001\u6e38\u620f\u89d2\u8272\u4e0e\u5b58\u6863\u6570\u636e\uff0c\u4ee5\u53ca\u7ef4\u6301\u767b\u5f55\u548c\u9632\u6ee5\u7528\u6240\u9700\u7684\u8bbe\u5907\u3001\u4f1a\u8bdd\u6807\u8bc6\u3002\u8fd9\u4e9b\u6570\u636e\u4ec5\u7528\u4e8e\u4e91\u5b58\u6863\u3001\u4e91\u5bf9\u624b\u3001\u516c\u4f1a\u6218\u3001\u5929\u68af\u3001\u62a2\u593a\u3001\u864e\u7262\u5173\u7b49\u539f\u7248\u8054\u673a\u76f8\u5173\u4f53\u9a8c\u53ca\u5fc5\u8981\u7684\u8d26\u53f7\u5b89\u5168\uff1b\u4e0d\u4f1a\u4e3b\u52a8\u8bfb\u53d6\u6216\u4e0a\u4f20\u901a\u8baf\u5f55\u3001\u77ed\u4fe1\u3001\u76f8\u518c\u3001\u7cbe\u786e\u4f4d\u7f6e\u7b49\u4e0e\u6e38\u620f\u65e0\u5173\u7684\u4e2a\u4eba\u654f\u611f\u4fe1\u606f\u3002"

    .line 2450
    .line 2451
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 2452
    .line 2453
    .line 2454
    move-result-object v3

    .line 2455
    const-string v4, "title"

    .line 2456
    .line 2457
    const-string v5, "\u4e14\u73a9\u4e14\u73cd\u60dc"

    .line 2458
    .line 2459
    invoke-static {v4, v5, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2460
    .line 2461
    .line 2462
    move-result-object v3

    .line 2463
    const/4 v4, 0x0

    .line 2464
    aput-object v3, v2, v4

    .line 2465
    .line 2466
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 2467
    .line 2468
    .line 2469
    move-result-object v2

    .line 2470
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 2471
    .line 2472
    .line 2473
    move-result-object v2

    .line 2474
    const-string v3, "notice"

    .line 2475
    .line 2476
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2477
    .line 2478
    .line 2479
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 2480
    .line 2481
    .line 2482
    move-result-object v0

    .line 2483
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 2484
    .line 2485
    .line 2486
    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    .line 2487
    goto :goto_24

    .line 2488
    :catch_b
    invoke-static {}, Lcom/sgscq/vpn/handler/d0;->m()Ljava/util/LinkedHashMap;

    .line 2489
    .line 2490
    .line 2491
    move-result-object v0

    .line 2492
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 2493
    .line 2494
    .line 2495
    move-result-object v0

    .line 2496
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 2497
    .line 2498
    .line 2499
    move-result-object v0

    .line 2500
    :goto_24
    return-object v0

    .line 2501
    :cond_42
    const-string v3, "evolutionChest."

    .line 2502
    .line 2503
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2504
    .line 2505
    .line 2506
    move-result v3

    .line 2507
    if-eqz v3, :cond_44

    .line 2508
    .line 2509
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/cloud/m0;->q1(Ljava/lang/String;)Z

    .line 2510
    .line 2511
    .line 2512
    move-result v3

    .line 2513
    if-nez v3, :cond_43

    .line 2514
    .line 2515
    invoke-static {}, Lcom/sgscq/vpn/cloud/m0;->Z2()Ljava/util/LinkedHashMap;

    .line 2516
    .line 2517
    .line 2518
    move-result-object v0

    .line 2519
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 2520
    .line 2521
    .line 2522
    move-result-object v0

    .line 2523
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 2524
    .line 2525
    .line 2526
    move-result-object v0

    .line 2527
    return-object v0

    .line 2528
    :cond_43
    invoke-virtual/range {p0 .. p2}, Lcom/sgscq/vpn/handler/d0;->L(Ljava/lang/String;Ljava/util/Map;)[B

    .line 2529
    .line 2530
    .line 2531
    move-result-object v0

    .line 2532
    return-object v0

    .line 2533
    :cond_44
    const/4 v0, 0x0

    .line 2534
    return-object v0
.end method

.method public final L(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lcom/sgscq/vpn/handler/d0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 8
    .line 9
    invoke-virtual {v3, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v11

    .line 13
    const-string v4, "evolutionChest.getList"

    .line 14
    .line 15
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const/4 v6, 0x0

    .line 25
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    iget-object v13, v3, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 30
    .line 31
    const-string v7, "evolution_chest_free_refresh_times"

    .line 32
    .line 33
    const-string v8, "error_code"

    .line 34
    .line 35
    const-string v9, "msg"

    .line 36
    .line 37
    const-string v10, "code"

    .line 38
    .line 39
    const-string v12, "evolution_chest_refresh_times"

    .line 40
    .line 41
    const-string v14, ""

    .line 42
    .line 43
    const-string v15, "evolution_chest_preview"

    .line 44
    .line 45
    move-object/from16 v16, v5

    .line 46
    .line 47
    const-string v5, "success"

    .line 48
    .line 49
    const-string v2, "result"

    .line 50
    .line 51
    move-object/from16 v20, v3

    .line 52
    .line 53
    const-string v3, "ret"

    .line 54
    .line 55
    move-object/from16 v17, v8

    .line 56
    .line 57
    const-string v8, "SGSCQ_SRV"

    .line 58
    .line 59
    if-eqz v4, :cond_5

    .line 60
    .line 61
    invoke-virtual {v13, v11}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    .line 67
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 70
    .line 71
    .line 72
    :cond_0
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v15

    .line 80
    move-object/from16 v18, v5

    .line 81
    .line 82
    const-string v5, "evolution_chest_day"

    .line 83
    .line 84
    invoke-static {v0, v5, v14, v15}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    xor-int/lit8 v5, v5, 0x1

    .line 89
    .line 90
    const-string v14, "evolution_chest_free_times"

    .line 91
    .line 92
    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v14

    .line 96
    if-eqz v14, :cond_2

    .line 97
    .line 98
    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    if-eqz v12, :cond_2

    .line 103
    .line 104
    const-string v12, "evolution_chest_open_times"

    .line 105
    .line 106
    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v12

    .line 110
    if-eqz v12, :cond_2

    .line 111
    .line 112
    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-nez v7, :cond_1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_1
    const/4 v7, 0x0

    .line 120
    goto :goto_1

    .line 121
    :cond_2
    :goto_0
    const/4 v7, 0x1

    .line 122
    :goto_1
    invoke-static {v0}, Lcom/sgscq/vpn/handler/d0;->A(Ljava/util/Map;)I

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    invoke-virtual {v1, v12}, Lcom/sgscq/vpn/handler/d0;->k(I)Ljava/util/ArrayList;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    new-instance v14, Ljava/util/Random;

    .line 131
    .line 132
    invoke-direct {v14}, Ljava/util/Random;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-static {v0}, Lcom/sgscq/vpn/handler/d0;->A(Ljava/util/Map;)I

    .line 136
    .line 137
    .line 138
    move-result v15

    .line 139
    invoke-static {v15}, Lcom/sgscq/vpn/handler/d0;->v(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v15

    .line 143
    invoke-static {v0, v12, v14, v15}, Lcom/sgscq/vpn/handler/d0;->s(Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Random;Ljava/lang/String;)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v12

    .line 147
    invoke-static {v0}, Lcom/sgscq/vpn/handler/d0;->t(Ljava/util/Map;)V

    .line 148
    .line 149
    .line 150
    if-ne v4, v12, :cond_3

    .line 151
    .line 152
    if-nez v7, :cond_3

    .line 153
    .line 154
    if-eqz v5, :cond_4

    .line 155
    .line 156
    :cond_3
    invoke-virtual {v13, v11, v0}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 157
    .line 158
    .line 159
    :cond_4
    const-string v4, "[EvoChest] getList uid="

    .line 160
    .line 161
    const-string v5, " chests="

    .line 162
    .line 163
    invoke-static {v4, v11, v5}, La/b0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    invoke-static {v8, v4}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 182
    .line 183
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    invoke-interface {v4, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 193
    .line 194
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-object/from16 v5, v18

    .line 198
    .line 199
    invoke-interface {v4, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-object/from16 v2, v17

    .line 203
    .line 204
    invoke-interface {v4, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    const-string v2, "chest_list"

    .line 208
    .line 209
    invoke-interface {v4, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    invoke-static {v4, v0}, Lcom/sgscq/vpn/handler/d0;->f(Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    .line 213
    .line 214
    .line 215
    invoke-static {v4}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    move-object/from16 v4, v20

    .line 220
    .line 221
    invoke-virtual {v4, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    return-object v0

    .line 226
    :cond_5
    move-object/from16 v21, v17

    .line 227
    .line 228
    move-object/from16 v4, v20

    .line 229
    .line 230
    move-object/from16 v17, v9

    .line 231
    .line 232
    const-string v9, "evolutionChest.open"

    .line 233
    .line 234
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v9

    .line 238
    if-eqz v9, :cond_6

    .line 239
    .line 240
    const/4 v0, 0x0

    .line 241
    invoke-virtual {v1, v11, v0}, Lcom/sgscq/vpn/handler/d0;->M(Ljava/lang/String;Z)[B

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    return-object v0

    .line 246
    :cond_6
    const-string v9, "evolutionChest.openTen"

    .line 247
    .line 248
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v9

    .line 252
    if-eqz v9, :cond_7

    .line 253
    .line 254
    const/4 v0, 0x1

    .line 255
    invoke-virtual {v1, v11, v0}, Lcom/sgscq/vpn/handler/d0;->M(Ljava/lang/String;Z)[B

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    return-object v0

    .line 260
    :cond_7
    const-string v9, "evolutionChest.refresh"

    .line 261
    .line 262
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v9

    .line 266
    move-object/from16 v20, v3

    .line 267
    .line 268
    const-string v3, "cmn"

    .line 269
    .line 270
    move-object/from16 v18, v10

    .line 271
    .line 272
    const-string v10, "user_power"

    .line 273
    .line 274
    move-object/from16 v22, v6

    .line 275
    .line 276
    const-string v6, "user_energy"

    .line 277
    .line 278
    move-object/from16 v19, v14

    .line 279
    .line 280
    const-string v14, "user_gold"

    .line 281
    .line 282
    if-eqz v9, :cond_c

    .line 283
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    const-string v9, "[EvoChest] refresh uid="

    .line 287
    .line 288
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-static {v8, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v13, v11}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    if-nez v0, :cond_8

    .line 306
    .line 307
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 308
    .line 309
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 310
    .line 311
    .line 312
    :cond_8
    invoke-static {v0}, Lcom/sgscq/vpn/handler/d0;->A(Ljava/util/Map;)I

    .line 313
    .line 314
    .line 315
    move-result v8

    .line 316
    invoke-virtual {v1, v8}, Lcom/sgscq/vpn/handler/d0;->k(I)Ljava/util/ArrayList;

    .line 317
    .line 318
    .line 319
    move-result-object v9

    .line 320
    move-object/from16 v23, v3

    .line 321
    .line 322
    add-int/lit8 v3, v8, 0x1

    .line 323
    .line 324
    move-object/from16 v24, v10

    .line 325
    .line 326
    invoke-virtual {v1, v3}, Lcom/sgscq/vpn/handler/d0;->k(I)Ljava/util/ArrayList;

    .line 327
    .line 328
    .line 329
    move-result-object v10

    .line 330
    new-instance v1, Ljava/util/Random;

    .line 331
    .line 332
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-static {v8}, Lcom/sgscq/vpn/handler/d0;->v(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v8

    .line 339
    invoke-static {v3}, Lcom/sgscq/vpn/handler/d0;->v(I)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    invoke-static {v0}, Lcom/sgscq/vpn/handler/d0;->t(Ljava/util/Map;)V

    .line 344
    .line 345
    .line 346
    move-object/from16 v25, v6

    .line 347
    .line 348
    new-instance v6, Ljava/util/Random;

    .line 349
    .line 350
    move-object/from16 v27, v4

    .line 351
    .line 352
    move-object/from16 v26, v5

    .line 353
    .line 354
    const-wide/16 v4, 0x0

    .line 355
    .line 356
    invoke-direct {v6, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 357
    .line 358
    .line 359
    invoke-static {v0, v9, v6, v8}, Lcom/sgscq/vpn/handler/d0;->s(Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Random;Ljava/lang/String;)Ljava/util/List;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    const/4 v6, 0x3

    .line 368
    invoke-static {v5, v6}, Lcom/sgscq/vpn/handler/d0;->m0(Ljava/lang/Object;I)I

    .line 369
    .line 370
    .line 371
    move-result v5

    .line 372
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v6

    .line 376
    const/4 v8, 0x0

    .line 377
    invoke-static {v6, v8}, Lcom/sgscq/vpn/handler/d0;->m0(Ljava/lang/Object;I)I

    .line 378
    .line 379
    .line 380
    move-result v6

    .line 381
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v9

    .line 385
    invoke-static {v9, v8}, Lcom/sgscq/vpn/handler/d0;->m0(Ljava/lang/Object;I)I

    .line 386
    .line 387
    .line 388
    move-result v8

    .line 389
    if-lez v5, :cond_9

    .line 390
    .line 391
    add-int/lit8 v5, v5, -0x1

    .line 392
    .line 393
    goto :goto_2

    .line 394
    :cond_9
    const/16 v9, 0x14

    .line 395
    .line 396
    if-ge v8, v9, :cond_a

    .line 397
    .line 398
    const-string v1, "\u5143\u5b9d\u4e0d\u8db3"

    .line 399
    .line 400
    const/4 v3, 0x0

    .line 401
    invoke-static {v3, v0, v4, v1}, Lcom/sgscq/vpn/handler/d0;->x(ZLjava/util/Map;Ljava/util/List;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    goto :goto_3

    .line 406
    :cond_a
    add-int/lit8 v8, v8, -0x14

    .line 407
    .line 408
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    invoke-interface {v0, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    :goto_2
    const/4 v4, 0x1

    .line 416
    add-int/2addr v6, v4

    .line 417
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 425
    .line 426
    .line 427
    move-result-object v5

    .line 428
    invoke-interface {v0, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    invoke-static {v10, v1}, Lcom/sgscq/vpn/handler/d0;->n0(Ljava/util/ArrayList;Ljava/util/Random;)Ljava/util/ArrayList;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    const-string v5, "evolution_chest_preview_batch"

    .line 439
    .line 440
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-object/from16 v3, v26

    .line 444
    .line 445
    invoke-static {v4, v0, v1, v3}, Lcom/sgscq/vpn/handler/d0;->x(ZLjava/util/Map;Ljava/util/List;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    :goto_3
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 450
    .line 451
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    invoke-virtual {v3, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    if-eqz v2, :cond_b

    .line 460
    .line 461
    invoke-virtual {v13, v11, v0}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 462
    .line 463
    .line 464
    :cond_b
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 465
    .line 466
    .line 467
    move-result-wide v2

    .line 468
    long-to-int v5, v2

    .line 469
    move-object/from16 v2, v27

    .line 470
    .line 471
    iget-object v4, v2, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 472
    .line 473
    invoke-virtual {v2}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    int-to-long v6, v3

    .line 478
    invoke-virtual {v2, v6, v7, v0}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 479
    .line 480
    .line 481
    move-result-wide v9

    .line 482
    invoke-virtual {v2}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 483
    .line 484
    .line 485
    move-result v3

    .line 486
    invoke-virtual {v2, v3, v14, v0}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 487
    .line 488
    .line 489
    move-result v6

    .line 490
    invoke-virtual {v2}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 491
    .line 492
    .line 493
    move-result v3

    .line 494
    move-object/from16 v7, v25

    .line 495
    .line 496
    invoke-virtual {v2, v3, v7, v0}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 497
    .line 498
    .line 499
    move-result v7

    .line 500
    invoke-virtual {v2}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 501
    .line 502
    .line 503
    move-result v3

    .line 504
    move-object/from16 v12, v24

    .line 505
    .line 506
    invoke-virtual {v2, v3, v12, v0}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 507
    .line 508
    .line 509
    move-result v8

    .line 510
    move-object v15, v2

    .line 511
    move-object v12, v0

    .line 512
    invoke-virtual/range {v4 .. v12}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    const/4 v3, 0x0

    .line 517
    new-array v3, v3, [Ljava/lang/String;

    .line 518
    .line 519
    invoke-virtual {v13, v0, v2, v3}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    move-object/from16 v9, v23

    .line 528
    .line 529
    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-virtual {v15, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    return-object v0

    .line 541
    :cond_c
    move-object v9, v3

    .line 542
    move-object v15, v4

    .line 543
    move-object v3, v5

    .line 544
    move-object v7, v6

    .line 545
    move-object v12, v10

    .line 546
    const-string v1, "evolutionChest.synthetise"

    .line 547
    .line 548
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 549
    .line 550
    .line 551
    move-result v0

    .line 552
    if-eqz v0, :cond_27

    .line 553
    .line 554
    invoke-virtual {v13, v11}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    if-nez v0, :cond_d

    .line 559
    .line 560
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 561
    .line 562
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 563
    .line 564
    .line 565
    :cond_d
    move-object v1, v0

    .line 566
    const-string v4, "user_item_id"

    .line 567
    .line 568
    move-object v5, v2

    .line 569
    move-object/from16 v2, p2

    .line 570
    .line 571
    if-nez v2, :cond_e

    .line 572
    .line 573
    move-object/from16 v0, v19

    .line 574
    .line 575
    move-object v6, v0

    .line 576
    goto :goto_4

    .line 577
    :cond_e
    move-object/from16 v6, v19

    .line 578
    .line 579
    invoke-interface {v2, v4, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    check-cast v0, Ljava/lang/String;

    .line 584
    .line 585
    :goto_4
    const-string v10, "Item"

    .line 586
    .line 587
    invoke-static {v10, v1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 588
    .line 589
    .line 590
    move-result-object v19

    .line 591
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 592
    .line 593
    .line 594
    move-result-object v19

    .line 595
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    .line 596
    .line 597
    .line 598
    move-result v23

    .line 599
    move-object/from16 v24, v9

    .line 600
    .line 601
    const-string v9, "item_id"

    .line 602
    .line 603
    move-object/from16 v25, v12

    .line 604
    .line 605
    const-string v12, "id"

    .line 606
    .line 607
    move-object/from16 v26, v7

    .line 608
    .line 609
    const-string v7, "pk_id"

    .line 610
    .line 611
    if-eqz v23, :cond_10

    .line 612
    .line 613
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v23

    .line 617
    move-object/from16 v27, v14

    .line 618
    .line 619
    move-object/from16 v14, v23

    .line 620
    .line 621
    check-cast v14, Ljava/util/Map;

    .line 622
    .line 623
    invoke-static {v14, v7, v6, v0}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 624
    .line 625
    .line 626
    move-result v23

    .line 627
    if-eqz v23, :cond_f

    .line 628
    .line 629
    invoke-static {v14, v12, v6, v9}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    goto :goto_6

    .line 634
    :cond_f
    move-object/from16 v9, v24

    .line 635
    .line 636
    move-object/from16 v12, v25

    .line 637
    .line 638
    move-object/from16 v7, v26

    .line 639
    .line 640
    move-object/from16 v14, v27

    .line 641
    .line 642
    goto :goto_5

    .line 643
    :cond_10
    move-object/from16 v27, v14

    .line 644
    .line 645
    move-object v0, v6

    .line 646
    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 647
    .line 648
    .line 649
    move-result v14

    .line 650
    if-eqz v14, :cond_12

    .line 651
    .line 652
    :cond_11
    move-object/from16 v19, v15

    .line 653
    .line 654
    goto :goto_7

    .line 655
    :cond_12
    :try_start_0
    iget-object v14, v15, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 656
    .line 657
    invoke-static {v14}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 658
    .line 659
    .line 660
    move-result-object v14

    .line 661
    invoke-virtual {v14, v0}, Lcom/sgscq/vpn/w1;->c1(Ljava/lang/String;)Ljava/util/Map;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    if-eqz v0, :cond_11

    .line 666
    .line 667
    const-string v14, "related_id"

    .line 668
    .line 669
    invoke-interface {v0, v14, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    move-object/from16 v19, v15

    .line 678
    .line 679
    goto :goto_8

    .line 680
    :catch_0
    move-exception v0

    .line 681
    new-instance v14, Ljava/lang/StringBuilder;

    .line 682
    .line 683
    move-object/from16 v19, v15

    .line 684
    .line 685
    const-string v15, "[EvoChest] synthetise related lookup failed: "

    .line 686
    .line 687
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    invoke-static {v0, v14, v8}, Lc/a;->u(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    :goto_7
    move-object v0, v6

    .line 694
    :goto_8
    new-instance v14, Ljava/util/LinkedHashMap;

    .line 695
    .line 696
    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 697
    .line 698
    .line 699
    move-object/from16 v15, v20

    .line 700
    .line 701
    move-object/from16 v8, v22

    .line 702
    .line 703
    invoke-interface {v14, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-object/from16 v15, v18

    .line 707
    .line 708
    invoke-interface {v14, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-object/from16 v15, v17

    .line 712
    .line 713
    invoke-interface {v14, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    .line 715
    .line 716
    move-object/from16 v3, v21

    .line 717
    .line 718
    invoke-interface {v14, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    if-nez v2, :cond_13

    .line 722
    .line 723
    move-object v4, v6

    .line 724
    goto :goto_9

    .line 725
    :cond_13
    invoke-interface {v2, v4, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object v4

    .line 729
    check-cast v4, Ljava/lang/String;

    .line 730
    .line 731
    :goto_9
    if-nez v2, :cond_14

    .line 732
    .line 733
    const/4 v2, 0x0

    .line 734
    move-object/from16 v17, v11

    .line 735
    .line 736
    goto :goto_a

    .line 737
    :cond_14
    move-object/from16 v17, v11

    .line 738
    .line 739
    const-string v11, "universal_num"

    .line 740
    .line 741
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    move-result-object v2

    .line 745
    const/4 v11, 0x0

    .line 746
    invoke-static {v2, v11}, Lcom/sgscq/vpn/handler/d0;->m0(Ljava/lang/Object;I)I

    .line 747
    .line 748
    .line 749
    move-result v2

    .line 750
    :goto_a
    if-eqz v4, :cond_17

    .line 751
    .line 752
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 753
    .line 754
    .line 755
    move-result v11

    .line 756
    if-eqz v11, :cond_15

    .line 757
    .line 758
    goto :goto_c

    .line 759
    :cond_15
    invoke-static {v10, v1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 760
    .line 761
    .line 762
    move-result-object v11

    .line 763
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 764
    .line 765
    .line 766
    move-result-object v11

    .line 767
    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 768
    .line 769
    .line 770
    move-result v18

    .line 771
    if-eqz v18, :cond_17

    .line 772
    .line 773
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v18

    .line 777
    move-object/from16 p1, v11

    .line 778
    .line 779
    move-object/from16 v11, v18

    .line 780
    .line 781
    check-cast v11, Ljava/util/Map;

    .line 782
    .line 783
    invoke-static {v11, v7, v6, v4}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 784
    .line 785
    .line 786
    move-result v18

    .line 787
    if-eqz v18, :cond_16

    .line 788
    .line 789
    goto :goto_d

    .line 790
    :cond_16
    move-object/from16 v11, p1

    .line 791
    .line 792
    goto :goto_b

    .line 793
    :cond_17
    :goto_c
    const/4 v11, 0x0

    .line 794
    :goto_d
    const-string v4, "item_delta"

    .line 795
    .line 796
    if-eqz v11, :cond_24

    .line 797
    .line 798
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 799
    .line 800
    .line 801
    move-result v6

    .line 802
    if-nez v6, :cond_24

    .line 803
    .line 804
    const-string v6, "0"

    .line 805
    .line 806
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 807
    .line 808
    .line 809
    move-result v18

    .line 810
    if-nez v18, :cond_24

    .line 811
    .line 812
    move-object/from16 v18, v13

    .line 813
    .line 814
    invoke-static {v11}, Lcom/sgscq/vpn/handler/d0;->T(Ljava/util/Map;)Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v13

    .line 818
    move-object/from16 v21, v3

    .line 819
    .line 820
    const-string v3, "600209"

    .line 821
    .line 822
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 823
    .line 824
    .line 825
    move-result v13

    .line 826
    if-eqz v13, :cond_18

    .line 827
    .line 828
    move-object v3, v4

    .line 829
    move-object v4, v5

    .line 830
    :goto_e
    move-object/from16 v20, v15

    .line 831
    .line 832
    move-object/from16 v6, v16

    .line 833
    .line 834
    goto/16 :goto_18

    .line 835
    .line 836
    :cond_18
    invoke-static {v11}, Lcom/sgscq/vpn/handler/d0;->U(Ljava/util/Map;)I

    .line 837
    .line 838
    .line 839
    move-result v13

    .line 840
    move-object/from16 v20, v15

    .line 841
    .line 842
    const/16 v15, 0x1e

    .line 843
    .line 844
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    .line 845
    .line 846
    .line 847
    move-result v13

    .line 848
    rsub-int/lit8 v15, v13, 0x1e

    .line 849
    .line 850
    if-lt v2, v15, :cond_23

    .line 851
    .line 852
    invoke-static {v10, v1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 853
    .line 854
    .line 855
    move-result-object v2

    .line 856
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 857
    .line 858
    .line 859
    move-result-object v2

    .line 860
    const/16 v22, 0x0

    .line 861
    .line 862
    move-object/from16 p1, v4

    .line 863
    .line 864
    move/from16 v4, v22

    .line 865
    .line 866
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 867
    .line 868
    .line 869
    move-result v22

    .line 870
    if-eqz v22, :cond_1a

    .line 871
    .line 872
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 873
    .line 874
    .line 875
    move-result-object v22

    .line 876
    check-cast v22, Ljava/util/Map;

    .line 877
    .line 878
    move-object/from16 p2, v2

    .line 879
    .line 880
    invoke-static/range {v22 .. v22}, Lcom/sgscq/vpn/handler/d0;->T(Ljava/util/Map;)Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object v2

    .line 884
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 885
    .line 886
    .line 887
    move-result v2

    .line 888
    if-eqz v2, :cond_19

    .line 889
    .line 890
    invoke-static/range {v22 .. v22}, Lcom/sgscq/vpn/handler/d0;->U(Ljava/util/Map;)I

    .line 891
    .line 892
    .line 893
    move-result v2

    .line 894
    add-int/2addr v2, v4

    .line 895
    move v4, v2

    .line 896
    :cond_19
    move-object/from16 v2, p2

    .line 897
    .line 898
    goto :goto_f

    .line 899
    :cond_1a
    if-ge v4, v15, :cond_1b

    .line 900
    .line 901
    move-object/from16 v3, p1

    .line 902
    .line 903
    goto/16 :goto_17

    .line 904
    .line 905
    :cond_1b
    new-instance v2, Ljava/util/ArrayList;

    .line 906
    .line 907
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 908
    .line 909
    .line 910
    new-instance v4, Ljava/util/ArrayList;

    .line 911
    .line 912
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 913
    .line 914
    .line 915
    invoke-static {v10, v1}, Lcom/sgscq/vpn/w1;->e2(Ljava/lang/String;Ljava/util/Map;)I

    .line 916
    .line 917
    .line 918
    move-result v20

    .line 919
    move-object/from16 v22, v5

    .line 920
    .line 921
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 922
    .line 923
    .line 924
    move-result-object v5

    .line 925
    invoke-static {v1, v11, v13, v2, v4}, Lcom/sgscq/vpn/handler/d0;->g0(Ljava/util/Map;Ljava/util/Map;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 926
    .line 927
    .line 928
    if-lez v15, :cond_1e

    .line 929
    .line 930
    new-instance v11, Ljava/util/ArrayList;

    .line 931
    .line 932
    invoke-static {v10, v1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 933
    .line 934
    .line 935
    move-result-object v13

    .line 936
    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 937
    .line 938
    .line 939
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 940
    .line 941
    .line 942
    move-result-object v11

    .line 943
    :goto_10
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 944
    .line 945
    .line 946
    move-result v13

    .line 947
    if-eqz v13, :cond_1e

    .line 948
    .line 949
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 950
    .line 951
    .line 952
    move-result-object v13

    .line 953
    check-cast v13, Ljava/util/Map;

    .line 954
    .line 955
    if-gtz v15, :cond_1c

    .line 956
    .line 957
    goto :goto_12

    .line 958
    :cond_1c
    move-object/from16 p2, v11

    .line 959
    .line 960
    invoke-static {v13}, Lcom/sgscq/vpn/handler/d0;->T(Ljava/util/Map;)Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v11

    .line 964
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 965
    .line 966
    .line 967
    move-result v11

    .line 968
    if-nez v11, :cond_1d

    .line 969
    .line 970
    goto :goto_11

    .line 971
    :cond_1d
    invoke-static {v13}, Lcom/sgscq/vpn/handler/d0;->U(Ljava/util/Map;)I

    .line 972
    .line 973
    .line 974
    move-result v11

    .line 975
    invoke-static {v15, v11}, Ljava/lang/Math;->min(II)I

    .line 976
    .line 977
    .line 978
    move-result v11

    .line 979
    invoke-static {v1, v13, v11, v2, v4}, Lcom/sgscq/vpn/handler/d0;->g0(Ljava/util/Map;Ljava/util/Map;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 980
    .line 981
    .line 982
    sub-int/2addr v15, v11

    .line 983
    :goto_11
    move-object/from16 v11, p2

    .line 984
    .line 985
    goto :goto_10

    .line 986
    :cond_1e
    :goto_12
    const/4 v3, 0x0

    .line 987
    invoke-static {v3}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 988
    .line 989
    .line 990
    move-result-object v3

    .line 991
    invoke-virtual {v3, v0}, Lcom/sgscq/vpn/w1;->c1(Ljava/lang/String;)Ljava/util/Map;

    .line 992
    .line 993
    .line 994
    move-result-object v3

    .line 995
    const-string v11, "item_type"

    .line 996
    .line 997
    const-string v13, "type"

    .line 998
    .line 999
    if-nez v3, :cond_1f

    .line 1000
    .line 1001
    goto :goto_13

    .line 1002
    :cond_1f
    const/4 v15, 0x0

    .line 1003
    invoke-static {v3, v13, v6, v11, v15}, Lc/a;->g(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 1004
    .line 1005
    .line 1006
    move-result v3

    .line 1007
    if-lez v3, :cond_20

    .line 1008
    .line 1009
    goto :goto_14

    .line 1010
    :cond_20
    :goto_13
    const/16 v3, 0x2f

    .line 1011
    .line 1012
    :goto_14
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v6

    .line 1016
    instance-of v15, v6, Ljava/util/Map;

    .line 1017
    .line 1018
    move-object/from16 v23, v14

    .line 1019
    .line 1020
    const-string v14, "del"

    .line 1021
    .line 1022
    move-object/from16 p2, v2

    .line 1023
    .line 1024
    const-string v2, "upd"

    .line 1025
    .line 1026
    move-object/from16 v20, v4

    .line 1027
    .line 1028
    const-string v4, "add"

    .line 1029
    .line 1030
    if-eqz v15, :cond_21

    .line 1031
    .line 1032
    check-cast v6, Ljava/util/Map;

    .line 1033
    .line 1034
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v6

    .line 1038
    instance-of v6, v6, Ljava/util/List;

    .line 1039
    .line 1040
    if-eqz v6, :cond_21

    .line 1041
    .line 1042
    move-object/from16 v28, v8

    .line 1043
    .line 1044
    goto :goto_15

    .line 1045
    :cond_21
    new-instance v6, Ljava/util/ArrayList;

    .line 1046
    .line 1047
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1048
    .line 1049
    .line 1050
    new-instance v15, Ljava/util/ArrayList;

    .line 1051
    .line 1052
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1053
    .line 1054
    .line 1055
    move-object/from16 v28, v8

    .line 1056
    .line 1057
    new-instance v8, Ljava/util/ArrayList;

    .line 1058
    .line 1059
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1060
    .line 1061
    .line 1062
    filled-new-array {v2, v15, v4, v8}, [Ljava/lang/Object;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v8

    .line 1066
    invoke-static {v14, v6, v8}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v6

    .line 1070
    invoke-interface {v1, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    .line 1072
    .line 1073
    :goto_15
    invoke-static {v10, v1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v6

    .line 1077
    invoke-static {v0, v6, v1}, Lcom/sgscq/vpn/handler/d0;->q0(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v6

    .line 1081
    const-string v8, "num"

    .line 1082
    .line 1083
    const-string v15, "item_num"

    .line 1084
    .line 1085
    if-eqz v6, :cond_22

    .line 1086
    .line 1087
    invoke-static {v6}, Lcom/sgscq/vpn/handler/d0;->U(Ljava/util/Map;)I

    .line 1088
    .line 1089
    .line 1090
    move-result v0

    .line 1091
    add-int/lit8 v0, v0, 0x1

    .line 1092
    .line 1093
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v3

    .line 1097
    invoke-interface {v6, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    .line 1099
    .line 1100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v0

    .line 1104
    invoke-interface {v6, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    .line 1106
    .line 1107
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 1108
    .line 1109
    invoke-direct {v0, v6}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1110
    .line 1111
    .line 1112
    move-object/from16 v6, v16

    .line 1113
    .line 1114
    goto :goto_16

    .line 1115
    :cond_22
    invoke-static {v7, v5, v12, v0}, Lc/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v5

    .line 1119
    invoke-interface {v5, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    .line 1121
    .line 1122
    move-object/from16 v6, v16

    .line 1123
    .line 1124
    invoke-interface {v5, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    .line 1126
    .line 1127
    invoke-interface {v5, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    .line 1129
    .line 1130
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v0

    .line 1134
    invoke-interface {v5, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    .line 1136
    .line 1137
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v0

    .line 1141
    invoke-interface {v5, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    .line 1143
    .line 1144
    const-string v0, "effect_time"

    .line 1145
    .line 1146
    move-object/from16 v3, v28

    .line 1147
    .line 1148
    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    .line 1150
    .line 1151
    const-string v0, "is_new"

    .line 1152
    .line 1153
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1154
    .line 1155
    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    .line 1157
    .line 1158
    invoke-static {v10, v1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v0

    .line 1162
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1163
    .line 1164
    .line 1165
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 1166
    .line 1167
    invoke-direct {v0, v5}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1168
    .line 1169
    .line 1170
    :goto_16
    move-object/from16 v3, v20

    .line 1171
    .line 1172
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    .line 1174
    .line 1175
    new-instance v5, Ljava/util/ArrayList;

    .line 1176
    .line 1177
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    .line 1179
    .line 1180
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v2

    .line 1184
    move-object/from16 v3, p2

    .line 1185
    .line 1186
    invoke-static {v14, v3, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v2

    .line 1190
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1191
    .line 1192
    move-object/from16 v4, v22

    .line 1193
    .line 1194
    move-object/from16 v14, v23

    .line 1195
    .line 1196
    invoke-interface {v14, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    .line 1198
    .line 1199
    move-object/from16 v3, p1

    .line 1200
    .line 1201
    invoke-interface {v14, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    .line 1203
    .line 1204
    const/4 v2, 0x1

    .line 1205
    new-array v5, v2, [Ljava/util/Map;

    .line 1206
    .line 1207
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 1208
    .line 1209
    invoke-direct {v7, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1210
    .line 1211
    .line 1212
    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    .line 1214
    .line 1215
    invoke-interface {v7, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    .line 1217
    .line 1218
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v0

    .line 1222
    invoke-static {v0, v2}, Lcom/sgscq/vpn/handler/d0;->m0(Ljava/lang/Object;I)I

    .line 1223
    .line 1224
    .line 1225
    move-result v0

    .line 1226
    invoke-static {v0}, Lcom/sgscq/vpn/y2;->s(I)I

    .line 1227
    .line 1228
    .line 1229
    move-result v0

    .line 1230
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v0

    .line 1234
    invoke-interface {v7, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    .line 1236
    .line 1237
    const/4 v0, 0x0

    .line 1238
    aput-object v7, v5, v0

    .line 1239
    .line 1240
    invoke-static {v5}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v0

    .line 1244
    const-string v2, "add_list"

    .line 1245
    .line 1246
    invoke-interface {v14, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    .line 1248
    .line 1249
    goto :goto_1a

    .line 1250
    :cond_23
    move-object v3, v4

    .line 1251
    :goto_17
    move-object v4, v5

    .line 1252
    move-object/from16 v6, v16

    .line 1253
    .line 1254
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1255
    .line 1256
    invoke-interface {v14, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    .line 1258
    .line 1259
    const-string v0, "\u9053\u5177\u6570\u91cf\u4e0d\u8db3"

    .line 1260
    .line 1261
    goto :goto_19

    .line 1262
    :cond_24
    move-object/from16 v21, v3

    .line 1263
    .line 1264
    move-object v3, v4

    .line 1265
    move-object v4, v5

    .line 1266
    move-object/from16 v18, v13

    .line 1267
    .line 1268
    goto/16 :goto_e

    .line 1269
    .line 1270
    :goto_18
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1271
    .line 1272
    invoke-interface {v14, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    .line 1274
    .line 1275
    const-string v0, "\u5408\u6210\u7269\u54c1\u65e0\u6548"

    .line 1276
    .line 1277
    :goto_19
    move-object/from16 v2, v20

    .line 1278
    .line 1279
    invoke-interface {v14, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    .line 1281
    .line 1282
    move-object/from16 v2, v21

    .line 1283
    .line 1284
    invoke-interface {v14, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    .line 1286
    .line 1287
    :goto_1a
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1288
    .line 1289
    invoke-virtual {v14, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v2

    .line 1293
    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 1294
    .line 1295
    .line 1296
    move-result v0

    .line 1297
    move-object/from16 v2, v17

    .line 1298
    .line 1299
    move-object/from16 v13, v18

    .line 1300
    .line 1301
    if-eqz v0, :cond_25

    .line 1302
    .line 1303
    invoke-virtual {v13, v2, v1}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 1304
    .line 1305
    .line 1306
    :cond_25
    invoke-virtual {v14, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v0

    .line 1310
    instance-of v3, v0, Ljava/util/Map;

    .line 1311
    .line 1312
    if-eqz v3, :cond_26

    .line 1313
    .line 1314
    const/4 v3, 0x0

    .line 1315
    new-array v3, v3, [Ljava/lang/Object;

    .line 1316
    .line 1317
    invoke-static {v10, v0, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v0

    .line 1321
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 1322
    .line 1323
    .line 1324
    move-result-wide v3

    .line 1325
    long-to-int v5, v3

    .line 1326
    move-object/from16 v3, v19

    .line 1327
    .line 1328
    iget-object v4, v3, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1329
    .line 1330
    invoke-virtual {v3}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 1331
    .line 1332
    .line 1333
    move-result v6

    .line 1334
    int-to-long v6, v6

    .line 1335
    invoke-virtual {v3, v6, v7, v1}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 1336
    .line 1337
    .line 1338
    move-result-wide v11

    .line 1339
    invoke-virtual {v3}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 1340
    .line 1341
    .line 1342
    move-result v6

    .line 1343
    move-object/from16 v7, v27

    .line 1344
    .line 1345
    invoke-virtual {v3, v6, v7, v1}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1346
    .line 1347
    .line 1348
    move-result v6

    .line 1349
    invoke-virtual {v3}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 1350
    .line 1351
    .line 1352
    move-result v7

    .line 1353
    move-object/from16 v8, v26

    .line 1354
    .line 1355
    invoke-virtual {v3, v7, v8, v1}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1356
    .line 1357
    .line 1358
    move-result v7

    .line 1359
    invoke-virtual {v3}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 1360
    .line 1361
    .line 1362
    move-result v8

    .line 1363
    move-object/from16 v9, v25

    .line 1364
    .line 1365
    invoke-virtual {v3, v8, v9, v1}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1366
    .line 1367
    .line 1368
    move-result v8

    .line 1369
    move-object/from16 v16, v10

    .line 1370
    .line 1371
    move-object/from16 v15, v24

    .line 1372
    .line 1373
    move-wide v9, v11

    .line 1374
    move-object v11, v2

    .line 1375
    move-object v12, v1

    .line 1376
    invoke-virtual/range {v4 .. v12}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v1

    .line 1380
    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v2

    .line 1384
    invoke-virtual {v13, v0, v1, v2}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v0

    .line 1388
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v0

    .line 1392
    invoke-interface {v14, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    .line 1394
    .line 1395
    goto :goto_1b

    .line 1396
    :cond_26
    move-object/from16 v3, v19

    .line 1397
    .line 1398
    :goto_1b
    invoke-static {v14}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v0

    .line 1402
    invoke-virtual {v3, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 1403
    .line 1404
    .line 1405
    move-result-object v0

    .line 1406
    return-object v0

    .line 1407
    :cond_27
    move-object v1, v15

    .line 1408
    move-object/from16 v15, v20

    .line 1409
    .line 1410
    move-object/from16 v3, v22

    .line 1411
    .line 1412
    const-string v12, "code"

    .line 1413
    .line 1414
    const-string v14, "result"

    .line 1415
    .line 1416
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1417
    .line 1418
    const-string v16, "msg"

    .line 1419
    .line 1420
    const-string v17, "success"

    .line 1421
    .line 1422
    const-string v18, "error_code"

    .line 1423
    .line 1424
    move-object v13, v3

    .line 1425
    move-object v2, v15

    .line 1426
    move-object v15, v0

    .line 1427
    move-object/from16 v19, v3

    .line 1428
    .line 1429
    filled-new-array/range {v12 .. v19}, [Ljava/lang/Object;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v0

    .line 1433
    invoke-static {v2, v3, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v0

    .line 1437
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v0

    .line 1441
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 1442
    .line 1443
    .line 1444
    move-result-object v0

    .line 1445
    return-object v0
.end method

.method public final M(Ljava/lang/String;Z)[B
    .locals 51

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/16 v2, 0xa

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v2, 0x1

    .line 11
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v4, "[EvoChest] open uid="

    .line 14
    .line 15
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v4, " count="

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "SGSCQ_SRV"

    .line 34
    .line 35
    invoke-static {v3, v2}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v10, v0, Lcom/sgscq/vpn/handler/d0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 39
    .line 40
    iget-object v2, v10, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 41
    .line 42
    invoke-virtual {v2, v8}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    const/4 v2, 0x0

    .line 47
    const-string v3, "\u89c9\u9192\u5b9d\u7bb1\u6682\u4e0d\u53ef\u7528"

    .line 48
    .line 49
    if-nez v9, :cond_1

    .line 50
    .line 51
    invoke-static {v3, v2}, Lcom/sgscq/vpn/handler/d0;->w(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v10, v1}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    return-object v1

    .line 64
    :cond_1
    invoke-static {v9}, Lcom/sgscq/vpn/handler/d0;->A(Ljava/util/Map;)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/handler/d0;->k(I)Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    new-instance v5, Ljava/util/Random;

    .line 73
    .line 74
    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-static {v2}, Lcom/sgscq/vpn/handler/d0;->v(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v9, v4, v5, v2}, Lcom/sgscq/vpn/handler/d0;->s(Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Random;Ljava/lang/String;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    new-instance v4, Ljava/util/Random;

    .line 86
    .line 87
    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 88
    .line 89
    .line 90
    const/16 v5, 0x2f

    .line 91
    .line 92
    const/4 v6, 0x5

    .line 93
    invoke-static {v2, v6, v5}, Lcom/sgscq/vpn/handler/d0;->E(Ljava/util/List;II)Ljava/util/ArrayList;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 98
    .line 99
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 100
    .line 101
    .line 102
    const/16 v11, 0x2e

    .line 103
    .line 104
    invoke-static {v2, v6, v11}, Lcom/sgscq/vpn/handler/d0;->E(Ljava/util/List;II)Ljava/util/ArrayList;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v11

    .line 116
    if-eqz v11, :cond_3

    .line 117
    .line 118
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    check-cast v11, Ljava/util/Map;

    .line 123
    .line 124
    invoke-static {v11}, Lcom/sgscq/vpn/handler/d0;->O(Ljava/util/Map;)Z

    .line 125
    .line 126
    .line 127
    move-result v12

    .line 128
    if-eqz v12, :cond_2

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_2
    invoke-static {v11}, Lcom/sgscq/vpn/handler/d0;->y(Ljava/util/Map;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    invoke-interface {v7, v12, v11}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    const/4 v6, 0x6

    .line 140
    const/4 v11, -0x1

    .line 141
    invoke-static {v2, v6, v11}, Lcom/sgscq/vpn/handler/d0;->E(Ljava/util/List;II)Ljava/util/ArrayList;

    .line 142
    .line 143
    .line 144
    new-instance v6, Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v9}, Lcom/sgscq/vpn/handler/d0;->t(Ljava/util/Map;)V

    .line 154
    .line 155
    .line 156
    const-string v7, "evolution_chest_preview"

    .line 157
    .line 158
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    instance-of v11, v7, Ljava/util/List;

    .line 163
    .line 164
    if-eqz v11, :cond_6

    .line 165
    .line 166
    check-cast v7, Ljava/util/List;

    .line 167
    .line 168
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    const/16 v12, 0x8

    .line 173
    .line 174
    if-eq v11, v12, :cond_4

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object v11

    .line 181
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v12

    .line 185
    if-eqz v12, :cond_7

    .line 186
    .line 187
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v12

    .line 191
    instance-of v12, v12, Ljava/util/Map;

    .line 192
    .line 193
    if-nez v12, :cond_5

    .line 194
    .line 195
    :cond_6
    :goto_2
    const/4 v7, 0x0

    .line 196
    :cond_7
    move-object/from16 v20, v7

    .line 197
    .line 198
    const/4 v7, 0x0

    .line 199
    const-string v15, "cmn_modules"

    .line 200
    .line 201
    const-string v14, "Player"

    .line 202
    .line 203
    const-string v13, "delta_data"

    .line 204
    .line 205
    if-eqz v20, :cond_33

    .line 206
    .line 207
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    .line 208
    .line 209
    .line 210
    move-result v11

    .line 211
    if-eqz v11, :cond_8

    .line 212
    .line 213
    goto/16 :goto_1f

    .line 214
    .line 215
    :cond_8
    if-eqz p2, :cond_9

    .line 216
    .line 217
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 218
    .line 219
    .line 220
    move-result v11

    .line 221
    if-eqz v11, :cond_9

    .line 222
    .line 223
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 224
    .line 225
    .line 226
    move-result v11

    .line 227
    if-eqz v11, :cond_9

    .line 228
    .line 229
    new-instance v1, Lcom/sgscq/vpn/handler/u;

    .line 230
    .line 231
    const-string v2, "\u89c9\u9192\u5b9d\u7269\u6682\u4e0d\u53ef\u7528"

    .line 232
    .line 233
    invoke-static {v2, v9}, Lcom/sgscq/vpn/handler/d0;->w(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 238
    .line 239
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-direct {v1, v2, v3}, Lcom/sgscq/vpn/handler/u;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V

    .line 243
    .line 244
    .line 245
    move-object/from16 v25, v10

    .line 246
    .line 247
    move-object v10, v13

    .line 248
    move-object v11, v14

    .line 249
    move-object v6, v15

    .line 250
    goto/16 :goto_20

    .line 251
    .line 252
    :cond_9
    if-eqz p2, :cond_a

    .line 253
    .line 254
    const/16 v11, 0xa

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_a
    const/4 v11, 0x1

    .line 258
    :goto_3
    const-string v12, "evolution_chest_free_times"

    .line 259
    .line 260
    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-static {v1, v7}, Lcom/sgscq/vpn/handler/d0;->m0(Ljava/lang/Object;I)I

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-nez p2, :cond_b

    .line 269
    .line 270
    if-lez v1, :cond_b

    .line 271
    .line 272
    const/16 v17, 0x1

    .line 273
    .line 274
    goto :goto_4

    .line 275
    :cond_b
    move/from16 v17, v7

    .line 276
    .line 277
    :goto_4
    if-eqz v17, :cond_c

    .line 278
    .line 279
    const/16 v16, 0x1

    .line 280
    .line 281
    add-int/lit8 v1, v1, -0x1

    .line 282
    .line 283
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-interface {v9, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_c
    move v7, v11

    .line 292
    :goto_5
    const-string v1, "num"

    .line 293
    .line 294
    const-string v11, "item_num"

    .line 295
    .line 296
    const-string v12, "total_num"

    .line 297
    .line 298
    const-string v0, "600212"

    .line 299
    .line 300
    const-string v8, ""

    .line 301
    .line 302
    move-object/from16 v25, v10

    .line 303
    .line 304
    const-string v10, "id"

    .line 305
    .line 306
    move-object/from16 v16, v13

    .line 307
    .line 308
    const-string v13, "Item"

    .line 309
    .line 310
    move-object/from16 v17, v15

    .line 311
    .line 312
    const-string v15, "item_id"

    .line 313
    .line 314
    if-lez v7, :cond_f

    .line 315
    .line 316
    invoke-static {v13, v9}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 317
    .line 318
    .line 319
    move-result-object v18

    .line 320
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 321
    .line 322
    .line 323
    move-result-object v18

    .line 324
    const/16 v19, 0x0

    .line 325
    .line 326
    move-object/from16 v21, v14

    .line 327
    .line 328
    move/from16 v14, v19

    .line 329
    .line 330
    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 331
    .line 332
    .line 333
    move-result v19

    .line 334
    if-eqz v19, :cond_e

    .line 335
    .line 336
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v19

    .line 340
    move-object/from16 v22, v13

    .line 341
    .line 342
    move-object/from16 v13, v19

    .line 343
    .line 344
    check-cast v13, Ljava/util/Map;

    .line 345
    .line 346
    invoke-static {v13, v10, v8, v15, v0}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 347
    .line 348
    .line 349
    move-result v19

    .line 350
    if-nez v19, :cond_d

    .line 351
    .line 352
    move-object/from16 v19, v0

    .line 353
    .line 354
    move-object/from16 v26, v8

    .line 355
    .line 356
    goto :goto_7

    .line 357
    :cond_d
    move-object/from16 v19, v0

    .line 358
    .line 359
    const/4 v0, 0x0

    .line 360
    move-object/from16 v26, v8

    .line 361
    .line 362
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 363
    .line 364
    .line 365
    move-result-object v8

    .line 366
    invoke-interface {v13, v12, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v8

    .line 370
    invoke-interface {v13, v11, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v8

    .line 374
    invoke-interface {v13, v1, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v8

    .line 378
    invoke-static {v8, v0}, Lcom/sgscq/vpn/handler/d0;->m0(Ljava/lang/Object;I)I

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    add-int/2addr v0, v14

    .line 383
    move v14, v0

    .line 384
    :goto_7
    move-object/from16 v0, v19

    .line 385
    .line 386
    move-object/from16 v13, v22

    .line 387
    .line 388
    move-object/from16 v8, v26

    .line 389
    .line 390
    goto :goto_6

    .line 391
    :cond_e
    move-object/from16 v19, v0

    .line 392
    .line 393
    move-object/from16 v26, v8

    .line 394
    .line 395
    move-object/from16 v22, v13

    .line 396
    .line 397
    if-ge v14, v7, :cond_10

    .line 398
    .line 399
    new-instance v0, Lcom/sgscq/vpn/handler/u;

    .line 400
    .line 401
    const-string v1, "\u89c9\u9192\u94a5\u5319\u4e0d\u8db3"

    .line 402
    .line 403
    invoke-static {v1, v9}, Lcom/sgscq/vpn/handler/d0;->w(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 408
    .line 409
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 410
    .line 411
    .line 412
    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/handler/u;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V

    .line 413
    .line 414
    .line 415
    :goto_8
    move-object v1, v0

    .line 416
    goto/16 :goto_e

    .line 417
    .line 418
    :cond_f
    move-object/from16 v19, v0

    .line 419
    .line 420
    move-object/from16 v26, v8

    .line 421
    .line 422
    move-object/from16 v22, v13

    .line 423
    .line 424
    move-object/from16 v21, v14

    .line 425
    .line 426
    :cond_10
    if-eqz p2, :cond_11

    .line 427
    .line 428
    const/16 v0, 0xa

    .line 429
    .line 430
    goto :goto_9

    .line 431
    :cond_11
    const/4 v0, 0x1

    .line 432
    :goto_9
    const-string v8, "evolution_chest_open_times"

    .line 433
    .line 434
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v13

    .line 438
    const/4 v14, 0x0

    .line 439
    invoke-static {v13, v14}, Lcom/sgscq/vpn/handler/d0;->m0(Ljava/lang/Object;I)I

    .line 440
    .line 441
    .line 442
    move-result v13

    .line 443
    new-instance v14, Ljava/util/ArrayList;

    .line 444
    .line 445
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .line 447
    .line 448
    const/16 v18, 0x0

    .line 449
    .line 450
    move/from16 v23, v7

    .line 451
    .line 452
    move/from16 v7, v18

    .line 453
    .line 454
    :goto_a
    move-object/from16 v18, v1

    .line 455
    .line 456
    if-ge v7, v0, :cond_18

    .line 457
    .line 458
    add-int v1, v13, v7

    .line 459
    .line 460
    if-eqz p2, :cond_12

    .line 461
    .line 462
    const-string v24, "EDEBBEECDDCEEECDCEEEBEEDDBCEDDEEDBEEDCCEAEBEEDDCEE"

    .line 463
    .line 464
    goto :goto_b

    .line 465
    :cond_12
    const-string v24, "EBEEDDCEEEDEBBEECDDCEEECDCEEEBEEDDBCEDDEEDBEEDCCEA"

    .line 466
    .line 467
    :goto_b
    move-object/from16 v27, v24

    .line 468
    .line 469
    move-object/from16 v24, v11

    .line 470
    .line 471
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    .line 472
    .line 473
    .line 474
    move-result v11

    .line 475
    invoke-static {v1, v11}, Ljava/lang/Math;->floorMod(II)I

    .line 476
    .line 477
    .line 478
    move-result v1

    .line 479
    move-object/from16 v11, v27

    .line 480
    .line 481
    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    .line 482
    .line 483
    .line 484
    move-result v1

    .line 485
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 486
    .line 487
    .line 488
    move-result v11

    .line 489
    if-eqz v11, :cond_13

    .line 490
    .line 491
    const/4 v1, 0x0

    .line 492
    move-object/from16 v29, v2

    .line 493
    .line 494
    move-object/from16 v28, v12

    .line 495
    .line 496
    goto :goto_d

    .line 497
    :cond_13
    new-instance v11, Ljava/util/ArrayList;

    .line 498
    .line 499
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .line 501
    .line 502
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 503
    .line 504
    .line 505
    move-result-object v27

    .line 506
    :goto_c
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    .line 507
    .line 508
    .line 509
    move-result v28

    .line 510
    if-eqz v28, :cond_15

    .line 511
    .line 512
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v28

    .line 516
    move-object/from16 v29, v2

    .line 517
    .line 518
    move-object/from16 v2, v28

    .line 519
    .line 520
    check-cast v2, Ljava/util/Map;

    .line 521
    .line 522
    move-object/from16 v28, v12

    .line 523
    .line 524
    invoke-static {v2}, Lcom/sgscq/vpn/handler/d0;->z(Ljava/util/Map;)C

    .line 525
    .line 526
    .line 527
    move-result v12

    .line 528
    if-ne v12, v1, :cond_14

    .line 529
    .line 530
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    :cond_14
    move-object/from16 v12, v28

    .line 534
    .line 535
    move-object/from16 v2, v29

    .line 536
    .line 537
    goto :goto_c

    .line 538
    :cond_15
    move-object/from16 v29, v2

    .line 539
    .line 540
    move-object/from16 v28, v12

    .line 541
    .line 542
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 543
    .line 544
    .line 545
    move-result v1

    .line 546
    if-eqz v1, :cond_16

    .line 547
    .line 548
    move-object/from16 v11, v29

    .line 549
    .line 550
    :cond_16
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 551
    .line 552
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 553
    .line 554
    .line 555
    move-result v2

    .line 556
    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    .line 557
    .line 558
    .line 559
    move-result v2

    .line 560
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    check-cast v2, Ljava/util/Map;

    .line 565
    .line 566
    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 567
    .line 568
    .line 569
    :goto_d
    if-nez v1, :cond_17

    .line 570
    .line 571
    new-instance v0, Lcom/sgscq/vpn/handler/u;

    .line 572
    .line 573
    invoke-static {v3, v9}, Lcom/sgscq/vpn/handler/d0;->w(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 578
    .line 579
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 580
    .line 581
    .line 582
    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/handler/u;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V

    .line 583
    .line 584
    .line 585
    goto/16 :goto_8

    .line 586
    .line 587
    :goto_e
    move-object/from16 v10, v16

    .line 588
    .line 589
    move-object/from16 v6, v17

    .line 590
    .line 591
    move-object/from16 v11, v21

    .line 592
    .line 593
    goto/16 :goto_20

    .line 594
    .line 595
    :cond_17
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    add-int/lit8 v7, v7, 0x1

    .line 599
    .line 600
    move-object/from16 v1, v18

    .line 601
    .line 602
    move-object/from16 v11, v24

    .line 603
    .line 604
    move-object/from16 v12, v28

    .line 605
    .line 606
    move-object/from16 v2, v29

    .line 607
    .line 608
    goto/16 :goto_a

    .line 609
    .line 610
    :cond_18
    move-object/from16 v24, v11

    .line 611
    .line 612
    move-object/from16 v28, v12

    .line 613
    .line 614
    const-string v1, "600213"

    .line 615
    .line 616
    move-object/from16 v31, v1

    .line 617
    .line 618
    const-string v30, "id"

    .line 619
    .line 620
    const-string v32, "item_num"

    .line 621
    .line 622
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 623
    .line 624
    .line 625
    move-result-object v33

    .line 626
    const-string v34, "num"

    .line 627
    .line 628
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 629
    .line 630
    .line 631
    move-result-object v35

    .line 632
    const-string v36, "grant_type"

    .line 633
    .line 634
    const/4 v2, 0x5

    .line 635
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 636
    .line 637
    .line 638
    move-result-object v37

    .line 639
    const-string v38, "type"

    .line 640
    .line 641
    const/16 v2, 0x35

    .line 642
    .line 643
    invoke-static {v2}, Lcom/sgscq/vpn/y2;->s(I)I

    .line 644
    .line 645
    .line 646
    move-result v3

    .line 647
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 648
    .line 649
    .line 650
    move-result-object v39

    .line 651
    const-string v40, "item_type"

    .line 652
    .line 653
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 654
    .line 655
    .line 656
    move-result-object v41

    .line 657
    const-string v42, "weight"

    .line 658
    .line 659
    const/4 v2, 0x1

    .line 660
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 661
    .line 662
    .line 663
    move-result-object v43

    .line 664
    move-object/from16 v45, v43

    .line 665
    .line 666
    const-string v44, "grade"

    .line 667
    .line 668
    const-string v46, "is_new"

    .line 669
    .line 670
    sget-object v47, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 671
    .line 672
    filled-new-array/range {v30 .. v47}, [Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v2

    .line 676
    invoke-static {v15, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 677
    .line 678
    .line 679
    move-result-object v1

    .line 680
    if-eqz p2, :cond_24

    .line 681
    .line 682
    const-string v2, "evolution_chest_ten_pull_count"

    .line 683
    .line 684
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v3

    .line 688
    const/4 v7, 0x0

    .line 689
    invoke-static {v3, v7}, Lcom/sgscq/vpn/handler/d0;->m0(Ljava/lang/Object;I)I

    .line 690
    .line 691
    .line 692
    move-result v3

    .line 693
    add-int/lit8 v3, v3, 0x1

    .line 694
    .line 695
    const/4 v7, 0x5

    .line 696
    if-lt v3, v7, :cond_19

    .line 697
    .line 698
    const/4 v7, 0x1

    .line 699
    goto :goto_f

    .line 700
    :cond_19
    const/4 v7, 0x0

    .line 701
    :goto_f
    if-eqz v7, :cond_1b

    .line 702
    .line 703
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 704
    .line 705
    .line 706
    move-result v11

    .line 707
    if-nez v11, :cond_1a

    .line 708
    .line 709
    invoke-static {v6, v4}, Lcom/sgscq/vpn/handler/d0;->o0(Ljava/util/List;Ljava/util/Random;)Ljava/util/LinkedHashMap;

    .line 710
    .line 711
    .line 712
    move-result-object v4

    .line 713
    goto :goto_10

    .line 714
    :cond_1a
    invoke-static {v5, v4}, Lcom/sgscq/vpn/handler/d0;->o0(Ljava/util/List;Ljava/util/Random;)Ljava/util/LinkedHashMap;

    .line 715
    .line 716
    .line 717
    move-result-object v4

    .line 718
    goto :goto_10

    .line 719
    :cond_1b
    invoke-static {v5, v4}, Lcom/sgscq/vpn/handler/d0;->o0(Ljava/util/List;Ljava/util/Random;)Ljava/util/LinkedHashMap;

    .line 720
    .line 721
    .line 722
    move-result-object v4

    .line 723
    :goto_10
    if-nez v7, :cond_22

    .line 724
    .line 725
    const-string v5, "item_type"

    .line 726
    .line 727
    const/4 v6, -0x1

    .line 728
    invoke-static {v6, v5, v4}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 729
    .line 730
    .line 731
    move-result v6

    .line 732
    const/16 v7, 0x2e

    .line 733
    .line 734
    if-eq v6, v7, :cond_1c

    .line 735
    .line 736
    const/4 v6, 0x0

    .line 737
    goto :goto_11

    .line 738
    :cond_1c
    invoke-static {v4}, Lcom/sgscq/vpn/handler/d0;->O(Ljava/util/Map;)Z

    .line 739
    .line 740
    .line 741
    move-result v6

    .line 742
    xor-int/lit8 v6, v6, 0x1

    .line 743
    .line 744
    :goto_11
    if-nez v6, :cond_22

    .line 745
    .line 746
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 747
    .line 748
    .line 749
    move-result-object v6

    .line 750
    :cond_1d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 751
    .line 752
    .line 753
    move-result v7

    .line 754
    if-eqz v7, :cond_20

    .line 755
    .line 756
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 757
    .line 758
    .line 759
    move-result-object v7

    .line 760
    check-cast v7, Ljava/util/Map;

    .line 761
    .line 762
    if-nez v7, :cond_1e

    .line 763
    .line 764
    :goto_12
    const/4 v7, 0x0

    .line 765
    const/4 v11, 0x1

    .line 766
    goto :goto_13

    .line 767
    :cond_1e
    const/4 v11, -0x1

    .line 768
    invoke-static {v11, v5, v7}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 769
    .line 770
    .line 771
    move-result v11

    .line 772
    const/16 v12, 0x2e

    .line 773
    .line 774
    if-eq v11, v12, :cond_1f

    .line 775
    .line 776
    goto :goto_12

    .line 777
    :cond_1f
    invoke-static {v7}, Lcom/sgscq/vpn/handler/d0;->O(Ljava/util/Map;)Z

    .line 778
    .line 779
    .line 780
    move-result v7

    .line 781
    const/4 v11, 0x1

    .line 782
    xor-int/2addr v7, v11

    .line 783
    :goto_13
    if-eqz v7, :cond_1d

    .line 784
    .line 785
    move v5, v11

    .line 786
    goto :goto_14

    .line 787
    :cond_20
    const/4 v11, 0x1

    .line 788
    const/4 v5, 0x0

    .line 789
    move/from16 v50, v11

    .line 790
    .line 791
    move v11, v5

    .line 792
    move/from16 v5, v50

    .line 793
    .line 794
    :goto_14
    if-eqz v11, :cond_21

    .line 795
    .line 796
    goto :goto_15

    .line 797
    :cond_21
    const/4 v5, 0x0

    .line 798
    goto :goto_15

    .line 799
    :cond_22
    const/4 v5, 0x1

    .line 800
    :goto_15
    if-eqz v5, :cond_23

    .line 801
    .line 802
    const/4 v3, 0x0

    .line 803
    :cond_23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 804
    .line 805
    .line 806
    move-result-object v3

    .line 807
    invoke-interface {v9, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    goto :goto_16

    .line 811
    :cond_24
    const/4 v4, 0x0

    .line 812
    :goto_16
    add-int/2addr v13, v0

    .line 813
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 821
    .line 822
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 823
    .line 824
    .line 825
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 826
    .line 827
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 828
    .line 829
    .line 830
    new-instance v3, Ljava/util/ArrayList;

    .line 831
    .line 832
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 833
    .line 834
    .line 835
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 836
    .line 837
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 838
    .line 839
    .line 840
    const/4 v6, 0x0

    .line 841
    :goto_17
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 842
    .line 843
    .line 844
    move-result v7

    .line 845
    if-ge v6, v7, :cond_25

    .line 846
    .line 847
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    move-result-object v7

    .line 851
    check-cast v7, Ljava/util/Map;

    .line 852
    .line 853
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    .line 855
    .line 856
    invoke-static {v9, v7, v0}, Lcom/sgscq/vpn/handler/d0;->I(Ljava/util/Map;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 857
    .line 858
    .line 859
    new-instance v8, Ljava/lang/StringBuilder;

    .line 860
    .line 861
    const-string v11, "reward_"

    .line 862
    .line 863
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 864
    .line 865
    .line 866
    add-int/lit8 v6, v6, 0x1

    .line 867
    .line 868
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 869
    .line 870
    .line 871
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v8

    .line 875
    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    goto :goto_17

    .line 879
    :cond_25
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    .line 881
    .line 882
    invoke-static {v9, v1, v0}, Lcom/sgscq/vpn/handler/d0;->I(Ljava/util/Map;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 883
    .line 884
    .line 885
    const-string v6, "extra_stone"

    .line 886
    .line 887
    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    .line 889
    .line 890
    if-eqz v4, :cond_26

    .line 891
    .line 892
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    .line 894
    .line 895
    invoke-static {v9, v4, v0}, Lcom/sgscq/vpn/handler/d0;->I(Ljava/util/Map;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 896
    .line 897
    .line 898
    const-string v1, "extra_best"

    .line 899
    .line 900
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 901
    .line 902
    .line 903
    move-result-object v4

    .line 904
    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    .line 906
    .line 907
    :cond_26
    new-instance v1, Ljava/util/ArrayList;

    .line 908
    .line 909
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 910
    .line 911
    .line 912
    move-object/from16 v4, v22

    .line 913
    .line 914
    invoke-static {v4, v9}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 915
    .line 916
    .line 917
    move-result-object v6

    .line 918
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 919
    .line 920
    .line 921
    move-result-object v6

    .line 922
    move/from16 v7, v23

    .line 923
    .line 924
    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 925
    .line 926
    .line 927
    move-result v8

    .line 928
    if-eqz v8, :cond_29

    .line 929
    .line 930
    if-lez v7, :cond_29

    .line 931
    .line 932
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    move-result-object v8

    .line 936
    check-cast v8, Ljava/util/Map;

    .line 937
    .line 938
    move-object/from16 v11, v19

    .line 939
    .line 940
    move-object/from16 v14, v26

    .line 941
    .line 942
    invoke-static {v8, v10, v14, v15, v11}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 943
    .line 944
    .line 945
    move-result v12

    .line 946
    if-nez v12, :cond_27

    .line 947
    .line 948
    move-object/from16 v19, v11

    .line 949
    .line 950
    :goto_19
    move-object/from16 v26, v14

    .line 951
    .line 952
    goto :goto_18

    .line 953
    :cond_27
    const/4 v12, 0x0

    .line 954
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 955
    .line 956
    .line 957
    move-result-object v12

    .line 958
    move-object/from16 v13, v28

    .line 959
    .line 960
    invoke-interface {v8, v13, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    .line 962
    .line 963
    move-result-object v12

    .line 964
    move-object/from16 v19, v11

    .line 965
    .line 966
    move-object/from16 v11, v24

    .line 967
    .line 968
    invoke-interface {v8, v11, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    .line 970
    .line 971
    move-result-object v12

    .line 972
    move-object/from16 v22, v15

    .line 973
    .line 974
    move-object/from16 v15, v18

    .line 975
    .line 976
    invoke-interface {v8, v15, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    .line 978
    .line 979
    move-result-object v12

    .line 980
    move-object/from16 v26, v10

    .line 981
    .line 982
    const/4 v10, 0x0

    .line 983
    invoke-static {v12, v10}, Lcom/sgscq/vpn/handler/d0;->m0(Ljava/lang/Object;I)I

    .line 984
    .line 985
    .line 986
    move-result v10

    .line 987
    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    .line 988
    .line 989
    .line 990
    move-result v12

    .line 991
    sub-int/2addr v10, v12

    .line 992
    sub-int/2addr v7, v12

    .line 993
    if-gtz v10, :cond_28

    .line 994
    .line 995
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 996
    .line 997
    .line 998
    const-string v10, "pk_id"

    .line 999
    .line 1000
    invoke-interface {v8, v10, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v8

    .line 1004
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v8

    .line 1008
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    .line 1010
    .line 1011
    goto :goto_1a

    .line 1012
    :cond_28
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v12

    .line 1016
    invoke-interface {v8, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    .line 1018
    .line 1019
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v12

    .line 1023
    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    .line 1025
    .line 1026
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v10

    .line 1030
    invoke-interface {v8, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    .line 1032
    .line 1033
    new-instance v10, Ln/a;

    .line 1034
    .line 1035
    const/16 v12, 0x16

    .line 1036
    .line 1037
    invoke-direct {v10, v12}, Ln/a;-><init>(I)V

    .line 1038
    .line 1039
    .line 1040
    invoke-interface {v0, v4, v10}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v10

    .line 1044
    check-cast v10, Ljava/util/List;

    .line 1045
    .line 1046
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1047
    .line 1048
    .line 1049
    :goto_1a
    move-object/from16 v24, v11

    .line 1050
    .line 1051
    move-object/from16 v28, v13

    .line 1052
    .line 1053
    move-object/from16 v18, v15

    .line 1054
    .line 1055
    move-object/from16 v15, v22

    .line 1056
    .line 1057
    move-object/from16 v10, v26

    .line 1058
    .line 1059
    goto :goto_19

    .line 1060
    :cond_29
    move-object/from16 v22, v15

    .line 1061
    .line 1062
    move-object/from16 v14, v26

    .line 1063
    .line 1064
    move-object/from16 v26, v10

    .line 1065
    .line 1066
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1067
    .line 1068
    .line 1069
    move-result v6

    .line 1070
    if-nez v6, :cond_2a

    .line 1071
    .line 1072
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    :cond_2a
    const-string v1, "cost"

    .line 1076
    .line 1077
    const/4 v4, 0x0

    .line 1078
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v6

    .line 1082
    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    .line 1084
    .line 1085
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v1

    .line 1089
    const-string v11, "code"

    .line 1090
    .line 1091
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v12

    .line 1095
    const-string v13, "result"

    .line 1096
    .line 1097
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1098
    .line 1099
    const-string v15, "msg"

    .line 1100
    .line 1101
    const-string v7, "success"

    .line 1102
    .line 1103
    const-string v8, "error_code"

    .line 1104
    .line 1105
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v18

    .line 1109
    const-string v19, "chest_list"

    .line 1110
    .line 1111
    const-string v4, "reward_list"

    .line 1112
    .line 1113
    const-string v23, "reward_info"

    .line 1114
    .line 1115
    move-object/from16 v10, v16

    .line 1116
    .line 1117
    move-object/from16 v49, v14

    .line 1118
    .line 1119
    move-object/from16 v48, v21

    .line 1120
    .line 1121
    move-object v14, v6

    .line 1122
    move-object/from16 v27, v17

    .line 1123
    .line 1124
    move-object/from16 v6, v22

    .line 1125
    .line 1126
    move-object/from16 v16, v7

    .line 1127
    .line 1128
    move-object/from16 v17, v8

    .line 1129
    .line 1130
    move-object/from16 v21, v4

    .line 1131
    .line 1132
    move-object/from16 v22, v3

    .line 1133
    .line 1134
    move-object/from16 v24, v5

    .line 1135
    .line 1136
    filled-new-array/range {v11 .. v24}, [Ljava/lang/Object;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v4

    .line 1140
    const-string v5, "ret"

    .line 1141
    .line 1142
    invoke-static {v5, v1, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v1

    .line 1146
    invoke-static {v1, v9}, Lcom/sgscq/vpn/handler/d0;->f(Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    .line 1147
    .line 1148
    .line 1149
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 1150
    .line 1151
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1152
    .line 1153
    .line 1154
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 1155
    .line 1156
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v7

    .line 1160
    invoke-direct {v5, v7}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1161
    .line 1162
    .line 1163
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v7

    .line 1167
    invoke-virtual {v5, v7}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v5

    .line 1174
    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1175
    .line 1176
    .line 1177
    move-result v7

    .line 1178
    if-eqz v7, :cond_2c

    .line 1179
    .line 1180
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v7

    .line 1184
    check-cast v7, Ljava/lang/String;

    .line 1185
    .line 1186
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v8

    .line 1190
    invoke-virtual {v0, v7, v8}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v8

    .line 1194
    check-cast v8, Ljava/util/List;

    .line 1195
    .line 1196
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v11

    .line 1200
    invoke-virtual {v2, v7, v11}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v11

    .line 1204
    check-cast v11, Ljava/util/List;

    .line 1205
    .line 1206
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 1207
    .line 1208
    .line 1209
    move-result v12

    .line 1210
    if-eqz v12, :cond_2b

    .line 1211
    .line 1212
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 1213
    .line 1214
    .line 1215
    move-result v12

    .line 1216
    if-eqz v12, :cond_2b

    .line 1217
    .line 1218
    goto :goto_1b

    .line 1219
    :cond_2b
    new-instance v12, Ljava/util/ArrayList;

    .line 1220
    .line 1221
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1222
    .line 1223
    .line 1224
    const-string v13, "upd"

    .line 1225
    .line 1226
    const-string v14, "add"

    .line 1227
    .line 1228
    filled-new-array {v13, v8, v14, v12}, [Ljava/lang/Object;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v8

    .line 1232
    const-string v12, "del"

    .line 1233
    .line 1234
    invoke-static {v12, v11, v8}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v8

    .line 1238
    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    .line 1240
    .line 1241
    goto :goto_1b

    .line 1242
    :cond_2c
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    .line 1243
    .line 1244
    .line 1245
    move-result v5

    .line 1246
    if-nez v5, :cond_2d

    .line 1247
    .line 1248
    invoke-interface {v1, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    .line 1250
    .line 1251
    :cond_2d
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 1252
    .line 1253
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v5

    .line 1257
    invoke-direct {v4, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1258
    .line 1259
    .line 1260
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v2

    .line 1264
    invoke-virtual {v4, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1265
    .line 1266
    .line 1267
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v2

    .line 1271
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1272
    .line 1273
    .line 1274
    move-result v3

    .line 1275
    if-eqz v3, :cond_30

    .line 1276
    .line 1277
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v3

    .line 1281
    check-cast v3, Ljava/util/Map;

    .line 1282
    .line 1283
    if-nez v3, :cond_2e

    .line 1284
    .line 1285
    goto :goto_1c

    .line 1286
    :cond_2e
    move-object/from16 v7, v26

    .line 1287
    .line 1288
    move-object/from16 v5, v49

    .line 1289
    .line 1290
    invoke-interface {v3, v7, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v8

    .line 1294
    invoke-interface {v3, v6, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v3

    .line 1298
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v3

    .line 1302
    invoke-static {v3}, Lcom/sgscq/vpn/p5;->h0(Ljava/lang/String;)Z

    .line 1303
    .line 1304
    .line 1305
    move-result v3

    .line 1306
    if-eqz v3, :cond_2f

    .line 1307
    .line 1308
    const/4 v2, 0x1

    .line 1309
    goto :goto_1d

    .line 1310
    :cond_2f
    move-object/from16 v49, v5

    .line 1311
    .line 1312
    move-object/from16 v26, v7

    .line 1313
    .line 1314
    goto :goto_1c

    .line 1315
    :cond_30
    const/4 v2, 0x0

    .line 1316
    :goto_1d
    move-object/from16 v11, v48

    .line 1317
    .line 1318
    if-eqz v2, :cond_31

    .line 1319
    .line 1320
    invoke-virtual {v4, v11}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1321
    .line 1322
    .line 1323
    :cond_31
    const-string v2, "TeamGeneral"

    .line 1324
    .line 1325
    invoke-virtual {v4, v2}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 1326
    .line 1327
    .line 1328
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1329
    .line 1330
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1331
    .line 1332
    .line 1333
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v3

    .line 1337
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1338
    .line 1339
    .line 1340
    move-result v4

    .line 1341
    if-eqz v4, :cond_32

    .line 1342
    .line 1343
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v4

    .line 1347
    check-cast v4, Ljava/lang/CharSequence;

    .line 1348
    .line 1349
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1350
    .line 1351
    .line 1352
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1353
    .line 1354
    .line 1355
    move-result v4

    .line 1356
    if-eqz v4, :cond_32

    .line 1357
    .line 1358
    const-string v4, ","

    .line 1359
    .line 1360
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1361
    .line 1362
    .line 1363
    goto :goto_1e

    .line 1364
    :cond_32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v2

    .line 1368
    move-object/from16 v6, v27

    .line 1369
    .line 1370
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    .line 1372
    .line 1373
    new-instance v2, Lcom/sgscq/vpn/handler/u;

    .line 1374
    .line 1375
    invoke-direct {v2, v1, v0}, Lcom/sgscq/vpn/handler/u;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V

    .line 1376
    .line 1377
    .line 1378
    move-object v1, v2

    .line 1379
    goto :goto_20

    .line 1380
    :cond_33
    :goto_1f
    move-object/from16 v25, v10

    .line 1381
    .line 1382
    move-object v10, v13

    .line 1383
    move-object v11, v14

    .line 1384
    move-object v6, v15

    .line 1385
    new-instance v1, Lcom/sgscq/vpn/handler/u;

    .line 1386
    .line 1387
    invoke-static {v3, v9}, Lcom/sgscq/vpn/handler/d0;->w(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v0

    .line 1391
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 1392
    .line 1393
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1394
    .line 1395
    .line 1396
    invoke-direct {v1, v0, v2}, Lcom/sgscq/vpn/handler/u;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V

    .line 1397
    .line 1398
    .line 1399
    :goto_20
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1400
    .line 1401
    iget-object v12, v1, Lcom/sgscq/vpn/handler/u;->a:Ljava/util/Map;

    .line 1402
    .line 1403
    const-string v1, "result"

    .line 1404
    .line 1405
    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v1

    .line 1409
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 1410
    .line 1411
    .line 1412
    move-result v0

    .line 1413
    if-nez v0, :cond_34

    .line 1414
    .line 1415
    :goto_21
    invoke-static {v12}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v0

    .line 1419
    move-object/from16 v1, v25

    .line 1420
    .line 1421
    goto/16 :goto_24

    .line 1422
    .line 1423
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/handler/d0;->V()Ljava/util/ArrayList;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v0

    .line 1427
    if-eqz p2, :cond_35

    .line 1428
    .line 1429
    const/16 v1, 0xa

    .line 1430
    .line 1431
    goto :goto_22

    .line 1432
    :cond_35
    const/4 v1, 0x1

    .line 1433
    :goto_22
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v2

    .line 1437
    const-string v3, "36"

    .line 1438
    .line 1439
    invoke-static {v9, v0, v3, v1, v2}, Lcom/sgscq/vpn/handler/y0;->d(Ljava/util/Map;Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/Set;)V

    .line 1440
    .line 1441
    .line 1442
    invoke-static {v0, v9}, Lcom/sgscq/vpn/handler/y0;->c(Ljava/util/List;Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v0

    .line 1446
    invoke-static {v0, v12}, Lcom/sgscq/vpn/handler/d0;->h(Lcom/sgscq/vpn/handler/j;Ljava/util/Map;)V

    .line 1447
    .line 1448
    .line 1449
    const-string v0, "121"

    .line 1450
    .line 1451
    invoke-static {v0, v9}, Lcom/sgscq/vpn/handler/p;->e(Ljava/lang/String;Ljava/util/Map;)V

    .line 1452
    .line 1453
    .line 1454
    move-object/from16 v0, v25

    .line 1455
    .line 1456
    iget-object v13, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1457
    .line 1458
    move-object/from16 v8, p1

    .line 1459
    .line 1460
    invoke-virtual {v13, v8, v9}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 1461
    .line 1462
    .line 1463
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 1464
    .line 1465
    .line 1466
    move-result-wide v1

    .line 1467
    long-to-int v2, v1

    .line 1468
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 1469
    .line 1470
    .line 1471
    move-result v1

    .line 1472
    int-to-long v3, v1

    .line 1473
    invoke-virtual {v0, v3, v4, v9}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 1474
    .line 1475
    .line 1476
    move-result-wide v14

    .line 1477
    const-string v1, "user_gold"

    .line 1478
    .line 1479
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 1480
    .line 1481
    .line 1482
    move-result v3

    .line 1483
    invoke-virtual {v0, v3, v1, v9}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1484
    .line 1485
    .line 1486
    move-result v3

    .line 1487
    const-string v1, "user_energy"

    .line 1488
    .line 1489
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 1490
    .line 1491
    .line 1492
    move-result v4

    .line 1493
    invoke-virtual {v0, v4, v1, v9}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1494
    .line 1495
    .line 1496
    move-result v4

    .line 1497
    const-string v1, "user_power"

    .line 1498
    .line 1499
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 1500
    .line 1501
    .line 1502
    move-result v5

    .line 1503
    invoke-virtual {v0, v5, v1, v9}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1504
    .line 1505
    .line 1506
    move-result v5

    .line 1507
    iget-object v1, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1508
    .line 1509
    move-object v0, v6

    .line 1510
    move-wide v6, v14

    .line 1511
    invoke-virtual/range {v1 .. v9}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v1

    .line 1515
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    .line 1517
    .line 1518
    move-result-object v2

    .line 1519
    instance-of v2, v2, Ljava/util/Map;

    .line 1520
    .line 1521
    if-eqz v2, :cond_36

    .line 1522
    .line 1523
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v2

    .line 1527
    check-cast v2, Ljava/util/Map;

    .line 1528
    .line 1529
    goto :goto_23

    .line 1530
    :cond_36
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 1531
    .line 1532
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1533
    .line 1534
    .line 1535
    :goto_23
    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v0

    .line 1539
    invoke-static {v0}, Lcom/sgscq/vpn/handler/d0;->s0(Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v0

    .line 1543
    invoke-interface {v0, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1544
    .line 1545
    .line 1546
    const/4 v3, 0x0

    .line 1547
    new-array v3, v3, [Ljava/lang/String;

    .line 1548
    .line 1549
    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v0

    .line 1553
    check-cast v0, [Ljava/lang/String;

    .line 1554
    .line 1555
    invoke-virtual {v13, v2, v1, v0}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 1556
    .line 1557
    .line 1558
    move-result-object v0

    .line 1559
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1560
    .line 1561
    .line 1562
    move-result-object v0

    .line 1563
    const-string v1, "cmn"

    .line 1564
    .line 1565
    invoke-interface {v12, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    .line 1567
    .line 1568
    goto/16 :goto_21

    .line 1569
    .line 1570
    :goto_24
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 1571
    .line 1572
    .line 1573
    move-result-object v0

    .line 1574
    return-object v0
.end method

.method public final V()Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/sgscq/vpn/handler/d0;->a:Lcom/sgscq/vpn/handler/k0;

    iget-object v1, v1, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sgscq/vpn/w1;->V1()Lcom/sgscq/vpn/a7;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/sgscq/vpn/a7;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sgscq/vpn/a7;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    return-object v0
.end method

.method public final k(I)Ljava/util/ArrayList;
    .locals 17

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    move-object/from16 v2, p0

    .line 9
    .line 10
    iget-object v3, v2, Lcom/sgscq/vpn/handler/d0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 11
    .line 12
    iget-object v4, v3, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v4}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    iget-object v3, v3, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v3}, Lcom/sgscq/vpn/handler/d0;->l(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/16 v6, 0x8

    .line 33
    .line 34
    const/4 v7, 0x1

    .line 35
    const/16 v8, 0x2e

    .line 36
    .line 37
    const/4 v9, 0x6

    .line 38
    const/4 v10, 0x5

    .line 39
    if-eqz v5, :cond_7

    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Ljava/util/Map;

    .line 46
    .line 47
    new-instance v11, Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    invoke-direct {v11, v5}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 50
    .line 51
    .line 52
    const-string v5, "is_new"

    .line 53
    .line 54
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-interface {v11, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    const-string v5, "grant_type"

    .line 60
    .line 61
    invoke-static {v10, v5, v11}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    const-string v12, "item_id"

    .line 66
    .line 67
    if-ne v5, v6, :cond_1

    .line 68
    .line 69
    invoke-virtual {v11, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v13

    .line 73
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v13

    .line 77
    const-string v14, "9"

    .line 78
    .line 79
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v15

    .line 83
    if-eqz v15, :cond_0

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_0
    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v13

    .line 90
    :goto_1
    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    const-string v14, "id"

    .line 94
    .line 95
    invoke-interface {v11, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    :cond_1
    if-ne v5, v9, :cond_2

    .line 99
    .line 100
    const/16 v6, 0x14

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_2
    if-ne v5, v6, :cond_3

    .line 104
    .line 105
    const/16 v6, 0xf

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_3
    const/16 v6, 0x13

    .line 109
    .line 110
    :goto_2
    const-string v9, "item_type"

    .line 111
    .line 112
    invoke-static {v6, v9, v11}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-eqz v4, :cond_5

    .line 117
    .line 118
    :try_start_0
    invoke-virtual {v11, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v13

    .line 122
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v13

    .line 126
    invoke-virtual {v4, v13}, Lcom/sgscq/vpn/w1;->d1(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v13

    .line 130
    if-eqz v13, :cond_4

    .line 131
    .line 132
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v14

    .line 136
    if-nez v14, :cond_4

    .line 137
    .line 138
    const-string v14, "?"

    .line 139
    .line 140
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    move-result v14

    .line 144
    if-nez v14, :cond_4

    .line 145
    .line 146
    const-string v14, "item_name"

    .line 147
    .line 148
    invoke-interface {v11, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    :cond_4
    invoke-virtual {v11, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v12

    .line 155
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v12

    .line 159
    invoke-virtual {v4, v12}, Lcom/sgscq/vpn/w1;->c1(Ljava/lang/String;)Ljava/util/Map;

    .line 160
    .line 161
    .line 162
    move-result-object v12

    .line 163
    if-eqz v12, :cond_5

    .line 164
    .line 165
    if-ne v5, v10, :cond_5

    .line 166
    .line 167
    invoke-static {v6, v9, v12}, Lcom/sgscq/vpn/handler/d0;->l0(ILjava/lang/String;Ljava/util/Map;)I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-interface {v11, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .line 177
    .line 178
    :catch_0
    :cond_5
    if-ne v6, v8, :cond_6

    .line 179
    .line 180
    const/4 v7, 0x4

    .line 181
    :cond_6
    const-string v5, "grade"

    .line 182
    .line 183
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    invoke-interface {v11, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    invoke-static {v6}, Lcom/sgscq/vpn/y2;->s(I)I

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    const-string v6, "type"

    .line 199
    .line 200
    invoke-interface {v11, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    goto/16 :goto_0

    .line 207
    .line 208
    :cond_7
    const/16 v3, 0x2f

    .line 209
    .line 210
    invoke-static {v1, v10, v3}, Lcom/sgscq/vpn/handler/d0;->E(Ljava/util/List;II)Ljava/util/ArrayList;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    new-instance v5, Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v11

    .line 227
    if-eqz v11, :cond_9

    .line 228
    .line 229
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v11

    .line 233
    check-cast v11, Ljava/util/Map;

    .line 234
    .line 235
    invoke-static {v4, v11}, Lcom/sgscq/vpn/handler/d0;->h0(Lcom/sgscq/vpn/w1;Ljava/util/Map;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v12

    .line 239
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 240
    .line 241
    .line 242
    move-result v12

    .line 243
    if-nez v12, :cond_8

    .line 244
    .line 245
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_9
    const/4 v3, -0x1

    .line 250
    invoke-static {v1, v9, v3}, Lcom/sgscq/vpn/handler/d0;->E(Ljava/util/List;II)Ljava/util/ArrayList;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 255
    .line 256
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-static {v1, v10, v8}, Lcom/sgscq/vpn/handler/d0;->E(Ljava/util/List;II)Ljava/util/ArrayList;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 268
    .line 269
    .line 270
    move-result v8

    .line 271
    if-eqz v8, :cond_b

    .line 272
    .line 273
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v8

    .line 277
    check-cast v8, Ljava/util/Map;

    .line 278
    .line 279
    invoke-static {v8}, Lcom/sgscq/vpn/handler/d0;->O(Ljava/util/Map;)Z

    .line 280
    .line 281
    .line 282
    move-result v9

    .line 283
    if-eqz v9, :cond_a

    .line 284
    .line 285
    goto :goto_4

    .line 286
    :cond_a
    invoke-static {v8}, Lcom/sgscq/vpn/handler/d0;->y(Ljava/util/Map;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v9

    .line 290
    invoke-interface {v4, v9, v8}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    goto :goto_4

    .line 294
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 301
    .line 302
    .line 303
    new-instance v4, Ljava/util/ArrayList;

    .line 304
    .line 305
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 309
    .line 310
    .line 311
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 312
    .line 313
    .line 314
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 315
    .line 316
    .line 317
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 318
    .line 319
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 320
    .line 321
    .line 322
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/d0;->j0(ILjava/util/ArrayList;)Ljava/util/List;

    .line 323
    .line 324
    .line 325
    move-result-object v8

    .line 326
    const/4 v9, 0x3

    .line 327
    invoke-static {v9, v8, v4}, Lcom/sgscq/vpn/handler/d0;->b(ILjava/util/List;Ljava/util/LinkedHashMap;)V

    .line 328
    .line 329
    .line 330
    invoke-static {v0, v5}, Lcom/sgscq/vpn/handler/d0;->j0(ILjava/util/ArrayList;)Ljava/util/List;

    .line 331
    .line 332
    .line 333
    move-result-object v8

    .line 334
    const/4 v9, 0x2

    .line 335
    invoke-static {v9, v8, v4}, Lcom/sgscq/vpn/handler/d0;->b(ILjava/util/List;Ljava/util/LinkedHashMap;)V

    .line 336
    .line 337
    .line 338
    invoke-static {v0, v3}, Lcom/sgscq/vpn/handler/d0;->j0(ILjava/util/ArrayList;)Ljava/util/List;

    .line 339
    .line 340
    .line 341
    move-result-object v8

    .line 342
    invoke-static {v7, v8, v4}, Lcom/sgscq/vpn/handler/d0;->b(ILjava/util/List;Ljava/util/LinkedHashMap;)V

    .line 343
    .line 344
    .line 345
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v8

    .line 349
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 350
    .line 351
    .line 352
    move-result v8

    .line 353
    const v9, 0x7fffffff

    .line 354
    .line 355
    .line 356
    and-int/2addr v8, v9

    .line 357
    add-int/2addr v8, v0

    .line 358
    sget-object v9, Lcom/sgscq/vpn/handler/d0;->g:[C

    .line 359
    .line 360
    array-length v10, v9

    .line 361
    const/4 v12, 0x0

    .line 362
    :goto_5
    if-ge v12, v10, :cond_12

    .line 363
    .line 364
    aget-char v13, v9, v12

    .line 365
    .line 366
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 367
    .line 368
    .line 369
    move-result-object v14

    .line 370
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 371
    .line 372
    .line 373
    move-result-object v14

    .line 374
    :cond_c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 375
    .line 376
    .line 377
    move-result v15

    .line 378
    if-eqz v15, :cond_d

    .line 379
    .line 380
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v15

    .line 384
    check-cast v15, Ljava/util/Map;

    .line 385
    .line 386
    invoke-static {v15}, Lcom/sgscq/vpn/handler/d0;->z(Ljava/util/Map;)C

    .line 387
    .line 388
    .line 389
    move-result v15

    .line 390
    if-ne v15, v13, :cond_c

    .line 391
    .line 392
    move v14, v7

    .line 393
    goto :goto_6

    .line 394
    :cond_d
    const/4 v14, 0x0

    .line 395
    :goto_6
    if-eqz v14, :cond_e

    .line 396
    .line 397
    goto :goto_8

    .line 398
    :cond_e
    invoke-static {v13}, Lcom/sgscq/vpn/handler/d0;->B(C)Ljava/util/ArrayList;

    .line 399
    .line 400
    .line 401
    move-result-object v13

    .line 402
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 403
    .line 404
    .line 405
    move-result v14

    .line 406
    if-nez v14, :cond_f

    .line 407
    .line 408
    goto :goto_8

    .line 409
    :cond_f
    const/4 v15, 0x0

    .line 410
    :goto_7
    if-ge v15, v14, :cond_11

    .line 411
    .line 412
    add-int v11, v8, v15

    .line 413
    .line 414
    invoke-static {v11, v14}, Ljava/lang/Math;->floorMod(II)I

    .line 415
    .line 416
    .line 417
    move-result v11

    .line 418
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v11

    .line 422
    check-cast v11, Ljava/util/Map;

    .line 423
    .line 424
    invoke-static {v11}, Lcom/sgscq/vpn/handler/d0;->y(Ljava/util/Map;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v6

    .line 428
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result v16

    .line 432
    if-eqz v16, :cond_10

    .line 433
    .line 434
    add-int/lit8 v15, v15, 0x1

    .line 435
    .line 436
    const/16 v6, 0x8

    .line 437
    .line 438
    goto :goto_7

    .line 439
    :cond_10
    invoke-interface {v4, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    :cond_11
    :goto_8
    add-int/lit8 v12, v12, 0x1

    .line 443
    .line 444
    const/16 v6, 0x8

    .line 445
    .line 446
    goto :goto_5

    .line 447
    :cond_12
    add-int/2addr v0, v7

    .line 448
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/d0;->j0(ILjava/util/ArrayList;)Ljava/util/List;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    invoke-static {v1, v4}, Lcom/sgscq/vpn/handler/d0;->D(Ljava/util/List;Ljava/util/LinkedHashMap;)V

    .line 453
    .line 454
    .line 455
    invoke-static {v0, v5}, Lcom/sgscq/vpn/handler/d0;->j0(ILjava/util/ArrayList;)Ljava/util/List;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    invoke-static {v1, v4}, Lcom/sgscq/vpn/handler/d0;->D(Ljava/util/List;Ljava/util/LinkedHashMap;)V

    .line 460
    .line 461
    .line 462
    invoke-static {v0, v3}, Lcom/sgscq/vpn/handler/d0;->j0(ILjava/util/ArrayList;)Ljava/util/List;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-static {v0, v4}, Lcom/sgscq/vpn/handler/d0;->D(Ljava/util/List;Ljava/util/LinkedHashMap;)V

    .line 467
    .line 468
    .line 469
    array-length v0, v9

    .line 470
    const/4 v11, 0x0

    .line 471
    :goto_9
    if-ge v11, v0, :cond_13

    .line 472
    .line 473
    aget-char v1, v9, v11

    .line 474
    .line 475
    invoke-static {v1}, Lcom/sgscq/vpn/handler/d0;->B(C)Ljava/util/ArrayList;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    invoke-static {v8, v1}, Lcom/sgscq/vpn/handler/d0;->j0(ILjava/util/ArrayList;)Ljava/util/List;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    invoke-static {v1, v4}, Lcom/sgscq/vpn/handler/d0;->D(Ljava/util/List;Ljava/util/LinkedHashMap;)V

    .line 484
    .line 485
    .line 486
    add-int/lit8 v11, v11, 0x1

    .line 487
    .line 488
    goto :goto_9

    .line 489
    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    .line 490
    .line 491
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 503
    .line 504
    .line 505
    move-result v3

    .line 506
    if-eqz v3, :cond_15

    .line 507
    .line 508
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    check-cast v3, Ljava/util/Map;

    .line 513
    .line 514
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 515
    .line 516
    .line 517
    move-result v4

    .line 518
    const/16 v5, 0x8

    .line 519
    .line 520
    if-lt v4, v5, :cond_14

    .line 521
    .line 522
    goto :goto_b

    .line 523
    :cond_14
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 524
    .line 525
    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    goto :goto_a

    .line 532
    :cond_15
    :goto_b
    return-object v0
.end method
