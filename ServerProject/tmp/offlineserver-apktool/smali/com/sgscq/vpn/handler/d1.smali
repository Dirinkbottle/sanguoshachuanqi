.class public final Lcom/sgscq/vpn/handler/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 3

    const/16 v0, 0xf

    iput v0, p0, Lcom/sgscq/vpn/handler/d1;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sgscq/vpn/s5;

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/sgscq/vpn/s5;-><init>(Ljava/lang/Object;II)V

    iput-object v0, p0, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    return-void
.end method

.method public varargs constructor <init>(I[Ll/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sgscq/vpn/handler/d1;->a:I

    iput-object p2, p0, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p2, p0, Lcom/sgscq/vpn/handler/d1;->a:I

    iput-object p1, p0, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/util/LinkedHashMap;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .line 1
    const-string v0, "delta_data"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    move-object p1, p0

    check-cast p1, Ljava/util/Map;

    :cond_0
    return-object p1
.end method

.method public static A0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static B(Ljava/util/LinkedHashMap;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .line 1
    const-string v0, "delta_data"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    move-object p1, p0

    check-cast p1, Ljava/util/Map;

    :cond_0
    return-object p1
.end method

.method public static B0(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    instance-of v1, p0, Ljava/lang/Iterable;

    .line 7
    .line 8
    if-eqz v1, :cond_4

    .line 9
    .line 10
    check-cast p0, Ljava/lang/Iterable;

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    return-object v0

    .line 55
    :cond_4
    if-nez p0, :cond_5

    .line 56
    .line 57
    const-string p0, ""

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    :goto_1
    const-string v1, ","

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    array-length v1, p0

    .line 71
    const/4 v2, 0x0

    .line 72
    :goto_2
    if-ge v2, v1, :cond_9

    .line 73
    .line 74
    aget-object v3, p0, v2

    .line 75
    .line 76
    if-nez v3, :cond_6

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-nez v4, :cond_8

    .line 88
    .line 89
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_7

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_9
    return-object v0
.end method

.method public static C(Ljava/util/LinkedHashMap;)[Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "cmn_modules"

    const-string v1, "General"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :cond_1
    :goto_0
    const-string p0, ","

    invoke-virtual {v1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public static C0(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_7

    .line 17
    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    .line 20
    .line 21
    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    move v3, v1

    .line 25
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-ge v3, v4, :cond_2

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return-object v0

    .line 52
    :catch_0
    const-string v2, ","

    .line 53
    .line 54
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    array-length v2, p0

    .line 59
    move v3, v1

    .line 60
    :goto_1
    if-ge v3, v2, :cond_9

    .line 61
    .line 62
    aget-object v4, p0, v3

    .line 63
    .line 64
    if-nez v4, :cond_3

    .line 65
    .line 66
    const-string v4, ""

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_3
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const-string v5, "["

    .line 74
    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    const/4 v6, 0x1

    .line 80
    if-nez v5, :cond_8

    .line 81
    .line 82
    const-string v5, "\""

    .line 83
    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-nez v7, :cond_8

    .line 89
    .line 90
    const-string v7, "\'"

    .line 91
    .line 92
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-eqz v8, :cond_4

    .line 97
    .line 98
    goto :goto_6

    .line 99
    :cond_4
    :goto_3
    const-string v8, "]"

    .line 100
    .line 101
    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    if-nez v8, :cond_7

    .line 106
    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-nez v8, :cond_7

    .line 112
    .line 113
    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-eqz v8, :cond_5

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_5
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-nez v5, :cond_6

    .line 125
    .line 126
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_7
    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    sub-int/2addr v8, v6

    .line 137
    invoke-virtual {v4, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    goto :goto_3

    .line 146
    :cond_8
    :goto_6
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    goto :goto_2

    .line 151
    :cond_9
    :goto_7
    return-object v0
.end method

.method public static D(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 10

    .line 1
    const-string v0, "Item"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v2, v1, Ljava/util/Map;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const-string v4, "add"

    .line 11
    .line 12
    const-string v5, "upd"

    .line 13
    .line 14
    const-string v6, "del"

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    new-instance p0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v2, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    filled-new-array {v5, v1, v4, v2}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v6, p0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    new-array v1, v3, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {v0, p0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_0
    check-cast v1, Ljava/util/Map;

    .line 49
    .line 50
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    instance-of v2, v2, Ljava/util/List;

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    new-instance v2, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    check-cast v7, Ljava/util/List;

    .line 65
    .line 66
    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    instance-of v7, v7, Ljava/util/List;

    .line 80
    .line 81
    if-eqz v7, :cond_2

    .line 82
    .line 83
    new-instance v7, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Ljava/util/List;

    .line 90
    .line 91
    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    :goto_1
    invoke-static {v0, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    new-instance v8, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    new-instance v9, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .line 113
    .line 114
    filled-new-array {v5, v9, v4, v1}, [Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v6, v8, v1, p0, v0}, Lc/a;->n(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    filled-new-array {v5, v7, v4, p0}, [Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {v6, v2, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    new-array v1, v3, [Ljava/lang/Object;

    .line 131
    .line 132
    invoke-static {v0, p0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    return-object p0
.end method

.method public static D0(Ljava/util/Map;)I
    .locals 1

    .line 1
    const-string v0, "user_level"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/d1;->S0(Ljava/lang/Object;)I

    move-result p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static E(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 9

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ljava/util/Map;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "add"

    .line 9
    .line 10
    const-string v4, "upd"

    .line 11
    .line 12
    const-string v5, "del"

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    filled-new-array {v4, v0, v3, v1}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v5, p1, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-array v0, v2, [Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {p0, p1, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_0
    check-cast v0, Ljava/util/Map;

    .line 47
    .line 48
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    instance-of v1, v1, Ljava/util/List;

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    new-instance v1, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    check-cast v6, Ljava/util/List;

    .line 63
    .line 64
    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    instance-of v6, v6, Ljava/util/List;

    .line 78
    .line 79
    if-eqz v6, :cond_2

    .line 80
    .line 81
    new-instance v6, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ljava/util/List;

    .line 88
    .line 89
    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    .line 98
    :goto_1
    invoke-static {p0, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    new-instance v7, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    new-instance v8, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .line 111
    .line 112
    filled-new-array {v4, v8, v3, v0}, [Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v5, v7, v0, p1, p0}, Lc/a;->n(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    filled-new-array {v4, v6, v3, p1}, [Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {v5, v1, p1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    new-array v0, v2, [Ljava/lang/Object;

    .line 129
    .line 130
    invoke-static {p0, p1, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    return-object p0
.end method

.method public static E0(Ljava/util/Map;)I
    .locals 2

    .line 1
    const-string v0, "user_level"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "level"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/sgscq/vpn/handler/d1;->b0(Ljava/lang/Object;I)I

    move-result p0

    invoke-static {v0, p0}, Lcom/sgscq/vpn/handler/d1;->b0(Ljava/lang/Object;I)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static F(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "email_type"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "normalUser"

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-string v0, "friendApply"

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v0, "normalSystem"

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    const-string p0, "system"

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    const-string p0, "friend"

    .line 40
    .line 41
    :cond_2
    :goto_1
    return-object p0
.end method

.method public static F0(Ljava/util/Map;IIJ)V
    .locals 2

    .line 1
    const-string v0, "level"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "general_level"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "exp"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "general_exp"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "general_experience"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static G(Ljava/util/Map;)Ljava/util/List;
    .locals 6

    .line 1
    const-string v0, "General"

    invoke-static {v0, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/Map;

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "add"

    const-string v5, "upd"

    filled-new-array {v5, v3, v4, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "del"

    invoke-static {v4, v2, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static G0(Ljava/util/LinkedHashMap;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "upd"

    const-string v2, "add"

    filled-new-array {v1, p4, v2, v0}, [Ljava/lang/Object;

    move-result-object p4

    const-string v0, "del"

    invoke-static {v0, p3, p4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p3

    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static H(I)I
    .locals 2

    .line 1
    const/16 v0, 0xa

    if-gt p0, v0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    const/16 v1, 0x14

    if-gt p0, v1, :cond_1

    return v0

    :cond_1
    const/16 v0, 0x1e

    if-gt p0, v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x28

    if-gt p0, v0, :cond_3

    return v0

    :cond_3
    const/16 v0, 0x32

    const/16 v1, 0x50

    if-gt p0, v0, :cond_4

    return v1

    :cond_4
    const/16 v0, 0x3c

    if-gt p0, v0, :cond_5

    const/16 p0, 0xa0

    return p0

    :cond_5
    const/16 v0, 0x46

    if-gt p0, v0, :cond_6

    const/16 p0, 0x140

    return p0

    :cond_6
    if-gt p0, v1, :cond_7

    const/16 p0, 0x280

    return p0

    :cond_7
    const/16 v0, 0x5a

    if-gt p0, v0, :cond_8

    const/16 p0, 0x500

    return p0

    :cond_8
    const/16 v0, 0x64

    if-gt p0, v0, :cond_9

    const/16 p0, 0xa00

    return p0

    :cond_9
    const/16 v0, 0x78

    if-gt p0, v0, :cond_a

    const/16 p0, 0x1400

    return p0

    :cond_a
    const/16 v0, 0x8c

    if-gt p0, v0, :cond_b

    const/16 p0, 0x2800

    return p0

    :cond_b
    const/16 v0, 0x12c

    if-gt p0, v0, :cond_c

    const/16 p0, 0x5000

    return p0

    :cond_c
    const p0, 0xa000

    return p0
.end method

.method public static H0()Ljava/util/ArrayList;
    .locals 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "item_id"

    const-string v2, "600095"

    const-string v3, "item_num"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v5, "need_num"

    const-string v7, "price"

    const-string v9, "discount_price"

    const-string v11, "gift_status"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v4, v10

    move-object v6, v10

    move-object v8, v10

    filled-new-array/range {v1 .. v12}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "pk_id"

    const-string v3, "1"

    invoke-static {v2, v3, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static I(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 11

    .line 1
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "code"

    const-string v3, "result"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v5, "msg"

    const-string v7, "error_code"

    const-string v9, "return_info"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "result"

    invoke-static {v6, v4, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v10

    move-object v2, v0

    move-object v6, p0

    move-object v8, v0

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "ret"

    invoke-static {v1, v0, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static I0(ILjava/util/ArrayList;)Ljava/util/HashSet;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

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
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_3

    .line 16
    .line 17
    invoke-static {p0}, Lcom/sgscq/vpn/cloud/m0;->c3(I)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-gtz p0, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    :goto_0
    if-ge p1, p0, :cond_3

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    sub-int/2addr v3, p1

    .line 45
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    const-wide/16 v7, 0x0

    .line 54
    .line 55
    if-nez v6, :cond_1

    .line 56
    .line 57
    cmpg-double v6, v4, v7

    .line 58
    .line 59
    if-gez v6, :cond_2

    .line 60
    .line 61
    :cond_1
    move-wide v4, v7

    .line 62
    :cond_2
    add-int/lit8 v6, v3, -0x1

    .line 63
    .line 64
    int-to-double v7, v3

    .line 65
    mul-double/2addr v4, v7

    .line 66
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    .line 67
    .line 68
    .line 69
    move-result-wide v3

    .line 70
    double-to-int v3, v3

    .line 71
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    add-int/2addr v3, p1

    .line 76
    invoke-static {v2, p1, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Ljava/util/Map;

    .line 84
    .line 85
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    add-int/lit8 p1, p1, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Ljava/util/Map;

    .line 106
    .line 107
    const-string v1, "pk_id"

    .line 108
    .line 109
    const-string v2, ""

    .line 110
    .line 111
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-nez v1, :cond_4

    .line 124
    .line 125
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    return-object v0
.end method

.method public static J(Ljava/lang/String;)Ljava/util/LinkedHashMap;
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

.method public static J0()Ljava/util/ArrayList;
    .locals 21

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "player_id"

    .line 7
    .line 8
    const-string v2, "100001"

    .line 9
    .line 10
    const-string v3, "nick"

    .line 11
    .line 12
    const-string v4, "Player"

    .line 13
    .line 14
    const-string v5, "server"

    .line 15
    .line 16
    const/4 v6, 0x1

    .line 17
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v14

    .line 21
    move-object v8, v14

    .line 22
    move-object v10, v14

    .line 23
    move-object v6, v14

    .line 24
    move-object v12, v14

    .line 25
    const-string v7, "server_id"

    .line 26
    .line 27
    const-string v9, "level"

    .line 28
    .line 29
    const-string v11, "rank"

    .line 30
    .line 31
    const-string v13, "pop_rank"

    .line 32
    .line 33
    const-string v15, "coin"

    .line 34
    .line 35
    const/16 v16, 0x64

    .line 36
    .line 37
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v16

    .line 41
    const-string v17, "fightPoint"

    .line 42
    .line 43
    const/16 v18, 0x0

    .line 44
    .line 45
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v18

    .line 49
    const-string v19, "reward"

    .line 50
    .line 51
    const/16 v20, 0x0

    .line 52
    .line 53
    invoke-static/range {v20 .. v20}, Lcom/sgscq/vpn/handler/d1;->M0(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    move-result-object v20

    .line 57
    filled-new-array/range {v1 .. v20}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "uid"

    .line 62
    .line 63
    const-string v3, "100001"

    .line 64
    .line 65
    invoke-static {v2, v3, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    return-object v0
.end method

.method public static K(Ljava/lang/String;)Ljava/util/LinkedHashMap;
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

.method public static K0(Ljava/util/Map;)Z
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "Combat"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    instance-of v3, v2, Ljava/util/List;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x4

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    check-cast v2, Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    move v1, v5

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    move v3, v4

    .line 32
    :goto_0
    if-gt v3, v6, :cond_1

    .line 33
    .line 34
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    const-string v8, "id"

    .line 39
    .line 40
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    const-string v10, "combat_type"

    .line 45
    .line 46
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v11

    .line 50
    const-string v12, "type"

    .line 51
    .line 52
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v13

    .line 56
    const-string v14, "level"

    .line 57
    .line 58
    const-string v15, "1"

    .line 59
    .line 60
    const-string v16, "combat_level"

    .line 61
    .line 62
    const-string v17, "1"

    .line 63
    .line 64
    const-string v18, "exp"

    .line 65
    .line 66
    const-string v19, "0"

    .line 67
    .line 68
    const-string v20, "combat_exp"

    .line 69
    .line 70
    const-string v21, "0"

    .line 71
    .line 72
    filled-new-array/range {v8 .. v21}, [Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    const-string v9, "pk_id"

    .line 77
    .line 78
    invoke-static {v9, v7, v8}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move v1, v4

    .line 92
    :goto_1
    const-string v3, "user_level"

    .line 93
    .line 94
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-static {v3, v5}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-gtz v3, :cond_2

    .line 103
    .line 104
    const-string v3, "level"

    .line 105
    .line 106
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-static {v3, v5}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    :cond_2
    if-gtz v3, :cond_3

    .line 115
    .line 116
    const-string v3, "roleLevel"

    .line 117
    .line 118
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-static {v3, v5}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    :cond_3
    if-gtz v3, :cond_4

    .line 127
    .line 128
    const-string v3, "role_level"

    .line 129
    .line 130
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v0, v4}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    :cond_4
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    move v3, v5

    .line 147
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-eqz v7, :cond_10

    .line 152
    .line 153
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    check-cast v7, Ljava/util/Map;

    .line 158
    .line 159
    const-string v8, "combat_type"

    .line 160
    .line 161
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    const-string v9, "type"

    .line 166
    .line 167
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    invoke-static {v9, v4}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    .line 172
    .line 173
    .line 174
    move-result v9

    .line 175
    invoke-static {v8, v9}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    if-eq v8, v4, :cond_8

    .line 180
    .line 181
    const/4 v9, 0x2

    .line 182
    if-eq v8, v9, :cond_7

    .line 183
    .line 184
    const/4 v9, 0x3

    .line 185
    if-eq v8, v9, :cond_6

    .line 186
    .line 187
    if-eq v8, v6, :cond_5

    .line 188
    .line 189
    move v8, v4

    .line 190
    goto :goto_3

    .line 191
    :cond_5
    const/16 v8, 0x14

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_6
    const/16 v8, 0xf

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_7
    const/16 v8, 0xa

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_8
    const/4 v8, 0x5

    .line 201
    :goto_3
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    if-lt v0, v8, :cond_9

    .line 206
    .line 207
    move v8, v4

    .line 208
    goto :goto_4

    .line 209
    :cond_9
    move v8, v5

    .line 210
    :goto_4
    const-string v10, "open_level"

    .line 211
    .line 212
    invoke-static {v7, v10, v9}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v11

    .line 216
    const-string v12, "is_open"

    .line 217
    .line 218
    if-eqz v11, :cond_e

    .line 219
    .line 220
    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v11

    .line 224
    instance-of v13, v11, Ljava/lang/Boolean;

    .line 225
    .line 226
    if-eqz v13, :cond_a

    .line 227
    .line 228
    check-cast v11, Ljava/lang/Boolean;

    .line 229
    .line 230
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 231
    .line 232
    .line 233
    move-result v11

    .line 234
    goto :goto_6

    .line 235
    :cond_a
    instance-of v13, v11, Ljava/lang/Number;

    .line 236
    .line 237
    if-eqz v13, :cond_b

    .line 238
    .line 239
    check-cast v11, Ljava/lang/Number;

    .line 240
    .line 241
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 242
    .line 243
    .line 244
    move-result v11

    .line 245
    if-eqz v11, :cond_d

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_b
    instance-of v13, v11, Ljava/lang/String;

    .line 249
    .line 250
    if-eqz v13, :cond_d

    .line 251
    .line 252
    check-cast v11, Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v11

    .line 258
    const-string v13, "true"

    .line 259
    .line 260
    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 261
    .line 262
    .line 263
    move-result v13

    .line 264
    if-nez v13, :cond_c

    .line 265
    .line 266
    const-string v13, "1"

    .line 267
    .line 268
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v11

    .line 272
    if-eqz v11, :cond_d

    .line 273
    .line 274
    :cond_c
    :goto_5
    move v11, v4

    .line 275
    goto :goto_6

    .line 276
    :cond_d
    move v11, v5

    .line 277
    :goto_6
    if-eq v11, v8, :cond_f

    .line 278
    .line 279
    :cond_e
    move v3, v4

    .line 280
    :cond_f
    invoke-interface {v7, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 284
    .line 285
    .line 286
    move-result-object v8

    .line 287
    invoke-interface {v7, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    goto/16 :goto_2

    .line 291
    .line 292
    :cond_10
    if-nez v3, :cond_12

    .line 293
    .line 294
    if-eqz v1, :cond_11

    .line 295
    .line 296
    goto :goto_7

    .line 297
    :cond_11
    move v4, v5

    .line 298
    :cond_12
    :goto_7
    return v4
.end method

.method public static L(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    and-int/lit16 v3, p0, 0xfff

    or-int/lit16 v3, v3, 0x4000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    mul-int/lit8 v4, p0, 0x7

    and-int/lit16 v4, v4, 0x3fff

    const v5, 0x8000

    or-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    mul-int/lit8 p0, p0, 0xd

    const v5, 0xffff

    and-int/2addr p0, v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-wide/16 v5, 0x1f

    mul-long/2addr v0, v5

    const-wide v5, 0xffffffffffL

    and-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v2, v3, v4, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%08x%04x%04x%04x%012x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static L0(ILjava/util/Map;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Map;

    const-string v1, "pk_id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "id"

    const-string v4, "id"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "item_id"

    const-string v6, "item_id"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "num"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "item_num"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v3 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v0, p1

    invoke-static {v0}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static M(I)Ljava/util/ArrayList;
    .locals 20

    .line 1
    move/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0xa

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "item_id"

    aput-object v5, v3, v4

    const/4 v6, 0x1

    const-string v7, "600001"

    aput-object v7, v3, v6

    const/4 v7, 0x2

    const-string v8, "goods_name"

    aput-object v8, v3, v7

    const/4 v9, 0x3

    const-string v10, "itemname600001"

    aput-object v10, v3, v9

    const/4 v10, 0x4

    const-string v11, "goods_desc"

    aput-object v11, v3, v10

    const/4 v12, 0x5

    const-string v13, "itemdesc600001"

    aput-object v13, v3, v12

    const/4 v13, 0x6

    const-string v14, "point"

    aput-object v14, v3, v13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x7

    aput-object v15, v3, v16

    const/16 v15, 0x8

    const-string v17, "can_exchange"

    aput-object v17, v3, v15

    if-lt v0, v2, :cond_0

    move/from16 v18, v6

    goto :goto_0

    :cond_0
    move/from16 v18, v4

    :goto_0
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    const/16 v19, 0x9

    aput-object v18, v3, v19

    const-string v15, "1"

    const-string v13, "pk_id"

    invoke-static {v13, v15, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v4

    const-string v3, "600002"

    aput-object v3, v2, v6

    aput-object v8, v2, v7

    const-string v3, "itemname600002"

    aput-object v3, v2, v9

    aput-object v11, v2, v10

    const-string v3, "itemdesc600002"

    aput-object v3, v2, v12

    const/4 v3, 0x6

    aput-object v14, v2, v3

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v16

    const/16 v5, 0x8

    aput-object v17, v2, v5

    if-lt v0, v3, :cond_1

    move v4, v6

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v19

    const-string v0, "2"

    invoke-static {v13, v0, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static M0(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 9

    .line 1
    const-string v0, ""

    if-nez p0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "ladder_war_selected_reward_pk_id"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "ladder_war_used_reward_pk_ids"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/sgscq/vpn/handler/d1;->B0(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "item_id"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-string v5, "600001"

    aput-object v5, v2, v4

    const/4 v5, 0x2

    const-string v6, "goods_name"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-string v6, "itemname600001"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const-string v6, "goods_desc"

    aput-object v6, v2, v5

    const/4 v5, 0x5

    const-string v6, "itemdesc600001"

    aput-object v6, v2, v5

    const/4 v5, 0x6

    const-string v6, "price"

    aput-object v6, v2, v5

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x7

    aput-object v6, v2, v7

    const/16 v6, 0x8

    const-string v7, "is_used"

    aput-object v7, v2, v6

    const-string v6, "1"

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/16 v8, 0x9

    aput-object v7, v2, v8

    const-string v7, "is_selected"

    aput-object v7, v2, v5

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v1, 0xb

    aput-object p0, v2, v1

    const-string p0, "pk_id"

    invoke-static {p0, v6, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static N(I)Ljava/util/ArrayList;
    .locals 27

    .line 1
    move/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0xe

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "item_id"

    aput-object v6, v3, v4

    const/4 v7, 0x1

    const-string v8, "600001"

    aput-object v8, v3, v7

    const/4 v8, 0x2

    const-string v9, "name"

    aput-object v9, v3, v8

    const/4 v10, 0x3

    const-string v11, "itemname600001"

    aput-object v11, v3, v10

    const/4 v11, 0x4

    const-string v12, "desc"

    aput-object v12, v3, v11

    const/4 v13, 0x5

    const-string v14, "itemdesc600001"

    aput-object v14, v3, v13

    const/4 v14, 0x6

    const-string v15, "point"

    aput-object v15, v3, v14

    const/16 v14, 0xa

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x7

    aput-object v16, v3, v17

    const/16 v16, 0x8

    const-string v18, "exchange_num"

    aput-object v18, v3, v16

    const/16 v19, 0x63

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x9

    aput-object v19, v3, v20

    const-string v21, "exchanged_num"

    aput-object v21, v3, v14

    const/16 v22, 0xb

    aput-object v5, v3, v22

    const/16 v23, 0xc

    const-string v24, "can_exchange"

    aput-object v24, v3, v23

    if-lt v0, v14, :cond_0

    move/from16 v25, v7

    goto :goto_0

    :cond_0
    move/from16 v25, v4

    :goto_0
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    const/16 v26, 0xd

    aput-object v25, v3, v26

    const-string v14, "1"

    const-string v13, "pk_id"

    invoke-static {v13, v14, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v4

    const-string v3, "600002"

    aput-object v3, v2, v7

    aput-object v9, v2, v8

    const-string v3, "itemname600002"

    aput-object v3, v2, v10

    aput-object v12, v2, v11

    const-string v3, "itemdesc600002"

    const/4 v6, 0x5

    aput-object v3, v2, v6

    const/4 v3, 0x6

    aput-object v15, v2, v3

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v17

    aput-object v18, v2, v16

    aput-object v19, v2, v20

    const/16 v6, 0xa

    aput-object v21, v2, v6

    aput-object v5, v2, v22

    aput-object v24, v2, v23

    if-lt v0, v3, :cond_1

    move v4, v7

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v26

    const-string v0, "2"

    invoke-static {v13, v0, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static O0(Ljava/lang/Object;)I
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static P0(Ljava/lang/Object;I)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private Q(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 38

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
    const-string v3, "combat.getUserCombatList"

    .line 8
    .line 9
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v5, 0x0

    .line 14
    if-nez v4, :cond_1

    .line 15
    .line 16
    const-string v4, "combat.upgradeCombatLevel"

    .line 17
    .line 18
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v4, v5

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 28
    :goto_1
    const/4 v6, 0x0

    .line 29
    if-nez v4, :cond_2

    .line 30
    .line 31
    return-object v6

    .line 32
    :cond_2
    iget-object v4, v0, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v4, Lcom/sgscq/vpn/handler/k0;

    .line 35
    .line 36
    invoke-virtual {v4, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    iget-object v8, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 41
    .line 42
    invoke-virtual {v8, v7}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    if-nez v8, :cond_3

    .line 47
    .line 48
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const-string v3, "Combat"

    .line 58
    .line 59
    const-string v9, "cmn"

    .line 60
    .line 61
    const-string v10, ""

    .line 62
    .line 63
    const-string v11, "combat_info"

    .line 64
    .line 65
    if-eqz v1, :cond_6

    .line 66
    .line 67
    invoke-static {v8}, Lcom/sgscq/vpn/handler/d1;->K0(Ljava/util/Map;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    instance-of v5, v2, Ljava/util/List;

    .line 76
    .line 77
    if-eqz v5, :cond_4

    .line 78
    .line 79
    check-cast v2, Ljava/util/List;

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    :goto_2
    invoke-static {v10}, Lcom/sgscq/vpn/handler/d1;->f1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    const-string v6, "combat_list"

    .line 92
    .line 93
    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    invoke-interface {v5, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/handler/d1;->n0()Ljava/util/ArrayList;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v1, v8, v5}, Lcom/sgscq/vpn/handler/d1;->V0(Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 109
    .line 110
    .line 111
    :cond_5
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 112
    .line 113
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-static {v5, v1}, Lcom/sgscq/vpn/handler/d1;->A(Ljava/util/LinkedHashMap;Ljava/util/Map;)Ljava/util/Map;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {v5}, Lcom/sgscq/vpn/handler/d1;->r0(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashSet;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v0, v7, v1, v8, v2}, Lcom/sgscq/vpn/handler/d1;->g(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/LinkedHashSet;)Ljava/util/LinkedHashMap;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-interface {v5, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-object v2, v0

    .line 132
    move-object v3, v7

    .line 133
    goto/16 :goto_29

    .line 134
    .line 135
    :cond_6
    iget-object v1, v4, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 136
    .line 137
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 138
    .line 139
    .line 140
    iget-object v1, v4, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 141
    .line 142
    const-string v12, "id"

    .line 143
    .line 144
    const-string v13, "General"

    .line 145
    .line 146
    const-string v14, "add"

    .line 147
    .line 148
    if-nez v1, :cond_7

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_7
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 152
    .line 153
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v15, "generals.json"

    .line 157
    .line 158
    invoke-static {v1, v15}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->t1(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    new-array v15, v5, [Ljava/lang/Object;

    .line 167
    .line 168
    invoke-static {v14, v1, v15}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    new-array v5, v5, [Ljava/lang/Object;

    .line 173
    .line 174
    invoke-static {v13, v1, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-static {v13, v1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    if-eqz v5, :cond_9

    .line 191
    .line 192
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    check-cast v5, Ljava/util/Map;

    .line 197
    .line 198
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v15

    .line 202
    if-eqz v15, :cond_8

    .line 203
    .line 204
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v15

    .line 208
    invoke-interface {v6, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_9
    :goto_4
    iget-object v1, v4, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 213
    .line 214
    if-nez v1, :cond_a

    .line 215
    .line 216
    const/4 v1, 0x0

    .line 217
    goto :goto_5

    .line 218
    :cond_a
    const-string v5, "eated_exp.json"

    .line 219
    .line 220
    invoke-static {v1, v5}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    :goto_5
    iget-object v5, v4, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 229
    .line 230
    if-nez v5, :cond_b

    .line 231
    .line 232
    const/4 v5, 0x0

    .line 233
    move-object/from16 p1, v9

    .line 234
    .line 235
    goto :goto_7

    .line 236
    :cond_b
    new-instance v15, Ljava/util/LinkedHashMap;

    .line 237
    .line 238
    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 239
    .line 240
    .line 241
    move-object/from16 p1, v9

    .line 242
    .line 243
    const-string v9, "user_levels.json"

    .line 244
    .line 245
    invoke-static {v5, v9}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    invoke-static {v5}, Lcom/sgscq/vpn/p5;->t1(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    const/4 v9, 0x0

    .line 254
    :goto_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-ge v9, v0, :cond_d

    .line 259
    .line 260
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    move-object/from16 v16, v5

    .line 265
    .line 266
    instance-of v5, v0, Ljava/util/Map;

    .line 267
    .line 268
    if-eqz v5, :cond_c

    .line 269
    .line 270
    add-int/lit8 v5, v9, 0x1

    .line 271
    .line 272
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    invoke-interface {v15, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    :cond_c
    add-int/lit8 v9, v9, 0x1

    .line 280
    .line 281
    move-object/from16 v5, v16

    .line 282
    .line 283
    goto :goto_6

    .line 284
    :cond_d
    move-object v5, v15

    .line 285
    :goto_7
    iget-object v0, v4, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 286
    .line 287
    if-nez v0, :cond_e

    .line 288
    .line 289
    goto :goto_8

    .line 290
    :cond_e
    const-string v9, "combat_levels.json"

    .line 291
    .line 292
    invoke-static {v0, v9}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    if-eqz v0, :cond_11

    .line 297
    .line 298
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v9

    .line 302
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 303
    .line 304
    .line 305
    move-result v9

    .line 306
    if-eqz v9, :cond_f

    .line 307
    .line 308
    goto :goto_8

    .line 309
    :cond_f
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v9

    .line 313
    const-string v15, "["

    .line 314
    .line 315
    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 316
    .line 317
    .line 318
    move-result v9

    .line 319
    if-eqz v9, :cond_10

    .line 320
    .line 321
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->t1(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    goto :goto_9

    .line 326
    :cond_10
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 327
    .line 328
    .line 329
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    goto :goto_9

    .line 331
    :catch_0
    :cond_11
    :goto_8
    const/4 v0, 0x0

    .line 332
    :goto_9
    invoke-static {v8}, Lcom/sgscq/vpn/handler/d1;->K0(Ljava/util/Map;)Z

    .line 333
    .line 334
    .line 335
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v9

    .line 339
    instance-of v15, v9, Ljava/util/List;

    .line 340
    .line 341
    if-eqz v15, :cond_12

    .line 342
    .line 343
    check-cast v9, Ljava/util/List;

    .line 344
    .line 345
    goto :goto_a

    .line 346
    :cond_12
    new-instance v9, Ljava/util/ArrayList;

    .line 347
    .line 348
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .line 350
    .line 351
    :goto_a
    const-string v15, "combat_id"

    .line 352
    .line 353
    invoke-static {v15, v2}, Lcom/sgscq/vpn/handler/d1;->y0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v15

    .line 357
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 358
    .line 359
    .line 360
    move-result v16

    .line 361
    move-object/from16 v17, v15

    .line 362
    .line 363
    const-string v15, "pk_id"

    .line 364
    .line 365
    if-eqz v16, :cond_13

    .line 366
    .line 367
    invoke-static {v15, v2}, Lcom/sgscq/vpn/handler/d1;->y0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v16

    .line 371
    goto :goto_b

    .line 372
    :cond_13
    move-object/from16 v16, v17

    .line 373
    .line 374
    :goto_b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    .line 375
    .line 376
    .line 377
    move-result v17

    .line 378
    if-eqz v17, :cond_14

    .line 379
    .line 380
    invoke-static {v12, v2}, Lcom/sgscq/vpn/handler/d1;->y0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v16

    .line 384
    :cond_14
    move-object/from16 v17, v16

    .line 385
    .line 386
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    .line 387
    .line 388
    .line 389
    move-result v16

    .line 390
    move-object/from16 v18, v4

    .line 391
    .line 392
    const-string v4, "combat_type"

    .line 393
    .line 394
    if-eqz v16, :cond_16

    .line 395
    .line 396
    :cond_15
    move-object/from16 v20, v7

    .line 397
    .line 398
    move-object/from16 v19, v11

    .line 399
    .line 400
    goto :goto_d

    .line 401
    :cond_16
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 402
    .line 403
    .line 404
    move-result-object v16

    .line 405
    :goto_c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 406
    .line 407
    .line 408
    move-result v19

    .line 409
    if-eqz v19, :cond_15

    .line 410
    .line 411
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v19

    .line 415
    move-object/from16 v20, v7

    .line 416
    .line 417
    move-object/from16 v7, v19

    .line 418
    .line 419
    check-cast v7, Ljava/util/Map;

    .line 420
    .line 421
    move-object/from16 v19, v11

    .line 422
    .line 423
    move-object/from16 v11, v17

    .line 424
    .line 425
    invoke-static {v7, v15, v11}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 426
    .line 427
    .line 428
    move-result v17

    .line 429
    if-nez v17, :cond_18

    .line 430
    .line 431
    invoke-static {v7, v4, v11}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 432
    .line 433
    .line 434
    move-result v17

    .line 435
    if-nez v17, :cond_18

    .line 436
    .line 437
    invoke-static {v7, v12, v11}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 438
    .line 439
    .line 440
    move-result v17

    .line 441
    if-eqz v17, :cond_17

    .line 442
    .line 443
    goto :goto_e

    .line 444
    :cond_17
    move-object/from16 v17, v11

    .line 445
    .line 446
    move-object/from16 v11, v19

    .line 447
    .line 448
    move-object/from16 v7, v20

    .line 449
    .line 450
    goto :goto_c

    .line 451
    :goto_d
    const/4 v7, 0x0

    .line 452
    :cond_18
    :goto_e
    if-nez v7, :cond_1a

    .line 453
    .line 454
    const-string v26, "combat not found"

    .line 455
    .line 456
    const/4 v0, -0x1

    .line 457
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    const-string v21, "code"

    .line 462
    .line 463
    const-string v23, "result"

    .line 464
    .line 465
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 466
    .line 467
    const-string v25, "msg"

    .line 468
    .line 469
    const-string v27, "error_code"

    .line 470
    .line 471
    const-string v29, "return_info"

    .line 472
    .line 473
    const/4 v2, 0x0

    .line 474
    new-array v2, v2, [Ljava/lang/Object;

    .line 475
    .line 476
    const-string v3, "result"

    .line 477
    .line 478
    invoke-static {v3, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 479
    .line 480
    .line 481
    move-result-object v30

    .line 482
    move-object/from16 v22, v0

    .line 483
    .line 484
    move-object/from16 v24, v1

    .line 485
    .line 486
    move-object/from16 v28, v0

    .line 487
    .line 488
    filled-new-array/range {v21 .. v30}, [Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    const-string v2, "ret"

    .line 493
    .line 494
    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    :cond_19
    :goto_f
    move-object v5, v0

    .line 499
    goto/16 :goto_28

    .line 500
    .line 501
    :cond_1a
    const-string v11, "gids"

    .line 502
    .line 503
    invoke-static {v11, v2}, Lcom/sgscq/vpn/handler/d1;->y0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v11

    .line 507
    invoke-static {v11}, Lcom/sgscq/vpn/handler/d1;->C0(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 508
    .line 509
    .line 510
    move-result-object v11

    .line 511
    const-string v12, "sids"

    .line 512
    .line 513
    invoke-static {v12, v2}, Lcom/sgscq/vpn/handler/d1;->y0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v12

    .line 517
    invoke-static {v12}, Lcom/sgscq/vpn/handler/d1;->C0(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 518
    .line 519
    .line 520
    move-result-object v12

    .line 521
    move-object/from16 v16, v14

    .line 522
    .line 523
    const-string v14, "num"

    .line 524
    .line 525
    invoke-static {v14, v2}, Lcom/sgscq/vpn/handler/d1;->y0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    move-object/from16 v17, v3

    .line 530
    .line 531
    new-instance v3, Ljava/util/ArrayList;

    .line 532
    .line 533
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .line 535
    .line 536
    invoke-static {v2}, Lcom/sgscq/vpn/handler/d1;->C0(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 545
    .line 546
    .line 547
    move-result v21

    .line 548
    if-eqz v21, :cond_1b

    .line 549
    .line 550
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v21

    .line 554
    move-object/from16 p2, v2

    .line 555
    .line 556
    move-object/from16 v2, v21

    .line 557
    .line 558
    check-cast v2, Ljava/lang/String;

    .line 559
    .line 560
    move-object/from16 v21, v9

    .line 561
    .line 562
    const/4 v9, 0x1

    .line 563
    invoke-static {v2, v9}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 564
    .line 565
    .line 566
    move-result v2

    .line 567
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 568
    .line 569
    .line 570
    move-result-object v2

    .line 571
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-object/from16 v2, p2

    .line 575
    .line 576
    move-object/from16 v9, v21

    .line 577
    .line 578
    goto :goto_10

    .line 579
    :cond_1b
    move-object/from16 v21, v9

    .line 580
    .line 581
    new-instance v2, Ljava/util/ArrayList;

    .line 582
    .line 583
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 584
    .line 585
    .line 586
    new-instance v9, Ljava/util/ArrayList;

    .line 587
    .line 588
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .line 590
    .line 591
    move-object/from16 v22, v10

    .line 592
    .line 593
    new-instance v10, Ljava/util/ArrayList;

    .line 594
    .line 595
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 596
    .line 597
    .line 598
    move-object/from16 v23, v0

    .line 599
    .line 600
    new-instance v0, Ljava/util/ArrayList;

    .line 601
    .line 602
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .line 604
    .line 605
    move-object/from16 v24, v4

    .line 606
    .line 607
    new-instance v4, Ljava/util/ArrayList;

    .line 608
    .line 609
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .line 611
    .line 612
    invoke-static {v13, v8}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 613
    .line 614
    .line 615
    move-result-object v25

    .line 616
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 617
    .line 618
    .line 619
    move-result-object v11

    .line 620
    const/16 v26, 0x0

    .line 621
    .line 622
    :goto_11
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 623
    .line 624
    .line 625
    move-result v27

    .line 626
    move-object/from16 v28, v13

    .line 627
    .line 628
    const-string v13, "Skill"

    .line 629
    .line 630
    move-object/from16 v29, v5

    .line 631
    .line 632
    const-string v5, "TeamGeneral"

    .line 633
    .line 634
    if-eqz v27, :cond_21

    .line 635
    .line 636
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v27

    .line 640
    move-object/from16 p2, v11

    .line 641
    .line 642
    move-object/from16 v11, v27

    .line 643
    .line 644
    check-cast v11, Ljava/lang/String;

    .line 645
    .line 646
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 647
    .line 648
    .line 649
    move-result-object v27

    .line 650
    :goto_12
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    .line 651
    .line 652
    .line 653
    move-result v30

    .line 654
    if-eqz v30, :cond_20

    .line 655
    .line 656
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 657
    .line 658
    .line 659
    move-result-object v30

    .line 660
    move-object/from16 v31, v7

    .line 661
    .line 662
    move-object/from16 v7, v30

    .line 663
    .line 664
    check-cast v7, Ljava/util/Map;

    .line 665
    .line 666
    invoke-static {v7, v15, v11}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 667
    .line 668
    .line 669
    move-result v30

    .line 670
    if-nez v30, :cond_1c

    .line 671
    .line 672
    move-object/from16 v7, v31

    .line 673
    .line 674
    goto :goto_12

    .line 675
    :cond_1c
    move-object/from16 v30, v4

    .line 676
    .line 677
    const/4 v4, 0x0

    .line 678
    invoke-static {v7, v6, v1, v4}, Lcom/sgscq/vpn/handler/d1;->p0(Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Z)I

    .line 679
    .line 680
    .line 681
    move-result v4

    .line 682
    add-int v26, v4, v26

    .line 683
    .line 684
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->remove()V

    .line 685
    .line 686
    .line 687
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 688
    .line 689
    .line 690
    move-result v4

    .line 691
    if-nez v4, :cond_1d

    .line 692
    .line 693
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    :cond_1d
    invoke-static {v13, v8}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 697
    .line 698
    .line 699
    move-result-object v4

    .line 700
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 701
    .line 702
    .line 703
    move-result v7

    .line 704
    if-eqz v7, :cond_1e

    .line 705
    .line 706
    goto :goto_13

    .line 707
    :cond_1e
    new-instance v7, Lcom/sgscq/vpn/handler/h;

    .line 708
    .line 709
    invoke-direct {v7, v11, v10}, Lcom/sgscq/vpn/handler/h;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 710
    .line 711
    .line 712
    invoke-interface {v4, v7}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 713
    .line 714
    .line 715
    invoke-static {v13, v8}, Lcom/sgscq/vpn/handler/d1;->v(Ljava/lang/String;Ljava/util/Map;)V

    .line 716
    .line 717
    .line 718
    :goto_13
    invoke-static {v5, v8}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 719
    .line 720
    .line 721
    move-result-object v4

    .line 722
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 723
    .line 724
    .line 725
    move-result v7

    .line 726
    if-eqz v7, :cond_1f

    .line 727
    .line 728
    goto :goto_14

    .line 729
    :cond_1f
    new-instance v7, Lcom/sgscq/vpn/handler/h;

    .line 730
    .line 731
    invoke-direct {v7, v11, v0}, Lcom/sgscq/vpn/handler/h;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 732
    .line 733
    .line 734
    invoke-interface {v4, v7}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 735
    .line 736
    .line 737
    invoke-static {v5, v8}, Lcom/sgscq/vpn/handler/d1;->v(Ljava/lang/String;Ljava/util/Map;)V

    .line 738
    .line 739
    .line 740
    :goto_14
    move-object/from16 v11, p2

    .line 741
    .line 742
    move-object/from16 v13, v28

    .line 743
    .line 744
    move-object/from16 v5, v29

    .line 745
    .line 746
    move-object/from16 v4, v30

    .line 747
    .line 748
    move-object/from16 v7, v31

    .line 749
    .line 750
    goto/16 :goto_11

    .line 751
    .line 752
    :cond_20
    move-object/from16 v11, p2

    .line 753
    .line 754
    move-object/from16 v13, v28

    .line 755
    .line 756
    move-object/from16 v5, v29

    .line 757
    .line 758
    goto/16 :goto_11

    .line 759
    .line 760
    :cond_21
    move-object/from16 v30, v4

    .line 761
    .line 762
    move-object/from16 v31, v7

    .line 763
    .line 764
    const-string v4, "GeneralSoul"

    .line 765
    .line 766
    invoke-static {v4, v8}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 767
    .line 768
    .line 769
    move-result-object v7

    .line 770
    const/4 v11, 0x0

    .line 771
    const/16 v25, 0x0

    .line 772
    .line 773
    move-object/from16 p2, v0

    .line 774
    .line 775
    :goto_15
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 776
    .line 777
    .line 778
    move-result v0

    .line 779
    if-ge v11, v0, :cond_28

    .line 780
    .line 781
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    check-cast v0, Ljava/lang/String;

    .line 786
    .line 787
    move-object/from16 v27, v12

    .line 788
    .line 789
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 790
    .line 791
    .line 792
    move-result v12

    .line 793
    if-ge v11, v12, :cond_22

    .line 794
    .line 795
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object v12

    .line 799
    check-cast v12, Ljava/lang/Integer;

    .line 800
    .line 801
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 802
    .line 803
    .line 804
    move-result v12

    .line 805
    goto :goto_16

    .line 806
    :cond_22
    const/4 v12, 0x1

    .line 807
    :goto_16
    if-gtz v12, :cond_23

    .line 808
    .line 809
    const/4 v12, 0x1

    .line 810
    :cond_23
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 811
    .line 812
    .line 813
    move-result-object v32

    .line 814
    :goto_17
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    .line 815
    .line 816
    .line 817
    move-result v33

    .line 818
    if-eqz v33, :cond_27

    .line 819
    .line 820
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v33

    .line 824
    move-object/from16 v34, v3

    .line 825
    .line 826
    move-object/from16 v3, v33

    .line 827
    .line 828
    check-cast v3, Ljava/util/Map;

    .line 829
    .line 830
    invoke-static {v3, v15, v0}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 831
    .line 832
    .line 833
    move-result v33

    .line 834
    if-nez v33, :cond_24

    .line 835
    .line 836
    move-object/from16 v3, v34

    .line 837
    .line 838
    goto :goto_17

    .line 839
    :cond_24
    move-object/from16 v33, v7

    .line 840
    .line 841
    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    .line 843
    .line 844
    move-result-object v7

    .line 845
    move-object/from16 v35, v10

    .line 846
    .line 847
    const-string v10, "total_num"

    .line 848
    .line 849
    move-object/from16 v36, v13

    .line 850
    .line 851
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    move-result-object v13

    .line 855
    move-object/from16 v37, v4

    .line 856
    .line 857
    const/4 v4, 0x0

    .line 858
    invoke-static {v13, v4}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    .line 859
    .line 860
    .line 861
    move-result v4

    .line 862
    invoke-static {v7, v4}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    .line 863
    .line 864
    .line 865
    move-result v4

    .line 866
    const/4 v7, 0x1

    .line 867
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    .line 868
    .line 869
    .line 870
    move-result v13

    .line 871
    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    .line 872
    .line 873
    .line 874
    move-result v12

    .line 875
    invoke-static {v3, v6, v1, v7}, Lcom/sgscq/vpn/handler/d1;->p0(Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Z)I

    .line 876
    .line 877
    .line 878
    move-result v7

    .line 879
    mul-int/2addr v7, v12

    .line 880
    add-int v7, v7, v25

    .line 881
    .line 882
    sub-int/2addr v4, v12

    .line 883
    const/4 v12, 0x0

    .line 884
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    .line 885
    .line 886
    .line 887
    move-result v4

    .line 888
    if-gtz v4, :cond_26

    .line 889
    .line 890
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->remove()V

    .line 891
    .line 892
    .line 893
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 894
    .line 895
    .line 896
    move-result v3

    .line 897
    if-nez v3, :cond_25

    .line 898
    .line 899
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    .line 901
    .line 902
    :cond_25
    move-object/from16 v0, v30

    .line 903
    .line 904
    goto :goto_18

    .line 905
    :cond_26
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    invoke-interface {v3, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    invoke-interface {v3, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    .line 918
    .line 919
    move-object/from16 v0, v30

    .line 920
    .line 921
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    .line 923
    .line 924
    :goto_18
    move/from16 v25, v7

    .line 925
    .line 926
    goto :goto_19

    .line 927
    :cond_27
    move-object/from16 v34, v3

    .line 928
    .line 929
    move-object/from16 v37, v4

    .line 930
    .line 931
    move-object/from16 v33, v7

    .line 932
    .line 933
    move-object/from16 v35, v10

    .line 934
    .line 935
    move-object/from16 v36, v13

    .line 936
    .line 937
    move-object/from16 v0, v30

    .line 938
    .line 939
    :goto_19
    add-int/lit8 v11, v11, 0x1

    .line 940
    .line 941
    move-object/from16 v30, v0

    .line 942
    .line 943
    move-object/from16 v12, v27

    .line 944
    .line 945
    move-object/from16 v7, v33

    .line 946
    .line 947
    move-object/from16 v3, v34

    .line 948
    .line 949
    move-object/from16 v10, v35

    .line 950
    .line 951
    move-object/from16 v13, v36

    .line 952
    .line 953
    move-object/from16 v4, v37

    .line 954
    .line 955
    goto/16 :goto_15

    .line 956
    .line 957
    :cond_28
    move-object/from16 v37, v4

    .line 958
    .line 959
    move-object/from16 v35, v10

    .line 960
    .line 961
    move-object/from16 v36, v13

    .line 962
    .line 963
    move-object/from16 v0, v30

    .line 964
    .line 965
    add-int v1, v26, v25

    .line 966
    .line 967
    const-string v3, "level"

    .line 968
    .line 969
    move-object/from16 v7, v31

    .line 970
    .line 971
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    .line 973
    .line 974
    move-result-object v4

    .line 975
    const-string v6, "combat_level"

    .line 976
    .line 977
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v10

    .line 981
    const/4 v11, 0x1

    .line 982
    invoke-static {v10, v11}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    .line 983
    .line 984
    .line 985
    move-result v10

    .line 986
    invoke-static {v4, v10}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    .line 987
    .line 988
    .line 989
    move-result v4

    .line 990
    const-string v10, "exp"

    .line 991
    .line 992
    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    move-result-object v11

    .line 996
    const-string v12, "combat_exp"

    .line 997
    .line 998
    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    .line 1000
    .line 1001
    move-result-object v13

    .line 1002
    const/4 v14, 0x0

    .line 1003
    invoke-static {v13, v14}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    .line 1004
    .line 1005
    .line 1006
    move-result v13

    .line 1007
    invoke-static {v11, v13}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    .line 1008
    .line 1009
    .line 1010
    move-result v11

    .line 1011
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    .line 1012
    .line 1013
    .line 1014
    move-result v13

    .line 1015
    add-int/2addr v13, v11

    .line 1016
    const-string v11, "user_level"

    .line 1017
    .line 1018
    if-nez v29, :cond_29

    .line 1019
    .line 1020
    move-object/from16 v26, v11

    .line 1021
    .line 1022
    move/from16 v25, v13

    .line 1023
    .line 1024
    goto :goto_1a

    .line 1025
    :cond_29
    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v14

    .line 1029
    move/from16 v25, v13

    .line 1030
    .line 1031
    const/4 v13, 0x1

    .line 1032
    invoke-static {v14, v13}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    .line 1033
    .line 1034
    .line 1035
    move-result v13

    .line 1036
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v14

    .line 1040
    move-object/from16 v26, v11

    .line 1041
    .line 1042
    move-object/from16 v11, v29

    .line 1043
    .line 1044
    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v14

    .line 1048
    if-nez v14, :cond_2a

    .line 1049
    .line 1050
    int-to-double v13, v13

    .line 1051
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v13

    .line 1055
    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v14

    .line 1059
    :cond_2a
    instance-of v11, v14, Ljava/util/Map;

    .line 1060
    .line 1061
    if-nez v11, :cond_2b

    .line 1062
    .line 1063
    :goto_1a
    const/4 v11, 0x0

    .line 1064
    :goto_1b
    move-object/from16 v13, v24

    .line 1065
    .line 1066
    goto :goto_1c

    .line 1067
    :cond_2b
    check-cast v14, Ljava/util/Map;

    .line 1068
    .line 1069
    const-string v11, "combat_max_level"

    .line 1070
    .line 1071
    invoke-interface {v14, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v11

    .line 1075
    const/4 v13, 0x0

    .line 1076
    invoke-static {v11, v13}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    .line 1077
    .line 1078
    .line 1079
    move-result v11

    .line 1080
    goto :goto_1b

    .line 1081
    :goto_1c
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v13

    .line 1085
    const-string v14, "type"

    .line 1086
    .line 1087
    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v14

    .line 1091
    move/from16 v24, v1

    .line 1092
    .line 1093
    const/4 v1, 0x1

    .line 1094
    invoke-static {v14, v1}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    .line 1095
    .line 1096
    .line 1097
    move-result v1

    .line 1098
    invoke-static {v13, v1}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    .line 1099
    .line 1100
    .line 1101
    move-result v1

    .line 1102
    move-object/from16 v13, v23

    .line 1103
    .line 1104
    invoke-static {v13, v1, v4}, Lcom/sgscq/vpn/handler/d1;->x(Ljava/lang/Object;II)I

    .line 1105
    .line 1106
    .line 1107
    move-result v14

    .line 1108
    move-object/from16 v30, v0

    .line 1109
    .line 1110
    move-object/from16 v23, v9

    .line 1111
    .line 1112
    move v0, v14

    .line 1113
    move/from16 v14, v25

    .line 1114
    .line 1115
    move v9, v4

    .line 1116
    :goto_1d
    if-lez v11, :cond_2c

    .line 1117
    .line 1118
    if-ge v9, v11, :cond_2d

    .line 1119
    .line 1120
    :cond_2c
    if-lez v0, :cond_2d

    .line 1121
    .line 1122
    if-lt v14, v0, :cond_2d

    .line 1123
    .line 1124
    sub-int/2addr v14, v0

    .line 1125
    add-int/lit8 v9, v9, 0x1

    .line 1126
    .line 1127
    invoke-static {v13, v1, v9}, Lcom/sgscq/vpn/handler/d1;->x(Ljava/lang/Object;II)I

    .line 1128
    .line 1129
    .line 1130
    move-result v0

    .line 1131
    goto :goto_1d

    .line 1132
    :cond_2d
    if-lez v11, :cond_2e

    .line 1133
    .line 1134
    if-lt v9, v11, :cond_2e

    .line 1135
    .line 1136
    const/4 v0, 0x1

    .line 1137
    const/4 v14, 0x0

    .line 1138
    goto :goto_1e

    .line 1139
    :cond_2e
    const/4 v0, 0x1

    .line 1140
    :goto_1e
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    .line 1141
    .line 1142
    .line 1143
    move-result v0

    .line 1144
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v0

    .line 1148
    const/4 v1, 0x0

    .line 1149
    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    .line 1150
    .line 1151
    .line 1152
    move-result v1

    .line 1153
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v1

    .line 1157
    invoke-interface {v7, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    .line 1159
    .line 1160
    invoke-interface {v7, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    .line 1162
    .line 1163
    invoke-interface {v7, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    .line 1165
    .line 1166
    invoke-interface {v7, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    .line 1168
    .line 1169
    new-instance v0, Ljava/util/ArrayList;

    .line 1170
    .line 1171
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1172
    .line 1173
    .line 1174
    new-instance v1, Ljava/util/ArrayList;

    .line 1175
    .line 1176
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1177
    .line 1178
    .line 1179
    if-eq v9, v4, :cond_34

    .line 1180
    .line 1181
    :try_start_1
    invoke-static {}, Lcom/sgscq/vpn/w1;->Z0()Lcom/sgscq/vpn/w1;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1185
    invoke-static {v5, v8}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v11

    .line 1189
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v11

    .line 1193
    :goto_1f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 1194
    .line 1195
    .line 1196
    move-result v12

    .line 1197
    if-eqz v12, :cond_34

    .line 1198
    .line 1199
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v12

    .line 1203
    check-cast v12, Ljava/util/Map;

    .line 1204
    .line 1205
    const-string v13, "general_pk_id"

    .line 1206
    .line 1207
    move-object/from16 v14, v22

    .line 1208
    .line 1209
    invoke-static {v12, v15, v14, v13}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v13

    .line 1213
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 1214
    .line 1215
    .line 1216
    move-result v22

    .line 1217
    if-nez v22, :cond_33

    .line 1218
    .line 1219
    move-object/from16 v22, v11

    .line 1220
    .line 1221
    const-string v11, "null"

    .line 1222
    .line 1223
    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1224
    .line 1225
    .line 1226
    move-result v11

    .line 1227
    if-eqz v11, :cond_2f

    .line 1228
    .line 1229
    goto :goto_20

    .line 1230
    :cond_2f
    invoke-virtual {v6, v13, v8}, Lcom/sgscq/vpn/w1;->F2(Ljava/lang/String;Ljava/util/Map;)Z

    .line 1231
    .line 1232
    .line 1233
    move-result v11

    .line 1234
    if-nez v11, :cond_30

    .line 1235
    .line 1236
    :goto_20
    goto :goto_23

    .line 1237
    :cond_30
    move-object/from16 v11, v28

    .line 1238
    .line 1239
    invoke-static {v11, v8}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v25

    .line 1243
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v25

    .line 1247
    :goto_21
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    .line 1248
    .line 1249
    .line 1250
    move-result v27

    .line 1251
    if-eqz v27, :cond_32

    .line 1252
    .line 1253
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v27

    .line 1257
    move-object/from16 v28, v6

    .line 1258
    .line 1259
    move-object/from16 v6, v27

    .line 1260
    .line 1261
    check-cast v6, Ljava/util/Map;

    .line 1262
    .line 1263
    invoke-static {v6, v15, v13}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1264
    .line 1265
    .line 1266
    move-result v27

    .line 1267
    if-eqz v27, :cond_31

    .line 1268
    .line 1269
    goto :goto_22

    .line 1270
    :cond_31
    move-object/from16 v6, v28

    .line 1271
    .line 1272
    goto :goto_21

    .line 1273
    :cond_32
    move-object/from16 v28, v6

    .line 1274
    .line 1275
    const/4 v6, 0x0

    .line 1276
    :goto_22
    invoke-static {v0, v6}, Lcom/sgscq/vpn/handler/d1;->d(Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 1277
    .line 1278
    .line 1279
    invoke-static {v1, v12}, Lcom/sgscq/vpn/handler/d1;->d(Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 1280
    .line 1281
    .line 1282
    goto :goto_24

    .line 1283
    :cond_33
    move-object/from16 v22, v11

    .line 1284
    .line 1285
    :goto_23
    move-object/from16 v11, v28

    .line 1286
    .line 1287
    move-object/from16 v28, v6

    .line 1288
    .line 1289
    :goto_24
    move-object/from16 v6, v28

    .line 1290
    .line 1291
    move-object/from16 v28, v11

    .line 1292
    .line 1293
    move-object/from16 v11, v22

    .line 1294
    .line 1295
    move-object/from16 v22, v14

    .line 1296
    .line 1297
    goto :goto_1f

    .line 1298
    :catch_1
    :cond_34
    move-object/from16 v11, v28

    .line 1299
    .line 1300
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 1301
    .line 1302
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1303
    .line 1304
    .line 1305
    move-object/from16 v12, v17

    .line 1306
    .line 1307
    move-object/from16 v13, v21

    .line 1308
    .line 1309
    invoke-interface {v6, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    .line 1311
    .line 1312
    new-instance v14, Ljava/util/ArrayList;

    .line 1313
    .line 1314
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    .line 1319
    .line 1320
    invoke-static {v6, v14, v11, v2, v0}, Lcom/sgscq/vpn/handler/d1;->G0(Ljava/util/LinkedHashMap;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1321
    .line 1322
    .line 1323
    move-object/from16 v0, v23

    .line 1324
    .line 1325
    move-object/from16 v2, v30

    .line 1326
    .line 1327
    move-object/from16 v15, v37

    .line 1328
    .line 1329
    invoke-static {v6, v14, v15, v0, v2}, Lcom/sgscq/vpn/handler/d1;->G0(Ljava/util/LinkedHashMap;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1330
    .line 1331
    .line 1332
    new-instance v0, Ljava/util/ArrayList;

    .line 1333
    .line 1334
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1335
    .line 1336
    .line 1337
    move-object/from16 v17, v3

    .line 1338
    .line 1339
    move-object/from16 v2, v35

    .line 1340
    .line 1341
    move-object/from16 v3, v36

    .line 1342
    .line 1343
    invoke-static {v6, v14, v3, v2, v0}, Lcom/sgscq/vpn/handler/d1;->G0(Ljava/util/LinkedHashMap;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1344
    .line 1345
    .line 1346
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1347
    .line 1348
    .line 1349
    move-result v0

    .line 1350
    if-eqz v0, :cond_36

    .line 1351
    .line 1352
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1353
    .line 1354
    .line 1355
    move-result v0

    .line 1356
    if-nez v0, :cond_35

    .line 1357
    .line 1358
    goto :goto_25

    .line 1359
    :cond_35
    move-object/from16 v36, v3

    .line 1360
    .line 1361
    goto :goto_26

    .line 1362
    :cond_36
    :goto_25
    new-instance v0, Ljava/util/ArrayList;

    .line 1363
    .line 1364
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1365
    .line 1366
    .line 1367
    invoke-static {v5, v8}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v1

    .line 1371
    const-string v2, "upd"

    .line 1372
    .line 1373
    move-object/from16 v36, v3

    .line 1374
    .line 1375
    move-object/from16 v3, v16

    .line 1376
    .line 1377
    filled-new-array {v2, v0, v3, v1}, [Ljava/lang/Object;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v0

    .line 1381
    const-string v1, "del"

    .line 1382
    .line 1383
    move-object/from16 v2, p2

    .line 1384
    .line 1385
    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v0

    .line 1389
    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    .line 1391
    .line 1392
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1393
    .line 1394
    .line 1395
    :goto_26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1396
    .line 1397
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1398
    .line 1399
    .line 1400
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v1

    .line 1404
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1405
    .line 1406
    .line 1407
    move-result v2

    .line 1408
    if-eqz v2, :cond_37

    .line 1409
    .line 1410
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v2

    .line 1414
    check-cast v2, Ljava/lang/CharSequence;

    .line 1415
    .line 1416
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1417
    .line 1418
    .line 1419
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1420
    .line 1421
    .line 1422
    move-result v2

    .line 1423
    if-eqz v2, :cond_37

    .line 1424
    .line 1425
    const-string v2, ","

    .line 1426
    .line 1427
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1428
    .line 1429
    .line 1430
    goto :goto_27

    .line 1431
    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v0

    .line 1435
    invoke-static {v0}, Lcom/sgscq/vpn/handler/d1;->f1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v0

    .line 1439
    move-object/from16 v1, v19

    .line 1440
    .line 1441
    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    .line 1443
    .line 1444
    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    .line 1446
    .line 1447
    const-string v1, "combat"

    .line 1448
    .line 1449
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    .line 1451
    .line 1452
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v1

    .line 1456
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    .line 1458
    .line 1459
    const-string v1, "level_before"

    .line 1460
    .line 1461
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v2

    .line 1465
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    .line 1467
    .line 1468
    const-string v1, "level_now"

    .line 1469
    .line 1470
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v2

    .line 1474
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    .line 1476
    .line 1477
    const-string v1, "delta_data"

    .line 1478
    .line 1479
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    .line 1481
    .line 1482
    invoke-static {v11, v8}, Lcom/sgscq/vpn/handler/d1;->v(Ljava/lang/String;Ljava/util/Map;)V

    .line 1483
    .line 1484
    .line 1485
    invoke-static {v15, v8}, Lcom/sgscq/vpn/handler/d1;->v(Ljava/lang/String;Ljava/util/Map;)V

    .line 1486
    .line 1487
    .line 1488
    move-object/from16 v1, v36

    .line 1489
    .line 1490
    invoke-static {v1, v8}, Lcom/sgscq/vpn/handler/d1;->v(Ljava/lang/String;Ljava/util/Map;)V

    .line 1491
    .line 1492
    .line 1493
    invoke-static {v5, v8}, Lcom/sgscq/vpn/handler/d1;->v(Ljava/lang/String;Ljava/util/Map;)V

    .line 1494
    .line 1495
    .line 1496
    invoke-static {v0}, Lcom/sgscq/vpn/handler/d1;->y(Ljava/util/LinkedHashMap;)Z

    .line 1497
    .line 1498
    .line 1499
    move-result v1

    .line 1500
    if-eqz v1, :cond_19

    .line 1501
    .line 1502
    move-object/from16 v1, v26

    .line 1503
    .line 1504
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v1

    .line 1508
    move-object/from16 v2, v17

    .line 1509
    .line 1510
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v2

    .line 1514
    const/4 v3, 0x1

    .line 1515
    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    .line 1516
    .line 1517
    .line 1518
    move-result v2

    .line 1519
    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    .line 1520
    .line 1521
    .line 1522
    move-result v1

    .line 1523
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 1524
    .line 1525
    .line 1526
    move-result v1

    .line 1527
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 1528
    .line 1529
    .line 1530
    move-result-object v2

    .line 1531
    const-string v4, "104"

    .line 1532
    .line 1533
    invoke-static {v3, v1, v4, v2, v8}, Lcom/sgscq/vpn/handler/p;->d(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 1534
    .line 1535
    .line 1536
    goto/16 :goto_f

    .line 1537
    .line 1538
    :goto_28
    invoke-static {v5}, Lcom/sgscq/vpn/handler/d1;->y(Ljava/util/LinkedHashMap;)Z

    .line 1539
    .line 1540
    .line 1541
    move-result v0

    .line 1542
    if-eqz v0, :cond_38

    .line 1543
    .line 1544
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/handler/d1;->n0()Ljava/util/ArrayList;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v0

    .line 1548
    invoke-static {v0, v8, v5}, Lcom/sgscq/vpn/handler/d1;->V0(Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 1549
    .line 1550
    .line 1551
    :cond_38
    invoke-static {v5, v8}, Lcom/sgscq/vpn/handler/d1;->A(Ljava/util/LinkedHashMap;Ljava/util/Map;)Ljava/util/Map;

    .line 1552
    .line 1553
    .line 1554
    move-result-object v0

    .line 1555
    invoke-static {v5}, Lcom/sgscq/vpn/handler/d1;->r0(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashSet;

    .line 1556
    .line 1557
    .line 1558
    move-result-object v1

    .line 1559
    move-object/from16 v2, p0

    .line 1560
    .line 1561
    move-object/from16 v3, v20

    .line 1562
    .line 1563
    invoke-virtual {v2, v3, v0, v8, v1}, Lcom/sgscq/vpn/handler/d1;->g(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/LinkedHashSet;)Ljava/util/LinkedHashMap;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v0

    .line 1567
    move-object/from16 v1, p1

    .line 1568
    .line 1569
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    .line 1571
    .line 1572
    move-object/from16 v4, v18

    .line 1573
    .line 1574
    :goto_29
    iget-object v0, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1575
    .line 1576
    invoke-virtual {v0, v3, v8}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 1577
    .line 1578
    .line 1579
    invoke-static {v5}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1580
    .line 1581
    .line 1582
    move-result-object v0

    .line 1583
    invoke-virtual {v4, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 1584
    .line 1585
    .line 1586
    move-result-object v0

    .line 1587
    return-object v0
.end method

.method public static Q0(Ljava/lang/Object;)I
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private R(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 13

    .line 1
    invoke-static {p1}, Lcom/sgscq/vpn/handler/d1;->f0(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lcom/sgscq/vpn/handler/k0;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    iget-object v1, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 18
    .line 19
    invoke-virtual {v1, v10}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    :cond_1
    move-object v11, v1

    .line 31
    const-string v1, "idcard.save"

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v12, 0x0

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    const-string p1, "user_name"

    .line 41
    .line 42
    invoke-static {p1, p2}, Lcom/sgscq/vpn/handler/d1;->A0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "idcard"

    .line 47
    .line 48
    invoke-static {v2, p2}, Lcom/sgscq/vpn/handler/d1;->A0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const-string v3, "idcard_name"

    .line 53
    .line 54
    invoke-interface {v11, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    invoke-interface {v11, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    invoke-interface {v11, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 64
    .line 65
    const-string p2, "is_idcard_saved"

    .line 66
    .line 67
    invoke-interface {v11, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    const-string p2, "is_idcard"

    .line 71
    .line 72
    invoke-interface {v11, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->g1()Ljava/util/LinkedHashMap;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    :cond_2
    const-string v1, "idcard.getCode"

    .line 82
    .line 83
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    const-string v1, "code"

    .line 88
    .line 89
    const-string v2, "pending_mobile"

    .line 90
    .line 91
    const-string v3, "return_info"

    .line 92
    .line 93
    const-string v4, "result"

    .line 94
    .line 95
    const-string v5, "123456"

    .line 96
    .line 97
    const-string v6, "mobile_code"

    .line 98
    .line 99
    const-string v7, "mobile"

    .line 100
    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    invoke-static {v7, p2}, Lcom/sgscq/vpn/handler/d1;->A0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-interface {v11, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    invoke-interface {v11, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->g1()Ljava/util/LinkedHashMap;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    invoke-interface {p1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 124
    .line 125
    filled-new-array {v1, v5}, [Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v4, p2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-interface {p1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_3
    invoke-static {v7, p2}, Lcom/sgscq/vpn/handler/d1;->A0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-static {v6, p2}, Lcom/sgscq/vpn/handler/d1;->A0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-interface {v11, v6, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    const/4 v8, 0x1

    .line 158
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    if-nez v6, :cond_5

    .line 163
    .line 164
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    if-nez v6, :cond_5

    .line 169
    .line 170
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    if-eqz p2, :cond_4

    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_4
    move v8, v12

    .line 178
    :cond_5
    :goto_0
    if-eqz v8, :cond_6

    .line 179
    .line 180
    invoke-interface {v11, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    const-string p1, ""

    .line 184
    .line 185
    invoke-interface {v11, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    const-string p1, "is_mobile"

    .line 189
    .line 190
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 191
    .line 192
    invoke-interface {v11, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    const-string p1, "mobile_bind"

    .line 196
    .line 197
    invoke-interface {v11, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    :cond_6
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->g1()Ljava/util/LinkedHashMap;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-interface {p1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    new-array v2, v12, [Ljava/lang/Object;

    .line 216
    .line 217
    invoke-static {v4, p2, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    invoke-interface {p1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    if-nez v8, :cond_7

    .line 225
    .line 226
    const-string p2, "ret"

    .line 227
    .line 228
    invoke-interface {p1, p2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    invoke-interface {p1, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    const-string p2, "error_code"

    .line 235
    .line 236
    invoke-interface {p1, p2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    const-string p2, "msg"

    .line 240
    .line 241
    const-string v1, "\u624b\u673a\u9a8c\u8bc1\u7801\u65e0\u6548"

    .line 242
    .line 243
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    :cond_7
    :goto_1
    iget-object v1, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 247
    .line 248
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 249
    .line 250
    .line 251
    move-result-wide v2

    .line 252
    long-to-int v2, v2

    .line 253
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 254
    .line 255
    .line 256
    move-result p2

    .line 257
    int-to-long v3, p2

    .line 258
    invoke-virtual {v0, v3, v4, v11}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 259
    .line 260
    .line 261
    move-result-wide v6

    .line 262
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 263
    .line 264
    .line 265
    move-result p2

    .line 266
    const-string v3, "user_gold"

    .line 267
    .line 268
    invoke-virtual {v0, p2, v3, v11}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 273
    .line 274
    .line 275
    move-result p2

    .line 276
    const-string v4, "user_energy"

    .line 277
    .line 278
    invoke-virtual {v0, p2, v4, v11}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 283
    .line 284
    .line 285
    move-result p2

    .line 286
    const-string v5, "user_power"

    .line 287
    .line 288
    invoke-virtual {v0, p2, v5, v11}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    move-object v8, v10

    .line 293
    move-object v9, v11

    .line 294
    invoke-virtual/range {v1 .. v9}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    iget-object v1, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 299
    .line 300
    new-array v2, v12, [Ljava/lang/String;

    .line 301
    .line 302
    invoke-virtual {v1, v11, p2, v2}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p2

    .line 306
    invoke-static {p2}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    const-string v1, "cmn"

    .line 311
    .line 312
    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    iget-object p2, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 316
    .line 317
    invoke-virtual {p2, v10, v11}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 318
    .line 319
    .line 320
    invoke-static {p1}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-virtual {v0, p1}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    return-object p1
.end method

.method public static R0(Ljava/lang/Object;I)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private S(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 62

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
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/d1;->g0(Ljava/lang/String;)Z

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
    iget-object v3, v0, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, Lcom/sgscq/vpn/handler/k0;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

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
    const-string v6, "ladderWarLocal."

    .line 37
    .line 38
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/handler/d1;->N0()Lcom/sgscq/vpn/p7;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    const-string v8, ".goodsList"

    .line 47
    .line 48
    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    const-string v12, "cmn_modules"

    .line 53
    .line 54
    const-string v13, "delta_data"

    .line 55
    .line 56
    const-string v14, ""

    .line 57
    .line 58
    if-eqz v8, :cond_2

    .line 59
    .line 60
    invoke-static {v5}, Lcom/sgscq/vpn/handler/d1;->l(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    move-object v0, v3

    .line 65
    move-object/from16 v37, v14

    .line 66
    .line 67
    goto/16 :goto_8

    .line 68
    .line 69
    :cond_2
    const-string v8, ".exchange"

    .line 70
    .line 71
    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    const-string v9, "point"

    .line 76
    .line 77
    const-string v10, "ladder_war_point"

    .line 78
    .line 79
    const-string v15, "pk_id"

    .line 80
    .line 81
    const-string v11, "1"

    .line 82
    .line 83
    if-eqz v8, :cond_d

    .line 84
    .line 85
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {v1}, Lcom/sgscq/vpn/handler/d1;->Q0(Ljava/lang/Object;)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-static {v1}, Lcom/sgscq/vpn/handler/d1;->M(I)Ljava/util/ArrayList;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v15, v11, v2}, Lcom/sgscq/vpn/handler/d1;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-eqz v6, :cond_4

    .line 110
    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    check-cast v6, Ljava/util/Map;

    .line 116
    .line 117
    invoke-static {v6, v15, v2}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-eqz v7, :cond_3

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    const/4 v6, 0x0

    .line 125
    :goto_0
    if-nez v6, :cond_5

    .line 126
    .line 127
    const-string v1, "\u5546\u54c1\u4e0d\u5b58\u5728"

    .line 128
    .line 129
    :goto_1
    move-object/from16 v20, v1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_5
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {v1}, Lcom/sgscq/vpn/handler/d1;->Q0(Ljava/lang/Object;)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-static {v2}, Lcom/sgscq/vpn/handler/d1;->Q0(Ljava/lang/Object;)I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-ge v2, v1, :cond_6

    .line 149
    .line 150
    const-string v1, "\u79ef\u5206\u4e0d\u8db3"

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :goto_2
    const/4 v1, -0x1

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    const-string v15, "code"

    .line 159
    .line 160
    const-string v17, "result"

    .line 161
    .line 162
    sget-object v18, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 163
    .line 164
    const-string v19, "msg"

    .line 165
    .line 166
    const-string v21, "error_code"

    .line 167
    .line 168
    move-object/from16 v16, v1

    .line 169
    .line 170
    move-object/from16 v22, v1

    .line 171
    .line 172
    filled-new-array/range {v15 .. v22}, [Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    const-string v6, "ret"

    .line 177
    .line 178
    invoke-static {v6, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    move-object v0, v3

    .line 183
    move-object/from16 v38, v4

    .line 184
    .line 185
    move-object/from16 v37, v14

    .line 186
    .line 187
    goto/16 :goto_7

    .line 188
    .line 189
    :cond_6
    sub-int/2addr v2, v1

    .line 190
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-interface {v5, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    const-string v1, "item_id"

    .line 198
    .line 199
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->h0(Ljava/lang/String;)Z

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    const-string v11, "Item"

    .line 212
    .line 213
    if-eqz v6, :cond_8

    .line 214
    .line 215
    const/4 v6, 0x1

    .line 216
    invoke-static {v6, v2, v5}, Lcom/sgscq/vpn/p5;->c(ILjava/lang/String;Ljava/util/Map;)V

    .line 217
    .line 218
    .line 219
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->p0(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    if-eqz v7, :cond_7

    .line 224
    .line 225
    const/16 v7, 0x10

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_7
    move v7, v6

    .line 229
    :goto_3
    invoke-static {v6, v7, v2}, Lcom/sgscq/vpn/p5;->e1(IILjava/lang/String;)Ljava/util/LinkedHashMap;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    :goto_4
    move-object/from16 v39, v3

    .line 234
    .line 235
    move-object/from16 v38, v4

    .line 236
    .line 237
    move-object v3, v11

    .line 238
    move-object/from16 v37, v14

    .line 239
    .line 240
    goto/16 :goto_5

    .line 241
    .line 242
    :cond_8
    invoke-static {v11, v5}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object v10

    .line 246
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v7

    .line 254
    const-string v9, "id"

    .line 255
    .line 256
    const-string v8, "num"

    .line 257
    .line 258
    if-eqz v7, :cond_b

    .line 259
    .line 260
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    check-cast v7, Ljava/util/Map;

    .line 265
    .line 266
    invoke-static {v7, v1, v2}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 267
    .line 268
    .line 269
    move-result v16

    .line 270
    if-nez v16, :cond_a

    .line 271
    .line 272
    invoke-static {v7, v9, v2}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 273
    .line 274
    .line 275
    move-result v9

    .line 276
    if-eqz v9, :cond_9

    .line 277
    .line 278
    :cond_a
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    invoke-static {v6}, Lcom/sgscq/vpn/handler/d1;->Q0(Ljava/lang/Object;)I

    .line 283
    .line 284
    .line 285
    move-result v6

    .line 286
    add-int/lit8 v6, v6, 0x1

    .line 287
    .line 288
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    invoke-static {v10, v5}, Lcom/sgscq/vpn/handler/d1;->h1(Ljava/util/List;Ljava/util/Map;)V

    .line 296
    .line 297
    .line 298
    const/4 v6, 0x1

    .line 299
    goto :goto_4

    .line 300
    :cond_b
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 301
    .line 302
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 303
    .line 304
    .line 305
    move-object v6, v11

    .line 306
    move-object/from16 p1, v7

    .line 307
    .line 308
    move-object v7, v5

    .line 309
    move-object v0, v8

    .line 310
    move-object/from16 v8, p1

    .line 311
    .line 312
    move-object/from16 v37, v14

    .line 313
    .line 314
    move-object v14, v9

    .line 315
    move-object v9, v15

    .line 316
    move-object/from16 v38, v4

    .line 317
    .line 318
    move-object v4, v10

    .line 319
    move-object v10, v1

    .line 320
    move-object/from16 v39, v3

    .line 321
    .line 322
    move-object v3, v11

    .line 323
    move-object v11, v2

    .line 324
    invoke-static/range {v6 .. v11}, Lc/a;->x(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    const/4 v6, 0x1

    .line 328
    move-object/from16 v7, p1

    .line 329
    .line 330
    invoke-static {v7, v14, v2, v6, v0}, Lcom/sgscq/vpn/handler/l;->b(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    invoke-static {v4, v5}, Lcom/sgscq/vpn/handler/d1;->h1(Ljava/util/List;Ljava/util/Map;)V

    .line 337
    .line 338
    .line 339
    :goto_5
    invoke-static {v5}, Lcom/sgscq/vpn/handler/d1;->l(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    new-array v4, v6, [Ljava/util/Map;

    .line 344
    .line 345
    const/4 v8, 0x5

    .line 346
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 347
    .line 348
    .line 349
    move-result-object v8

    .line 350
    const-string v16, "id"

    .line 351
    .line 352
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v17

    .line 356
    const-string v18, "num"

    .line 357
    .line 358
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 359
    .line 360
    .line 361
    move-result-object v19

    .line 362
    const-string v20, "pk_id"

    .line 363
    .line 364
    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v21

    .line 368
    filled-new-array/range {v16 .. v21}, [Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    const-string v6, "type"

    .line 373
    .line 374
    invoke-static {v6, v8, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    const/4 v6, 0x0

    .line 379
    aput-object v1, v4, v6

    .line 380
    .line 381
    invoke-static {v4}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    const-string v4, "add_list"

    .line 386
    .line 387
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->h0(Ljava/lang/String;)Z

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    const-string v2, "add"

    .line 395
    .line 396
    const-string v4, "upd"

    .line 397
    .line 398
    const-string v6, "del"

    .line 399
    .line 400
    if-eqz v1, :cond_c

    .line 401
    .line 402
    new-instance v1, Ljava/util/ArrayList;

    .line 403
    .line 404
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .line 406
    .line 407
    new-instance v7, Ljava/util/ArrayList;

    .line 408
    .line 409
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .line 411
    .line 412
    new-instance v8, Ljava/util/ArrayList;

    .line 413
    .line 414
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .line 416
    .line 417
    filled-new-array {v4, v7, v2, v8}, [Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    invoke-static {v6, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    const/4 v2, 0x0

    .line 426
    new-array v2, v2, [Ljava/lang/Object;

    .line 427
    .line 428
    invoke-static {v3, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    const-string v1, "Player"

    .line 436
    .line 437
    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    goto :goto_6

    .line 441
    :cond_c
    const/4 v1, 0x0

    .line 442
    new-instance v8, Ljava/util/ArrayList;

    .line 443
    .line 444
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .line 446
    .line 447
    const/4 v9, 0x1

    .line 448
    new-array v9, v9, [Ljava/util/Map;

    .line 449
    .line 450
    aput-object v7, v9, v1

    .line 451
    .line 452
    invoke-static {v9}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 453
    .line 454
    .line 455
    move-result-object v7

    .line 456
    new-instance v9, Ljava/util/ArrayList;

    .line 457
    .line 458
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .line 460
    .line 461
    filled-new-array {v4, v7, v2, v9}, [Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    invoke-static {v6, v8, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    new-array v1, v1, [Ljava/lang/Object;

    .line 470
    .line 471
    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    invoke-interface {v0, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    goto :goto_6

    .line 482
    :cond_d
    move-object/from16 v39, v3

    .line 483
    .line 484
    move-object/from16 v38, v4

    .line 485
    .line 486
    move-object/from16 v37, v14

    .line 487
    .line 488
    const-string v0, ".buyFtimes"

    .line 489
    .line 490
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    const-string v3, "ladder_war_total_fight"

    .line 495
    .line 496
    if-eqz v0, :cond_e

    .line 497
    .line 498
    const-string v0, "ladder_war_buy_ftimes"

    .line 499
    .line 500
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    invoke-static {v1}, Lcom/sgscq/vpn/handler/d1;->Q0(Ljava/lang/Object;)I

    .line 505
    .line 506
    .line 507
    move-result v1

    .line 508
    add-int/lit8 v1, v1, 0x1

    .line 509
    .line 510
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    invoke-static {v2}, Lcom/sgscq/vpn/handler/d1;->Q0(Ljava/lang/Object;)I

    .line 515
    .line 516
    .line 517
    move-result v2

    .line 518
    const/4 v4, 0x3

    .line 519
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 520
    .line 521
    .line 522
    move-result v2

    .line 523
    add-int/lit8 v2, v2, 0x1

    .line 524
    .line 525
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    const/4 v0, 0x0

    .line 540
    invoke-static {v5, v0}, Lcom/sgscq/vpn/handler/d1;->i(Ljava/util/Map;Z)Ljava/util/LinkedHashMap;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    :goto_6
    move-object v1, v0

    .line 545
    move-object/from16 v0, v39

    .line 546
    .line 547
    :goto_7
    iget-object v2, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 548
    .line 549
    move-object/from16 v4, v38

    .line 550
    .line 551
    invoke-virtual {v2, v4, v5}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 552
    .line 553
    .line 554
    :goto_8
    move-object v3, v0

    .line 555
    move-object v2, v4

    .line 556
    move-object/from16 v38, v12

    .line 557
    .line 558
    move-object v0, v13

    .line 559
    move-object/from16 v14, v37

    .line 560
    .line 561
    goto/16 :goto_15

    .line 562
    .line 563
    :cond_e
    move-object/from16 v4, v38

    .line 564
    .line 565
    move-object/from16 v0, v39

    .line 566
    .line 567
    const-string v8, ".match"

    .line 568
    .line 569
    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 570
    .line 571
    .line 572
    move-result v8

    .line 573
    const-string v14, "daily_point"

    .line 574
    .line 575
    move-object/from16 v38, v12

    .line 576
    .line 577
    const-string v12, "left_fight"

    .line 578
    .line 579
    move-object/from16 v39, v13

    .line 580
    .line 581
    const-string v13, "return_info"

    .line 582
    .line 583
    move/from16 v16, v6

    .line 584
    .line 585
    const-string v6, "ladder_war_current_win"

    .line 586
    .line 587
    move-object/from16 v40, v0

    .line 588
    .line 589
    const-string v0, "ladder_war_max_win"

    .line 590
    .line 591
    move-object/from16 v17, v11

    .line 592
    .line 593
    const-string v11, "ladder_war_total_point"

    .line 594
    .line 595
    const/16 v22, 0x64

    .line 596
    .line 597
    const-string v2, "uid"

    .line 598
    .line 599
    if-eqz v8, :cond_11

    .line 600
    .line 601
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    invoke-static {v1}, Lcom/sgscq/vpn/handler/d1;->Q0(Ljava/lang/Object;)I

    .line 606
    .line 607
    .line 608
    move-result v1

    .line 609
    const/4 v3, 0x3

    .line 610
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 611
    .line 612
    .line 613
    move-result v1

    .line 614
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v3

    .line 618
    invoke-static {v3}, Lcom/sgscq/vpn/handler/d1;->Q0(Ljava/lang/Object;)I

    .line 619
    .line 620
    .line 621
    move-result v3

    .line 622
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->o0()Ljava/util/ArrayList;

    .line 623
    .line 624
    .line 625
    move-result-object v8

    .line 626
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 627
    .line 628
    .line 629
    move-result-object v16

    .line 630
    const/4 v10, 0x1

    .line 631
    const-string v17, "total_fight"

    .line 632
    .line 633
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 634
    .line 635
    .line 636
    move-result-object v18

    .line 637
    const-string v19, "history_fight"

    .line 638
    .line 639
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 640
    .line 641
    .line 642
    move-result-object v20

    .line 643
    const-string v21, "price"

    .line 644
    .line 645
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 646
    .line 647
    .line 648
    move-result-object v22

    .line 649
    const-string v23, "enable_fight"

    .line 650
    .line 651
    sget-object v24, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 652
    .line 653
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 654
    .line 655
    .line 656
    move-result-object v26

    .line 657
    const-string v27, "total_point"

    .line 658
    .line 659
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    invoke-static {v1}, Lcom/sgscq/vpn/handler/d1;->Q0(Ljava/lang/Object;)I

    .line 664
    .line 665
    .line 666
    move-result v1

    .line 667
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 668
    .line 669
    .line 670
    move-result-object v28

    .line 671
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 672
    .line 673
    .line 674
    move-result-object v30

    .line 675
    const-string v1, "rank"

    .line 676
    .line 677
    move-object/from16 v31, v1

    .line 678
    .line 679
    const/4 v3, 0x0

    .line 680
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 681
    .line 682
    .line 683
    move-result-object v32

    .line 684
    const-string v33, "max_win"

    .line 685
    .line 686
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    invoke-static {v0}, Lcom/sgscq/vpn/handler/d1;->Q0(Ljava/lang/Object;)I

    .line 691
    .line 692
    .line 693
    move-result v0

    .line 694
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 695
    .line 696
    .line 697
    move-result-object v34

    .line 698
    const-string v35, "current_win"

    .line 699
    .line 700
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    move-result-object v0

    .line 704
    invoke-static {v0}, Lcom/sgscq/vpn/handler/d1;->Q0(Ljava/lang/Object;)I

    .line 705
    .line 706
    .line 707
    move-result v0

    .line 708
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 709
    .line 710
    .line 711
    move-result-object v36

    .line 712
    move-object v15, v12

    .line 713
    move-object/from16 v25, v9

    .line 714
    .line 715
    move-object/from16 v29, v14

    .line 716
    .line 717
    filled-new-array/range {v15 .. v36}, [Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v0

    .line 721
    const-string v3, "match_info"

    .line 722
    .line 723
    invoke-static {v3, v8, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->c1()Ljava/util/LinkedHashMap;

    .line 728
    .line 729
    .line 730
    move-result-object v6

    .line 731
    invoke-interface {v6, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v6, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    check-cast v0, Ljava/util/Map;

    .line 742
    .line 743
    const-string v8, "user_level"

    .line 744
    .line 745
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    move-result-object v8

    .line 749
    invoke-static {v8}, Lcom/sgscq/vpn/handler/d1;->Q0(Ljava/lang/Object;)I

    .line 750
    .line 751
    .line 752
    move-result v8

    .line 753
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    .line 754
    .line 755
    .line 756
    move-result v8

    .line 757
    if-nez v7, :cond_f

    .line 758
    .line 759
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->o0()Ljava/util/ArrayList;

    .line 760
    .line 761
    .line 762
    move-result-object v1

    .line 763
    goto :goto_a

    .line 764
    :cond_f
    new-instance v9, Ljava/util/ArrayList;

    .line 765
    .line 766
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 767
    .line 768
    .line 769
    const-wide v10, 0x4c41444445525741L    # 2.1676924738478106E59

    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    invoke-virtual {v7, v8, v10, v11, v4}, Lcom/sgscq/vpn/p7;->o(IJLjava/lang/String;)Ljava/util/List;

    .line 775
    .line 776
    .line 777
    move-result-object v8

    .line 778
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 779
    .line 780
    .line 781
    move-result-object v8

    .line 782
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 783
    .line 784
    .line 785
    move-result v10

    .line 786
    if-eqz v10, :cond_10

    .line 787
    .line 788
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    move-result-object v10

    .line 792
    check-cast v10, Lcom/sgscq/vpn/v5;

    .line 793
    .line 794
    iget-object v11, v10, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 795
    .line 796
    invoke-virtual {v7, v11}, Lcom/sgscq/vpn/p7;->v(Ljava/lang/String;)I

    .line 797
    .line 798
    .line 799
    move-result v11

    .line 800
    invoke-virtual {v10, v11}, Lcom/sgscq/vpn/v5;->m(I)Ljava/util/LinkedHashMap;

    .line 801
    .line 802
    .line 803
    move-result-object v11

    .line 804
    iget-object v15, v10, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 805
    .line 806
    invoke-interface {v11, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    const-string v13, "nick"

    .line 810
    .line 811
    iget-object v14, v10, Lcom/sgscq/vpn/v5;->b:Ljava/lang/String;

    .line 812
    .line 813
    const-string v16, "server"

    .line 814
    .line 815
    const/16 v17, 0x1

    .line 816
    .line 817
    const-string v18, "server_id"

    .line 818
    .line 819
    move-object v12, v11

    .line 820
    move-object/from16 v19, v2

    .line 821
    .line 822
    move-object v2, v15

    .line 823
    move/from16 v15, v17

    .line 824
    .line 825
    invoke-static/range {v12 .. v18}, Lc/a;->z(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 826
    .line 827
    .line 828
    const-string v12, "gid"

    .line 829
    .line 830
    iget-object v13, v10, Lcom/sgscq/vpn/v5;->q:Ljava/lang/String;

    .line 831
    .line 832
    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    invoke-virtual {v7, v2}, Lcom/sgscq/vpn/p7;->v(Ljava/lang/String;)I

    .line 836
    .line 837
    .line 838
    move-result v2

    .line 839
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 840
    .line 841
    .line 842
    move-result-object v2

    .line 843
    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    iget v2, v10, Lcom/sgscq/vpn/v5;->d:I

    .line 847
    .line 848
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 849
    .line 850
    .line 851
    move-result-object v2

    .line 852
    const-string v10, "fightPoint"

    .line 853
    .line 854
    invoke-interface {v11, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    .line 859
    .line 860
    move-object/from16 v2, v19

    .line 861
    .line 862
    goto :goto_9

    .line 863
    :cond_10
    move-object v1, v9

    .line 864
    :goto_a
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    invoke-interface {v6, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    move-object/from16 v18, v4

    .line 871
    .line 872
    move-object/from16 v14, v37

    .line 873
    .line 874
    goto/16 :goto_d

    .line 875
    .line 876
    :cond_11
    move-object/from16 v19, v2

    .line 877
    .line 878
    const-string v2, ".getOverview"

    .line 879
    .line 880
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 881
    .line 882
    .line 883
    move-result v2

    .line 884
    const-string v8, "100002"

    .line 885
    .line 886
    move-object/from16 v18, v4

    .line 887
    .line 888
    const-string v4, "player_id"

    .line 889
    .line 890
    if-eqz v2, :cond_14

    .line 891
    .line 892
    move-object/from16 v2, p2

    .line 893
    .line 894
    move-object/from16 v12, v19

    .line 895
    .line 896
    move-object/from16 v14, v37

    .line 897
    .line 898
    invoke-static {v12, v14, v2}, Lcom/sgscq/vpn/handler/d1;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    invoke-static {v4, v0, v2}, Lcom/sgscq/vpn/handler/d1;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v0

    .line 906
    if-nez v7, :cond_12

    .line 907
    .line 908
    const/4 v0, 0x0

    .line 909
    goto :goto_b

    .line 910
    :cond_12
    invoke-virtual {v7, v0}, Lcom/sgscq/vpn/p7;->g(Ljava/lang/String;)Lcom/sgscq/vpn/v5;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    :goto_b
    if-nez v0, :cond_13

    .line 915
    .line 916
    const-string v19, "general_id"

    .line 917
    .line 918
    const-string v20, "101001"

    .line 919
    .line 920
    const-string v21, "level"

    .line 921
    .line 922
    const/4 v0, 0x1

    .line 923
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 924
    .line 925
    .line 926
    move-result-object v0

    .line 927
    move-object/from16 v48, v0

    .line 928
    .line 929
    move-object/from16 v50, v0

    .line 930
    .line 931
    move-object/from16 v56, v0

    .line 932
    .line 933
    move-object/from16 v58, v0

    .line 934
    .line 935
    const-string v23, "name"

    .line 936
    .line 937
    const-string v24, "PlayerGeneral"

    .line 938
    .line 939
    const-string v25, "attr_hp"

    .line 940
    .line 941
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    .line 942
    .line 943
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 944
    .line 945
    .line 946
    move-result-object v26

    .line 947
    const-string v27, "attr_attack"

    .line 948
    .line 949
    const-wide/high16 v1, 0x4034000000000000L    # 20.0

    .line 950
    .line 951
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 952
    .line 953
    .line 954
    move-result-object v28

    .line 955
    const-string v29, "attr_defense"

    .line 956
    .line 957
    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    .line 958
    .line 959
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 960
    .line 961
    .line 962
    move-result-object v32

    .line 963
    const-string v31, "attr_wisdom"

    .line 964
    .line 965
    const-string v33, "fighting"

    .line 966
    .line 967
    const-wide/high16 v1, 0x4054000000000000L    # 80.0

    .line 968
    .line 969
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 970
    .line 971
    .line 972
    move-result-object v34

    .line 973
    move-object/from16 v54, v34

    .line 974
    .line 975
    move-object/from16 v22, v0

    .line 976
    .line 977
    move-object/from16 v30, v32

    .line 978
    .line 979
    filled-new-array/range {v19 .. v34}, [Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    move-result-object v1

    .line 983
    move-object/from16 v2, v17

    .line 984
    .line 985
    invoke-static {v15, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 986
    .line 987
    .line 988
    move-result-object v1

    .line 989
    const-string v22, "general_id"

    .line 990
    .line 991
    const-string v23, "101001"

    .line 992
    .line 993
    const-string v24, "general_pk_id"

    .line 994
    .line 995
    const-string v25, "1"

    .line 996
    .line 997
    const-string v26, "position"

    .line 998
    .line 999
    move-object/from16 v27, v0

    .line 1000
    .line 1001
    filled-new-array/range {v22 .. v27}, [Ljava/lang/Object;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v0

    .line 1005
    invoke-static {v15, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v0

    .line 1009
    const-string v41, "user_id"

    .line 1010
    .line 1011
    const-string v42, "100002"

    .line 1012
    .line 1013
    const-string v43, "nickname"

    .line 1014
    .line 1015
    const-string v44, "Opponent"

    .line 1016
    .line 1017
    const-string v45, "nick"

    .line 1018
    .line 1019
    const-string v46, "Opponent"

    .line 1020
    .line 1021
    const-string v47, "player_level"

    .line 1022
    .line 1023
    const-string v49, "user_level"

    .line 1024
    .line 1025
    const-string v51, "user_vip_level"

    .line 1026
    .line 1027
    const/4 v2, 0x0

    .line 1028
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v52

    .line 1032
    const-string v53, "fightPoint"

    .line 1033
    .line 1034
    const-string v55, "server_id"

    .line 1035
    .line 1036
    const-string v57, "ladder_rank"

    .line 1037
    .line 1038
    const-string v59, "rank_name"

    .line 1039
    .line 1040
    const-string v60, ""

    .line 1041
    .line 1042
    filled-new-array/range {v41 .. v60}, [Ljava/lang/Object;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v2

    .line 1046
    invoke-static {v4, v8, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v19

    .line 1050
    const/4 v2, 0x1

    .line 1051
    new-array v3, v2, [Ljava/util/Map;

    .line 1052
    .line 1053
    const/4 v4, 0x0

    .line 1054
    aput-object v1, v3, v4

    .line 1055
    .line 1056
    invoke-static {v3}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v20

    .line 1060
    new-array v1, v2, [Ljava/util/Map;

    .line 1061
    .line 1062
    aput-object v0, v1, v4

    .line 1063
    .line 1064
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v21

    .line 1068
    new-instance v22, Ljava/util/ArrayList;

    .line 1069
    .line 1070
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1071
    .line 1072
    .line 1073
    invoke-static {}, Lcom/sgscq/vpn/cloud/m0;->c0()Ljava/util/ArrayList;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v23

    .line 1077
    new-instance v24, Ljava/util/ArrayList;

    .line 1078
    .line 1079
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1080
    .line 1081
    .line 1082
    invoke-static/range {v19 .. v24}, Lcom/sgscq/vpn/cloud/m0;->A(Ljava/util/LinkedHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v0

    .line 1086
    goto :goto_c

    .line 1087
    :cond_13
    invoke-virtual {v0}, Lcom/sgscq/vpn/v5;->r()Ljava/util/Map;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v0

    .line 1091
    :goto_c
    move-object v6, v0

    .line 1092
    :goto_d
    move-object v1, v6

    .line 1093
    :goto_e
    move-object/from16 v2, v18

    .line 1094
    .line 1095
    move-object/from16 v3, v40

    .line 1096
    .line 1097
    goto/16 :goto_14

    .line 1098
    .line 1099
    :cond_14
    move-object/from16 v2, p2

    .line 1100
    .line 1101
    move-object/from16 v20, v12

    .line 1102
    .line 1103
    move-object/from16 v61, v17

    .line 1104
    .line 1105
    move-object/from16 v12, v19

    .line 1106
    .line 1107
    move-object/from16 v19, v14

    .line 1108
    .line 1109
    move-object/from16 v17, v15

    .line 1110
    .line 1111
    move-object/from16 v14, v37

    .line 1112
    .line 1113
    const-string v15, ".fight"

    .line 1114
    .line 1115
    invoke-virtual {v1, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1116
    .line 1117
    .line 1118
    move-result v15

    .line 1119
    if-eqz v15, :cond_16

    .line 1120
    .line 1121
    invoke-static {v4, v8, v2}, Lcom/sgscq/vpn/handler/d1;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v1

    .line 1125
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v8

    .line 1129
    invoke-static {v8}, Lcom/sgscq/vpn/handler/d1;->Q0(Ljava/lang/Object;)I

    .line 1130
    .line 1131
    .line 1132
    move-result v8

    .line 1133
    const/4 v12, 0x3

    .line 1134
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    .line 1135
    .line 1136
    .line 1137
    move-result v8

    .line 1138
    const-string v12, "ladder_war_last_fight_player_id"

    .line 1139
    .line 1140
    invoke-interface {v5, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    .line 1142
    .line 1143
    const/4 v12, 0x1

    .line 1144
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v15

    .line 1148
    sub-int/2addr v8, v12

    .line 1149
    const/4 v12, 0x0

    .line 1150
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    .line 1151
    .line 1152
    .line 1153
    move-result v8

    .line 1154
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v8

    .line 1158
    invoke-interface {v5, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    .line 1160
    .line 1161
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v8

    .line 1165
    invoke-static {v8}, Lcom/sgscq/vpn/handler/d1;->Q0(Ljava/lang/Object;)I

    .line 1166
    .line 1167
    .line 1168
    move-result v8

    .line 1169
    add-int/lit8 v8, v8, 0x1

    .line 1170
    .line 1171
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v8

    .line 1175
    invoke-interface {v5, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    .line 1177
    .line 1178
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v8

    .line 1182
    invoke-static {v8}, Lcom/sgscq/vpn/handler/d1;->Q0(Ljava/lang/Object;)I

    .line 1183
    .line 1184
    .line 1185
    move-result v8

    .line 1186
    add-int/lit8 v8, v8, 0x1

    .line 1187
    .line 1188
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v8

    .line 1192
    invoke-interface {v5, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    .line 1194
    .line 1195
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v8

    .line 1199
    invoke-static {v8}, Lcom/sgscq/vpn/handler/d1;->Q0(Ljava/lang/Object;)I

    .line 1200
    .line 1201
    .line 1202
    move-result v8

    .line 1203
    add-int/lit8 v8, v8, 0x1

    .line 1204
    .line 1205
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v8

    .line 1209
    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    .line 1211
    .line 1212
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v8

    .line 1216
    invoke-static {v8}, Lcom/sgscq/vpn/handler/d1;->Q0(Ljava/lang/Object;)I

    .line 1217
    .line 1218
    .line 1219
    move-result v8

    .line 1220
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v6

    .line 1224
    invoke-static {v6}, Lcom/sgscq/vpn/handler/d1;->Q0(Ljava/lang/Object;)I

    .line 1225
    .line 1226
    .line 1227
    move-result v6

    .line 1228
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    .line 1229
    .line 1230
    .line 1231
    move-result v6

    .line 1232
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v6

    .line 1236
    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    .line 1238
    .line 1239
    const-string v23, "residue_team_num"

    .line 1240
    .line 1241
    const-string v25, "residue_team_percent"

    .line 1242
    .line 1243
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v26

    .line 1247
    const-string v27, "point"

    .line 1248
    .line 1249
    move-object/from16 v24, v15

    .line 1250
    .line 1251
    move-object/from16 v28, v15

    .line 1252
    .line 1253
    filled-new-array/range {v23 .. v28}, [Ljava/lang/Object;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v0

    .line 1257
    const-string v6, "rounds"

    .line 1258
    .line 1259
    invoke-static {v6, v15, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v24

    .line 1263
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1264
    .line 1265
    const-string v21, "player_info"

    .line 1266
    .line 1267
    const-string v6, "nickname"

    .line 1268
    .line 1269
    const-string v8, "Opponent"

    .line 1270
    .line 1271
    filled-new-array {v6, v8}, [Ljava/lang/Object;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v6

    .line 1275
    invoke-static {v4, v1, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v22

    .line 1279
    const-string v23, "fight_calculate_info"

    .line 1280
    .line 1281
    const-string v25, "drop_info"

    .line 1282
    .line 1283
    const/4 v1, 0x0

    .line 1284
    new-array v6, v1, [Ljava/lang/Object;

    .line 1285
    .line 1286
    invoke-static {v9, v15, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v6

    .line 1290
    new-array v8, v1, [Ljava/lang/Object;

    .line 1291
    .line 1292
    invoke-static {v9, v6, v8}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v26

    .line 1296
    const-string v27, "add_list"

    .line 1297
    .line 1298
    new-instance v28, Ljava/util/ArrayList;

    .line 1299
    .line 1300
    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 1301
    .line 1302
    .line 1303
    const-string v29, "fight_type"

    .line 1304
    .line 1305
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v30

    .line 1309
    filled-new-array/range {v21 .. v30}, [Ljava/lang/Object;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v1

    .line 1313
    const-string v6, "success"

    .line 1314
    .line 1315
    invoke-static {v6, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v0

    .line 1319
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->c1()Ljava/util/LinkedHashMap;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v1

    .line 1323
    const-string v6, "fight_result"

    .line 1324
    .line 1325
    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    .line 1327
    .line 1328
    const/4 v8, 0x0

    .line 1329
    new-array v8, v8, [Ljava/lang/Object;

    .line 1330
    .line 1331
    invoke-static {v6, v0, v8}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v0

    .line 1335
    invoke-interface {v1, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    .line 1337
    .line 1338
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v0

    .line 1342
    move-object/from16 v3, v20

    .line 1343
    .line 1344
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    .line 1346
    .line 1347
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v0

    .line 1351
    move-object/from16 v3, v19

    .line 1352
    .line 1353
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    .line 1355
    .line 1356
    invoke-static {v4, v14, v2}, Lcom/sgscq/vpn/handler/d1;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v0

    .line 1360
    if-nez v7, :cond_15

    .line 1361
    .line 1362
    const/4 v2, 0x0

    .line 1363
    goto :goto_f

    .line 1364
    :cond_15
    invoke-virtual {v7, v0}, Lcom/sgscq/vpn/p7;->g(Ljava/lang/String;)Lcom/sgscq/vpn/v5;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v2

    .line 1368
    :goto_f
    if-eqz v2, :cond_1e

    .line 1369
    .line 1370
    invoke-virtual {v1, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v3

    .line 1374
    check-cast v3, Ljava/util/Map;

    .line 1375
    .line 1376
    invoke-virtual {v7, v0}, Lcom/sgscq/vpn/p7;->v(Ljava/lang/String;)I

    .line 1377
    .line 1378
    .line 1379
    move-result v0

    .line 1380
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/v5;->m(I)Ljava/util/LinkedHashMap;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v0

    .line 1384
    const-string v2, "player_info"

    .line 1385
    .line 1386
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    .line 1388
    .line 1389
    goto/16 :goto_13

    .line 1390
    .line 1391
    :cond_16
    const-string v0, ".worshipEntry"

    .line 1392
    .line 1393
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1394
    .line 1395
    .line 1396
    move-result v0

    .line 1397
    if-eqz v0, :cond_17

    .line 1398
    .line 1399
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->t()Ljava/util/LinkedHashMap;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v0

    .line 1403
    goto :goto_11

    .line 1404
    :cond_17
    const-string v0, ".worship"

    .line 1405
    .line 1406
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1407
    .line 1408
    .line 1409
    move-result v0

    .line 1410
    if-eqz v0, :cond_18

    .line 1411
    .line 1412
    invoke-static {v12, v14, v2}, Lcom/sgscq/vpn/handler/d1;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v0

    .line 1416
    invoke-static {v4, v0, v2}, Lcom/sgscq/vpn/handler/d1;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v0

    .line 1420
    const-string v1, "ladder_war_worship_player_id"

    .line 1421
    .line 1422
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    .line 1424
    .line 1425
    const/4 v0, 0x1

    .line 1426
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v1

    .line 1430
    const-string v2, "ladder_war_worship_status"

    .line 1431
    .line 1432
    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    .line 1434
    .line 1435
    const-string v1, "ladder_war_worship_times"

    .line 1436
    .line 1437
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v2

    .line 1441
    invoke-static {v2}, Lcom/sgscq/vpn/handler/d1;->Q0(Ljava/lang/Object;)I

    .line 1442
    .line 1443
    .line 1444
    move-result v2

    .line 1445
    add-int/2addr v2, v0

    .line 1446
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v0

    .line 1450
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    .line 1452
    .line 1453
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->t()Ljava/util/LinkedHashMap;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v0

    .line 1457
    :goto_10
    move-object v1, v0

    .line 1458
    goto/16 :goto_13

    .line 1459
    .line 1460
    :cond_18
    const-string v0, ".rewardList"

    .line 1461
    .line 1462
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1463
    .line 1464
    .line 1465
    move-result v0

    .line 1466
    if-eqz v0, :cond_19

    .line 1467
    .line 1468
    invoke-static {v5}, Lcom/sgscq/vpn/handler/d1;->r(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v0

    .line 1472
    :goto_11
    move-object v1, v0

    .line 1473
    goto/16 :goto_e

    .line 1474
    .line 1475
    :cond_19
    const-string v0, ".buyReward"

    .line 1476
    .line 1477
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1478
    .line 1479
    .line 1480
    move-result v0

    .line 1481
    const-string v3, "ladder_war_selected_reward_pk_id"

    .line 1482
    .line 1483
    if-eqz v0, :cond_1a

    .line 1484
    .line 1485
    move-object/from16 v0, v17

    .line 1486
    .line 1487
    move-object/from16 v4, v61

    .line 1488
    .line 1489
    invoke-static {v0, v4, v2}, Lcom/sgscq/vpn/handler/d1;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v0

    .line 1493
    const-string v1, "ladder_war_buy_reward_pk_id"

    .line 1494
    .line 1495
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    .line 1497
    .line 1498
    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    .line 1500
    .line 1501
    invoke-static {v5}, Lcom/sgscq/vpn/handler/d1;->r(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v0

    .line 1505
    goto :goto_10

    .line 1506
    :cond_1a
    move-object/from16 v0, v17

    .line 1507
    .line 1508
    move-object/from16 v4, v61

    .line 1509
    .line 1510
    const-string v6, ".hangReward"

    .line 1511
    .line 1512
    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1513
    .line 1514
    .line 1515
    move-result v1

    .line 1516
    if-eqz v1, :cond_1f

    .line 1517
    .line 1518
    invoke-static {v0, v4, v2}, Lcom/sgscq/vpn/handler/d1;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v0

    .line 1522
    const-string v1, "pk_ids"

    .line 1523
    .line 1524
    invoke-static {v1, v0, v2}, Lcom/sgscq/vpn/handler/d1;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1525
    .line 1526
    .line 1527
    move-result-object v0

    .line 1528
    invoke-static {v0}, Lcom/sgscq/vpn/handler/d1;->B0(Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1529
    .line 1530
    .line 1531
    move-result-object v0

    .line 1532
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1533
    .line 1534
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1535
    .line 1536
    .line 1537
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v2

    .line 1541
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1542
    .line 1543
    .line 1544
    move-result v4

    .line 1545
    if-eqz v4, :cond_1c

    .line 1546
    .line 1547
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v4

    .line 1551
    check-cast v4, Ljava/lang/String;

    .line 1552
    .line 1553
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 1554
    .line 1555
    .line 1556
    move-result v6

    .line 1557
    if-lez v6, :cond_1b

    .line 1558
    .line 1559
    const/16 v6, 0x2c

    .line 1560
    .line 1561
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1562
    .line 1563
    .line 1564
    :cond_1b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    .line 1566
    .line 1567
    goto :goto_12

    .line 1568
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1569
    .line 1570
    .line 1571
    move-result-object v1

    .line 1572
    const-string v2, "ladder_war_hang_reward_pk_ids"

    .line 1573
    .line 1574
    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    .line 1576
    .line 1577
    const-string v2, "ladder_war_used_reward_pk_ids"

    .line 1578
    .line 1579
    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    .line 1581
    .line 1582
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1583
    .line 1584
    .line 1585
    move-result v1

    .line 1586
    if-nez v1, :cond_1d

    .line 1587
    .line 1588
    const/4 v1, 0x0

    .line 1589
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v0

    .line 1593
    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    .line 1595
    .line 1596
    :cond_1d
    invoke-static {v5}, Lcom/sgscq/vpn/handler/d1;->r(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v0

    .line 1600
    goto/16 :goto_10

    .line 1601
    .line 1602
    :cond_1e
    :goto_13
    move-object/from16 v3, v40

    .line 1603
    .line 1604
    iget-object v0, v3, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1605
    .line 1606
    move-object/from16 v2, v18

    .line 1607
    .line 1608
    invoke-virtual {v0, v2, v5}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 1609
    .line 1610
    .line 1611
    goto :goto_14

    .line 1612
    :cond_1f
    move/from16 v0, v16

    .line 1613
    .line 1614
    move-object/from16 v2, v18

    .line 1615
    .line 1616
    move-object/from16 v3, v40

    .line 1617
    .line 1618
    invoke-static {v5, v0}, Lcom/sgscq/vpn/handler/d1;->i(Ljava/util/Map;Z)Ljava/util/LinkedHashMap;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v0

    .line 1622
    move-object v1, v0

    .line 1623
    :goto_14
    move-object/from16 v0, v39

    .line 1624
    .line 1625
    :goto_15
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    .line 1627
    .line 1628
    move-result-object v4

    .line 1629
    instance-of v4, v4, Ljava/util/Map;

    .line 1630
    .line 1631
    if-eqz v4, :cond_20

    .line 1632
    .line 1633
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    .line 1635
    .line 1636
    move-result-object v0

    .line 1637
    check-cast v0, Ljava/util/Map;

    .line 1638
    .line 1639
    goto :goto_16

    .line 1640
    :cond_20
    move-object v0, v5

    .line 1641
    :goto_16
    move-object/from16 v4, v38

    .line 1642
    .line 1643
    invoke-interface {v1, v4, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v4

    .line 1647
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1648
    .line 1649
    .line 1650
    move-result-object v4

    .line 1651
    const-string v6, ","

    .line 1652
    .line 1653
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v4

    .line 1657
    new-instance v6, Ljava/util/ArrayList;

    .line 1658
    .line 1659
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1660
    .line 1661
    .line 1662
    array-length v7, v4

    .line 1663
    const/4 v8, 0x0

    .line 1664
    :goto_17
    if-ge v8, v7, :cond_22

    .line 1665
    .line 1666
    aget-object v9, v4, v8

    .line 1667
    .line 1668
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v9

    .line 1672
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 1673
    .line 1674
    .line 1675
    move-result v10

    .line 1676
    if-nez v10, :cond_21

    .line 1677
    .line 1678
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1679
    .line 1680
    .line 1681
    :cond_21
    add-int/lit8 v8, v8, 0x1

    .line 1682
    .line 1683
    goto :goto_17

    .line 1684
    :cond_22
    const/4 v4, 0x0

    .line 1685
    new-array v4, v4, [Ljava/lang/String;

    .line 1686
    .line 1687
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1688
    .line 1689
    .line 1690
    move-result-object v4

    .line 1691
    check-cast v4, [Ljava/lang/String;

    .line 1692
    .line 1693
    move-object/from16 v6, p0

    .line 1694
    .line 1695
    invoke-virtual {v6, v2, v0, v5, v4}, Lcom/sgscq/vpn/handler/d1;->h(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1696
    .line 1697
    .line 1698
    move-result-object v0

    .line 1699
    const-string v2, "cmn"

    .line 1700
    .line 1701
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1702
    .line 1703
    .line 1704
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v0

    .line 1708
    invoke-virtual {v3, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 1709
    .line 1710
    .line 1711
    move-result-object v0

    .line 1712
    return-object v0
.end method

.method public static S0(Ljava/lang/Object;)I
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private T(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 27

    .line 1
    const-string v0, "meeting.meeting"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    move-object/from16 v0, p0

    .line 14
    .line 15
    iget-object v1, v0, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lcom/sgscq/vpn/handler/k0;

    .line 18
    .line 19
    move-object/from16 v2, p2

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    iget-object v2, v1, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 26
    .line 27
    invoke-virtual {v2, v9}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    :cond_1
    move-object v11, v2

    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-static {v11, v2, v2}, Lcom/sgscq/vpn/handler/m;->o(Ljava/util/Map;II)Lcom/sgscq/vpn/handler/j;

    .line 41
    .line 42
    .line 43
    move-result-object v12

    .line 44
    iget-object v2, v1, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 45
    .line 46
    invoke-virtual {v2, v9, v11}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, v12, Lcom/sgscq/vpn/handler/j;->c:Ljava/lang/Object;

    .line 50
    .line 51
    move-object/from16 v26, v2

    .line 52
    .line 53
    check-cast v26, Ljava/util/List;

    .line 54
    .line 55
    const/4 v10, 0x0

    .line 56
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v13, "code"

    .line 61
    .line 62
    const-string v15, "result"

    .line 63
    .line 64
    sget-object v16, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 65
    .line 66
    const-string v17, "msg"

    .line 67
    .line 68
    const-string v18, "success"

    .line 69
    .line 70
    const-string v19, "error_code"

    .line 71
    .line 72
    const-string v21, "meeting_info"

    .line 73
    .line 74
    const-string v23, "meeting_list"

    .line 75
    .line 76
    const-string v25, "list"

    .line 77
    .line 78
    move-object v14, v2

    .line 79
    move-object/from16 v20, v2

    .line 80
    .line 81
    move-object/from16 v22, v26

    .line 82
    .line 83
    move-object/from16 v24, v26

    .line 84
    .line 85
    filled-new-array/range {v13 .. v26}, [Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    const-string v4, "ret"

    .line 90
    .line 91
    invoke-static {v4, v2, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 92
    .line 93
    .line 94
    move-result-object v13

    .line 95
    iget-boolean v2, v12, Lcom/sgscq/vpn/handler/j;->b:Z

    .line 96
    .line 97
    if-eqz v2, :cond_7

    .line 98
    .line 99
    iget-object v2, v12, Lcom/sgscq/vpn/handler/j;->d:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v2, Ljava/util/Set;

    .line 102
    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_2

    .line 117
    .line 118
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Ljava/lang/CharSequence;

    .line 123
    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_2

    .line 132
    .line 133
    const-string v4, ","

    .line 134
    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    const-string v3, "cmn_modules"

    .line 144
    .line 145
    invoke-interface {v13, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    iget-object v2, v1, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 149
    .line 150
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 151
    .line 152
    .line 153
    move-result-wide v3

    .line 154
    long-to-int v3, v3

    .line 155
    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    int-to-long v4, v4

    .line 160
    invoke-virtual {v1, v4, v5, v11}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 161
    .line 162
    .line 163
    move-result-wide v7

    .line 164
    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    const-string v5, "user_gold"

    .line 169
    .line 170
    invoke-virtual {v1, v4, v5, v11}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    const-string v6, "user_energy"

    .line 179
    .line 180
    invoke-virtual {v1, v5, v6, v11}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    const-string v14, "user_power"

    .line 189
    .line 190
    invoke-virtual {v1, v6, v14, v11}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    move v14, v10

    .line 195
    move-object v10, v11

    .line 196
    invoke-virtual/range {v2 .. v10}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 201
    .line 202
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 203
    .line 204
    .line 205
    iget-object v4, v12, Lcom/sgscq/vpn/handler/j;->d:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v4, Ljava/util/Set;

    .line 208
    .line 209
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    if-eqz v5, :cond_6

    .line 218
    .line 219
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    check-cast v5, Ljava/lang/String;

    .line 224
    .line 225
    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    instance-of v7, v6, Ljava/util/Map;

    .line 230
    .line 231
    const-string v8, "add"

    .line 232
    .line 233
    const-string v9, "upd"

    .line 234
    .line 235
    const-string v10, "del"

    .line 236
    .line 237
    if-nez v7, :cond_3

    .line 238
    .line 239
    new-instance v6, Ljava/util/ArrayList;

    .line 240
    .line 241
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .line 243
    .line 244
    new-instance v7, Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .line 248
    .line 249
    new-instance v15, Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .line 253
    .line 254
    filled-new-array {v9, v7, v8, v15}, [Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    invoke-static {v10, v6, v7}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    goto :goto_4

    .line 263
    :cond_3
    check-cast v6, Ljava/util/Map;

    .line 264
    .line 265
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    instance-of v7, v7, Ljava/util/List;

    .line 270
    .line 271
    if-eqz v7, :cond_4

    .line 272
    .line 273
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    goto :goto_2

    .line 278
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .line 282
    .line 283
    :goto_2
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v15

    .line 287
    instance-of v15, v15, Ljava/util/List;

    .line 288
    .line 289
    if-eqz v15, :cond_5

    .line 290
    .line 291
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    goto :goto_3

    .line 296
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    .line 297
    .line 298
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .line 300
    .line 301
    :goto_3
    new-instance v15, Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .line 305
    .line 306
    filled-new-array {v9, v6, v8, v15}, [Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    invoke-static {v10, v7, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    :goto_4
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    goto :goto_1

    .line 318
    :cond_6
    iget-object v4, v12, Lcom/sgscq/vpn/handler/j;->d:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v4, Ljava/util/Set;

    .line 321
    .line 322
    new-array v5, v14, [Ljava/lang/String;

    .line 323
    .line 324
    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    check-cast v4, [Ljava/lang/String;

    .line 329
    .line 330
    iget-object v5, v1, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 331
    .line 332
    invoke-virtual {v5, v3, v2, v4}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    const-string v3, "cmn"

    .line 341
    .line 342
    invoke-interface {v13, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    :cond_7
    invoke-static {v13}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    return-object v1
.end method

.method private U(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)[B
    .locals 12

    const-string v0, "obtain.shtm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "{\"ret\":0,\"result\":\"0\",\"resultCode\":0,\"code\":0,\"msg\":\"success\",\"resultMsg\":\"success\",\"guid\":\""

    const-string v2, "unknown"

    const-string v3, "imei"

    const-string v4, "/index.php\",\"msgpack\":\"http://10.0.0.1:"

    const-string v5, "SGSCQ_SRV"

    const/16 v6, 0xc8

    iget-object v7, p0, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {p3, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/sgscq/vpn/handler/d1;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "[Obtain] guid="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " deviceId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v7, Lcom/sgscq/vpn/handler/k0;

    const-string p1, "\",\"resource_cfg\":{},\"url\":\"http://10.0.0.1:"

    .line 2
    invoke-static {v1, p2, p1}, La/b0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 3
    iget p2, v7, Lcom/sgscq/vpn/handler/k0;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/index.php\",\"launch\":\"http://10.0.0.1:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v7, Lcom/sgscq/vpn/handler/k0;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "/bfrd/msgpack\",\"disabled\":\"false\",\"content\":\""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "<h2>\u4e09\u56fd\u6740\u4f20\u5947\u00b7\u5355\u673a\u7248\u7528\u6237\u534f\u8bae</h2><p><b>\u4e00\u3001\u670d\u52a1\u8bf4\u660e</b></p><p>\u672c\u5e94\u7528\u4e3a\u4e09\u56fd\u6740\u4f20\u5947\u7684\u5355\u673a\u7248\u672c\uff0c\u63d0\u4f9b\u79bb\u7ebf\u6e38\u620f\u4f53\u9a8c\u3002\u6240\u6709\u6e38\u620f\u6570\u636e\u5b58\u50a8\u5728\u672c\u5730\u8bbe\u5907\u4e0a\u3002</p><p><b>\u4e8c\u3001\u7528\u6237\u987b\u77e5</b></p><p>1. \u672c\u5e94\u7528\u4ec5\u4f9b\u4e2a\u4eba\u5b66\u4e60\u548c\u7814\u7a76\u4f7f\u7528\u3002</p><p>2. \u6e38\u620f\u6570\u636e\u4fdd\u5b58\u5728\u672c\u5730\uff0c\u6e05\u9664\u5e94\u7528\u6570\u636e\u5c06\u5bfc\u81f4\u5b58\u6863\u4e22\u5931\u3002</p><p>3. \u672c\u5e94\u7528\u4e0d\u6536\u96c6\u4efb\u4f55\u4e2a\u4eba\u4fe1\u606f\u3002</p><p><b>\u4e09\u3001\u514d\u8d23\u58f0\u660e</b></p><p>\u672c\u5e94\u7528\u4e3a\u7b2c\u4e09\u65b9\u5f00\u53d1\u7684\u5355\u673a\u7248\u672c\uff0c\u4e0e\u5b98\u65b9\u670d\u52a1\u5668\u65e0\u5173\u3002\u4f7f\u7528\u672c\u5e94\u7528\u4ea7\u751f\u7684\u4efb\u4f55\u95ee\u9898\uff0c\u5f00\u53d1\u8005\u4e0d\u627f\u62c5\u8d23\u4efb\u3002</p>"

    invoke-static {p3}, Lcom/sgscq/vpn/p5;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"user_agreement\":\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/sgscq/vpn/p5;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"text\":\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/sgscq/vpn/p5;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\",\"user_agreement_url\":\"http://10.0.0.1:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "/agreement/user\",\"privacy_url\":\"http://10.0.0.1:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "/agreement/privacy\",\"agreement_url\":\"http://10.0.0.1:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/agreement/user\"}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1, v6}, Lcom/sgscq/vpn/handler/k0;->f(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "bfrd.uris"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    const-string p1, "uris"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_5

    :cond_1
    const-string p1, "msgpack"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    check-cast v7, Lcom/sgscq/vpn/handler/k0;

    const-string p1, "{\"ret\":0,\"result\":\"0\"}"

    invoke-virtual {v7, p1, v6}, Lcom/sgscq/vpn/handler/k0;->f(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "register.shtm"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "\",\"user_id\":\""

    const-string v6, "\",\"uid\":\""

    const-string v8, "\",\"sndaId\":\""

    const-string v9, "account"

    const-string v10, "username"

    const-string v11, ""

    if-nez p1, :cond_b

    const-string p1, "register/username.json"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "register/quick.json"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_4

    :cond_3
    const-string p1, "existence"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    invoke-interface {p3, v10, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "[Existence] username="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v7, Lcom/sgscq/vpn/handler/k0;

    const-string p1, "{\"ret\":0,\"result\":\"0\",\"code\":0,\"msg\":\"success\",\"exist\":false}"

    const/16 p2, 0xc8

    invoke-virtual {v7, p1, p2}, Lcom/sgscq/vpn/handler/k0;->f(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1

    :cond_4
    const-string p1, "login.shtm"

    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    const-string p1, "RequestCode"

    .line 9
    invoke-interface {p3, p1, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "Account"

    invoke-interface {p3, p2, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    invoke-static {p2}, Lcom/sgscq/vpn/handler/d1;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_5
    const-string p3, "e8b7b60449fcba1cc1cc0002d1c0f584"

    :goto_0
    const-string v2, "[Login] guid="

    const-string v3, " requestCode="

    const-string v4, " account="

    .line 10
    invoke-static {v2, p3, v3, p1, v4}, Lc/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 11
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "204"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "/index.php\",\"ver\":\"1.0.0\"}"

    const-string v2, "\",\"guid\":\""

    const-string v3, "{\"ret\":0,\"result\":\"0\",\"resultCode\":0,\"code\":0,\"msg\":\"success\",\"resultMsg\":\""

    if-eqz p1, :cond_6

    const-string p1, "GUID="

    const-string v0, "^$^"

    .line 12
    invoke-static {p1, p3, v0}, Lcom/sgscq/vpn/handler/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    check-cast v7, Lcom/sgscq/vpn/handler/k0;

    .line 14
    invoke-static {v3, p1, v2, p3, v8}, Lc/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 15
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\",\"loginType\":0,\"url\":\"http://10.0.0.1:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v7, Lcom/sgscq/vpn/handler/k0;->e:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "sess_"

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "key_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x10

    invoke-virtual {p3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SessionID="

    const-string v5, "^$^SndaID="

    const-string v9, "^$^SESSIONKEY="

    .line 16
    invoke-static {v4, p1, v5, p3, v9}, Lc/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 17
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "^$^RetValue=0^$^IsNeedFullInfo=0^$^AuthenState=0^$^DescMsg=success^$^"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v7, Lcom/sgscq/vpn/handler/k0;

    .line 18
    invoke-static {v3, v1, v2, p3, v8}, Lc/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 19
    invoke-static {v1, p3, v6, p3, v0}, Lc/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\",\"account_uid\":\""

    const-string v2, "\",\"loginType\":1,\"token\":\"tok_"

    invoke-static {v1, p3, v0, p3, v2}, Lc/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\",\"session\":\""

    const-string v2, "\",\"url\":\"http://10.0.0.1:"

    invoke-static {v1, p3, v0, p1, v2}, Lc/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget p1, v7, Lcom/sgscq/vpn/handler/k0;->e:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const/16 p2, 0xc8

    invoke-virtual {v7, p1, p2}, Lcom/sgscq/vpn/handler/k0;->f(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1

    :cond_7
    const-string p1, "/agreement/"

    .line 21
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "HTTP/1.1 200 OK\r\nContent-Type: text/html; charset=utf-8\r\nContent-Length: "

    const-string p3, "privacy"

    .line 22
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "\u9690\u79c1\u653f\u7b56"

    goto :goto_2

    :cond_8
    const-string p2, "\u7528\u6237\u534f\u8bae"

    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "<!DOCTYPE html><html><head><meta charset=\'UTF-8\'><meta name=\'viewport\' content=\'width=device-width,initial-scale=1.0\'><title>"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</title><style>body{font-family:sans-serif;padding:16px;line-height:1.6;color:#333;}h1{font-size:18px;color:#333;border-bottom:1px solid #eee;padding-bottom:8px;}h2{font-size:16px;color:#555;margin-top:20px;}p{font-size:14px;margin:10px 0;}</style></head><body><h1>\u4e09\u56fd\u6740\u4f20\u5947\u00b7\u5355\u673a\u7248 "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</h1><h2>\u4e00\u3001\u670d\u52a1\u8bf4\u660e</h2><p>\u672c\u5e94\u7528\u4e3a\u4e09\u56fd\u6740\u4f20\u5947\u7684\u5355\u673a\u7248\u672c\uff0c\u63d0\u4f9b\u79bb\u7ebf\u6e38\u620f\u4f53\u9a8c\u3002\u6240\u6709\u6e38\u620f\u6570\u636e\u5b58\u50a8\u5728\u672c\u5730\u8bbe\u5907\u4e0a\u3002</p><h2>\u4e8c\u3001\u7528\u6237\u987b\u77e5</h2><p>1. \u672c\u5e94\u7528\u4ec5\u4f9b\u4e2a\u4eba\u5b66\u4e60\u548c\u7814\u7a76\u4f7f\u7528\u3002</p><p>2. \u6e38\u620f\u6570\u636e\u4fdd\u5b58\u5728\u672c\u5730\uff0c\u6e05\u9664\u5e94\u7528\u6570\u636e\u5c06\u5bfc\u81f4\u5b58\u6863\u4e22\u5931\u3002</p><p>3. \u672c\u5e94\u7528\u4e0d\u6536\u96c6\u4efb\u4f55\u4e2a\u4eba\u4fe1\u606f\u3002</p><h2>\u4e09\u3001\u514d\u8d23\u58f0\u660e</h2><p>\u672c\u5e94\u7528\u4e3a\u7b2c\u4e09\u65b9\u5f00\u53d1\u7684\u5355\u673a\u7248\u672c\uff0c\u4e0e\u5b98\u65b9\u670d\u52a1\u5668\u65e0\u5173\u3002\u4f7f\u7528\u672c\u5e94\u7528\u4ea7\u751f\u7684\u4efb\u4f55\u95ee\u9898\uff0c\u5f00\u53d1\u8005\u4e0d\u627f\u62c5\u8d23\u4efb\u3002</p><h2>\u56db\u3001\u8054\u7cfb\u65b9\u5f0f</h2><p>\u5982\u6709\u95ee\u9898\u6216\u5efa\u8bae\uff0c\u8bf7\u901a\u8fc7\u5e94\u7528\u5185\u7684\u53cd\u9988\u6e20\u9053\u8054\u7cfb\u6211\u4eec\u3002</p></body></html>"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :try_start_0
    const-string p3, "UTF-8"

    .line 23
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\r\n\r\n"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "US-ASCII"

    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length p3, p1

    array-length v0, p2

    add-int/2addr p3, v0

    new-array p3, p3, [B

    array-length v0, p1

    invoke-static {p1, v1, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length v0, p2

    invoke-static {p2, v1, p3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string p1, "HTTP/1.1 500 Error\r\n\r\n"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    :goto_3
    return-object p3

    :cond_9
    const-string p1, "index.php"

    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p3, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "do"

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 25
    check-cast v7, Lcom/sgscq/vpn/handler/k0;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "{\"ret\":0,\"result\":\"0\",\"code\":0,\"msg\":\"success\",\"is_launch\":true,\"launch\":\"http://10.0.0.1:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, v7, Lcom/sgscq/vpn/handler/k0;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v7, Lcom/sgscq/vpn/handler/k0;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/bfrd/msgpack\",\"disabled\":\"false\"}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xc8

    invoke-virtual {v7, p1, p2}, Lcom/sgscq/vpn/handler/k0;->f(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1

    :cond_a
    const/4 p1, 0x0

    return-object p1

    :cond_b
    :goto_4
    const-string p1, "guid"

    .line 26
    invoke-interface {p3, p1, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p3, v10, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {p3, v9, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "[Register] guid="

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " username="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string p1, "deviceId"

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p3, v3, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/sgscq/vpn/handler/d1;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_d
    check-cast v7, Lcom/sgscq/vpn/handler/k0;

    const-string p3, "\",\"username\":\""

    .line 27
    invoke-static {v1, p1, v8, p1, p3}, Lc/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 28
    invoke-static {p3, p2, v6, p1, v0}, Lc/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xc8

    invoke-virtual {v7, p1, p2}, Lcom/sgscq/vpn/handler/k0;->f(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1

    .line 30
    :cond_e
    :goto_5
    check-cast v7, Lcom/sgscq/vpn/handler/k0;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "{\"ret\":0,\"result\":\"0\",\"launch\":\"http://10.0.0.1:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, v7, Lcom/sgscq/vpn/handler/k0;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v7, Lcom/sgscq/vpn/handler/k0;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "/bfrd/msgpack\",\"passport\":\"http://10.0.0.1:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "/woa/passport\",\"hps\":\"http://10.0.0.1:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "/woa/hps\",\"reguser\":\"http://10.0.0.1:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/woa/reguser\",\"disabled\":\"false\"}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xc8

    invoke-virtual {v7, p1, p2}, Lcom/sgscq/vpn/handler/k0;->f(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method public static U0()Ljava/util/ArrayList;
    .locals 15

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "item_id"

    const-string v2, "600001"

    const-string v3, "item_num"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v5, "price"

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v7, "discount_price"

    const-string v9, "exchange_num"

    const/16 v4, 0x63

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "exchanged_num"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "currency_type"

    move-object v4, v14

    move-object v6, v8

    filled-new-array/range {v1 .. v14}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "pk_id"

    const-string v3, "1"

    invoke-static {v2, v3, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private V(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "api.php"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "index.php"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    check-cast p1, Lcom/sgscq/vpn/handler/k0;

    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->k()Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-static {p2}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public static V0(Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/LinkedHashMap;)V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "result"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p2, v0}, Lcom/sgscq/vpn/handler/d1;->A(Ljava/util/LinkedHashMap;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Lcom/sgscq/vpn/handler/d1;->r0(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/sgscq/vpn/handler/y0;->c(Ljava/util/List;Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sgscq/vpn/handler/j;->b(Ljava/util/Map;)V

    invoke-virtual {p0, v0, v1}, Lcom/sgscq/vpn/handler/j;->a(Ljava/util/Map;Ljava/util/AbstractCollection;)V

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "delta_data"

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "cmn_modules"

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private W(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 40

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/d1;->h0(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    return-object v3

    .line 13
    :cond_0
    move-object/from16 v2, p0

    .line 14
    .line 15
    iget-object v4, v2, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v4, Lcom/sgscq/vpn/handler/k0;

    .line 18
    .line 19
    invoke-virtual {v4, v1}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v12

    .line 23
    iget-object v5, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 24
    .line 25
    invoke-virtual {v5, v12}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

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
    move-object v13, v5

    .line 37
    const-string v5, "task.getList"

    .line 38
    .line 39
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    const-string v6, "task_list"

    .line 44
    .line 45
    const-string v7, "list"

    .line 46
    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->d1()Ljava/util/LinkedHashMap;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v13}, Lcom/sgscq/vpn/handler/d1;->E0(Ljava/util/Map;)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-static {v3, v1, v13}, Lcom/sgscq/vpn/handler/p;->a(ILjava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    iget-object v1, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 72
    .line 73
    invoke-virtual {v1, v12, v13}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 74
    .line 75
    .line 76
    move-object v2, v4

    .line 77
    goto/16 :goto_13

    .line 78
    .line 79
    :cond_2
    const-string v5, "task.multiRecieve"

    .line 80
    .line 81
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-static {v13}, Lcom/sgscq/vpn/handler/d1;->E0(Ljava/util/Map;)I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    invoke-static {v8, v5, v13}, Lcom/sgscq/vpn/handler/p;->a(ILjava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    const/4 v10, 0x4

    .line 98
    new-array v11, v10, [Ljava/lang/String;

    .line 99
    .line 100
    if-nez v1, :cond_3

    .line 101
    .line 102
    move-object v14, v3

    .line 103
    goto :goto_0

    .line 104
    :cond_3
    const-string v14, "task_pk_id"

    .line 105
    .line 106
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v14

    .line 110
    check-cast v14, Ljava/lang/String;

    .line 111
    .line 112
    :goto_0
    const/4 v15, 0x0

    .line 113
    aput-object v14, v11, v15

    .line 114
    .line 115
    const-string v14, "pk_id"

    .line 116
    .line 117
    if-nez v1, :cond_4

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    check-cast v3, Ljava/lang/String;

    .line 125
    .line 126
    :goto_1
    const/16 v16, 0x1

    .line 127
    .line 128
    aput-object v3, v11, v16

    .line 129
    .line 130
    if-nez v1, :cond_5

    .line 131
    .line 132
    const/4 v3, 0x0

    .line 133
    goto :goto_2

    .line 134
    :cond_5
    const-string v3, "task_id"

    .line 135
    .line 136
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v3, Ljava/lang/String;

    .line 141
    .line 142
    :goto_2
    const/16 v16, 0x2

    .line 143
    .line 144
    aput-object v3, v11, v16

    .line 145
    .line 146
    const-string v3, "id"

    .line 147
    .line 148
    if-nez v1, :cond_6

    .line 149
    .line 150
    const/4 v1, 0x0

    .line 151
    goto :goto_3

    .line 152
    :cond_6
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    check-cast v1, Ljava/lang/String;

    .line 157
    .line 158
    :goto_3
    const/16 v16, 0x3

    .line 159
    .line 160
    aput-object v1, v11, v16

    .line 161
    .line 162
    :goto_4
    const-string v1, ""

    .line 163
    .line 164
    if-ge v15, v10, :cond_8

    .line 165
    .line 166
    aget-object v10, v11, v15

    .line 167
    .line 168
    if-eqz v10, :cond_7

    .line 169
    .line 170
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 171
    .line 172
    .line 173
    move-result v16

    .line 174
    if-nez v16, :cond_7

    .line 175
    .line 176
    move-object/from16 p1, v1

    .line 177
    .line 178
    const-string v1, "null"

    .line 179
    .line 180
    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-nez v1, :cond_7

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_7
    add-int/lit8 v15, v15, 0x1

    .line 188
    .line 189
    const/4 v10, 0x4

    .line 190
    goto :goto_4

    .line 191
    :cond_8
    move-object/from16 p1, v1

    .line 192
    .line 193
    move-object/from16 v10, p1

    .line 194
    .line 195
    :goto_5
    new-instance v1, Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .line 199
    .line 200
    new-instance v11, Ljava/util/LinkedHashMap;

    .line 201
    .line 202
    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 203
    .line 204
    .line 205
    new-instance v15, Ljava/util/LinkedHashSet;

    .line 206
    .line 207
    invoke-direct {v15}, Ljava/util/LinkedHashSet;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 215
    .line 216
    .line 217
    move-result v16

    .line 218
    const-string v2, "Player"

    .line 219
    .line 220
    move-object/from16 v17, v12

    .line 221
    .line 222
    const-string v12, "GeneralSoul"

    .line 223
    .line 224
    if-eqz v16, :cond_15

    .line 225
    .line 226
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v16

    .line 230
    move-object/from16 p2, v9

    .line 231
    .line 232
    move-object/from16 v9, v16

    .line 233
    .line 234
    check-cast v9, Ljava/util/Map;

    .line 235
    .line 236
    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v16

    .line 240
    move-object/from16 v18, v4

    .line 241
    .line 242
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    if-nez v0, :cond_9

    .line 247
    .line 248
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v16

    .line 252
    if-nez v16, :cond_9

    .line 253
    .line 254
    move-object/from16 v16, v10

    .line 255
    .line 256
    goto :goto_7

    .line 257
    :cond_9
    move-object/from16 v16, v10

    .line 258
    .line 259
    const-string v10, "status"

    .line 260
    .line 261
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v9

    .line 265
    const/4 v10, 0x0

    .line 266
    invoke-static {v9, v10}, Lcom/sgscq/vpn/handler/d1;->b0(Ljava/lang/Object;I)I

    .line 267
    .line 268
    .line 269
    move-result v9

    .line 270
    const/4 v10, 0x1

    .line 271
    if-eq v9, v10, :cond_a

    .line 272
    .line 273
    goto :goto_7

    .line 274
    :cond_a
    sget-object v9, Lcom/sgscq/vpn/handler/p;->b:Ljava/util/Map;

    .line 275
    .line 276
    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    check-cast v9, Lcom/sgscq/vpn/handler/o;

    .line 281
    .line 282
    if-nez v9, :cond_b

    .line 283
    .line 284
    :goto_7
    move-object/from16 v2, p0

    .line 285
    .line 286
    move-object/from16 v9, p2

    .line 287
    .line 288
    move-object/from16 v10, v16

    .line 289
    .line 290
    move-object/from16 v12, v17

    .line 291
    .line 292
    move-object/from16 v4, v18

    .line 293
    .line 294
    goto :goto_6

    .line 295
    :cond_b
    invoke-virtual {v9, v8}, Lcom/sgscq/vpn/handler/o;->a(I)Ljava/util/ArrayList;

    .line 296
    .line 297
    .line 298
    move-result-object v9

    .line 299
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 300
    .line 301
    .line 302
    move-result-object v9

    .line 303
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 304
    .line 305
    .line 306
    move-result v10

    .line 307
    if-eqz v10, :cond_10

    .line 308
    .line 309
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v10

    .line 313
    check-cast v10, Lcom/sgscq/vpn/handler/n;

    .line 314
    .line 315
    move-object/from16 v19, v6

    .line 316
    .line 317
    move-object/from16 v20, v7

    .line 318
    .line 319
    invoke-virtual {v10, v8}, Lcom/sgscq/vpn/handler/n;->a(I)J

    .line 320
    .line 321
    .line 322
    move-result-wide v6

    .line 323
    move-object/from16 v21, v9

    .line 324
    .line 325
    iget-boolean v9, v10, Lcom/sgscq/vpn/handler/n;->e:Z

    .line 326
    .line 327
    move/from16 v22, v0

    .line 328
    .line 329
    const-string v0, "is_new"

    .line 330
    .line 331
    move/from16 v23, v8

    .line 332
    .line 333
    const-string v8, "type"

    .line 334
    .line 335
    move-object/from16 v24, v4

    .line 336
    .line 337
    const-string v4, "item_type"

    .line 338
    .line 339
    move-object/from16 v32, v5

    .line 340
    .line 341
    const-string v5, "item_num"

    .line 342
    .line 343
    move-object/from16 v33, v11

    .line 344
    .line 345
    const-string v11, "num"

    .line 346
    .line 347
    move-object/from16 v34, v14

    .line 348
    .line 349
    const-string v14, "item_id"

    .line 350
    .line 351
    move-object/from16 v35, v12

    .line 352
    .line 353
    iget v12, v10, Lcom/sgscq/vpn/handler/n;->b:I

    .line 354
    .line 355
    move-object/from16 v36, v1

    .line 356
    .line 357
    iget v1, v10, Lcom/sgscq/vpn/handler/n;->c:I

    .line 358
    .line 359
    iget-object v10, v10, Lcom/sgscq/vpn/handler/n;->a:Ljava/lang/String;

    .line 360
    .line 361
    if-eqz v9, :cond_c

    .line 362
    .line 363
    invoke-static {v6, v7, v13}, Lcom/sgscq/vpn/p5;->b(JLjava/util/Map;)V

    .line 364
    .line 365
    .line 366
    invoke-interface {v15, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 370
    .line 371
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 372
    .line 373
    .line 374
    invoke-interface {v9, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    invoke-interface {v9, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 381
    .line 382
    .line 383
    move-result-object v10

    .line 384
    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 388
    .line 389
    .line 390
    move-result-object v6

    .line 391
    invoke-interface {v9, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-interface {v9, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    invoke-interface {v9, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 409
    .line 410
    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-object/from16 v0, v36

    .line 414
    .line 415
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-object/from16 v36, v13

    .line 419
    .line 420
    move-object/from16 v12, v33

    .line 421
    .line 422
    move-object/from16 v9, v34

    .line 423
    .line 424
    move-object/from16 v7, v35

    .line 425
    .line 426
    move-object v13, v0

    .line 427
    move-object/from16 v35, v2

    .line 428
    .line 429
    goto/16 :goto_b

    .line 430
    .line 431
    :cond_c
    move-object/from16 v9, v36

    .line 432
    .line 433
    const-wide/32 v25, 0x7fffffff

    .line 434
    .line 435
    .line 436
    cmp-long v25, v6, v25

    .line 437
    .line 438
    if-lez v25, :cond_d

    .line 439
    .line 440
    const v6, 0x7fffffff

    .line 441
    .line 442
    .line 443
    goto :goto_9

    .line 444
    :cond_d
    long-to-int v6, v6

    .line 445
    :goto_9
    invoke-static {v6, v10, v13}, Lcom/sgscq/vpn/w1;->k(ILjava/lang/String;Ljava/util/Map;)V

    .line 446
    .line 447
    .line 448
    move-object/from16 v7, v35

    .line 449
    .line 450
    invoke-static {v7, v13}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 451
    .line 452
    .line 453
    move-result-object v25

    .line 454
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 455
    .line 456
    .line 457
    move-result-object v25

    .line 458
    :goto_a
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    .line 459
    .line 460
    .line 461
    move-result v26

    .line 462
    if-eqz v26, :cond_f

    .line 463
    .line 464
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v26

    .line 468
    move-object/from16 v35, v2

    .line 469
    .line 470
    move-object/from16 v2, v26

    .line 471
    .line 472
    check-cast v2, Ljava/util/Map;

    .line 473
    .line 474
    move-object/from16 v36, v13

    .line 475
    .line 476
    const-string v13, "general_id"

    .line 477
    .line 478
    invoke-static {v2, v13, v10}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 479
    .line 480
    .line 481
    move-result v26

    .line 482
    if-eqz v26, :cond_e

    .line 483
    .line 484
    move-object/from16 v37, v9

    .line 485
    .line 486
    move-object/from16 v9, v34

    .line 487
    .line 488
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v25

    .line 492
    move-object/from16 v34, v0

    .line 493
    .line 494
    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    move-object/from16 v38, v8

    .line 499
    .line 500
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 501
    .line 502
    invoke-direct {v8, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 503
    .line 504
    .line 505
    move/from16 v39, v12

    .line 506
    .line 507
    move-object/from16 v12, v33

    .line 508
    .line 509
    invoke-interface {v12, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    invoke-interface {v15, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 516
    .line 517
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 518
    .line 519
    .line 520
    invoke-interface {v2, v9, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v8

    .line 524
    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    invoke-interface {v0, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    invoke-interface {v0, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-object/from16 v25, v0

    .line 534
    .line 535
    move-object/from16 v26, v13

    .line 536
    .line 537
    move-object/from16 v27, v10

    .line 538
    .line 539
    move/from16 v28, v6

    .line 540
    .line 541
    move-object/from16 v29, v11

    .line 542
    .line 543
    move/from16 v30, v6

    .line 544
    .line 545
    move-object/from16 v31, v5

    .line 546
    .line 547
    invoke-static/range {v25 .. v31}, Lc/a;->z(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 548
    .line 549
    .line 550
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    move-object/from16 v8, v38

    .line 562
    .line 563
    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    const/4 v1, 0x1

    .line 567
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 568
    .line 569
    .line 570
    move-result-object v1

    .line 571
    const-string v4, "card_type"

    .line 572
    .line 573
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 581
    .line 582
    move-object/from16 v2, v34

    .line 583
    .line 584
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-object/from16 v13, v37

    .line 588
    .line 589
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    :goto_b
    move-object v14, v9

    .line 593
    move-object v11, v12

    .line 594
    move-object v1, v13

    .line 595
    move-object/from16 v6, v19

    .line 596
    .line 597
    move-object/from16 v9, v21

    .line 598
    .line 599
    move/from16 v0, v22

    .line 600
    .line 601
    move/from16 v8, v23

    .line 602
    .line 603
    move-object/from16 v4, v24

    .line 604
    .line 605
    move-object/from16 v5, v32

    .line 606
    .line 607
    move-object/from16 v2, v35

    .line 608
    .line 609
    move-object/from16 v13, v36

    .line 610
    .line 611
    move-object v12, v7

    .line 612
    move-object/from16 v7, v20

    .line 613
    .line 614
    goto/16 :goto_8

    .line 615
    .line 616
    :cond_e
    move-object v13, v9

    .line 617
    move/from16 v39, v12

    .line 618
    .line 619
    move-object/from16 v2, v35

    .line 620
    .line 621
    move-object/from16 v13, v36

    .line 622
    .line 623
    goto/16 :goto_a

    .line 624
    .line 625
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 626
    .line 627
    const-string v1, "missing GeneralSoul "

    .line 628
    .line 629
    invoke-static {v1, v10}, Lc/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    throw v0

    .line 637
    :cond_10
    move/from16 v22, v0

    .line 638
    .line 639
    move-object/from16 v35, v2

    .line 640
    .line 641
    move-object/from16 v24, v4

    .line 642
    .line 643
    move-object/from16 v19, v6

    .line 644
    .line 645
    move-object/from16 v20, v7

    .line 646
    .line 647
    move/from16 v23, v8

    .line 648
    .line 649
    move-object v7, v12

    .line 650
    move-object v0, v13

    .line 651
    move-object v9, v14

    .line 652
    move-object v13, v1

    .line 653
    move-object v1, v5

    .line 654
    move-object v12, v11

    .line 655
    invoke-static {v1, v0}, Lcom/sgscq/vpn/handler/p;->c(Ljava/lang/String;Ljava/util/Map;)V

    .line 656
    .line 657
    .line 658
    sget-object v2, Lcom/sgscq/vpn/handler/p;->b:Ljava/util/Map;

    .line 659
    .line 660
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v2

    .line 664
    check-cast v2, Lcom/sgscq/vpn/handler/o;

    .line 665
    .line 666
    if-eqz v2, :cond_12

    .line 667
    .line 668
    iget v5, v2, Lcom/sgscq/vpn/handler/o;->d:I

    .line 669
    .line 670
    move/from16 v6, v23

    .line 671
    .line 672
    if-lt v6, v5, :cond_13

    .line 673
    .line 674
    invoke-static {v0}, Lcom/sgscq/vpn/handler/p;->b(Ljava/util/Map;)Ljava/util/Set;

    .line 675
    .line 676
    .line 677
    move-result-object v5

    .line 678
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    move-result v5

    .line 682
    if-nez v5, :cond_13

    .line 683
    .line 684
    invoke-static {v0}, Lcom/sgscq/vpn/handler/p;->f(Ljava/util/Map;)Ljava/util/Map;

    .line 685
    .line 686
    .line 687
    move-result-object v5

    .line 688
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v5

    .line 692
    invoke-static {v5}, Lcom/sgscq/vpn/handler/p;->j(Ljava/lang/Object;)I

    .line 693
    .line 694
    .line 695
    move-result v5

    .line 696
    iget v2, v2, Lcom/sgscq/vpn/handler/o;->e:I

    .line 697
    .line 698
    if-ge v5, v2, :cond_11

    .line 699
    .line 700
    goto :goto_c

    .line 701
    :cond_11
    invoke-static {v0}, Lcom/sgscq/vpn/handler/p;->b(Ljava/util/Map;)Ljava/util/Set;

    .line 702
    .line 703
    .line 704
    move-result-object v2

    .line 705
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 706
    .line 707
    .line 708
    goto :goto_c

    .line 709
    :cond_12
    move/from16 v6, v23

    .line 710
    .line 711
    :cond_13
    :goto_c
    if-nez v22, :cond_14

    .line 712
    .line 713
    goto :goto_d

    .line 714
    :cond_14
    move-object/from16 v2, p0

    .line 715
    .line 716
    move-object v5, v1

    .line 717
    move v8, v6

    .line 718
    move-object v14, v9

    .line 719
    move-object v11, v12

    .line 720
    move-object v1, v13

    .line 721
    move-object/from16 v10, v16

    .line 722
    .line 723
    move-object/from16 v12, v17

    .line 724
    .line 725
    move-object/from16 v4, v18

    .line 726
    .line 727
    move-object/from16 v6, v19

    .line 728
    .line 729
    move-object/from16 v7, v20

    .line 730
    .line 731
    move-object/from16 v9, p2

    .line 732
    .line 733
    move-object v13, v0

    .line 734
    move/from16 v0, v22

    .line 735
    .line 736
    goto/16 :goto_6

    .line 737
    .line 738
    :cond_15
    move-object/from16 v35, v2

    .line 739
    .line 740
    move-object/from16 v18, v4

    .line 741
    .line 742
    move-object/from16 v19, v6

    .line 743
    .line 744
    move-object/from16 v20, v7

    .line 745
    .line 746
    move v6, v8

    .line 747
    move-object v7, v12

    .line 748
    move-object v0, v13

    .line 749
    move-object v13, v1

    .line 750
    move-object v1, v5

    .line 751
    move-object v12, v11

    .line 752
    :goto_d
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 753
    .line 754
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 755
    .line 756
    .line 757
    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    .line 758
    .line 759
    .line 760
    move-result v3

    .line 761
    if-nez v3, :cond_16

    .line 762
    .line 763
    new-instance v3, Ljava/util/ArrayList;

    .line 764
    .line 765
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 766
    .line 767
    .line 768
    new-instance v4, Ljava/util/ArrayList;

    .line 769
    .line 770
    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 771
    .line 772
    .line 773
    move-result-object v5

    .line 774
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 775
    .line 776
    .line 777
    new-instance v5, Ljava/util/ArrayList;

    .line 778
    .line 779
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 780
    .line 781
    .line 782
    const-string v8, "upd"

    .line 783
    .line 784
    const-string v9, "add"

    .line 785
    .line 786
    filled-new-array {v8, v4, v9, v5}, [Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object v4

    .line 790
    const-string v5, "del"

    .line 791
    .line 792
    invoke-static {v5, v3, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 793
    .line 794
    .line 795
    move-result-object v3

    .line 796
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    :cond_16
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->d1()Ljava/util/LinkedHashMap;

    .line 800
    .line 801
    .line 802
    move-result-object v3

    .line 803
    invoke-static {v6, v1, v0}, Lcom/sgscq/vpn/handler/p;->a(ILjava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 804
    .line 805
    .line 806
    move-result-object v1

    .line 807
    move-object/from16 v4, v20

    .line 808
    .line 809
    invoke-interface {v3, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-object/from16 v4, v19

    .line 813
    .line 814
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    const-string v1, "add_list"

    .line 818
    .line 819
    invoke-interface {v3, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    const-string v1, "reward_list"

    .line 823
    .line 824
    invoke-interface {v3, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    .line 826
    .line 827
    new-instance v1, Ljava/lang/StringBuilder;

    .line 828
    .line 829
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 830
    .line 831
    .line 832
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 833
    .line 834
    .line 835
    move-result-object v4

    .line 836
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 837
    .line 838
    .line 839
    move-result v5

    .line 840
    const-string v6, ","

    .line 841
    .line 842
    if-eqz v5, :cond_17

    .line 843
    .line 844
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    move-result-object v5

    .line 848
    check-cast v5, Ljava/lang/CharSequence;

    .line 849
    .line 850
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 851
    .line 852
    .line 853
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 854
    .line 855
    .line 856
    move-result v5

    .line 857
    if-eqz v5, :cond_17

    .line 858
    .line 859
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    goto :goto_e

    .line 863
    :cond_17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v1

    .line 867
    const-string v4, "cmn_modules"

    .line 868
    .line 869
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    .line 871
    .line 872
    const-string v1, "delta_data"

    .line 873
    .line 874
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    move-object/from16 v2, v18

    .line 878
    .line 879
    iget-object v5, v2, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 880
    .line 881
    move-object/from16 v12, v17

    .line 882
    .line 883
    invoke-virtual {v5, v12, v0}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 884
    .line 885
    .line 886
    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    .line 888
    .line 889
    move-result-object v5

    .line 890
    instance-of v5, v5, Ljava/util/Map;

    .line 891
    .line 892
    if-eqz v5, :cond_18

    .line 893
    .line 894
    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    .line 896
    .line 897
    move-result-object v1

    .line 898
    check-cast v1, Ljava/util/Map;

    .line 899
    .line 900
    goto :goto_f

    .line 901
    :cond_18
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 902
    .line 903
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 904
    .line 905
    .line 906
    :goto_f
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    .line 908
    .line 909
    move-result-object v4

    .line 910
    if-nez v4, :cond_19

    .line 911
    .line 912
    move-object/from16 v4, p1

    .line 913
    .line 914
    :cond_19
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object v4

    .line 918
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 919
    .line 920
    .line 921
    move-result v5

    .line 922
    if-eqz v5, :cond_1a

    .line 923
    .line 924
    const/4 v4, 0x0

    .line 925
    new-array v4, v4, [Ljava/lang/String;

    .line 926
    .line 927
    goto :goto_12

    .line 928
    :cond_1a
    new-instance v5, Ljava/util/ArrayList;

    .line 929
    .line 930
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 931
    .line 932
    .line 933
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object v4

    .line 937
    array-length v6, v4

    .line 938
    const/4 v7, 0x0

    .line 939
    :goto_10
    if-ge v7, v6, :cond_1d

    .line 940
    .line 941
    aget-object v8, v4, v7

    .line 942
    .line 943
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 944
    .line 945
    .line 946
    move-result v9

    .line 947
    if-nez v9, :cond_1b

    .line 948
    .line 949
    move-object/from16 v9, v35

    .line 950
    .line 951
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 952
    .line 953
    .line 954
    move-result v10

    .line 955
    if-nez v10, :cond_1c

    .line 956
    .line 957
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    .line 959
    .line 960
    goto :goto_11

    .line 961
    :cond_1b
    move-object/from16 v9, v35

    .line 962
    .line 963
    :cond_1c
    :goto_11
    add-int/lit8 v7, v7, 0x1

    .line 964
    .line 965
    move-object/from16 v35, v9

    .line 966
    .line 967
    goto :goto_10

    .line 968
    :cond_1d
    const/4 v4, 0x0

    .line 969
    new-array v4, v4, [Ljava/lang/String;

    .line 970
    .line 971
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 972
    .line 973
    .line 974
    move-result-object v4

    .line 975
    check-cast v4, [Ljava/lang/String;

    .line 976
    .line 977
    :goto_12
    iget-object v5, v2, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 978
    .line 979
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 980
    .line 981
    .line 982
    move-result-wide v6

    .line 983
    long-to-int v6, v6

    .line 984
    invoke-virtual {v2}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 985
    .line 986
    .line 987
    move-result v7

    .line 988
    int-to-long v7, v7

    .line 989
    invoke-virtual {v2, v7, v8, v0}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 990
    .line 991
    .line 992
    move-result-wide v10

    .line 993
    invoke-virtual {v2}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 994
    .line 995
    .line 996
    move-result v7

    .line 997
    const-string v8, "user_gold"

    .line 998
    .line 999
    invoke-virtual {v2, v7, v8, v0}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1000
    .line 1001
    .line 1002
    move-result v7

    .line 1003
    invoke-virtual {v2}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 1004
    .line 1005
    .line 1006
    move-result v8

    .line 1007
    const-string v9, "user_energy"

    .line 1008
    .line 1009
    invoke-virtual {v2, v8, v9, v0}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1010
    .line 1011
    .line 1012
    move-result v8

    .line 1013
    invoke-virtual {v2}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 1014
    .line 1015
    .line 1016
    move-result v9

    .line 1017
    const-string v13, "user_power"

    .line 1018
    .line 1019
    invoke-virtual {v2, v9, v13, v0}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1020
    .line 1021
    .line 1022
    move-result v9

    .line 1023
    move-object v13, v0

    .line 1024
    invoke-virtual/range {v5 .. v13}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v0

    .line 1028
    iget-object v5, v2, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1029
    .line 1030
    invoke-virtual {v5, v1, v0, v4}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v0

    .line 1034
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v0

    .line 1038
    const-string v1, "cmn"

    .line 1039
    .line 1040
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    .line 1042
    .line 1043
    move-object v0, v3

    .line 1044
    :goto_13
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v0

    .line 1048
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 1049
    .line 1050
    .line 1051
    move-result-object v0

    .line 1052
    return-object v0
.end method

.method public static W0(ILjava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 7

    .line 1
    const-string v0, "Item"

    .line 2
    .line 3
    invoke-static {v0, p2}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, p2}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/util/Map;

    .line 26
    .line 27
    const-string v4, "id"

    .line 28
    .line 29
    const-string v5, ""

    .line 30
    .line 31
    const-string v6, "item_id"

    .line 32
    .line 33
    invoke-static {v3, v4, v5, v6, p1}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v4, "item_num"

    .line 46
    .line 47
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v5, "num"

    .line 52
    .line 53
    invoke-interface {v3, v5, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v2, p1}, Lcom/sgscq/vpn/handler/d1;->R0(Ljava/lang/Object;I)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    sub-int/2addr v2, p0

    .line 62
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-interface {v3, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    new-instance p1, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    new-instance v2, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    if-gtz p0, :cond_1

    .line 91
    .line 92
    const-string p0, "pk_id"

    .line 93
    .line 94
    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .line 116
    .line 117
    new-instance v3, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v4, "add"

    .line 123
    .line 124
    const-string v5, "upd"

    .line 125
    .line 126
    filled-new-array {v5, v3, v4, v1}, [Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    const-string v3, "del"

    .line 131
    .line 132
    invoke-static {v3, p0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    invoke-static {p1, v2}, Lcom/sgscq/vpn/handler/d1;->k0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0

    .line 144
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .line 148
    .line 149
    new-instance p1, Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-static {p0, p1}, Lcom/sgscq/vpn/handler/d1;->k0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    return-object p0
.end method

.method private X(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 51

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
    const-string v3, "worldWarLocal."

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    const-string v6, "worldWar."

    .line 14
    .line 15
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-nez v6, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    if-eqz v6, :cond_1

    .line 26
    .line 27
    :cond_0
    move v6, v5

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v6, v4

    .line 30
    :goto_0
    const/4 v7, 0x0

    .line 31
    if-nez v6, :cond_2

    .line 32
    .line 33
    return-object v7

    .line 34
    :cond_2
    iget-object v6, v0, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v6, Lcom/sgscq/vpn/handler/k0;

    .line 37
    .line 38
    invoke-virtual {v6, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v13

    .line 42
    iget-object v7, v6, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 43
    .line 44
    invoke-virtual {v7, v13}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    if-nez v7, :cond_3

    .line 49
    .line 50
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 51
    .line 52
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 53
    .line 54
    .line 55
    :cond_3
    move-object v15, v7

    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/handler/d1;->N0()Lcom/sgscq/vpn/p7;

    .line 61
    .line 62
    .line 63
    move-result-object v14

    .line 64
    const-string v7, ".supportRank"

    .line 65
    .line 66
    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    const-string v12, "cmn_modules"

    .line 71
    .line 72
    const-string v10, "delta_data"

    .line 73
    .line 74
    const-string v11, "point"

    .line 75
    .line 76
    const-string v8, "100001"

    .line 77
    .line 78
    const-string v9, ""

    .line 79
    .line 80
    move-object/from16 v16, v10

    .line 81
    .line 82
    const-string v10, "return_info"

    .line 83
    .line 84
    move-object/from16 v17, v10

    .line 85
    .line 86
    const-string v10, "uid"

    .line 87
    .line 88
    if-eqz v7, :cond_6

    .line 89
    .line 90
    invoke-static {v15}, Lcom/sgscq/vpn/handler/d1;->D0(Ljava/util/Map;)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    const/16 v2, 0x8

    .line 95
    .line 96
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    if-nez v14, :cond_4

    .line 105
    .line 106
    new-instance v1, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v19, "Player"

    .line 112
    .line 113
    const-string v18, "nick"

    .line 114
    .line 115
    const-string v20, "server_id"

    .line 116
    .line 117
    const-string v22, "level"

    .line 118
    .line 119
    const-string v24, "point"

    .line 120
    .line 121
    const-string v26, "support_sum"

    .line 122
    .line 123
    const-string v28, "can_support"

    .line 124
    .line 125
    sget-object v31, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 126
    .line 127
    const-string v30, "can_overview"

    .line 128
    .line 129
    move-object/from16 v21, v4

    .line 130
    .line 131
    move-object/from16 v23, v4

    .line 132
    .line 133
    move-object/from16 v25, v3

    .line 134
    .line 135
    move-object/from16 v27, v3

    .line 136
    .line 137
    move-object/from16 v29, v31

    .line 138
    .line 139
    filled-new-array/range {v18 .. v31}, [Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-static {v10, v8, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-object v5, v1

    .line 151
    move-object v1, v9

    .line 152
    move-object v0, v12

    .line 153
    move-object/from16 v2, v16

    .line 154
    .line 155
    move-object/from16 v33, v17

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .line 162
    .line 163
    const-wide v18, 0x574f524c44574152L    # 3.766262820263293E112

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    move-object v7, v14

    .line 169
    move v8, v1

    .line 170
    move-object v1, v9

    .line 171
    move v9, v2

    .line 172
    move-object/from16 v34, v10

    .line 173
    .line 174
    move-object/from16 v32, v11

    .line 175
    .line 176
    move-object/from16 v2, v16

    .line 177
    .line 178
    move-object/from16 v33, v17

    .line 179
    .line 180
    move-wide/from16 v10, v18

    .line 181
    .line 182
    move-object v0, v12

    .line 183
    move-object v12, v13

    .line 184
    invoke-virtual/range {v7 .. v12}, Lcom/sgscq/vpn/p7;->n(IIJLjava/lang/String;)Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    if-eqz v8, :cond_5

    .line 197
    .line 198
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    check-cast v8, Lcom/sgscq/vpn/v5;

    .line 203
    .line 204
    iget-object v9, v8, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v14, v9}, Lcom/sgscq/vpn/p7;->v(Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    invoke-virtual {v8, v9}, Lcom/sgscq/vpn/v5;->m(I)Ljava/util/LinkedHashMap;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    iget-object v10, v8, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 215
    .line 216
    move-object/from16 v11, v34

    .line 217
    .line 218
    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    const-string v10, "nick"

    .line 222
    .line 223
    iget-object v8, v8, Lcom/sgscq/vpn/v5;->b:Ljava/lang/String;

    .line 224
    .line 225
    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    const-string v8, "server_id"

    .line 229
    .line 230
    invoke-interface {v9, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-object/from16 v10, v32

    .line 234
    .line 235
    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    const-string v8, "support_sum"

    .line 239
    .line 240
    invoke-interface {v9, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 244
    .line 245
    const-string v12, "can_support"

    .line 246
    .line 247
    invoke-interface {v9, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    const-string v12, "can_overview"

    .line 251
    .line 252
    invoke-interface {v9, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    goto :goto_1

    .line 259
    :cond_5
    :goto_2
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->e1()Ljava/util/LinkedHashMap;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    const/4 v4, 0x0

    .line 264
    new-array v4, v4, [Ljava/lang/Object;

    .line 265
    .line 266
    const-string v7, "rank_list"

    .line 267
    .line 268
    invoke-static {v7, v5, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    move-object/from16 v9, v33

    .line 273
    .line 274
    invoke-interface {v3, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    invoke-interface {v3, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-object v5, v1

    .line 281
    move-object v4, v2

    .line 282
    goto :goto_3

    .line 283
    :cond_6
    move-object v5, v9

    .line 284
    move-object v0, v12

    .line 285
    move-object/from16 v4, v16

    .line 286
    .line 287
    move-object/from16 v9, v17

    .line 288
    .line 289
    move-object/from16 v50, v11

    .line 290
    .line 291
    move-object v11, v10

    .line 292
    move-object/from16 v10, v50

    .line 293
    .line 294
    const-string v7, ".supportList"

    .line 295
    .line 296
    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 297
    .line 298
    .line 299
    move-result v7

    .line 300
    if-eqz v7, :cond_7

    .line 301
    .line 302
    invoke-static {v15}, Lcom/sgscq/vpn/handler/d1;->s(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    goto :goto_3

    .line 307
    :cond_7
    const-string v7, ".goodsList"

    .line 308
    .line 309
    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 310
    .line 311
    .line 312
    move-result v7

    .line 313
    if-eqz v7, :cond_8

    .line 314
    .line 315
    invoke-static {v15}, Lcom/sgscq/vpn/handler/d1;->m(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    :goto_3
    move-object/from16 v16, v5

    .line 320
    .line 321
    move-object v9, v15

    .line 322
    goto/16 :goto_e

    .line 323
    .line 324
    :cond_8
    const-string v7, ".exchange"

    .line 325
    .line 326
    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 327
    .line 328
    .line 329
    move-result v7

    .line 330
    const-string v12, "pk_id"

    .line 331
    .line 332
    move/from16 v17, v3

    .line 333
    .line 334
    const-string v3, "1"

    .line 335
    .line 336
    move-object/from16 v33, v9

    .line 337
    .line 338
    const-string v9, "world_war_point"

    .line 339
    .line 340
    if-eqz v7, :cond_16

    .line 341
    .line 342
    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-static {v1}, Lcom/sgscq/vpn/handler/d1;->S0(Ljava/lang/Object;)I

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    invoke-static {v1}, Lcom/sgscq/vpn/handler/d1;->N(I)Ljava/util/ArrayList;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-static {v12, v3, v2}, Lcom/sgscq/vpn/handler/d1;->x0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    if-eqz v3, :cond_a

    .line 367
    .line 368
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    check-cast v3, Ljava/util/Map;

    .line 373
    .line 374
    invoke-static {v3, v12, v2}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 375
    .line 376
    .line 377
    move-result v7

    .line 378
    if-eqz v7, :cond_9

    .line 379
    .line 380
    goto :goto_4

    .line 381
    :cond_a
    const/4 v3, 0x0

    .line 382
    :goto_4
    if-nez v3, :cond_b

    .line 383
    .line 384
    const-string v1, "\u5546\u54c1\u4e0d\u5b58\u5728"

    .line 385
    .line 386
    :goto_5
    move-object/from16 v22, v1

    .line 387
    .line 388
    goto :goto_6

    .line 389
    :cond_b
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    invoke-static {v1}, Lcom/sgscq/vpn/handler/d1;->S0(Ljava/lang/Object;)I

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    invoke-static {v2}, Lcom/sgscq/vpn/handler/d1;->S0(Ljava/lang/Object;)I

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    if-ge v2, v1, :cond_c

    .line 406
    .line 407
    const-string v1, "\u79ef\u5206\u4e0d\u8db3"

    .line 408
    .line 409
    goto :goto_5

    .line 410
    :goto_6
    const/4 v1, -0x1

    .line 411
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    const-string v17, "code"

    .line 416
    .line 417
    const-string v19, "result"

    .line 418
    .line 419
    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 420
    .line 421
    const-string v21, "msg"

    .line 422
    .line 423
    const-string v23, "error_code"

    .line 424
    .line 425
    move-object/from16 v18, v1

    .line 426
    .line 427
    move-object/from16 v24, v1

    .line 428
    .line 429
    filled-new-array/range {v17 .. v24}, [Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    const-string v3, "ret"

    .line 434
    .line 435
    invoke-static {v3, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    move-object v3, v1

    .line 440
    move-object/from16 v16, v5

    .line 441
    .line 442
    move-object v9, v15

    .line 443
    goto/16 :goto_d

    .line 444
    .line 445
    :cond_c
    sub-int/2addr v2, v1

    .line 446
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    invoke-interface {v15, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    const-string v1, "item_id"

    .line 454
    .line 455
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->h0(Ljava/lang/String;)Z

    .line 464
    .line 465
    .line 466
    move-result v3

    .line 467
    const-string v7, "Item"

    .line 468
    .line 469
    if-eqz v3, :cond_e

    .line 470
    .line 471
    const/4 v3, 0x1

    .line 472
    invoke-static {v3, v2, v15}, Lcom/sgscq/vpn/p5;->c(ILjava/lang/String;Ljava/util/Map;)V

    .line 473
    .line 474
    .line 475
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->p0(Ljava/lang/String;)Z

    .line 476
    .line 477
    .line 478
    move-result v8

    .line 479
    if-eqz v8, :cond_d

    .line 480
    .line 481
    const/16 v8, 0x10

    .line 482
    .line 483
    goto :goto_7

    .line 484
    :cond_d
    move v8, v3

    .line 485
    :goto_7
    invoke-static {v3, v8, v2}, Lcom/sgscq/vpn/p5;->e1(IILjava/lang/String;)Ljava/util/LinkedHashMap;

    .line 486
    .line 487
    .line 488
    move-result-object v8

    .line 489
    :goto_8
    move-object v9, v15

    .line 490
    goto :goto_9

    .line 491
    :cond_e
    invoke-static {v7, v15}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 496
    .line 497
    .line 498
    move-result-object v8

    .line 499
    :cond_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 500
    .line 501
    .line 502
    move-result v9

    .line 503
    const-string v10, "id"

    .line 504
    .line 505
    const-string v11, "num"

    .line 506
    .line 507
    if-eqz v9, :cond_11

    .line 508
    .line 509
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v9

    .line 513
    check-cast v9, Ljava/util/Map;

    .line 514
    .line 515
    invoke-static {v9, v1, v2}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 516
    .line 517
    .line 518
    move-result v14

    .line 519
    if-nez v14, :cond_10

    .line 520
    .line 521
    invoke-static {v9, v10, v2}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 522
    .line 523
    .line 524
    move-result v10

    .line 525
    if-eqz v10, :cond_f

    .line 526
    .line 527
    :cond_10
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v8

    .line 531
    invoke-static {v8}, Lcom/sgscq/vpn/handler/d1;->S0(Ljava/lang/Object;)I

    .line 532
    .line 533
    .line 534
    move-result v8

    .line 535
    add-int/lit8 v8, v8, 0x1

    .line 536
    .line 537
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 538
    .line 539
    .line 540
    move-result-object v8

    .line 541
    invoke-interface {v9, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    invoke-static {v3, v15, v9}, Lcom/sgscq/vpn/handler/d1;->i1(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    .line 545
    .line 546
    .line 547
    const/4 v3, 0x1

    .line 548
    move-object v8, v9

    .line 549
    goto :goto_8

    .line 550
    :cond_11
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 551
    .line 552
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 553
    .line 554
    .line 555
    move-object v14, v7

    .line 556
    move-object v9, v15

    .line 557
    move-object/from16 v16, v8

    .line 558
    .line 559
    move-object/from16 v17, v12

    .line 560
    .line 561
    move-object/from16 v18, v1

    .line 562
    .line 563
    move-object/from16 v19, v2

    .line 564
    .line 565
    invoke-static/range {v14 .. v19}, Lc/a;->x(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    const/4 v14, 0x1

    .line 569
    invoke-static {v8, v10, v2, v14, v11}, Lcom/sgscq/vpn/handler/l;->b(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 570
    .line 571
    .line 572
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    invoke-static {v3, v9, v8}, Lcom/sgscq/vpn/handler/d1;->i1(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    .line 576
    .line 577
    .line 578
    move v3, v14

    .line 579
    :goto_9
    invoke-static {v9}, Lcom/sgscq/vpn/handler/d1;->m(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 580
    .line 581
    .line 582
    move-result-object v10

    .line 583
    new-array v11, v3, [Ljava/util/Map;

    .line 584
    .line 585
    const/4 v14, 0x5

    .line 586
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 587
    .line 588
    .line 589
    move-result-object v14

    .line 590
    const-string v15, "id"

    .line 591
    .line 592
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v16

    .line 596
    const-string v17, "num"

    .line 597
    .line 598
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 599
    .line 600
    .line 601
    move-result-object v18

    .line 602
    const-string v19, "pk_id"

    .line 603
    .line 604
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v20

    .line 608
    filled-new-array/range {v15 .. v20}, [Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    const-string v3, "type"

    .line 613
    .line 614
    invoke-static {v3, v14, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    const/4 v3, 0x0

    .line 619
    aput-object v1, v11, v3

    .line 620
    .line 621
    invoke-static {v11}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    const-string v3, "add_list"

    .line 626
    .line 627
    invoke-interface {v10, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    instance-of v3, v1, Ljava/util/Map;

    .line 635
    .line 636
    const-string v8, "add"

    .line 637
    .line 638
    const-string v11, "upd"

    .line 639
    .line 640
    const-string v12, "del"

    .line 641
    .line 642
    if-nez v3, :cond_12

    .line 643
    .line 644
    new-instance v1, Ljava/util/ArrayList;

    .line 645
    .line 646
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 647
    .line 648
    .line 649
    new-instance v3, Ljava/util/ArrayList;

    .line 650
    .line 651
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 652
    .line 653
    .line 654
    new-instance v14, Ljava/util/ArrayList;

    .line 655
    .line 656
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 657
    .line 658
    .line 659
    filled-new-array {v11, v3, v8, v14}, [Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v3

    .line 663
    invoke-static {v12, v1, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 664
    .line 665
    .line 666
    move-result-object v1

    .line 667
    const/4 v3, 0x0

    .line 668
    new-array v3, v3, [Ljava/lang/Object;

    .line 669
    .line 670
    invoke-static {v7, v1, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 671
    .line 672
    .line 673
    move-result-object v1

    .line 674
    move-object/from16 v16, v5

    .line 675
    .line 676
    goto :goto_c

    .line 677
    :cond_12
    check-cast v1, Ljava/util/Map;

    .line 678
    .line 679
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v3

    .line 683
    instance-of v3, v3, Ljava/util/List;

    .line 684
    .line 685
    if-eqz v3, :cond_13

    .line 686
    .line 687
    new-instance v3, Ljava/util/ArrayList;

    .line 688
    .line 689
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object v14

    .line 693
    check-cast v14, Ljava/util/List;

    .line 694
    .line 695
    invoke-direct {v3, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 696
    .line 697
    .line 698
    goto :goto_a

    .line 699
    :cond_13
    new-instance v3, Ljava/util/ArrayList;

    .line 700
    .line 701
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 702
    .line 703
    .line 704
    :goto_a
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v14

    .line 708
    instance-of v14, v14, Ljava/util/List;

    .line 709
    .line 710
    if-eqz v14, :cond_14

    .line 711
    .line 712
    new-instance v14, Ljava/util/ArrayList;

    .line 713
    .line 714
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v1

    .line 718
    check-cast v1, Ljava/util/List;

    .line 719
    .line 720
    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 721
    .line 722
    .line 723
    goto :goto_b

    .line 724
    :cond_14
    new-instance v14, Ljava/util/ArrayList;

    .line 725
    .line 726
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 727
    .line 728
    .line 729
    :goto_b
    invoke-static {v7, v9}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 730
    .line 731
    .line 732
    move-result-object v1

    .line 733
    new-instance v15, Ljava/util/ArrayList;

    .line 734
    .line 735
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .line 737
    .line 738
    move-object/from16 v16, v5

    .line 739
    .line 740
    new-instance v5, Ljava/util/ArrayList;

    .line 741
    .line 742
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .line 744
    .line 745
    filled-new-array {v11, v5, v8, v1}, [Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    move-result-object v1

    .line 749
    invoke-static {v12, v15, v1, v9, v7}, Lc/a;->n(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 750
    .line 751
    .line 752
    move-result-object v1

    .line 753
    filled-new-array {v11, v14, v8, v1}, [Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    move-result-object v1

    .line 757
    invoke-static {v12, v3, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 758
    .line 759
    .line 760
    move-result-object v1

    .line 761
    const/4 v3, 0x0

    .line 762
    new-array v3, v3, [Ljava/lang/Object;

    .line 763
    .line 764
    invoke-static {v7, v1, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 765
    .line 766
    .line 767
    move-result-object v1

    .line 768
    :goto_c
    invoke-interface {v10, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->h0(Ljava/lang/String;)Z

    .line 772
    .line 773
    .line 774
    move-result v1

    .line 775
    if-eqz v1, :cond_15

    .line 776
    .line 777
    const-string v7, "Player"

    .line 778
    .line 779
    :cond_15
    invoke-interface {v10, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    move-object v3, v10

    .line 783
    :goto_d
    iget-object v1, v6, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 784
    .line 785
    invoke-virtual {v1, v13, v9}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 786
    .line 787
    .line 788
    :goto_e
    move-object v7, v9

    .line 789
    move-object/from16 v5, v16

    .line 790
    .line 791
    :goto_f
    move-object/from16 v16, v0

    .line 792
    .line 793
    goto/16 :goto_16

    .line 794
    .line 795
    :cond_16
    move-object/from16 v16, v5

    .line 796
    .line 797
    move-object v7, v15

    .line 798
    const-string v5, ".getOverview"

    .line 799
    .line 800
    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 801
    .line 802
    .line 803
    move-result v5

    .line 804
    const-string v10, "player_id"

    .line 805
    .line 806
    if-eqz v5, :cond_19

    .line 807
    .line 808
    move-object/from16 v5, v16

    .line 809
    .line 810
    invoke-static {v11, v5, v2}, Lcom/sgscq/vpn/handler/d1;->x0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v1

    .line 814
    invoke-static {v10, v1, v2}, Lcom/sgscq/vpn/handler/d1;->x0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v1

    .line 818
    if-nez v14, :cond_17

    .line 819
    .line 820
    const/4 v1, 0x0

    .line 821
    goto :goto_10

    .line 822
    :cond_17
    invoke-virtual {v14, v1}, Lcom/sgscq/vpn/p7;->g(Ljava/lang/String;)Lcom/sgscq/vpn/v5;

    .line 823
    .line 824
    .line 825
    move-result-object v1

    .line 826
    :goto_10
    if-nez v1, :cond_18

    .line 827
    .line 828
    const-string v14, "general_id"

    .line 829
    .line 830
    const-string v15, "101001"

    .line 831
    .line 832
    const-string v16, "level"

    .line 833
    .line 834
    const/4 v1, 0x1

    .line 835
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 836
    .line 837
    .line 838
    move-result-object v1

    .line 839
    move-object/from16 v37, v1

    .line 840
    .line 841
    move-object/from16 v39, v1

    .line 842
    .line 843
    move-object/from16 v45, v1

    .line 844
    .line 845
    const-string v18, "name"

    .line 846
    .line 847
    const-string v19, "PlayerGeneral"

    .line 848
    .line 849
    const-string v20, "attr_hp"

    .line 850
    .line 851
    const-wide/high16 v21, 0x4059000000000000L    # 100.0

    .line 852
    .line 853
    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 854
    .line 855
    .line 856
    move-result-object v21

    .line 857
    const-string v22, "attr_attack"

    .line 858
    .line 859
    const-wide/high16 v23, 0x4034000000000000L    # 20.0

    .line 860
    .line 861
    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 862
    .line 863
    .line 864
    move-result-object v23

    .line 865
    const-string v24, "attr_defense"

    .line 866
    .line 867
    const-wide/high16 v25, 0x4024000000000000L    # 10.0

    .line 868
    .line 869
    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 870
    .line 871
    .line 872
    move-result-object v27

    .line 873
    const-string v26, "attr_wisdom"

    .line 874
    .line 875
    const-string v28, "fighting"

    .line 876
    .line 877
    const-wide/high16 v29, 0x4054000000000000L    # 80.0

    .line 878
    .line 879
    invoke-static/range {v29 .. v30}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 880
    .line 881
    .line 882
    move-result-object v29

    .line 883
    move-object/from16 v43, v29

    .line 884
    .line 885
    move-object/from16 v17, v1

    .line 886
    .line 887
    move-object/from16 v25, v27

    .line 888
    .line 889
    filled-new-array/range {v14 .. v29}, [Ljava/lang/Object;

    .line 890
    .line 891
    .line 892
    move-result-object v2

    .line 893
    invoke-static {v12, v3, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 894
    .line 895
    .line 896
    move-result-object v2

    .line 897
    const-string v17, "general_id"

    .line 898
    .line 899
    const-string v18, "101001"

    .line 900
    .line 901
    const-string v19, "general_pk_id"

    .line 902
    .line 903
    const-string v20, "1"

    .line 904
    .line 905
    const-string v21, "position"

    .line 906
    .line 907
    move-object/from16 v22, v1

    .line 908
    .line 909
    filled-new-array/range {v17 .. v22}, [Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    move-result-object v1

    .line 913
    invoke-static {v12, v3, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 914
    .line 915
    .line 916
    move-result-object v1

    .line 917
    const-string v30, "user_id"

    .line 918
    .line 919
    const-string v31, "100001"

    .line 920
    .line 921
    const-string v32, "nickname"

    .line 922
    .line 923
    const-string v33, "Player"

    .line 924
    .line 925
    const-string v34, "nick"

    .line 926
    .line 927
    const-string v35, "Player"

    .line 928
    .line 929
    const-string v36, "player_level"

    .line 930
    .line 931
    const-string v38, "user_level"

    .line 932
    .line 933
    const-string v40, "user_vip_level"

    .line 934
    .line 935
    const/4 v3, 0x0

    .line 936
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 937
    .line 938
    .line 939
    move-result-object v41

    .line 940
    move-object/from16 v47, v41

    .line 941
    .line 942
    const-string v42, "fightPoint"

    .line 943
    .line 944
    const-string v44, "server_id"

    .line 945
    .line 946
    const-string v46, "ladder_rank"

    .line 947
    .line 948
    const-string v48, "rank_name"

    .line 949
    .line 950
    const-string v49, ""

    .line 951
    .line 952
    filled-new-array/range {v30 .. v49}, [Ljava/lang/Object;

    .line 953
    .line 954
    .line 955
    move-result-object v3

    .line 956
    invoke-static {v10, v8, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 957
    .line 958
    .line 959
    move-result-object v14

    .line 960
    const/4 v3, 0x1

    .line 961
    new-array v8, v3, [Ljava/util/Map;

    .line 962
    .line 963
    const/4 v9, 0x0

    .line 964
    aput-object v2, v8, v9

    .line 965
    .line 966
    invoke-static {v8}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 967
    .line 968
    .line 969
    move-result-object v15

    .line 970
    new-array v2, v3, [Ljava/util/Map;

    .line 971
    .line 972
    aput-object v1, v2, v9

    .line 973
    .line 974
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 975
    .line 976
    .line 977
    move-result-object v16

    .line 978
    new-instance v17, Ljava/util/ArrayList;

    .line 979
    .line 980
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 981
    .line 982
    .line 983
    invoke-static {}, Lcom/sgscq/vpn/cloud/m0;->c0()Ljava/util/ArrayList;

    .line 984
    .line 985
    .line 986
    move-result-object v18

    .line 987
    new-instance v19, Ljava/util/ArrayList;

    .line 988
    .line 989
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 990
    .line 991
    .line 992
    invoke-static/range {v14 .. v19}, Lcom/sgscq/vpn/cloud/m0;->A(Ljava/util/LinkedHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 993
    .line 994
    .line 995
    move-result-object v3

    .line 996
    goto/16 :goto_f

    .line 997
    .line 998
    :cond_18
    invoke-virtual {v1}, Lcom/sgscq/vpn/v5;->r()Ljava/util/Map;

    .line 999
    .line 1000
    .line 1001
    move-result-object v3

    .line 1002
    goto/16 :goto_f

    .line 1003
    .line 1004
    :cond_19
    move-object/from16 v5, v16

    .line 1005
    .line 1006
    const-string v3, ".getPlayerList"

    .line 1007
    .line 1008
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1009
    .line 1010
    .line 1011
    move-result v3

    .line 1012
    const-string v8, "\u8f6e"

    .line 1013
    .line 1014
    const-string v12, "\u7b2c"

    .line 1015
    .line 1016
    const-string v15, "round"

    .line 1017
    .line 1018
    if-eqz v3, :cond_1b

    .line 1019
    .line 1020
    invoke-static {v7}, Lcom/sgscq/vpn/handler/d1;->D0(Ljava/util/Map;)I

    .line 1021
    .line 1022
    .line 1023
    move-result v1

    .line 1024
    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v2

    .line 1028
    invoke-static {v2}, Lcom/sgscq/vpn/handler/d1;->S0(Ljava/lang/Object;)I

    .line 1029
    .line 1030
    .line 1031
    move-result v2

    .line 1032
    new-instance v3, Lcom/sgscq/vpn/handler/l1;

    .line 1033
    .line 1034
    invoke-direct {v3, v14, v13, v1}, Lcom/sgscq/vpn/handler/l1;-><init>(Lcom/sgscq/vpn/p7;Ljava/lang/String;I)V

    .line 1035
    .line 1036
    .line 1037
    const/16 v1, 0x14

    .line 1038
    .line 1039
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 1040
    .line 1041
    .line 1042
    move-result v1

    .line 1043
    const/4 v2, 0x1

    .line 1044
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 1045
    .line 1046
    .line 1047
    move-result v1

    .line 1048
    new-instance v2, Ljava/util/ArrayList;

    .line 1049
    .line 1050
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1051
    .line 1052
    .line 1053
    iget-object v3, v3, Lcom/sgscq/vpn/handler/l1;->d:Ljava/util/ArrayList;

    .line 1054
    .line 1055
    add-int/lit8 v9, v1, -0x1

    .line 1056
    .line 1057
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v3

    .line 1061
    check-cast v3, Ljava/util/List;

    .line 1062
    .line 1063
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v3

    .line 1067
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1068
    .line 1069
    .line 1070
    move-result v9

    .line 1071
    if-eqz v9, :cond_1a

    .line 1072
    .line 1073
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v9

    .line 1077
    check-cast v9, Ljava/util/List;

    .line 1078
    .line 1079
    new-instance v10, Ljava/util/ArrayList;

    .line 1080
    .line 1081
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1082
    .line 1083
    .line 1084
    const/4 v11, 0x0

    .line 1085
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v11

    .line 1089
    check-cast v11, Ljava/util/Map;

    .line 1090
    .line 1091
    new-instance v14, Ljava/util/LinkedHashMap;

    .line 1092
    .line 1093
    invoke-direct {v14, v11}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    .line 1098
    .line 1099
    const/4 v11, 0x1

    .line 1100
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v9

    .line 1104
    check-cast v9, Ljava/util/Map;

    .line 1105
    .line 1106
    new-instance v11, Ljava/util/LinkedHashMap;

    .line 1107
    .line 1108
    invoke-direct {v11, v9}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1109
    .line 1110
    .line 1111
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    .line 1116
    .line 1117
    goto :goto_11

    .line 1118
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1119
    .line 1120
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v1

    .line 1133
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1134
    .line 1135
    .line 1136
    move-result v3

    .line 1137
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v3

    .line 1141
    const-string v8, "player_list"

    .line 1142
    .line 1143
    const-string v9, "idx"

    .line 1144
    .line 1145
    filled-new-array {v9, v3, v8, v2}, [Ljava/lang/Object;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v2

    .line 1149
    const-string v3, "round_name"

    .line 1150
    .line 1151
    invoke-static {v3, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v1

    .line 1155
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->e1()Ljava/util/LinkedHashMap;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v2

    .line 1159
    move-object/from16 v3, v33

    .line 1160
    .line 1161
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    .line 1163
    .line 1164
    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1165
    .line 1166
    .line 1167
    move-object/from16 v16, v0

    .line 1168
    .line 1169
    move-object v3, v2

    .line 1170
    goto/16 :goto_16

    .line 1171
    .line 1172
    :cond_1b
    move-object/from16 v16, v0

    .line 1173
    .line 1174
    move-object/from16 v3, v33

    .line 1175
    .line 1176
    const-string v0, ".supportPlayer"

    .line 1177
    .line 1178
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1179
    .line 1180
    .line 1181
    move-result v0

    .line 1182
    if-eqz v0, :cond_1c

    .line 1183
    .line 1184
    invoke-static {v11, v5, v2}, Lcom/sgscq/vpn/handler/d1;->x0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v0

    .line 1188
    invoke-static {v10, v0, v2}, Lcom/sgscq/vpn/handler/d1;->x0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v0

    .line 1192
    const-string v1, "world_war_support_player_id"

    .line 1193
    .line 1194
    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    .line 1196
    .line 1197
    const-string v0, "world_war_support_times"

    .line 1198
    .line 1199
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v1

    .line 1203
    invoke-static {v1}, Lcom/sgscq/vpn/handler/d1;->S0(Ljava/lang/Object;)I

    .line 1204
    .line 1205
    .line 1206
    move-result v1

    .line 1207
    add-int/lit8 v1, v1, 0x1

    .line 1208
    .line 1209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v1

    .line 1213
    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    .line 1215
    .line 1216
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v0

    .line 1220
    invoke-static {v0}, Lcom/sgscq/vpn/handler/d1;->S0(Ljava/lang/Object;)I

    .line 1221
    .line 1222
    .line 1223
    move-result v0

    .line 1224
    add-int/lit8 v0, v0, 0x1

    .line 1225
    .line 1226
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v0

    .line 1230
    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    .line 1232
    .line 1233
    invoke-static {v7}, Lcom/sgscq/vpn/handler/d1;->s(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v3

    .line 1237
    iget-object v0, v6, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1238
    .line 1239
    invoke-virtual {v0, v13, v7}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 1240
    .line 1241
    .line 1242
    goto/16 :goto_16

    .line 1243
    .line 1244
    :cond_1c
    const-string v0, ".outline"

    .line 1245
    .line 1246
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1247
    .line 1248
    .line 1249
    move-result v0

    .line 1250
    if-eqz v0, :cond_1f

    .line 1251
    .line 1252
    invoke-static {v7}, Lcom/sgscq/vpn/handler/d1;->D0(Ljava/util/Map;)I

    .line 1253
    .line 1254
    .line 1255
    move-result v0

    .line 1256
    new-instance v1, Lcom/sgscq/vpn/handler/l1;

    .line 1257
    .line 1258
    invoke-direct {v1, v14, v13, v0}, Lcom/sgscq/vpn/handler/l1;-><init>(Lcom/sgscq/vpn/p7;Ljava/lang/String;I)V

    .line 1259
    .line 1260
    .line 1261
    new-instance v0, Ljava/util/ArrayList;

    .line 1262
    .line 1263
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1264
    .line 1265
    .line 1266
    const/4 v2, 0x0

    .line 1267
    :goto_12
    const/16 v9, 0x14

    .line 1268
    .line 1269
    if-ge v2, v9, :cond_1d

    .line 1270
    .line 1271
    add-int/lit8 v9, v2, 0x1

    .line 1272
    .line 1273
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v10

    .line 1277
    const-string v17, "session"

    .line 1278
    .line 1279
    const/4 v11, 0x1

    .line 1280
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v18

    .line 1284
    const-string v19, "times"

    .line 1285
    .line 1286
    sget-object v14, Lcom/sgscq/vpn/handler/l1;->f:[I

    .line 1287
    .line 1288
    aget v20, v14, v2

    .line 1289
    .line 1290
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v20

    .line 1294
    const-string v21, "status"

    .line 1295
    .line 1296
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v22

    .line 1300
    const-string v23, "name"

    .line 1301
    .line 1302
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1303
    .line 1304
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1305
    .line 1306
    .line 1307
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1308
    .line 1309
    .line 1310
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v24

    .line 1317
    const-string v25, "date"

    .line 1318
    .line 1319
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1320
    .line 1321
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1322
    .line 1323
    .line 1324
    sget-object v26, Lcom/sgscq/vpn/handler/l1;->g:[I

    .line 1325
    .line 1326
    move-object/from16 v35, v8

    .line 1327
    .line 1328
    aget v8, v26, v2

    .line 1329
    .line 1330
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1331
    .line 1332
    .line 1333
    const-string v8, "\u5929"

    .line 1334
    .line 1335
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    .line 1337
    .line 1338
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v26

    .line 1342
    const-string v27, "start_time"

    .line 1343
    .line 1344
    sget-object v8, Lcom/sgscq/vpn/handler/l1;->h:[Ljava/lang/String;

    .line 1345
    .line 1346
    aget-object v8, v8, v2

    .line 1347
    .line 1348
    move-object/from16 v28, v8

    .line 1349
    .line 1350
    const-string v29, "end_time"

    .line 1351
    .line 1352
    aget v2, v14, v2

    .line 1353
    .line 1354
    mul-int/lit8 v2, v2, 0x3

    .line 1355
    .line 1356
    const-string v11, ":"

    .line 1357
    .line 1358
    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v8

    .line 1362
    const/4 v11, 0x0

    .line 1363
    aget-object v11, v8, v11

    .line 1364
    .line 1365
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1366
    .line 1367
    .line 1368
    move-result v11

    .line 1369
    mul-int/lit8 v11, v11, 0x3c

    .line 1370
    .line 1371
    const/4 v14, 0x1

    .line 1372
    aget-object v8, v8, v14

    .line 1373
    .line 1374
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1375
    .line 1376
    .line 1377
    move-result v8

    .line 1378
    add-int/2addr v8, v11

    .line 1379
    add-int/2addr v8, v2

    .line 1380
    div-int/lit8 v2, v8, 0x3c

    .line 1381
    .line 1382
    rem-int/lit8 v2, v2, 0x18

    .line 1383
    .line 1384
    rem-int/lit8 v8, v8, 0x3c

    .line 1385
    .line 1386
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1387
    .line 1388
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v2

    .line 1392
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v8

    .line 1396
    filled-new-array {v2, v8}, [Ljava/lang/Object;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v2

    .line 1400
    const-string v8, "%02d:%02d:00"

    .line 1401
    .line 1402
    invoke-static {v11, v8, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1403
    .line 1404
    .line 1405
    move-result-object v30

    .line 1406
    const-string v31, "is_round_player"

    .line 1407
    .line 1408
    sget-object v32, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1409
    .line 1410
    move-object/from16 v34, v32

    .line 1411
    .line 1412
    const-string v33, "is_player"

    .line 1413
    .line 1414
    filled-new-array/range {v17 .. v34}, [Ljava/lang/Object;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v2

    .line 1418
    invoke-static {v15, v10, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v2

    .line 1422
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1423
    .line 1424
    .line 1425
    move v2, v9

    .line 1426
    move-object/from16 v8, v35

    .line 1427
    .line 1428
    goto/16 :goto_12

    .line 1429
    .line 1430
    :cond_1d
    const/4 v2, 0x4

    .line 1431
    new-array v8, v2, [Ljava/lang/Object;

    .line 1432
    .line 1433
    const-string v9, "round_info"

    .line 1434
    .line 1435
    const/4 v10, 0x0

    .line 1436
    aput-object v9, v8, v10

    .line 1437
    .line 1438
    const/4 v9, 0x1

    .line 1439
    aput-object v0, v8, v9

    .line 1440
    .line 1441
    const-string v9, "rank_player"

    .line 1442
    .line 1443
    const/4 v10, 0x2

    .line 1444
    aput-object v9, v8, v10

    .line 1445
    .line 1446
    new-instance v9, Ljava/util/ArrayList;

    .line 1447
    .line 1448
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1449
    .line 1450
    .line 1451
    const/16 v11, 0xa

    .line 1452
    .line 1453
    new-array v12, v11, [I

    .line 1454
    .line 1455
    fill-array-data v12, :array_0

    .line 1456
    .line 1457
    .line 1458
    const/4 v14, 0x0

    .line 1459
    :goto_13
    iget-object v15, v1, Lcom/sgscq/vpn/handler/l1;->e:Ljava/util/ArrayList;

    .line 1460
    .line 1461
    if-ge v14, v11, :cond_1e

    .line 1462
    .line 1463
    aget v11, v12, v14

    .line 1464
    .line 1465
    add-int/lit8 v11, v11, -0x1

    .line 1466
    .line 1467
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v11

    .line 1471
    check-cast v11, Lcom/sgscq/vpn/handler/k1;

    .line 1472
    .line 1473
    iget-object v11, v11, Lcom/sgscq/vpn/handler/k1;->b:Ljava/util/List;

    .line 1474
    .line 1475
    const/4 v15, 0x0

    .line 1476
    invoke-static {v15, v11}, Lcom/sgscq/vpn/handler/l1;->e(ILjava/util/List;)Ljava/util/ArrayList;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v11

    .line 1480
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1481
    .line 1482
    .line 1483
    add-int/lit8 v14, v14, 0x1

    .line 1484
    .line 1485
    const/16 v11, 0xa

    .line 1486
    .line 1487
    goto :goto_13

    .line 1488
    :cond_1e
    const/16 v1, 0x10

    .line 1489
    .line 1490
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v1

    .line 1494
    check-cast v1, Lcom/sgscq/vpn/handler/k1;

    .line 1495
    .line 1496
    iget-object v1, v1, Lcom/sgscq/vpn/handler/k1;->b:Ljava/util/List;

    .line 1497
    .line 1498
    invoke-static {v2, v1}, Lcom/sgscq/vpn/handler/l1;->e(ILjava/util/List;)Ljava/util/ArrayList;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v1

    .line 1502
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1503
    .line 1504
    .line 1505
    const/16 v1, 0x12

    .line 1506
    .line 1507
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1508
    .line 1509
    .line 1510
    move-result-object v1

    .line 1511
    check-cast v1, Lcom/sgscq/vpn/handler/k1;

    .line 1512
    .line 1513
    iget-object v1, v1, Lcom/sgscq/vpn/handler/k1;->a:Ljava/util/List;

    .line 1514
    .line 1515
    const/4 v2, 0x1

    .line 1516
    invoke-static {v2, v1}, Lcom/sgscq/vpn/handler/l1;->e(ILjava/util/List;)Ljava/util/ArrayList;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v1

    .line 1520
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1521
    .line 1522
    .line 1523
    const/16 v1, 0x13

    .line 1524
    .line 1525
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v2

    .line 1529
    check-cast v2, Lcom/sgscq/vpn/handler/k1;

    .line 1530
    .line 1531
    iget-object v2, v2, Lcom/sgscq/vpn/handler/k1;->b:Ljava/util/List;

    .line 1532
    .line 1533
    const/4 v11, 0x3

    .line 1534
    invoke-static {v11, v2}, Lcom/sgscq/vpn/handler/l1;->e(ILjava/util/List;)Ljava/util/ArrayList;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v2

    .line 1538
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v1

    .line 1542
    check-cast v1, Lcom/sgscq/vpn/handler/k1;

    .line 1543
    .line 1544
    iget-object v1, v1, Lcom/sgscq/vpn/handler/k1;->a:Ljava/util/List;

    .line 1545
    .line 1546
    invoke-static {v10, v1}, Lcom/sgscq/vpn/handler/l1;->e(ILjava/util/List;)Ljava/util/ArrayList;

    .line 1547
    .line 1548
    .line 1549
    move-result-object v1

    .line 1550
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1551
    .line 1552
    .line 1553
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1554
    .line 1555
    .line 1556
    aput-object v9, v8, v11

    .line 1557
    .line 1558
    const-string v1, "top128_list"

    .line 1559
    .line 1560
    invoke-static {v1, v0, v8}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v0

    .line 1564
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->e1()Ljava/util/LinkedHashMap;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v1

    .line 1568
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    .line 1570
    .line 1571
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1572
    .line 1573
    .line 1574
    goto/16 :goto_15

    .line 1575
    .line 1576
    :cond_1f
    const-string v0, ".getFightDetail"

    .line 1577
    .line 1578
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1579
    .line 1580
    .line 1581
    move-result v0

    .line 1582
    if-eqz v0, :cond_21

    .line 1583
    .line 1584
    invoke-static {v7}, Lcom/sgscq/vpn/handler/d1;->D0(Ljava/util/Map;)I

    .line 1585
    .line 1586
    .line 1587
    move-result v0

    .line 1588
    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1589
    .line 1590
    .line 1591
    move-result-object v1

    .line 1592
    invoke-static {v1}, Lcom/sgscq/vpn/handler/d1;->S0(Ljava/lang/Object;)I

    .line 1593
    .line 1594
    .line 1595
    move-result v1

    .line 1596
    const-string v8, "session"

    .line 1597
    .line 1598
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    .line 1600
    .line 1601
    move-result-object v2

    .line 1602
    invoke-static {v2}, Lcom/sgscq/vpn/handler/d1;->S0(Ljava/lang/Object;)I

    .line 1603
    .line 1604
    .line 1605
    move-result v2

    .line 1606
    new-instance v8, Lcom/sgscq/vpn/handler/l1;

    .line 1607
    .line 1608
    invoke-direct {v8, v14, v13, v0}, Lcom/sgscq/vpn/handler/l1;-><init>(Lcom/sgscq/vpn/p7;Ljava/lang/String;I)V

    .line 1609
    .line 1610
    .line 1611
    const/16 v0, 0x14

    .line 1612
    .line 1613
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 1614
    .line 1615
    .line 1616
    move-result v0

    .line 1617
    const/4 v1, 0x1

    .line 1618
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 1619
    .line 1620
    .line 1621
    move-result v0

    .line 1622
    iget-object v9, v8, Lcom/sgscq/vpn/handler/l1;->d:Ljava/util/ArrayList;

    .line 1623
    .line 1624
    add-int/lit8 v10, v0, -0x1

    .line 1625
    .line 1626
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1627
    .line 1628
    .line 1629
    move-result-object v9

    .line 1630
    check-cast v9, Ljava/util/List;

    .line 1631
    .line 1632
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 1633
    .line 1634
    .line 1635
    move-result v10

    .line 1636
    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    .line 1637
    .line 1638
    .line 1639
    move-result v2

    .line 1640
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 1641
    .line 1642
    .line 1643
    move-result v2

    .line 1644
    add-int/lit8 v10, v2, -0x1

    .line 1645
    .line 1646
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1647
    .line 1648
    .line 1649
    move-result-object v9

    .line 1650
    check-cast v9, Ljava/util/List;

    .line 1651
    .line 1652
    const/4 v10, 0x0

    .line 1653
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v12

    .line 1657
    check-cast v12, Ljava/util/Map;

    .line 1658
    .line 1659
    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v12

    .line 1663
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1664
    .line 1665
    .line 1666
    move-result-object v12

    .line 1667
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1668
    .line 1669
    .line 1670
    move-result-object v1

    .line 1671
    check-cast v1, Ljava/util/Map;

    .line 1672
    .line 1673
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    .line 1675
    .line 1676
    move-result-object v1

    .line 1677
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1678
    .line 1679
    .line 1680
    move-result-object v1

    .line 1681
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1682
    .line 1683
    .line 1684
    move-result-object v9

    .line 1685
    check-cast v9, Ljava/util/Map;

    .line 1686
    .line 1687
    const-string v10, "win"

    .line 1688
    .line 1689
    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1690
    .line 1691
    .line 1692
    move-result v9

    .line 1693
    if-eqz v9, :cond_20

    .line 1694
    .line 1695
    move-object/from16 v24, v12

    .line 1696
    .line 1697
    goto :goto_14

    .line 1698
    :cond_20
    move-object/from16 v24, v1

    .line 1699
    .line 1700
    :goto_14
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1701
    .line 1702
    const-string v10, "world-war-"

    .line 1703
    .line 1704
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1705
    .line 1706
    .line 1707
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1708
    .line 1709
    .line 1710
    const-string v10, "-"

    .line 1711
    .line 1712
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    .line 1714
    .line 1715
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1716
    .line 1717
    .line 1718
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1719
    .line 1720
    .line 1721
    move-result-object v28

    .line 1722
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1723
    .line 1724
    .line 1725
    move-result-object v9

    .line 1726
    const-string v17, "session"

    .line 1727
    .line 1728
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1729
    .line 1730
    .line 1731
    move-result-object v18

    .line 1732
    const-string v19, "player1"

    .line 1733
    .line 1734
    iget-object v8, v8, Lcom/sgscq/vpn/handler/l1;->c:Ljava/util/LinkedHashMap;

    .line 1735
    .line 1736
    invoke-virtual {v8, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    .line 1738
    .line 1739
    move-result-object v10

    .line 1740
    check-cast v10, Lcom/sgscq/vpn/v5;

    .line 1741
    .line 1742
    invoke-static {v10}, Lcom/sgscq/vpn/handler/l1;->b(Lcom/sgscq/vpn/v5;)Ljava/util/LinkedHashMap;

    .line 1743
    .line 1744
    .line 1745
    move-result-object v20

    .line 1746
    const-string v21, "player2"

    .line 1747
    .line 1748
    invoke-virtual {v8, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1749
    .line 1750
    .line 1751
    move-result-object v1

    .line 1752
    check-cast v1, Lcom/sgscq/vpn/v5;

    .line 1753
    .line 1754
    invoke-static {v1}, Lcom/sgscq/vpn/handler/l1;->b(Lcom/sgscq/vpn/v5;)Ljava/util/LinkedHashMap;

    .line 1755
    .line 1756
    .line 1757
    move-result-object v22

    .line 1758
    const-string v23, "winner"

    .line 1759
    .line 1760
    const-string v25, "battle_id"

    .line 1761
    .line 1762
    move-object/from16 v26, v28

    .line 1763
    .line 1764
    filled-new-array/range {v17 .. v26}, [Ljava/lang/Object;

    .line 1765
    .line 1766
    .line 1767
    move-result-object v1

    .line 1768
    invoke-static {v15, v9, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1769
    .line 1770
    .line 1771
    move-result-object v1

    .line 1772
    const-string v25, "fight_process"

    .line 1773
    .line 1774
    new-instance v26, Ljava/util/ArrayList;

    .line 1775
    .line 1776
    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 1777
    .line 1778
    .line 1779
    const-string v27, "battle_id"

    .line 1780
    .line 1781
    const-string v29, "round"

    .line 1782
    .line 1783
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1784
    .line 1785
    .line 1786
    move-result-object v30

    .line 1787
    const-string v31, "session"

    .line 1788
    .line 1789
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1790
    .line 1791
    .line 1792
    move-result-object v32

    .line 1793
    filled-new-array/range {v25 .. v32}, [Ljava/lang/Object;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v0

    .line 1797
    const-string v2, "fight_detail"

    .line 1798
    .line 1799
    invoke-static {v2, v1, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1800
    .line 1801
    .line 1802
    move-result-object v0

    .line 1803
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->e1()Ljava/util/LinkedHashMap;

    .line 1804
    .line 1805
    .line 1806
    move-result-object v1

    .line 1807
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1808
    .line 1809
    .line 1810
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1811
    .line 1812
    .line 1813
    :goto_15
    move-object v3, v1

    .line 1814
    goto :goto_16

    .line 1815
    :cond_21
    const-string v0, ".signUp"

    .line 1816
    .line 1817
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1818
    .line 1819
    .line 1820
    move-result v0

    .line 1821
    if-eqz v0, :cond_22

    .line 1822
    .line 1823
    const-string v0, "world_war_signed"

    .line 1824
    .line 1825
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1826
    .line 1827
    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1828
    .line 1829
    .line 1830
    const-string v0, "team_id"

    .line 1831
    .line 1832
    const-string v1, "0"

    .line 1833
    .line 1834
    invoke-static {v0, v1, v2}, Lcom/sgscq/vpn/handler/d1;->x0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1835
    .line 1836
    .line 1837
    move-result-object v0

    .line 1838
    const-string v1, "world_war_team_id"

    .line 1839
    .line 1840
    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1841
    .line 1842
    .line 1843
    const/4 v0, 0x0

    .line 1844
    invoke-static {v0}, Lcom/sgscq/vpn/handler/d1;->o(Z)Ljava/util/LinkedHashMap;

    .line 1845
    .line 1846
    .line 1847
    move-result-object v0

    .line 1848
    iget-object v1, v6, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1849
    .line 1850
    invoke-virtual {v1, v13, v7}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 1851
    .line 1852
    .line 1853
    move-object v3, v0

    .line 1854
    goto :goto_16

    .line 1855
    :cond_22
    invoke-static/range {v17 .. v17}, Lcom/sgscq/vpn/handler/d1;->o(Z)Ljava/util/LinkedHashMap;

    .line 1856
    .line 1857
    .line 1858
    move-result-object v3

    .line 1859
    :goto_16
    if-nez v3, :cond_23

    .line 1860
    .line 1861
    const/4 v0, 0x0

    .line 1862
    goto :goto_17

    .line 1863
    :cond_23
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1864
    .line 1865
    .line 1866
    move-result-object v0

    .line 1867
    :goto_17
    instance-of v1, v0, Ljava/util/Map;

    .line 1868
    .line 1869
    if-eqz v1, :cond_24

    .line 1870
    .line 1871
    move-object v15, v0

    .line 1872
    check-cast v15, Ljava/util/Map;

    .line 1873
    .line 1874
    goto :goto_18

    .line 1875
    :cond_24
    move-object v15, v7

    .line 1876
    :goto_18
    move-object/from16 v0, v16

    .line 1877
    .line 1878
    invoke-interface {v3, v0, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1879
    .line 1880
    .line 1881
    move-result-object v0

    .line 1882
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1883
    .line 1884
    .line 1885
    move-result-object v0

    .line 1886
    const-string v1, ","

    .line 1887
    .line 1888
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1889
    .line 1890
    .line 1891
    move-result-object v0

    .line 1892
    new-instance v1, Ljava/util/ArrayList;

    .line 1893
    .line 1894
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1895
    .line 1896
    .line 1897
    array-length v2, v0

    .line 1898
    const/4 v4, 0x0

    .line 1899
    :goto_19
    if-ge v4, v2, :cond_26

    .line 1900
    .line 1901
    aget-object v5, v0, v4

    .line 1902
    .line 1903
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1904
    .line 1905
    .line 1906
    move-result-object v5

    .line 1907
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 1908
    .line 1909
    .line 1910
    move-result v8

    .line 1911
    if-nez v8, :cond_25

    .line 1912
    .line 1913
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1914
    .line 1915
    .line 1916
    :cond_25
    add-int/lit8 v4, v4, 0x1

    .line 1917
    .line 1918
    goto :goto_19

    .line 1919
    :cond_26
    const/4 v0, 0x0

    .line 1920
    new-array v0, v0, [Ljava/lang/String;

    .line 1921
    .line 1922
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1923
    .line 1924
    .line 1925
    move-result-object v0

    .line 1926
    check-cast v0, [Ljava/lang/String;

    .line 1927
    .line 1928
    move-object/from16 v1, p0

    .line 1929
    .line 1930
    invoke-virtual {v1, v13, v15, v7, v0}, Lcom/sgscq/vpn/handler/d1;->h(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1931
    .line 1932
    .line 1933
    move-result-object v0

    .line 1934
    const-string v2, "cmn"

    .line 1935
    .line 1936
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1937
    .line 1938
    .line 1939
    invoke-static {v3}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1940
    .line 1941
    .line 1942
    move-result-object v0

    .line 1943
    invoke-virtual {v6, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 1944
    .line 1945
    .line 1946
    move-result-object v0

    .line 1947
    return-object v0

    .line 1948
    nop

    .line 1949
    :array_0
    .array-data 4
        0x2
        0x4
        0x5
        0x7
        0x8
        0xa
        0xb
        0xd
        0xe
        0x10
    .end array-data
.end method

.method public static X0(ILjava/util/Map;)V
    .locals 11

    .line 1
    const-string v0, "Item"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-ge v3, v4, :cond_3

    .line 14
    .line 15
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Ljava/util/Map;

    .line 20
    .line 21
    const-string v5, "id"

    .line 22
    .line 23
    const-string v6, ""

    .line 24
    .line 25
    const-string v7, "item_id"

    .line 26
    .line 27
    const-string v8, "600013"

    .line 28
    .line 29
    invoke-static {v4, v5, v6, v7, v8}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_0

    .line 34
    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const-string v7, "item_num"

    .line 43
    .line 44
    invoke-interface {v4, v7, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const-string v8, "num"

    .line 49
    .line 50
    invoke-interface {v4, v8, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-static {v5, v2}, Lcom/sgscq/vpn/handler/d1;->P0(Ljava/lang/Object;I)I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    sub-int/2addr v5, p0

    .line 59
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    const-string v5, "add"

    .line 64
    .line 65
    const-string v9, "upd"

    .line 66
    .line 67
    const-string v10, "del"

    .line 68
    .line 69
    if-nez p0, :cond_2

    .line 70
    .line 71
    const-string p0, "pk_id"

    .line 72
    .line 73
    invoke-interface {v4, p0, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_1

    .line 89
    .line 90
    new-instance p0, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    filled-new-array {p0}, [Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {p0}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    filled-new-array {v9, v2, v5, v1}, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v10, p0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    goto :goto_2

    .line 118
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-interface {v4, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-interface {v4, v7, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    new-instance p0, Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .line 136
    .line 137
    const/4 v3, 0x1

    .line 138
    new-array v3, v3, [Ljava/util/Map;

    .line 139
    .line 140
    aput-object v4, v3, v2

    .line 141
    .line 142
    invoke-static {v3}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    filled-new-array {v9, v2, v5, v1}, [Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-static {v10, p0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    :goto_2
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    :cond_3
    return-void
.end method

.method public static Y(ILjava/util/Map;)Z
    .locals 6

    .line 1
    const-string v0, "Item"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/Map;

    .line 23
    .line 24
    const-string v2, "id"

    .line 25
    .line 26
    const-string v3, ""

    .line 27
    .line 28
    const-string v4, "item_id"

    .line 29
    .line 30
    const-string v5, "600013"

    .line 31
    .line 32
    invoke-static {v0, v2, v3, v4, v5}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string p1, "item_num"

    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v2, "num"

    .line 50
    .line 51
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1, v1}, Lcom/sgscq/vpn/handler/d1;->P0(Ljava/lang/Object;I)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-lt p1, p0, :cond_1

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    :cond_1
    return v1
.end method

.method public static Y0(ILjava/lang/String;Ljava/util/Map;)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    const-string v1, "Item"

    .line 7
    .line 8
    invoke-static {v1, p2}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {p2}, Lcom/sgscq/vpn/handler/d1;->s0(Ljava/util/Map;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {p2}, Lcom/sgscq/vpn/handler/d1;->q0(Ljava/util/Map;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    const/4 v7, 0x1

    .line 29
    if-eqz v6, :cond_4

    .line 30
    .line 31
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    check-cast v6, Ljava/util/Map;

    .line 36
    .line 37
    const-string v8, "id"

    .line 38
    .line 39
    const-string v9, ""

    .line 40
    .line 41
    const-string v10, "item_id"

    .line 42
    .line 43
    invoke-static {v6, v8, v9, v10, p1}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-nez v8, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v8, "item_num"

    .line 55
    .line 56
    invoke-interface {v6, v8, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v9, "num"

    .line 61
    .line 62
    invoke-interface {v6, v9, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Lcom/sgscq/vpn/handler/d1;->O0(Ljava/lang/Object;)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-ge p1, p0, :cond_1

    .line 71
    .line 72
    return v0

    .line 73
    :cond_1
    sub-int/2addr p1, p0

    .line 74
    if-gtz p1, :cond_2

    .line 75
    .line 76
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 77
    .line 78
    .line 79
    const-string p0, "pk_id"

    .line 80
    .line 81
    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    if-eqz p0, :cond_3

    .line 86
    .line 87
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_3

    .line 96
    .line 97
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-interface {v6, v9, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-interface {v6, v8, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-nez p0, :cond_3

    .line 124
    .line 125
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    :cond_3
    :goto_1
    const-string p0, "add"

    .line 129
    .line 130
    const-string p1, "upd"

    .line 131
    .line 132
    filled-new-array {p1, v4, p0, v2}, [Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    const-string p1, "del"

    .line 137
    .line 138
    invoke-static {p1, v3, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-interface {p2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    return v7

    .line 146
    :cond_4
    if-nez p0, :cond_5

    .line 147
    .line 148
    move v0, v7

    .line 149
    :cond_5
    return v0
.end method

.method public static Z(ILjava/lang/String;Ljava/util/Map;)Z
    .locals 5

    .line 1
    const-string v0, "Item"

    .line 2
    .line 3
    invoke-static {v0, p2}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/Map;

    .line 23
    .line 24
    const-string v2, "id"

    .line 25
    .line 26
    const-string v3, ""

    .line 27
    .line 28
    const-string v4, "item_id"

    .line 29
    .line 30
    invoke-static {v0, v2, v3, v4, p1}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string p1, "item_num"

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string p2, "num"

    .line 48
    .line 49
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1, v1}, Lcom/sgscq/vpn/handler/d1;->R0(Ljava/lang/Object;I)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-lt p1, p0, :cond_1

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    :cond_1
    return v1
.end method

.method public static Z0()Ljava/util/LinkedHashMap;
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

.method public static a(ILjava/util/Map;Ljava/util/LinkedHashMap;)V
    .locals 8

    .line 1
    const-string v0, "beauty_id"

    .line 2
    .line 3
    const-string v1, "1"

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
    const/4 v1, 0x0

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "beauty_talent_level"

    .line 19
    .line 20
    invoke-interface {p1, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-static {v4, v1}, Lcom/sgscq/vpn/handler/d1;->R0(Ljava/lang/Object;I)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const-string v5, "beauty_current_experience"

    .line 33
    .line 34
    invoke-interface {p1, v5, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2, v1}, Lcom/sgscq/vpn/handler/d1;->R0(Ljava/lang/Object;I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    add-int/2addr v2, p0

    .line 47
    :goto_0
    const/16 p0, 0x1e

    .line 48
    .line 49
    if-ge v4, p0, :cond_2

    .line 50
    .line 51
    invoke-static {v4, v0, p2}, Lcom/sgscq/vpn/handler/d1;->f(ILjava/lang/String;Ljava/util/LinkedHashMap;)Ljava/util/Map;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    if-nez v6, :cond_0

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    const-string v7, "beauty_experience"

    .line 59
    .line 60
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    const/4 v7, 0x1

    .line 65
    invoke-static {v6, v7}, Lcom/sgscq/vpn/handler/d1;->R0(Ljava/lang/Object;I)I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-ge v2, v6, :cond_1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    sub-int/2addr v2, v6

    .line 77
    add-int/lit8 v4, v4, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    :goto_1
    if-lt v4, p0, :cond_3

    .line 81
    .line 82
    move v2, v1

    .line 83
    :cond_3
    invoke-static {v4, p1, v3, v2, v5}, Lc/a;->t(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v4, v0, p2}, Lcom/sgscq/vpn/handler/d1;->f(ILjava/lang/String;Ljava/util/LinkedHashMap;)Ljava/util/Map;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    if-eqz p0, :cond_4

    .line 91
    .line 92
    const-string p2, "attr_attack"

    .line 93
    .line 94
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-static {p2, v1}, Lcom/sgscq/vpn/handler/d1;->R0(Ljava/lang/Object;I)I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    const-string v0, "beauty_attr_attack"

    .line 107
    .line 108
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    const-string p2, "attr_defense"

    .line 112
    .line 113
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-static {p2, v1}, Lcom/sgscq/vpn/handler/d1;->R0(Ljava/lang/Object;I)I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    const-string v0, "beauty_attr_defense"

    .line 126
    .line 127
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    const-string p2, "attr_hp"

    .line 131
    .line 132
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-static {p2, v1}, Lcom/sgscq/vpn/handler/d1;->R0(Ljava/lang/Object;I)I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    const-string v0, "beauty_attr_hp"

    .line 145
    .line 146
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    const-string p2, "attr_wisdom"

    .line 150
    .line 151
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-static {p0, v1}, Lcom/sgscq/vpn/handler/d1;->R0(Ljava/lang/Object;I)I

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    const-string p2, "beauty_attr_wisdom"

    .line 164
    .line 165
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    :cond_4
    return-void
.end method

.method public static a0(Ljava/lang/Object;I)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static a1(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 12

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v1, "code"

    const-string v3, "result"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "msg"

    const-string v6, "success"

    const-string v7, "error_code"

    const-string v9, "return_info"

    const-string v2, "result"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v4, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v10

    move-object v2, v11

    move-object v8, v11

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ret"

    invoke-static {v1, v11, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cmn_modules"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static b(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 20

    .line 1
    move-object/from16 v6, p2

    .line 2
    .line 3
    const-string v7, "Item"

    .line 4
    .line 5
    invoke-static {v7, v6}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v8

    .line 9
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-string v9, "add"

    .line 18
    .line 19
    const-string v10, "upd"

    .line 20
    .line 21
    const-string v11, "del"

    .line 22
    .line 23
    const-string v13, "item_id"

    .line 24
    .line 25
    const-string v4, "id"

    .line 26
    .line 27
    const-string v15, "item_num"

    .line 28
    .line 29
    const-string v14, "num"

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/util/Map;

    .line 38
    .line 39
    const-string v2, ""

    .line 40
    .line 41
    move-object/from16 v12, p1

    .line 42
    .line 43
    invoke-static {v1, v4, v2, v13, v12}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v1, v15, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v1, v14, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v2, v0}, Lcom/sgscq/vpn/handler/d1;->R0(Ljava/lang/Object;I)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    add-int v0, v0, p0

    .line 68
    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-interface {v1, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    new-instance v2, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    filled-new-array {v10, v2, v9, v8}, [Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-static {v11, v0, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    return-object v1

    .line 105
    :cond_1
    move-object/from16 v12, p1

    .line 106
    .line 107
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 108
    .line 109
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v3, "pk_id"

    .line 113
    .line 114
    move-object v0, v7

    .line 115
    move-object/from16 v1, p2

    .line 116
    .line 117
    move-object v2, v5

    .line 118
    move-object/from16 v19, v5

    .line 119
    .line 120
    move-object/from16 v5, p1

    .line 121
    .line 122
    invoke-static/range {v0 .. v5}, Lc/a;->x(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    move-object/from16 v12, v19

    .line 126
    .line 127
    move-object v0, v14

    .line 128
    move-object/from16 v14, p1

    .line 129
    .line 130
    move-object v1, v15

    .line 131
    move/from16 v15, p0

    .line 132
    .line 133
    move-object/from16 v16, v0

    .line 134
    .line 135
    move/from16 v17, p0

    .line 136
    .line 137
    move-object/from16 v18, v1

    .line 138
    .line 139
    invoke-static/range {v12 .. v18}, Lc/a;->z(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const/4 v0, 0x1

    .line 143
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const-string v1, "item_type"

    .line 148
    .line 149
    move-object/from16 v2, v19

    .line 150
    .line 151
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    const-string v0, "type"

    .line 155
    .line 156
    const-string v1, "1"

    .line 157
    .line 158
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    new-instance v0, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .line 168
    .line 169
    new-instance v1, Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .line 173
    .line 174
    filled-new-array {v10, v1, v9, v8}, [Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-static {v11, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    return-object v2
.end method

.method public static b0(Ljava/lang/Object;I)I
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return p1
.end method

.method public static b1()Ljava/util/LinkedHashMap;
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

.method public static c(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 20

    .line 1
    move/from16 v5, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v12, p2

    .line 6
    .line 7
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/p5;->h0(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-static/range {p0 .. p2}, Lcom/sgscq/vpn/p5;->c(ILjava/lang/String;Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/p5;->p0(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/16 v0, 0x10

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x1

    .line 26
    :goto_0
    invoke-static {v5, v0, v2}, Lcom/sgscq/vpn/p5;->e1(IILjava/lang/String;)Ljava/util/LinkedHashMap;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :cond_1
    const-string v13, "Item"

    .line 32
    .line 33
    invoke-static {v13, v12}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v14

    .line 37
    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/handler/d1;->s0(Ljava/util/Map;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v15

    .line 41
    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/handler/d1;->q0(Ljava/util/Map;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const-string v3, "del"

    .line 54
    .line 55
    const-string v11, "add"

    .line 56
    .line 57
    const-string v10, "upd"

    .line 58
    .line 59
    const-string v9, "item_num"

    .line 60
    .line 61
    const-string v8, "item_id"

    .line 62
    .line 63
    const-string v7, "id"

    .line 64
    .line 65
    const-string v6, "num"

    .line 66
    .line 67
    if-eqz v1, :cond_5

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Ljava/util/Map;

    .line 74
    .line 75
    invoke-static {v1, v8, v2}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-nez v8, :cond_3

    .line 80
    .line 81
    invoke-static {v1, v7, v2}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_2

    .line 86
    .line 87
    :cond_3
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/sgscq/vpn/handler/d1;->O0(Ljava/lang/Object;)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    add-int/2addr v0, v5

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_4

    .line 115
    .line 116
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :cond_4
    filled-new-array {v10, v4, v11, v14}, [Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v3, v15, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-interface {v12, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    return-object v1

    .line 131
    :cond_5
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 132
    .line 133
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v0, "pk_id"

    .line 137
    .line 138
    move-object/from16 v16, v6

    .line 139
    .line 140
    move-object v6, v13

    .line 141
    move-object/from16 v17, v7

    .line 142
    .line 143
    move-object/from16 v7, p2

    .line 144
    .line 145
    move-object/from16 v18, v8

    .line 146
    .line 147
    move-object v8, v1

    .line 148
    move-object/from16 v19, v9

    .line 149
    .line 150
    move-object v9, v0

    .line 151
    move-object v0, v10

    .line 152
    move-object/from16 v10, v17

    .line 153
    .line 154
    move-object v12, v11

    .line 155
    move-object/from16 v11, p1

    .line 156
    .line 157
    invoke-static/range {v6 .. v11}, Lc/a;->x(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    move-object v7, v0

    .line 161
    move-object v0, v1

    .line 162
    move-object/from16 v1, v18

    .line 163
    .line 164
    move-object/from16 v2, p1

    .line 165
    .line 166
    move-object v9, v3

    .line 167
    move/from16 v3, p0

    .line 168
    .line 169
    move-object v10, v4

    .line 170
    move-object/from16 v4, v16

    .line 171
    .line 172
    move/from16 v5, p0

    .line 173
    .line 174
    move-object/from16 v6, v19

    .line 175
    .line 176
    invoke-static/range {v0 .. v6}, Lc/a;->z(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const-string v0, "item_type"

    .line 180
    .line 181
    const/4 v1, 0x1

    .line 182
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-nez v0, :cond_6

    .line 197
    .line 198
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    :cond_6
    filled-new-array {v7, v10, v12, v14}, [Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-static {v9, v15, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    move-object/from16 v1, p2

    .line 210
    .line 211
    invoke-interface {v1, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    return-object v8
.end method

.method public static c0(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

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

.method public static c1()Ljava/util/LinkedHashMap;
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

.method public static d(Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "pk_id"

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Ljava/util/Map;

    .line 31
    .line 32
    invoke-static {v4, v0, v1, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public static d0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "festival.init"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "festival.getScoreList"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "festival.getRainDewList"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "festival.scoreBuy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "festival.getGift"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "festival.initRainDew"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "festival.goFight"

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

.method public static d1()Ljava/util/LinkedHashMap;
    .locals 3

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

    const-string v1, "result"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "msg"

    const-string v2, "success"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static e(Ljava/util/Map;Ljava/util/Map;ILc/e;)V
    .locals 9

    .line 1
    const-string v0, "level"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "general_level"

    .line 8
    .line 9
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/d1;->P0(Ljava/lang/Object;I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/d1;->P0(Ljava/lang/Object;I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const-string v1, "exp"

    .line 23
    .line 24
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v3, "general_exp"

    .line 29
    .line 30
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static {v3, v4}, Lcom/sgscq/vpn/handler/d1;->P0(Ljava/lang/Object;I)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-static {v1, v3}, Lcom/sgscq/vpn/handler/d1;->P0(Ljava/lang/Object;I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const-string v3, "id"

    .line 44
    .line 45
    const-string v5, ""

    .line 46
    .line 47
    const-string v6, "general_id"

    .line 48
    .line 49
    invoke-static {p1, v3, v5, v6}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iget-object p3, p3, Lc/e;->a:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p3, Lcom/sgscq/vpn/w1;

    .line 56
    .line 57
    invoke-virtual {p3, v3, v0}, Lcom/sgscq/vpn/w1;->c0(Ljava/lang/String;I)J

    .line 58
    .line 59
    .line 60
    move-result-wide v5

    .line 61
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    int-to-long v7, v1

    .line 66
    add-long/2addr v5, v7

    .line 67
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    int-to-long v7, p2

    .line 72
    add-long/2addr v5, v7

    .line 73
    const-string p2, "user_level"

    .line 74
    .line 75
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p0, v2}, Lcom/sgscq/vpn/handler/d1;->P0(Ljava/lang/Object;I)I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    mul-int/lit8 p0, p0, 0x4

    .line 88
    .line 89
    invoke-virtual {p3, p0, v3, v5, v6}, Lcom/sgscq/vpn/w1;->P0(ILjava/lang/String;J)I

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-ge p0, v0, :cond_0

    .line 94
    .line 95
    move p0, v0

    .line 96
    :cond_0
    invoke-virtual {p3, v3, p0}, Lcom/sgscq/vpn/w1;->c0(Ljava/lang/String;I)J

    .line 97
    .line 98
    .line 99
    move-result-wide p2

    .line 100
    sub-long p2, v5, p2

    .line 101
    .line 102
    const-wide/16 v1, 0x0

    .line 103
    .line 104
    cmp-long v1, p2, v1

    .line 105
    .line 106
    if-gtz v1, :cond_1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_1
    const-wide/32 v1, 0x7fffffff

    .line 110
    .line 111
    .line 112
    cmp-long v1, p2, v1

    .line 113
    .line 114
    if-ltz v1, :cond_2

    .line 115
    .line 116
    const p2, 0x7fffffff

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    long-to-int p2, p2

    .line 121
    :goto_0
    move v4, p2

    .line 122
    :goto_1
    invoke-static {p1, p0, v4, v5, v6}, Lcom/sgscq/vpn/handler/d1;->F0(Ljava/util/Map;IIJ)V

    .line 123
    .line 124
    .line 125
    const/4 p2, 0x0

    .line 126
    invoke-static {p2}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p2, v0, p0, p1}, Lcom/sgscq/vpn/w1;->g(IILjava/util/Map;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public static e0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    const-string v0, "godness."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e1()Ljava/util/LinkedHashMap;
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

.method public static f(ILjava/lang/String;Ljava/util/LinkedHashMap;)Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/util/List;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    check-cast p1, Ljava/util/List;

    if-ltz p0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lt p0, p2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_2

    move-object p1, p0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_3

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static f0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "idcard.save"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "idcard.getCode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "idcard.saveMobile"

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

.method public static f1(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 12

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v1, "code"

    const-string v3, "result"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "msg"

    const-string v6, "success"

    const-string v7, "error_code"

    const-string v9, "return_info"

    const-string v2, "result"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v4, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v10

    move-object v2, v11

    move-object v8, v11

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ret"

    invoke-static {v1, v11, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cmn_modules"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static g0(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "ladderWar."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ladderWarLocal."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-string v1, ".entry"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".getOverview"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".goodsList"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".exchange"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".buyFtimes"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".match"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".fight"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".worshipEntry"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".worship"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".rewardList"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".buyReward"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".hangReward"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static g1()Ljava/util/LinkedHashMap;
    .locals 11

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v1, "code"

    const-string v3, "result"

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "msg"

    const-string v6, "success"

    const-string v7, "error_code"

    move-object v2, v9

    move-object v4, v10

    move-object v8, v9

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ret"

    invoke-static {v2, v9, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "result"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v10, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v2, "return_info"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cmn_modules"

    const-string v2, "Player"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static h0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "task.getList"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "task.recieve"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "task.multiRecieve"

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

.method public static h1(Ljava/util/List;Ljava/util/Map;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "add"

    const-string v3, "upd"

    filled-new-array {v3, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "del"

    invoke-static {v1, v0, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    const-string v0, "Item"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static i(Ljava/util/Map;Z)Ljava/util/LinkedHashMap;
    .locals 12

    .line 1
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-string v2, "ladder_war_total_fight"

    .line 6
    .line 7
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v2}, Lcom/sgscq/vpn/handler/d1;->Q0(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x3

    .line 16
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const-string v4, "ladder_war_point"

    .line 21
    .line 22
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-static {v4}, Lcom/sgscq/vpn/handler/d1;->Q0(Ljava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const-string v5, "ladder_war_total_point"

    .line 31
    .line 32
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-static {v5}, Lcom/sgscq/vpn/handler/d1;->Q0(Ljava/lang/Object;)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    const-string v6, "ladder_war_worship_times"

    .line 41
    .line 42
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0}, Lcom/sgscq/vpn/handler/d1;->Q0(Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    const-wide/16 v6, 0xe10

    .line 51
    .line 52
    sub-long v6, v0, v6

    .line 53
    .line 54
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    const/16 v7, 0x1c

    .line 59
    .line 60
    new-array v7, v7, [Ljava/lang/Object;

    .line 61
    .line 62
    const-string v8, "close_time"

    .line 63
    .line 64
    const/4 v9, 0x0

    .line 65
    aput-object v8, v7, v9

    .line 66
    .line 67
    const-wide/32 v10, 0x15180

    .line 68
    .line 69
    .line 70
    add-long/2addr v0, v10

    .line 71
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const/4 v1, 0x1

    .line 76
    aput-object v0, v7, v1

    .line 77
    .line 78
    const/4 v0, 0x2

    .line 79
    const-string v1, "enable_fight"

    .line 80
    .line 81
    aput-object v1, v7, v0

    .line 82
    .line 83
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 84
    .line 85
    aput-object v0, v7, v3

    .line 86
    .line 87
    const/4 v0, 0x4

    .line 88
    const-string v1, "left_fight"

    .line 89
    .line 90
    aput-object v1, v7, v0

    .line 91
    .line 92
    const/4 v0, 0x5

    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    aput-object v1, v7, v0

    .line 98
    .line 99
    const/4 v0, 0x6

    .line 100
    const-string v1, "total_fight"

    .line 101
    .line 102
    aput-object v1, v7, v0

    .line 103
    .line 104
    const/4 v0, 0x7

    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    aput-object v1, v7, v0

    .line 110
    .line 111
    const/16 v0, 0x8

    .line 112
    .line 113
    const-string v1, "history_fight"

    .line 114
    .line 115
    aput-object v1, v7, v0

    .line 116
    .line 117
    const/16 v0, 0x9

    .line 118
    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    aput-object v1, v7, v0

    .line 124
    .line 125
    const/16 v0, 0xa

    .line 126
    .line 127
    const-string v1, "price"

    .line 128
    .line 129
    aput-object v1, v7, v0

    .line 130
    .line 131
    const/16 v0, 0x64

    .line 132
    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const/16 v1, 0xb

    .line 138
    .line 139
    aput-object v0, v7, v1

    .line 140
    .line 141
    const/16 v0, 0xc

    .line 142
    .line 143
    const-string v1, "total_point"

    .line 144
    .line 145
    aput-object v1, v7, v0

    .line 146
    .line 147
    const/16 v0, 0xd

    .line 148
    .line 149
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    aput-object v1, v7, v0

    .line 154
    .line 155
    const/16 v0, 0xe

    .line 156
    .line 157
    const-string v1, "daily_point"

    .line 158
    .line 159
    aput-object v1, v7, v0

    .line 160
    .line 161
    const/16 v0, 0xf

    .line 162
    .line 163
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    aput-object v1, v7, v0

    .line 168
    .line 169
    const/16 v0, 0x10

    .line 170
    .line 171
    const-string v1, "rank"

    .line 172
    .line 173
    aput-object v1, v7, v0

    .line 174
    .line 175
    const/16 v0, 0x11

    .line 176
    .line 177
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    aput-object v1, v7, v0

    .line 182
    .line 183
    const/16 v0, 0x12

    .line 184
    .line 185
    const-string v1, "left_worship"

    .line 186
    .line 187
    aput-object v1, v7, v0

    .line 188
    .line 189
    rsub-int/lit8 p0, p0, 0x3

    .line 190
    .line 191
    invoke-static {v9, p0}, Ljava/lang/Math;->max(II)I

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    const/16 v0, 0x13

    .line 200
    .line 201
    aput-object p0, v7, v0

    .line 202
    .line 203
    const/16 p0, 0x14

    .line 204
    .line 205
    const-string v0, "total_worship"

    .line 206
    .line 207
    aput-object v0, v7, p0

    .line 208
    .line 209
    const/16 p0, 0x15

    .line 210
    .line 211
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    aput-object v0, v7, p0

    .line 216
    .line 217
    const/16 p0, 0x16

    .line 218
    .line 219
    const-string v0, "pop_status"

    .line 220
    .line 221
    aput-object v0, v7, p0

    .line 222
    .line 223
    const/16 p0, 0x17

    .line 224
    .line 225
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 226
    .line 227
    aput-object v0, v7, p0

    .line 228
    .line 229
    const/16 p0, 0x18

    .line 230
    .line 231
    const-string v0, "rank_list"

    .line 232
    .line 233
    aput-object v0, v7, p0

    .line 234
    .line 235
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->J0()Ljava/util/ArrayList;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    const/16 v0, 0x19

    .line 240
    .line 241
    aput-object p0, v7, v0

    .line 242
    .line 243
    const/16 p0, 0x1a

    .line 244
    .line 245
    const-string v0, "is_local"

    .line 246
    .line 247
    aput-object v0, v7, p0

    .line 248
    .line 249
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    const/16 p1, 0x1b

    .line 254
    .line 255
    aput-object p0, v7, p1

    .line 256
    .line 257
    const-string p0, "open_time"

    .line 258
    .line 259
    invoke-static {p0, v6, v7}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->c1()Ljava/util/LinkedHashMap;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    const-string v0, "return_info"

    .line 268
    .line 269
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    const-string v0, "ladder_war_info"

    .line 273
    .line 274
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    const-string v0, "ladderWarInfo"

    .line 278
    .line 279
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    const-string v0, "inter_service_info"

    .line 283
    .line 284
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    const-string v0, "main_info"

    .line 288
    .line 289
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    invoke-interface {p1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 293
    .line 294
    .line 295
    return-object p1
.end method

.method public static i0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "training.trainingInfo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "training.training"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "training.multiTraining"

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

.method public static i1(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
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

.method public static j(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    const-string v1, "festival_kill_num"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sgscq/vpn/handler/d1;->O0(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "festival_boss_hp_percent"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/sgscq/vpn/handler/d1;->O0(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_0

    if-gtz v1, :cond_0

    const/16 v2, 0x64

    :cond_0
    const-string v3, "festival_free_times"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sgscq/vpn/handler/d1;->O0(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    if-gtz v3, :cond_1

    move v3, v4

    :cond_1
    const-string v5, "festival_last_boss_dungeon_id"

    const-string v6, ""

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const-string v7, "1"

    if-nez v6, :cond_2

    const-string v6, "null"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    move-object v5, v7

    :cond_3
    new-array v6, v4, [Ljava/util/Map;

    const-string v8, "boss_card"

    const-string v9, "100001"

    const-string v10, "boss_power"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "boss_dungeon_id"

    const-string v14, "is_lock"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v16, "hp"

    mul-int/lit8 v13, v2, 0xa

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-string v18, "max_hp"

    const/16 v13, 0x3e8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v20, "boss_hp_percent"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object v13, v5

    filled-new-array/range {v8 .. v21}, [Ljava/lang/Object;

    move-result-object v2

    const-string v8, "boss_id"

    invoke-static {v8, v7, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    aput-object v2, v6, v22

    invoke-static {v6}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v9

    new-array v2, v4, [Ljava/util/Map;

    new-array v6, v4, [Ljava/util/Map;

    const-string v10, "num"

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "item_num"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array/range {v10 .. v15}, [Ljava/lang/Object;

    move-result-object v8

    const-string v10, "600239"

    const-string v11, "item_id"

    invoke-static {v11, v10, v8}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v8

    aput-object v8, v6, v22

    invoke-static {v6}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    new-array v8, v4, [Ljava/util/Map;

    const-string v12, "num"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "item_num"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v16, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    filled-new-array/range {v12 .. v17}, [Ljava/lang/Object;

    move-result-object v10

    const-string v12, "600001"

    invoke-static {v11, v12, v10}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v10

    aput-object v10, v8, v22

    invoke-static {v8}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    const-string v10, "kill_award"

    const-string v11, "first_kill_award"

    filled-new-array {v10, v6, v11, v8}, [Ljava/lang/Object;

    move-result-object v6

    const-string v8, "boss_dungeon_id"

    invoke-static {v8, v5, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v6

    aput-object v6, v2, v22

    invoke-static {v2}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    new-array v2, v4, [Ljava/util/Map;

    const-string v12, "kill_num"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "kill_user_name"

    const-string v15, ""

    const-string v16, "kill_time"

    const-string v17, ""

    filled-new-array/range {v12 .. v17}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v8, v5, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    aput-object v1, v2, v22

    invoke-static {v2}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v13

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "type"

    aput-object v2, v1, v22

    aput-object v7, v1, v4

    const/4 v2, 0x2

    const-string v5, "score"

    aput-object v5, v1, v2

    const-string v2, "festival_score"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/handler/d1;->O0(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/4 v0, 0x4

    const-string v2, "status"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-string v2, "free_times"

    aput-object v2, v1, v0

    const/4 v0, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "id"

    invoke-static {v0, v7, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v8, "boss_info"

    const-string v10, "award_info"

    const-string v12, "kill_info"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "festival_info"

    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->b1()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "festival"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v1
.end method

.method public static j0(Ljava/lang/String;Ljava/util/Map;)I
    .locals 6

    .line 1
    const-string v0, "Item"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/util/Map;

    .line 24
    .line 25
    const-string v3, "id"

    .line 26
    .line 27
    const-string v4, ""

    .line 28
    .line 29
    const-string v5, "item_id"

    .line 30
    .line 31
    invoke-static {v2, v3, v4, v5, p0}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string v3, "item_num"

    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const-string v4, "num"

    .line 49
    .line 50
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v2}, Lcom/sgscq/vpn/handler/d1;->O0(Ljava/lang/Object;)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    add-int/2addr v1, v2

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    return v1
.end method

.method public static j1(II)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-lez p0, :cond_1

    invoke-static {p1}, Lcom/sgscq/vpn/cloud/m0;->c3(I)I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/m0;->U0(I)D

    move-result-wide v1

    int-to-double p0, p0

    mul-double/2addr p0, v1

    const-wide v1, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    add-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static k()Ljava/util/LinkedHashMap;
    .locals 4

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

    const-string v2, "result"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "msg"

    const-string v3, "success"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "error_code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static k0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "upd"

    const-string v2, "add"

    filled-new-array {v1, p1, v2, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "del"

    invoke-static {v0, p0, p1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Item"

    invoke-static {v0, p0, p1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 2

    .line 1
    const-string v0, "ladder_war_point"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/d1;->Q0(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/d1;->M(I)Ljava/util/ArrayList;

    move-result-object p0

    const-string v1, "goods_list"

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "daily_point"

    invoke-static {v1, v0, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->c1()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "return_info"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public static l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    const-string v0, "world_war_point"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/d1;->S0(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Lcom/sgscq/vpn/handler/d1;->N(I)Ljava/util/ArrayList;

    move-result-object p0

    const-string v2, "daily_point"

    const-string v3, "goods_list"

    filled-new-array {v2, v1, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "point"

    invoke-static {v1, v0, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->e1()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "return_info"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public static m0(IZ)I
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    int-to-long p0, p0

    const-wide/16 v0, 0x2

    mul-long/2addr p0, v0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    const p0, 0x7fffffff

    goto :goto_0

    :cond_1
    long-to-int p0, p0

    :cond_2
    :goto_0
    return p0
.end method

.method public static n([B)[B
    .locals 4

    .line 1
    const-string v0, "HTTP/1.1 200 OK\r\nContent-Type: image/jpeg\r\nContent-Length: "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\r\n\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    array-length v2, p0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v2, p0

    invoke-static {p0, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->u0()[B

    move-result-object p0

    return-object p0
.end method

.method public static o(Z)Ljava/util/LinkedHashMap;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/16 v2, 0x18

    .line 7
    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const-string v5, "time"

    .line 16
    .line 17
    aput-object v5, v2, v3

    .line 18
    .line 19
    const/16 v3, 0xe10

    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    aput-object v3, v2, v0

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    const-string v3, "round"

    .line 29
    .line 30
    aput-object v3, v2, v0

    .line 31
    .line 32
    const/4 v0, 0x3

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    aput-object v1, v2, v0

    .line 38
    .line 39
    const/4 v0, 0x4

    .line 40
    const-string v5, "name"

    .line 41
    .line 42
    aput-object v5, v2, v0

    .line 43
    .line 44
    if-eqz p0, :cond_0

    .line 45
    .line 46
    const-string p0, "Local"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string p0, "World"

    .line 50
    .line 51
    :goto_0
    const/4 v0, 0x5

    .line 52
    aput-object p0, v2, v0

    .line 53
    .line 54
    const/4 p0, 0x6

    .line 55
    const-string v0, "date"

    .line 56
    .line 57
    aput-object v0, v2, p0

    .line 58
    .line 59
    const/4 p0, 0x7

    .line 60
    const-string v0, "2026-06-11"

    .line 61
    .line 62
    aput-object v0, v2, p0

    .line 63
    .line 64
    const/16 p0, 0x8

    .line 65
    .line 66
    const-string v0, "start_time"

    .line 67
    .line 68
    aput-object v0, v2, p0

    .line 69
    .line 70
    const/16 p0, 0x9

    .line 71
    .line 72
    const-string v0, "20:00"

    .line 73
    .line 74
    aput-object v0, v2, p0

    .line 75
    .line 76
    const/16 p0, 0xa

    .line 77
    .line 78
    const-string v0, "end_time"

    .line 79
    .line 80
    aput-object v0, v2, p0

    .line 81
    .line 82
    const/16 p0, 0xb

    .line 83
    .line 84
    const-string v0, "21:00"

    .line 85
    .line 86
    aput-object v0, v2, p0

    .line 87
    .line 88
    const/16 p0, 0xc

    .line 89
    .line 90
    const-string v0, "is_player"

    .line 91
    .line 92
    aput-object v0, v2, p0

    .line 93
    .line 94
    const/16 p0, 0xd

    .line 95
    .line 96
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 97
    .line 98
    aput-object v0, v2, p0

    .line 99
    .line 100
    const/16 p0, 0xe

    .line 101
    .line 102
    const-string v0, "support_point"

    .line 103
    .line 104
    aput-object v0, v2, p0

    .line 105
    .line 106
    const/16 p0, 0xf

    .line 107
    .line 108
    aput-object v4, v2, p0

    .line 109
    .line 110
    const/16 p0, 0x10

    .line 111
    .line 112
    const-string v0, "support_sum"

    .line 113
    .line 114
    aput-object v0, v2, p0

    .line 115
    .line 116
    const/16 p0, 0x11

    .line 117
    .line 118
    aput-object v4, v2, p0

    .line 119
    .line 120
    const/16 p0, 0x12

    .line 121
    .line 122
    const-string v0, "rank"

    .line 123
    .line 124
    aput-object v0, v2, p0

    .line 125
    .line 126
    const/16 p0, 0x13

    .line 127
    .line 128
    aput-object v4, v2, p0

    .line 129
    .line 130
    const/16 p0, 0x14

    .line 131
    .line 132
    const-string v0, "left_support_times"

    .line 133
    .line 134
    aput-object v0, v2, p0

    .line 135
    .line 136
    const/16 p0, 0x15

    .line 137
    .line 138
    aput-object v3, v2, p0

    .line 139
    .line 140
    const/16 p0, 0x16

    .line 141
    .line 142
    const-string v0, "support_times"

    .line 143
    .line 144
    aput-object v0, v2, p0

    .line 145
    .line 146
    const/16 p0, 0x17

    .line 147
    .line 148
    aput-object v3, v2, p0

    .line 149
    .line 150
    const-string p0, "status"

    .line 151
    .line 152
    invoke-static {p0, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->e1()Ljava/util/LinkedHashMap;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 161
    .line 162
    invoke-direct {v1, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 163
    .line 164
    .line 165
    const-string v2, "world_war_info"

    .line 166
    .line 167
    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    const-string v3, "return_info"

    .line 171
    .line 172
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 179
    .line 180
    .line 181
    return-object v0
.end method

.method public static o0()Ljava/util/ArrayList;
    .locals 23

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "uid"

    const-string v2, "100002"

    const-string v3, "nick"

    const-string v4, "Opponent"

    const-string v5, "server"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-string v7, "server_id"

    const-string v9, "gid"

    const-string v10, "101001"

    const-string v11, "level"

    const-string v13, "rank"

    const-string v15, "fightPoint"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v6, v18

    move-object/from16 v8, v18

    move-object/from16 v12, v18

    move-object/from16 v14, v18

    move-object/from16 v16, v22

    filled-new-array/range {v1 .. v16}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "100002"

    const-string v3, "player_id"

    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "uid"

    const-string v8, "100003"

    const-string v9, "nick"

    const-string v10, "Opponent2"

    const-string v11, "server"

    const-string v13, "server_id"

    const-string v15, "gid"

    const-string v16, "101002"

    const-string v17, "level"

    const-string v19, "rank"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string v21, "fightPoint"

    filled-new-array/range {v7 .. v22}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "100003"

    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static p(Ljava/util/List;)Ljava/util/LinkedHashMap;
    .locals 18

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "ret"

    .line 12
    .line 13
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const-string v3, "code"

    .line 17
    .line 18
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-string v3, "result"

    .line 22
    .line 23
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const-string v3, "msg"

    .line 29
    .line 30
    const-string v4, "success"

    .line 31
    .line 32
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    const-string v3, "error_code"

    .line 36
    .line 37
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    new-instance v3, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    if-nez p0, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_2

    .line 57
    .line 58
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    instance-of v6, v5, Ljava/util/Map;

    .line 63
    .line 64
    if-nez v6, :cond_1

    .line 65
    .line 66
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    check-cast v5, Ljava/util/Map;

    .line 71
    .line 72
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 73
    .line 74
    invoke-direct {v6, v5}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v5}, Lcom/sgscq/vpn/handler/d1;->F(Ljava/util/Map;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    const-string v7, "email_type"

    .line 82
    .line 83
    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    const-string v7, "mail_type"

    .line 87
    .line 88
    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    :goto_1
    const-string v4, "email_list"

    .line 96
    .line 97
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 101
    .line 102
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v5, "system"

    .line 106
    .line 107
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    const-string v6, "friend"

    .line 111
    .line 112
    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    const-string v7, "gift"

    .line 116
    .line 117
    invoke-interface {v4, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    const-string v8, "event"

    .line 121
    .line 122
    invoke-interface {v4, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    const-string v9, "pay"

    .line 126
    .line 127
    invoke-interface {v4, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_5

    .line 139
    .line 140
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    instance-of v10, v3, Ljava/util/Map;

    .line 145
    .line 146
    if-nez v10, :cond_4

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_4
    check-cast v3, Ljava/util/Map;

    .line 150
    .line 151
    invoke-static {v3}, Lcom/sgscq/vpn/handler/d1;->F(Ljava/util/Map;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    if-eqz v10, :cond_3

    .line 160
    .line 161
    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    check-cast v10, Ljava/lang/Integer;

    .line 166
    .line 167
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    add-int/lit8 v10, v10, 0x1

    .line 172
    .line 173
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    invoke-interface {v4, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_5
    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    new-array v3, v1, [Ljava/lang/Object;

    .line 186
    .line 187
    const-string v5, "num"

    .line 188
    .line 189
    invoke-static {v5, v2, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    const-string v10, "friend_email"

    .line 194
    .line 195
    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    new-array v6, v1, [Ljava/lang/Object;

    .line 200
    .line 201
    invoke-static {v5, v3, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 202
    .line 203
    .line 204
    move-result-object v11

    .line 205
    const-string v12, "gift_email"

    .line 206
    .line 207
    invoke-virtual {v4, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    new-array v6, v1, [Ljava/lang/Object;

    .line 212
    .line 213
    invoke-static {v5, v3, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 214
    .line 215
    .line 216
    move-result-object v13

    .line 217
    const-string v14, "event_email"

    .line 218
    .line 219
    invoke-virtual {v4, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    new-array v6, v1, [Ljava/lang/Object;

    .line 224
    .line 225
    invoke-static {v5, v3, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 226
    .line 227
    .line 228
    move-result-object v15

    .line 229
    const-string v16, "pay_email"

    .line 230
    .line 231
    invoke-virtual {v4, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    new-array v4, v1, [Ljava/lang/Object;

    .line 236
    .line 237
    invoke-static {v5, v3, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 238
    .line 239
    .line 240
    move-result-object v17

    .line 241
    filled-new-array/range {v10 .. v17}, [Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    const-string v4, "system_email"

    .line 246
    .line 247
    invoke-static {v4, v2, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    const-string v3, "push_info"

    .line 252
    .line 253
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    const-string v3, "push"

    .line 257
    .line 258
    new-array v1, v1, [Ljava/lang/Object;

    .line 259
    .line 260
    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    const-string v2, "cmn"

    .line 265
    .line 266
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    return-object v0
.end method

.method public static p0(Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Z)I
    .locals 3

    .line 1
    const-string v0, "combat_exp"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x1

    .line 8
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    const-string v0, "pro_combat_exp"

    .line 16
    .line 17
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-lez v0, :cond_1

    .line 26
    .line 27
    return v0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    if-eqz p1, :cond_b

    .line 30
    .line 31
    if-nez p2, :cond_2

    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_2
    const-string v1, "id"

    .line 36
    .line 37
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "general_id"

    .line 42
    .line 43
    invoke-interface {p0, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_b

    .line 56
    .line 57
    const-string v2, "null"

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    instance-of v1, p1, Ljava/util/Map;

    .line 71
    .line 72
    if-nez v1, :cond_4

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    check-cast p1, Ljava/util/Map;

    .line 76
    .line 77
    if-eqz p3, :cond_5

    .line 78
    .line 79
    const-string p3, "general_soul_eated_exp_type"

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    const-string p3, "eated_exp_type"

    .line 83
    .line 84
    :goto_0
    const-string v1, ""

    .line 85
    .line 86
    invoke-interface {p1, p3, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    if-eqz p3, :cond_6

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_6
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    instance-of p2, p1, Ljava/util/List;

    .line 106
    .line 107
    if-eqz p2, :cond_7

    .line 108
    .line 109
    check-cast p1, Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    if-nez p2, :cond_9

    .line 116
    .line 117
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    goto :goto_1

    .line 122
    :cond_7
    instance-of p2, p1, Ljava/util/Map;

    .line 123
    .line 124
    if-eqz p2, :cond_9

    .line 125
    .line 126
    check-cast p1, Ljava/util/Map;

    .line 127
    .line 128
    const-string p2, "1"

    .line 129
    .line 130
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    if-nez p2, :cond_8

    .line 135
    .line 136
    const-string p2, "1.0"

    .line 137
    .line 138
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    goto :goto_1

    .line 143
    :cond_8
    move-object p1, p2

    .line 144
    goto :goto_1

    .line 145
    :cond_9
    const/4 p1, 0x0

    .line 146
    :goto_1
    instance-of p2, p1, Ljava/util/Map;

    .line 147
    .line 148
    if-nez p2, :cond_a

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_a
    check-cast p1, Ljava/util/Map;

    .line 152
    .line 153
    const-string p2, "num"

    .line 154
    .line 155
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {p1, v0}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    :cond_b
    :goto_2
    if-lez v0, :cond_c

    .line 164
    .line 165
    return v0

    .line 166
    :cond_c
    const-string p1, "grade"

    .line 167
    .line 168
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    const/4 p1, 0x1

    .line 173
    invoke-static {p0, p1}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    const/4 p1, 0x5

    .line 178
    mul-int/2addr p0, p1

    .line 179
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    return p0
.end method

.method public static q(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    const-string v0, "600242"

    invoke-static {v0, p0}, Lcom/sgscq/vpn/handler/d1;->j0(Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "festival_gift_status"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/d1;->O0(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->H0()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "gift_status"

    const-string v3, "list"

    filled-new-array {v2, p0, v3, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "raindew_num"

    invoke-static {v1, v0, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->b1()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "raindew_info"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->H0()Ljava/util/ArrayList;

    move-result-object p0

    const-string v1, "raindew_list"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->H0()Ljava/util/ArrayList;

    move-result-object p0

    const-string v1, "item_list"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static q0(Ljava/util/Map;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "Item"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Map;

    const-string v0, "upd"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static r(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/handler/d1;->M0(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->c1()Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    const-string v2, "reward_list"

    .line 13
    .line 14
    invoke-static {v2, p0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v3, "return_info"

    .line 19
    .line 20
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public static r0(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashSet;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v1, "cmn_modules"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static s(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 11

    .line 1
    const-string v0, "world_war_point"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/sgscq/vpn/handler/d1;->S0(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "round"

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const-string v3, "session"

    .line 28
    .line 29
    const-string v5, "player_nick"

    .line 30
    .line 31
    const-string v6, "Player"

    .line 32
    .line 33
    const-string v7, "status"

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v10

    .line 40
    const-string v9, "point"

    .line 41
    .line 42
    move-object v2, v4

    .line 43
    move-object v8, v10

    .line 44
    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "date"

    .line 49
    .line 50
    const-string v3, "2026-06-11"

    .line 51
    .line 52
    invoke-static {v2, v3, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    const-string v1, "support_list"

    .line 60
    .line 61
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "point"

    .line 66
    .line 67
    invoke-static {v1, p0, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->e1()Ljava/util/LinkedHashMap;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v1, "return_info"

    .line 76
    .line 77
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 81
    .line 82
    .line 83
    return-object v0
.end method

.method public static s0(Ljava/util/Map;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "Item"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Map;

    const-string v0, "del"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static t()Ljava/util/LinkedHashMap;
    .locals 7

    .line 1
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->J0()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "award_list"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v2}, Lcom/sgscq/vpn/handler/d1;->M0(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string v3, "is_inlist"

    .line 13
    .line 14
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    .line 16
    const-string v5, "status"

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "rank_list"

    .line 28
    .line 29
    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->c1()Ljava/util/LinkedHashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "return_info"

    .line 38
    .line 39
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 43
    .line 44
    .line 45
    return-object v1
.end method

.method public static t0(Ljava/util/Map;Ljava/util/Map;)[Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "id"

    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "item_id"

    .line 15
    .line 16
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/sgscq/vpn/p5;->h0(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    const-string p1, "Player"

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    const-string p1, "Item"

    .line 36
    .line 37
    if-nez p0, :cond_1

    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    :goto_0
    instance-of v1, p0, Ljava/util/Map;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    check-cast p0, Ljava/util/Map;

    .line 52
    .line 53
    const-string v1, "del"

    .line 54
    .line 55
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Lcom/sgscq/vpn/handler/d1;->c0(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    const-string v1, "upd"

    .line 66
    .line 67
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1}, Lcom/sgscq/vpn/handler/d1;->c0(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    const-string v1, "add"

    .line 78
    .line 79
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {p0}, Lcom/sgscq/vpn/handler/d1;->c0(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-nez p0, :cond_3

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    :goto_1
    move p0, v2

    .line 91
    goto :goto_3

    .line 92
    :cond_4
    :goto_2
    const/4 p0, 0x1

    .line 93
    :goto_3
    if-eqz p0, :cond_5

    .line 94
    .line 95
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :cond_5
    new-array p0, v2, [Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, [Ljava/lang/String;

    .line 105
    .line 106
    return-object p0
.end method

.method public static u(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/16 v1, 0x3f

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ltz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_1
    const-string v1, "/hd_resource/"

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v1, ".jpg"

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    :cond_2
    return v0
.end method

.method public static u0()[B
    .locals 1

    .line 1
    const-string v0, "HTTP/1.1 404 Not Found\r\nContent-Length: 0\r\n\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static v(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/Map;

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p0, Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "del"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "upd"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static v0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
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

.method public static w(Ljava/util/LinkedHashMap;)[Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "cmn_modules"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_3
    :goto_1
    new-array p0, v1, [Ljava/lang/String;

    return-object p0
.end method

.method public static w0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static x(Ljava/lang/Object;II)I
    .locals 7

    .line 1
    const-string v0, "exp_need"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_5

    .line 7
    .line 8
    :cond_0
    instance-of v2, p0, Ljava/util/Map;

    .line 9
    .line 10
    const-string v3, "extra_buff"

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v2, :cond_5

    .line 14
    .line 15
    move-object v2, p0

    .line 16
    check-cast v2, Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-nez v5, :cond_2

    .line 23
    .line 24
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v5, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    :goto_0
    move v5, v4

    .line 34
    :goto_1
    if-eqz v5, :cond_3

    .line 35
    .line 36
    goto/16 :goto_6

    .line 37
    .line 38
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    if-nez v5, :cond_4

    .line 47
    .line 48
    int-to-double v5, p1

    .line 49
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    :cond_4
    if-eqz v5, :cond_5

    .line 58
    .line 59
    move-object p0, v5

    .line 60
    :cond_5
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    instance-of v2, p0, Ljava/util/List;

    .line 65
    .line 66
    if-eqz v2, :cond_7

    .line 67
    .line 68
    check-cast p0, Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_6

    .line 75
    .line 76
    goto :goto_5

    .line 77
    :cond_6
    sub-int/2addr p1, v4

    .line 78
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    sub-int/2addr v2, v4

    .line 83
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    instance-of p1, p0, Ljava/util/Map;

    .line 92
    .line 93
    if-eqz p1, :cond_d

    .line 94
    .line 95
    :goto_2
    move-object v2, p0

    .line 96
    check-cast v2, Ljava/util/Map;

    .line 97
    .line 98
    goto :goto_6

    .line 99
    :cond_7
    instance-of v2, p0, Ljava/util/Map;

    .line 100
    .line 101
    if-eqz v2, :cond_d

    .line 102
    .line 103
    move-object v2, p0

    .line 104
    check-cast v2, Ljava/util/Map;

    .line 105
    .line 106
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-nez p0, :cond_9

    .line 111
    .line 112
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-eqz p0, :cond_8

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_8
    move p0, v1

    .line 120
    goto :goto_4

    .line 121
    :cond_9
    :goto_3
    move p0, v4

    .line 122
    :goto_4
    if-eqz p0, :cond_a

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :cond_a
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    if-nez p0, :cond_b

    .line 134
    .line 135
    int-to-double v5, p1

    .line 136
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    :cond_b
    if-nez p0, :cond_c

    .line 145
    .line 146
    sub-int/2addr p1, v4

    .line 147
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    :cond_c
    instance-of p1, p0, Ljava/util/Map;

    .line 156
    .line 157
    if-eqz p1, :cond_d

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_d
    :goto_5
    const/4 v2, 0x0

    .line 161
    :goto_6
    if-nez v2, :cond_e

    .line 162
    .line 163
    invoke-static {p2}, Lcom/sgscq/vpn/handler/d1;->H(I)I

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    return p0

    .line 168
    :cond_e
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-static {p0, v1}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    .line 173
    .line 174
    .line 175
    move-result p0

    .line 176
    if-lez p0, :cond_f

    .line 177
    .line 178
    goto :goto_7

    .line 179
    :cond_f
    invoke-static {p2}, Lcom/sgscq/vpn/handler/d1;->H(I)I

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    :goto_7
    return p0
.end method

.method public static x0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
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

.method public static y(Ljava/util/LinkedHashMap;)Z
    .locals 9

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "result"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "exp"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    move-result v0

    const/4 v2, 0x1

    if-gtz v0, :cond_7

    const-string v0, "level_now"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    move-result v0

    const-string v3, "level_before"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/sgscq/vpn/handler/d1;->a0(Ljava/lang/Object;I)I

    move-result v3

    if-eq v0, v3, :cond_1

    goto :goto_3

    :cond_1
    const-string v0, "delta_data"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_2

    return v1

    :cond_2
    check-cast p0, Ljava/util/Map;

    const-string v0, "General"

    const-string v3, "GeneralSoul"

    const-string v4, "Skill"

    const-string v5, "TeamGeneral"

    filled-new-array {v0, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v0

    move v3, v1

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_6

    aget-object v4, v0, v3

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/util/Map;

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    check-cast v4, Ljava/util/Map;

    const-string v5, "add"

    const-string v6, "del"

    const-string v7, "upd"

    filled-new-array {v6, v7, v5}, [Ljava/lang/String;

    move-result-object v5

    move v6, v1

    :goto_1
    const/4 v7, 0x3

    if-ge v6, v7, :cond_5

    aget-object v7, v5, v6

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/util/List;

    if-eqz v8, :cond_4

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    return v2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_3
    return v2
.end method

.method public static y0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static z(Ljava/util/Map;)Ljava/util/List;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "beauty_exchange_goods"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    instance-of v3, v2, Ljava/util/List;

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    check-cast v2, Ljava/util/List;

    .line 14
    .line 15
    return-object v2

    .line 16
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "item_id"

    .line 22
    .line 23
    const-string v4, "600270"

    .line 24
    .line 25
    const-string v5, "item_name"

    .line 26
    .line 27
    const-string v6, "itemname600270"

    .line 28
    .line 29
    const-string v7, "item_num"

    .line 30
    .line 31
    const/4 v8, 0x1

    .line 32
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v14

    .line 36
    const-string v9, "price"

    .line 37
    .line 38
    const/16 v8, 0xa

    .line 39
    .line 40
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v12

    .line 44
    const-string v11, "discount_price"

    .line 45
    .line 46
    const-string v13, "currency_type"

    .line 47
    .line 48
    const-string v15, "exchange_num"

    .line 49
    .line 50
    const/16 v8, 0x63

    .line 51
    .line 52
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v16

    .line 56
    const-string v17, "exchanged_num"

    .line 57
    .line 58
    const/4 v8, 0x0

    .line 59
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v18

    .line 63
    move-object v8, v14

    .line 64
    move-object v10, v12

    .line 65
    filled-new-array/range {v3 .. v18}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const-string v4, "pk_id"

    .line 70
    .line 71
    const-string v5, "1"

    .line 72
    .line 73
    invoke-static {v4, v5, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    return-object v2
.end method

.method public static z0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public N0()Lcom/sgscq/vpn/p7;
    .locals 3

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/handler/d1;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_1

    .line 10
    :pswitch_0
    check-cast v2, Lcom/sgscq/vpn/handler/k0;

    .line 11
    .line 12
    iget-object v0, v2, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {v0}, Lcom/sgscq/vpn/p7;->h(Landroid/content/Context;)Lcom/sgscq/vpn/p7;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/sgscq/vpn/p7;->i()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-object v1

    .line 25
    :goto_1
    check-cast v2, Lcom/sgscq/vpn/handler/k0;

    .line 26
    .line 27
    iget-object v0, v2, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    invoke-static {v0}, Lcom/sgscq/vpn/p7;->h(Landroid/content/Context;)Lcom/sgscq/vpn/p7;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/sgscq/vpn/p7;->i()V

    .line 37
    .line 38
    .line 39
    :goto_2
    return-object v1

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public O(Ljava/lang/String;)[B
    .locals 9

    .line 1
    const-string v0, "[HD] not found in zip: "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    const/16 v2, 0x3f

    .line 8
    .line 9
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ltz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move-object v2, p1

    .line 21
    :goto_0
    const-string v3, "/hd_resource/"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-gez v3, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    add-int/lit8 v3, v3, 0xd

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_3

    .line 41
    .line 42
    const-string v3, "/"

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_3

    .line 49
    .line 50
    const-string v3, "\\"

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_3

    .line 57
    .line 58
    const-string v3, ".."

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_4

    .line 65
    .line 66
    :cond_3
    :goto_1
    const/4 v2, 0x0

    .line 67
    :cond_4
    const-string v3, "SGSCQ_SRV"

    .line 68
    .line 69
    if-nez v2, :cond_5

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v1, "[HD] invalid path: "

    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {v3, p1}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_6

    .line 89
    .line 90
    :cond_5
    new-instance p1, Ljava/io/File;

    .line 91
    .line 92
    new-instance v4, Ljava/io/File;

    .line 93
    .line 94
    iget-object v5, p0, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v5, Lcom/sgscq/vpn/handler/k0;

    .line 97
    .line 98
    iget-object v5, v5, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 99
    .line 100
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    const-string v6, "hd"

    .line 105
    .line 106
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v5, "hd_image.zip"

    .line 110
    .line 111
    invoke-direct {p1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-nez v4, :cond_6

    .line 119
    .line 120
    const-string p1, "[HD] zip not imported, miss: "

    .line 121
    .line 122
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {v3, p1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_6

    .line 130
    .line 131
    :cond_6
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    .line 132
    .line 133
    invoke-direct {v4, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 135
    .line 136
    :try_start_1
    invoke-virtual {v4, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-nez p1, :cond_7

    .line 141
    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {v3, p1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->u0()[B

    .line 150
    .line 151
    .line 152
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 153
    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 154
    .line 155
    .line 156
    return-object p1

    .line 157
    :cond_7
    :try_start_3
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 158
    .line 159
    .line 160
    move-result-wide v5

    .line 161
    const-wide/16 v7, 0x0

    .line 162
    .line 163
    cmp-long v0, v5, v7

    .line 164
    .line 165
    if-lez v0, :cond_8

    .line 166
    .line 167
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 168
    .line 169
    long-to-int v5, v5

    .line 170
    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 175
    .line 176
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 177
    .line 178
    .line 179
    :goto_2
    invoke-virtual {v4, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 180
    .line 181
    .line 182
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 183
    const/16 v5, 0x2000

    .line 184
    .line 185
    :try_start_4
    new-array v5, v5, [B

    .line 186
    .line 187
    :goto_3
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    const/4 v7, -0x1

    .line 192
    if-eq v6, v7, :cond_9

    .line 193
    .line 194
    invoke-virtual {v0, v5, v1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 195
    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v1, "[HD] serve "

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v1, " ("

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    array-length v1, p1

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v1, " bytes)"

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-static {v3, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-static {p1}, Lcom/sgscq/vpn/handler/d1;->n([B)[B

    .line 240
    .line 241
    .line 242
    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 243
    :try_start_6
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 244
    .line 245
    .line 246
    return-object p1

    .line 247
    :catchall_0
    move-exception v0

    .line 248
    if-eqz p1, :cond_a

    .line 249
    .line 250
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 251
    .line 252
    .line 253
    goto :goto_4

    .line 254
    :catchall_1
    move-exception p1

    .line 255
    :try_start_8
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 256
    .line 257
    .line 258
    :cond_a
    :goto_4
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 259
    :catchall_2
    move-exception p1

    .line 260
    :try_start_9
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 261
    .line 262
    .line 263
    goto :goto_5

    .line 264
    :catchall_3
    move-exception v0

    .line 265
    :try_start_a
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 266
    .line 267
    .line 268
    :goto_5
    throw p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 269
    :catch_0
    move-exception p1

    .line 270
    const-string v0, "[HD] read error for "

    .line 271
    .line 272
    const-string v1, ": "

    .line 273
    .line 274
    invoke-static {v0, v2, v1}, La/b0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-static {p1, v0, v3}, Lc/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    :goto_6
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->u0()[B

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    return-object p1
.end method

.method public P(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)[B
    .locals 63

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const/16 v4, 0xa

    .line 1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x64

    .line 2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v5, 0x0

    .line 3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v5, 0x1

    .line 4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v5, "item_id"

    const-string v6, "item_num"

    const-string v7, "add_list"

    const-string v8, "1"

    const-string v9, "0"

    const-string v10, "item_list"

    iget v11, v0, Lcom/sgscq/vpn/handler/d1;->a:I

    const-string v12, "upd"

    move-object/from16 v16, v12

    const-string v12, "del"

    move-object/from16 v17, v12

    const-string v12, "pk_id"

    move-object/from16 v18, v9

    const-string v9, "Item"

    move-object/from16 v25, v9

    const-string v9, "delta_data"

    move-object/from16 v19, v13

    const-string v13, "cmn"

    move-object/from16 v20, v8

    iget-object v8, v0, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    const/16 v21, 0x0

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    move-object v9, v1

    move-object v6, v3

    move-object v3, v0

    .line 5
    invoke-direct {v3, v9, v6}, Lcom/sgscq/vpn/handler/d1;->X(Ljava/lang/String;Ljava/util/Map;)[B

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct {v0, v1, v3}, Lcom/sgscq/vpn/handler/d1;->W(Ljava/lang/String;Ljava/util/Map;)[B

    move-result-object v1

    return-object v1

    :pswitch_2
    invoke-direct/range {p0 .. p2}, Lcom/sgscq/vpn/handler/d1;->V(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    return-object v1

    :pswitch_3
    invoke-direct/range {p0 .. p3}, Lcom/sgscq/vpn/handler/d1;->U(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)[B

    move-result-object v1

    return-object v1

    :pswitch_4
    const-string v3, "version.check"

    .line 6
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "SGSCQ_SRV"

    if-nez v3, :cond_1

    const-string v3, "versionPlus.check"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_2

    const-string v1, "hd_resource"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ".zip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "[Update] ZIP download blocked - patch feature disabled"

    .line 7
    invoke-static {v4, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v8, Lcom/sgscq/vpn/handler/k0;

    const/16 v1, 0x194

    const-string v2, "{\"error\":\"patch file not found\"}"

    invoke-virtual {v8, v2, v1}, Lcom/sgscq/vpn/handler/k0;->f(Ljava/lang/String;I)[B

    move-result-object v21

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "[VersionCheck] Patch feature disabled globally"

    .line 8
    invoke-static {v4, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v8, Lcom/sgscq/vpn/handler/k0;

    const-string v1, "{\"ret\":0,\"code\":0,\"result\":false,\"msg\":\"no update\"}"

    invoke-virtual {v8, v1}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    move-result-object v21

    :cond_2
    :goto_1
    return-object v21

    .line 9
    :pswitch_5
    invoke-direct {v0, v1, v3}, Lcom/sgscq/vpn/handler/d1;->T(Ljava/lang/String;Ljava/util/Map;)[B

    move-result-object v1

    return-object v1

    :pswitch_6
    invoke-direct {v0, v1, v3}, Lcom/sgscq/vpn/handler/d1;->S(Ljava/lang/String;Ljava/util/Map;)[B

    move-result-object v1

    return-object v1

    :pswitch_7
    invoke-direct {v0, v1, v3}, Lcom/sgscq/vpn/handler/d1;->R(Ljava/lang/String;Ljava/util/Map;)[B

    move-result-object v1

    return-object v1

    .line 10
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/d1;->d0(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_f

    :cond_3
    move-object v2, v8

    check-cast v2, Lcom/sgscq/vpn/handler/k0;

    invoke-virtual {v2, v3}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    iget-object v8, v2, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-virtual {v8, v11}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v16

    if-nez v16, :cond_4

    new-instance v16, Ljava/util/LinkedHashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_4
    move-object/from16 v0, v16

    move-object/from16 v16, v8

    const-string v8, "festival.goFight"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v1, "festival_score"

    move-object/from16 v31, v13

    const-string v13, "cmn_modules"

    if-eqz v8, :cond_9

    const-string v5, "boss_dungeon_id"

    .line 11
    invoke-static {v5, v3}, Lcom/sgscq/vpn/handler/d1;->z0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v5, "dungeon_id"

    invoke-static {v5, v3}, Lcom/sgscq/vpn/handler/d1;->z0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const-string v12, "boss_id"

    if-eqz v6, :cond_6

    invoke-static {v12, v3}, Lcom/sgscq/vpn/handler/d1;->z0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v3, v20

    goto :goto_2

    :cond_7
    move-object v3, v5

    :goto_2
    const-string v10, "user_power"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/sgscq/vpn/handler/d1;->O0(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_8

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/sgscq/vpn/handler/d1;->O0(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "festival_kill_num"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/sgscq/vpn/handler/d1;->O0(Ljava/lang/Object;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "festival_last_boss_dungeon_id"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "festival_boss_hp_percent"

    invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "general_exp"

    const-string v7, "user_coin"

    const-string v9, "score"

    const-string v17, "add_list"

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v14

    move-object/from16 p2, v2

    move-object/from16 v2, v16

    move-object v8, v14

    move-object/from16 p3, v2

    move-object v2, v10

    move-object v10, v4

    move-object/from16 v32, v11

    move-object/from16 v11, v17

    move-object/from16 v23, v13

    move-object v13, v12

    move-object/from16 v12, v18

    filled-new-array/range {v5 .. v12}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "user_exp"

    invoke-static {v6, v14, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v44

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v5, "rounds"

    const-string v7, "residue_team_num"

    const-string v9, "residue_team_percent"

    const-string v11, "extra_integration"

    move-object v6, v15

    move-object v8, v15

    move-object/from16 v10, v19

    move-object/from16 v22, v15

    move-object v15, v12

    move-object v12, v4

    filled-new-array/range {v5 .. v12}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "star_level"

    invoke-static {v5, v15, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v36

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v33, "fight_type"

    const-string v34, "festival"

    const-string v35, "fight_calculate_info"

    const-string v37, "player_info"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/sgscq/vpn/handler/d1;->O0(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/sgscq/vpn/handler/d1;->O0(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v5, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v38

    const-string v39, "show_general_info"

    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    const-string v41, "add_list"

    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    const-string v43, "drop_info"

    filled-new-array/range {v33 .. v44}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "success"

    invoke-static {v5, v4, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v15, "boss_dungeon_id"

    const-string v17, "rounds"

    const-string v19, "team"

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    const-string v21, "enemy"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/Map;

    const-string v5, "hp_percent"

    filled-new-array {v5, v14}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v13, v3, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v11, v22

    move-object/from16 v16, v3

    move-object/from16 v18, v11

    move-object/from16 v22, v4

    filled-new-array/range {v15 .. v22}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "fight_type"

    const-string v5, "festival"

    invoke-static {v4, v5, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->b1()Ljava/util/LinkedHashMap;

    move-result-object v4

    const-string v6, "fight_info"

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "fight_result"

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v1, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v3, "return_info"

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/sgscq/vpn/handler/d1;->j(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "festival_info"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "boss_info"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "kill_info"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Player"

    move-object/from16 v8, v23

    invoke-interface {v4, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v14, p3

    move-object/from16 v13, v32

    .line 12
    invoke-virtual {v14, v13, v0}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v15, p2

    .line 13
    iget-object v1, v15, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v5

    long-to-int v3, v5

    invoke-virtual {v15}, Lcom/sgscq/vpn/handler/k0;->a()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v15, v5, v6, v0}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    move-result-wide v27

    invoke-virtual {v15}, Lcom/sgscq/vpn/handler/k0;->c()I

    move-result v5

    const-string v6, "user_gold"

    invoke-virtual {v15, v5, v6, v0}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v24

    invoke-virtual {v15}, Lcom/sgscq/vpn/handler/k0;->b()I

    move-result v5

    const-string v6, "user_energy"

    invoke-virtual {v15, v5, v6, v0}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v25

    invoke-virtual {v15}, Lcom/sgscq/vpn/handler/k0;->d()I

    move-result v5

    invoke-virtual {v15, v5, v2, v0}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v26

    move-object/from16 v22, v1

    move/from16 v23, v3

    move-object/from16 v29, v13

    move-object/from16 v30, v0

    invoke-virtual/range {v22 .. v30}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v14, v0, v1, v2}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object/from16 v2, v31

    .line 14
    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    goto/16 :goto_e

    :cond_9
    move-object v8, v13

    move-object/from16 v14, v16

    move-object v13, v11

    move-object v11, v15

    move-object v15, v2

    move-object/from16 v2, v31

    const-string v4, "festival.scoreBuy"

    move-object/from16 p2, v15

    move-object v15, v1

    move-object/from16 v1, p1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v2, ","

    if-eqz v4, :cond_10

    .line 15
    invoke-static {v12, v3}, Lcom/sgscq/vpn/handler/d1;->z0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v1, v20

    :cond_a
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->U0()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 16
    invoke-static {v4, v12, v1}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    goto :goto_3

    :cond_c
    move-object/from16 v4, v21

    :goto_3
    if-nez v4, :cond_d

    const-string v1, "\u5151\u6362\u7269\u54c1\u4e0d\u5b58\u5728"

    goto :goto_4

    .line 17
    :cond_d
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "price"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sgscq/vpn/handler/d1;->O0(Ljava/lang/Object;)I

    move-result v3

    const-string v5, "600239"

    invoke-static {v3, v5, v0}, Lcom/sgscq/vpn/handler/d1;->Y0(ILjava/lang/String;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v1, "\u79ef\u5206\u4e0d\u8db3"

    :goto_4
    invoke-static {v1}, Lcom/sgscq/vpn/handler/d1;->K(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    goto :goto_6

    :cond_e
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sgscq/vpn/handler/d1;->O0(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3, v1, v0}, Lcom/sgscq/vpn/handler/d1;->c(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 18
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->b1()Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->U0()Ljava/util/ArrayList;

    move-result-object v6

    const-string v11, "score_list"

    invoke-interface {v4, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {v3, v1}, Lcom/sgscq/vpn/handler/d1;->L0(ILjava/util/Map;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v4, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5, v0}, Lcom/sgscq/vpn/handler/d1;->j0(Ljava/lang/String;Ljava/util/Map;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/sgscq/vpn/handler/d1;->D(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v4, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v0}, Lcom/sgscq/vpn/handler/d1;->B(Ljava/util/LinkedHashMap;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/sgscq/vpn/handler/d1;->t0(Ljava/util/Map;Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v1

    if-lez v5, :cond_f

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    :goto_5
    array-length v6, v1

    if-ge v5, v6, :cond_f

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v4

    .line 20
    :goto_6
    invoke-virtual {v14, v13, v0}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v1, v0}, Lcom/sgscq/vpn/handler/d1;->B(Ljava/util/LinkedHashMap;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Lcom/sgscq/vpn/handler/d1;->w(Ljava/util/LinkedHashMap;)[Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2, v4, v3}, Lcom/sgscq/vpn/handler/d1;->h(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    :goto_7
    move-object v4, v1

    move-object/from16 v13, v31

    goto/16 :goto_c

    :cond_10
    move-object v4, v0

    move-object/from16 v0, p0

    const-string v15, "festival.getGift"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17

    .line 21
    invoke-static {v12, v3}, Lcom/sgscq/vpn/handler/d1;->z0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v1, v20

    :cond_11
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->H0()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 22
    invoke-static {v10, v12, v1}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_12

    goto :goto_8

    :cond_13
    move-object/from16 v10, v21

    :goto_8
    if-nez v10, :cond_14

    const-string v1, "\u793c\u5305\u4e0d\u5b58\u5728"

    goto :goto_9

    :cond_14
    const-string v1, "need_num"

    .line 23
    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sgscq/vpn/handler/d1;->O0(Ljava/lang/Object;)I

    move-result v1

    const-string v3, "600242"

    invoke-static {v1, v3, v4}, Lcom/sgscq/vpn/handler/d1;->Y0(ILjava/lang/String;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "\u96e8\u9732\u4e0d\u8db3"

    :goto_9
    invoke-static {v1}, Lcom/sgscq/vpn/handler/d1;->K(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    goto :goto_b

    :cond_15
    const-string v1, "festival_gift_status"

    invoke-interface {v4, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sgscq/vpn/handler/d1;->O0(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v4}, Lcom/sgscq/vpn/handler/d1;->c(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v4}, Lcom/sgscq/vpn/handler/d1;->q(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-static {v1, v3}, Lcom/sgscq/vpn/handler/d1;->L0(ILjava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v5, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lcom/sgscq/vpn/handler/d1;->D(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v5, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5, v4}, Lcom/sgscq/vpn/handler/d1;->B(Ljava/util/LinkedHashMap;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/sgscq/vpn/handler/d1;->t0(Ljava/util/Map;Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v6, v1

    if-lez v6, :cond_16

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    :goto_a
    array-length v7, v1

    if-ge v6, v7, :cond_16

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    aget-object v7, v1, v6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v5

    .line 24
    :goto_b
    invoke-virtual {v14, v13, v4}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v1, v4}, Lcom/sgscq/vpn/handler/d1;->B(Ljava/util/LinkedHashMap;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Lcom/sgscq/vpn/handler/d1;->w(Ljava/util/LinkedHashMap;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v13, v2, v4, v3}, Lcom/sgscq/vpn/handler/d1;->h(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    goto/16 :goto_7

    :goto_c
    invoke-interface {v4, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_17
    const-string v2, "festival.getScoreList"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 25
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->b1()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->U0()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "score_list"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    move-object v4, v1

    goto :goto_e

    :cond_18
    const-string v2, "festival.getRainDewList"

    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 27
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->b1()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->H0()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "raindew_list"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_19
    const-string v2, "festival.initRainDew"

    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v4}, Lcom/sgscq/vpn/handler/d1;->q(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v4

    goto :goto_e

    :cond_1a
    invoke-static {v4}, Lcom/sgscq/vpn/handler/d1;->j(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v4

    :goto_e
    invoke-static {v4}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v8, p2

    invoke-virtual {v8, v1}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    move-result-object v21

    :goto_f
    return-object v21

    .line 29
    :pswitch_9
    invoke-direct {v0, v1, v3}, Lcom/sgscq/vpn/handler/d1;->Q(Ljava/lang/String;Ljava/util/Map;)[B

    move-result-object v1

    return-object v1

    :pswitch_a
    move-object v11, v15

    if-eqz v1, :cond_1b

    const-string v2, "beauty."

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_10

    :cond_1b
    const/4 v2, 0x0

    :goto_10
    if-nez v2, :cond_1c

    goto/16 :goto_24

    .line 31
    :cond_1c
    check-cast v8, Lcom/sgscq/vpn/handler/k0;

    invoke-virtual {v8, v3}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v8, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-virtual {v4, v2}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    if-nez v15, :cond_1d

    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    :cond_1d
    iget-object v0, v8, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    move-object/from16 v35, v13

    const-string v13, "beauties.json"

    .line 33
    invoke-static {v0, v13}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v13, "beauty.beautyCruise"

    .line 35
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    move-object/from16 p2, v8

    const-string v8, "beauty_info"

    move-object/from16 v22, v5

    const-string v5, "beauty_cruise_end_time"

    move-object/from16 v23, v12

    const-string v12, "beauty_cruise_status"

    move-object/from16 v24, v6

    const-string v6, "beauty_talent_cruise_level"

    move-object/from16 v26, v9

    const-string v9, "beauty_cruise_id"

    move-object/from16 v27, v10

    const-string v10, "talent_level"

    move-object/from16 v28, v7

    const-string v7, "beauty_id"

    if-eqz v13, :cond_1f

    move-object/from16 v13, v20

    invoke-interface {v3, v7, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v13, v18

    invoke-interface {v3, v10, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v13, 0x0

    .line 36
    invoke-static {v3, v13}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13, v1, v0}, Lcom/sgscq/vpn/handler/d1;->f(ILjava/lang/String;Ljava/util/LinkedHashMap;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1e

    const-string v0, "\u7ea2\u989c\u914d\u7f6e\u4e0d\u5b58\u5728"

    invoke-static {v0}, Lcom/sgscq/vpn/handler/d1;->J(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    goto :goto_11

    :cond_1e
    const-string v13, "cruise_time"

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v13, 0x7080

    invoke-static {v0, v13}, Lcom/sgscq/vpn/handler/d1;->R0(Ljava/lang/Object;I)I

    move-result v0

    const/4 v13, 0x1

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v13

    move-object/from16 v36, v4

    move-object/from16 p3, v5

    int-to-long v4, v0

    add-long/2addr v13, v4

    invoke-interface {v15, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v15, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v15, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v15, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v5, p3

    invoke-interface {v15, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->Z0()Ljava/util/LinkedHashMap;

    move-result-object v4

    const-string v5, "end_time"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v10, v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v1, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-interface {v4, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v4

    move-object/from16 v4, v36

    .line 37
    :goto_11
    invoke-virtual {v4, v2, v15}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    move-object v3, v0

    move-object v1, v2

    move-object/from16 v36, v4

    move-object v10, v15

    move-object/from16 v0, v25

    move-object/from16 v2, v26

    goto/16 :goto_22

    :cond_1f
    move-object/from16 p3, v8

    move-object/from16 v8, v18

    move-object/from16 v13, v20

    move-object/from16 v18, v10

    const-string v10, "beauty.beautyCruiseOver"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    move-object/from16 v19, v7

    const-string v7, "id"

    const-string v3, "600262"

    const-string v1, "600263"

    if-eqz v10, :cond_21

    .line 38
    invoke-interface {v15, v9, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/4 v13, 0x1

    invoke-static {v10, v13}, Lcom/sgscq/vpn/handler/d1;->R0(Ljava/lang/Object;I)I

    move-result v10

    move-object/from16 v33, v2

    const/4 v2, 0x5

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface {v15, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v15, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v15, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v15, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    mul-int/lit8 v5, v2, 0x64

    invoke-static {v5, v15, v0}, Lcom/sgscq/vpn/handler/d1;->a(ILjava/util/Map;Ljava/util/LinkedHashMap;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "600270"

    filled-new-array {v3, v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    :goto_12
    const/4 v8, 0x3

    if-ge v6, v8, :cond_20

    aget-object v8, v1, v6

    invoke-static {v2, v8, v15}, Lcom/sgscq/vpn/handler/d1;->b(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "item_id"

    const-string v17, "num"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-string v19, "item_num"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string v21, "type"

    const-string v22, "1"

    const-string v23, "item_type"

    move-object v10, v15

    move-object v15, v9

    move-object/from16 v16, v8

    move-object/from16 v24, v11

    filled-new-array/range {v15 .. v24}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object v15, v10

    goto :goto_12

    :cond_20
    move-object v10, v15

    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->Z0()Ljava/util/LinkedHashMap;

    move-result-object v1

    move-object/from16 v15, v28

    invoke-interface {v1, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v27

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "reward_list"

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "drop_list"

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "award_list"

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "addList"

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v36, "item_id"

    const-string v37, "600262"

    const-string v38, "num"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    const-string v40, "item_num"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    const-string v42, "beauty_currency"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    const-string v44, "lingyun_num"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    const-string v46, "spirit_stone"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    const-string v48, "box_num"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    const-string v50, "box_detail"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    const-string v52, "red_coin"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    const-string v54, "reward_list"

    const-string v56, "add_list"

    move-object/from16 v55, v5

    move-object/from16 v57, v5

    filled-new-array/range {v36 .. v57}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v3, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v3, "beauty_cruise_info"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v0}, Lcom/sgscq/vpn/handler/d1;->k0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object/from16 v2, v26

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v33

    .line 39
    invoke-virtual {v4, v0, v10}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    move-object v3, v0

    goto/16 :goto_15

    :cond_21
    move-object/from16 v20, v1

    move-object v10, v15

    move-object/from16 v1, v27

    move-object/from16 v15, v28

    move-object/from16 v27, v6

    move-object/from16 v61, v3

    move-object v3, v2

    move-object/from16 v2, v26

    move-object/from16 v26, v61

    const-string v6, "beauty.addBeautyExperience"

    move-object/from16 v28, v9

    move-object/from16 v9, p1

    move-object/from16 v61, v20

    move-object/from16 v20, v12

    move-object/from16 v12, v61

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    move-object/from16 v6, p4

    move-object/from16 v8, v24

    .line 40
    invoke-interface {v6, v8, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v12, v10}, Lcom/sgscq/vpn/handler/d1;->Z(ILjava/lang/String;Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_22

    const-string v0, "\u7075\u97f5\u4e0d\u8db3"

    invoke-static {v0}, Lcom/sgscq/vpn/handler/d1;->J(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    goto/16 :goto_14

    :cond_22
    invoke-static {v1, v12, v10}, Lcom/sgscq/vpn/handler/d1;->W0(ILjava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v5

    const-string v6, "beauty_talent_level"

    invoke-interface {v10, v6, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/sgscq/vpn/handler/d1;->R0(Ljava/lang/Object;I)I

    move-result v7

    mul-int/lit8 v1, v1, 0xa

    invoke-static {v1, v10, v0}, Lcom/sgscq/vpn/handler/d1;->a(ILjava/util/Map;Ljava/util/LinkedHashMap;)V

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/sgscq/vpn/handler/d1;->R0(Ljava/lang/Object;I)I

    move-result v0

    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->Z0()Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0xe

    new-array v9, v9, [Ljava/lang/Object;

    const-string v11, "attack"

    aput-object v11, v9, v8

    const-string v8, "beauty_attr_attack"

    invoke-interface {v10, v8, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x1

    aput-object v8, v9, v11

    const-string v8, "defense"

    const/4 v11, 0x2

    aput-object v8, v9, v11

    const-string v8, "beauty_attr_defense"

    invoke-interface {v10, v8, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x3

    aput-object v8, v9, v11

    const-string v8, "hp"

    const/4 v11, 0x4

    aput-object v8, v9, v11

    const-string v8, "beauty_attr_hp"

    invoke-interface {v10, v8, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x5

    aput-object v8, v9, v11

    const/4 v8, 0x6

    const-string v11, "wisdom"

    aput-object v11, v9, v8

    const-string v8, "beauty_attr_wisdom"

    invoke-interface {v10, v8, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x7

    aput-object v8, v9, v11

    const/16 v8, 0x8

    const-string v11, "talentLevel"

    aput-object v11, v9, v8

    const/16 v8, 0x9

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v8

    const-string v8, "curMaxLevle"

    const/16 v11, 0xa

    aput-object v8, v9, v11

    const/16 v8, 0xb

    const-string v11, "30"

    aput-object v11, v9, v8

    const/16 v8, 0xc

    const-string v11, "isUplevel"

    aput-object v11, v9, v8

    if-le v0, v7, :cond_23

    const/4 v0, 0x1

    goto :goto_13

    :cond_23
    const/4 v0, 0x0

    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v7, 0xd

    aput-object v0, v9, v7

    const-string v0, "addExperience"

    invoke-static {v0, v1, v9}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-interface {v6, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v6

    .line 41
    :goto_14
    invoke-virtual {v4, v3, v10}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_16

    :cond_24
    move-object/from16 v6, p4

    move-object/from16 v61, v26

    move-object/from16 v26, v5

    move-object/from16 v5, v61

    move-object/from16 v62, v24

    move-object/from16 v24, v8

    move-object/from16 v8, v62

    const-string v12, "beauty.getBeautyExchangeList"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    move-object/from16 v29, v0

    const-string v0, "exchange_list"

    if-eqz v12, :cond_25

    .line 42
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->Z0()Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-static {v10}, Lcom/sgscq/vpn/handler/d1;->z(Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v5

    :goto_15
    move-object v0, v1

    :goto_16
    move-object v1, v3

    move-object v3, v0

    move-object/from16 v0, v25

    goto/16 :goto_1a

    :cond_25
    const-string v12, "beauty.beautyExchange"

    .line 43
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 44
    invoke-static {v10}, Lcom/sgscq/vpn/handler/d1;->z(Ljava/util/Map;)Ljava/util/List;

    move-result-object v9

    move-object/from16 v11, v23

    .line 45
    invoke-interface {v6, v11, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_26
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_27

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    .line 46
    invoke-static {v13, v11, v6}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_26

    goto :goto_17

    :cond_27
    move-object/from16 v13, v21

    :goto_17
    if-nez v13, :cond_28

    const-string v0, "\u5151\u6362\u7269\u54c1\u4e0d\u5b58\u5728"

    move-object/from16 v33, v3

    goto :goto_18

    :cond_28
    const-string v6, "exchange_num"

    .line 47
    invoke-interface {v13, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v12, 0x0

    invoke-static {v6, v12}, Lcom/sgscq/vpn/handler/d1;->R0(Ljava/lang/Object;I)I

    move-result v6

    const-string v14, "exchanged_num"

    move-object/from16 v33, v3

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v12}, Lcom/sgscq/vpn/handler/d1;->R0(Ljava/lang/Object;I)I

    move-result v3

    if-lez v6, :cond_29

    if-lt v3, v6, :cond_29

    const-string v0, "\u5151\u6362\u6b21\u6570\u4e0d\u8db3"

    goto :goto_18

    :cond_29
    const-string v6, "price"

    const/16 v12, 0xa

    .line 48
    invoke-static {v13, v6, v12}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v6

    .line 49
    invoke-static {v6, v5, v10}, Lcom/sgscq/vpn/handler/d1;->Z(ILjava/lang/String;Ljava/util/Map;)Z

    move-result v12

    if-nez v12, :cond_2a

    const-string v0, "\u7ea2\u989c\u5e01\u4e0d\u8db3"

    :goto_18
    invoke-static {v0}, Lcom/sgscq/vpn/handler/d1;->J(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object v3, v0

    move-object/from16 v36, v4

    move-object/from16 v0, v25

    goto/16 :goto_19

    :cond_2a
    invoke-static {v6, v5, v10}, Lcom/sgscq/vpn/handler/d1;->W0(ILjava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v5

    const/4 v6, 0x1

    .line 50
    invoke-static {v13, v8, v6}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v12, v22

    .line 51
    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v36, v4

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4, v10}, Lcom/sgscq/vpn/handler/d1;->b(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    add-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v13, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "beauty_exchange_goods"

    invoke-interface {v10, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->Z0()Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 52
    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v37, "id"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    const-string v39, "item_id"

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    const-string v41, "num"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    const-string v43, "item_num"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    filled-new-array/range {v37 .. v44}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v11, v6, v7}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v6

    .line 53
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-interface {v3, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v25

    .line 55
    invoke-virtual {v5, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v7, v17

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v8, v16

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5, v6}, Lcom/sgscq/vpn/handler/d1;->k0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 56
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_19
    move-object/from16 v1, v33

    move-object/from16 v4, v36

    .line 57
    invoke-virtual {v4, v1, v10}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    :goto_1a
    move-object/from16 v36, v4

    goto/16 :goto_22

    :cond_2b
    move-object v1, v3

    move-object/from16 v0, v25

    .line 58
    invoke-static {}, Lcom/sgscq/vpn/handler/d1;->Z0()Ljava/util/LinkedHashMap;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x1

    :goto_1b
    const-string v7, "beauty_talent_level"

    const/4 v8, 0x6

    const/4 v9, 0x5

    if-gt v6, v9, :cond_32

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    new-array v8, v8, [Ljava/lang/Object;

    const-string v15, "general_id"

    const/16 v16, 0x0

    aput-object v15, v8, v16

    const/4 v15, 0x2

    if-eq v6, v15, :cond_2f

    const/4 v15, 0x3

    if-eq v6, v15, :cond_2e

    const/4 v15, 0x4

    if-eq v6, v15, :cond_2d

    if-eq v6, v9, :cond_2c

    const-string v9, "112018"

    goto :goto_1c

    :cond_2c
    const-string v9, "122024"

    goto :goto_1c

    :cond_2d
    const-string v9, "141007"

    goto :goto_1c

    :cond_2e
    const-string v9, "131009"

    goto :goto_1c

    :cond_2f
    const-string v9, "121014"

    :goto_1c
    const/4 v15, 0x1

    aput-object v9, v8, v15

    const-string v9, "is_lock"

    const/16 v16, 0x2

    aput-object v9, v8, v16

    if-eq v6, v15, :cond_30

    move v9, v15

    goto :goto_1d

    :cond_30
    const/4 v9, 0x0

    :goto_1d
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/16 v16, 0x3

    aput-object v9, v8, v16

    const-string v9, "max_level"

    const/16 v16, 0x4

    aput-object v9, v8, v16

    move-object/from16 v36, v4

    move-object/from16 v9, v19

    invoke-interface {v10, v9, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v15}, Lcom/sgscq/vpn/handler/d1;->R0(Ljava/lang/Object;I)I

    move-result v4

    if-ne v6, v4, :cond_31

    invoke-interface {v10, v7, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lcom/sgscq/vpn/handler/d1;->R0(Ljava/lang/Object;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1e

    :cond_31
    move-object/from16 v4, v24

    :goto_1e
    const/4 v7, 0x5

    aput-object v4, v8, v7

    invoke-static {v9, v12, v8}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v19, v9

    move-object/from16 v4, v36

    goto :goto_1b

    :cond_32
    move-object/from16 v36, v4

    move-object/from16 v9, v19

    new-array v4, v8, [Ljava/lang/Object;

    const-string v6, "beauty_record"

    const/4 v8, 0x0

    aput-object v6, v4, v8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x1

    aput-object v6, v4, v8

    const-string v6, "user_beauty_info"

    const/4 v8, 0x2

    aput-object v6, v4, v8

    move-object/from16 v8, v26

    .line 59
    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 60
    instance-of v11, v8, Ljava/lang/Number;

    const-wide/16 v14, 0x0

    if-eqz v11, :cond_33

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    goto :goto_1f

    :cond_33
    :try_start_0
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1f

    :catch_0
    move-wide v11, v14

    .line 61
    :goto_1f
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v16

    sub-long v11, v11, v16

    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    invoke-interface {v10, v9, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v37, "talent_level"

    move-object/from16 v13, v24

    invoke-interface {v10, v7, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    const-string v39, "current_beauty_experience"

    const-string v7, "beauty_current_experience"

    invoke-interface {v10, v7, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    const-string v41, "attr_attack"

    const-string v7, "beauty_attr_attack"

    invoke-interface {v10, v7, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    const-string v43, "attr_defense"

    const-string v7, "beauty_attr_defense"

    invoke-interface {v10, v7, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v44

    const-string v45, "attr_hp"

    const-string v7, "beauty_attr_hp"

    invoke-interface {v10, v7, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    const-string v47, "attr_wisdom"

    const-string v7, "beauty_attr_wisdom"

    invoke-interface {v10, v7, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    const-string v49, "cruise_status"

    move-object/from16 v7, v20

    invoke-interface {v10, v7, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v50

    const-string v51, "beauty_cruise_id"

    move-object/from16 v7, v28

    invoke-interface {v10, v7, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v52

    const-string v53, "talent_cruise_level"

    move-object/from16 v7, v27

    invoke-interface {v10, v7, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v54

    const-string v55, "end_time"

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v56

    filled-new-array/range {v37 .. v56}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v9, v8, v7}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v4, v8

    const-string v7, "talent_info"

    const/4 v8, 0x4

    aput-object v7, v4, v8

    .line 62
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x5

    const/4 v9, 0x1

    :goto_20
    if-gt v9, v8, :cond_36

    const/4 v8, 0x0

    :goto_21
    const/16 v11, 0x1e

    if-gt v8, v11, :cond_35

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, v29

    invoke-static {v8, v11, v12}, Lcom/sgscq/vpn/handler/d1;->f(ILjava/lang/String;Ljava/util/LinkedHashMap;)Ljava/util/Map;

    move-result-object v11

    if-eqz v11, :cond_34

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v29, v12

    goto :goto_21

    :cond_35
    move-object/from16 v12, v29

    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x5

    goto :goto_20

    :cond_36
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_37

    .line 63
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v37, "beauty_currency"

    const-string v38, "1"

    const-string v39, "box_num"

    const-string v40, "1"

    const-string v41, "box_detail"

    const-string v42, "1"

    const-string v43, "attr_attack"

    const-string v44, "0"

    const-string v45, "attr_defense"

    const-string v46, "0"

    const-string v47, "attr_hp"

    const-string v48, "0"

    const-string v49, "attr_wisdom"

    const-string v50, "0"

    const-string v51, "cruise_time"

    const-string v52, "28800"

    const-string v53, "beauty_experience"

    const-string v54, "500"

    filled-new-array/range {v37 .. v54}, [Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v9, v18

    invoke-static {v9, v13, v8}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    const/4 v8, 0x5

    aput-object v7, v4, v8

    move-object/from16 v7, p3

    .line 64
    invoke-static {v7, v5, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v4

    const-string v8, "beauty"

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "beauty_list"

    invoke-interface {v3, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :goto_22
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/util/Map;

    if-eqz v4, :cond_38

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/util/Map;

    move-object/from16 v8, p2

    goto :goto_23

    :cond_38
    move-object/from16 v8, p2

    move-object v15, v10

    .line 66
    :goto_23
    iget-object v2, v8, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v8}, Lcom/sgscq/vpn/handler/k0;->a()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v8, v5, v6, v10}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    move-result-wide v31

    invoke-virtual {v8}, Lcom/sgscq/vpn/handler/k0;->c()I

    move-result v5

    const-string v6, "user_gold"

    invoke-virtual {v8, v5, v6, v10}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v28

    invoke-virtual {v8}, Lcom/sgscq/vpn/handler/k0;->b()I

    move-result v5

    const-string v6, "user_energy"

    invoke-virtual {v8, v5, v6, v10}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v29

    invoke-virtual {v8}, Lcom/sgscq/vpn/handler/k0;->d()I

    move-result v5

    const-string v6, "user_power"

    invoke-virtual {v8, v5, v6, v10}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v30

    move-object/from16 v26, v2

    move/from16 v27, v4

    move-object/from16 v33, v1

    move-object/from16 v34, v10

    invoke-virtual/range {v26 .. v34}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v36

    invoke-virtual {v2, v15, v1, v0}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object/from16 v1, v35

    .line 67
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    move-result-object v21

    :goto_24
    return-object v21

    :pswitch_b
    move-object v6, v3

    move-object v3, v8

    move-object v2, v9

    move-object v11, v12

    move-object/from16 v8, v16

    move-object/from16 v7, v17

    move-object/from16 v0, v25

    move-object v9, v1

    move-object v1, v13

    move-object/from16 v13, v18

    .line 68
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/d1;->i0(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_39

    move-object/from16 v3, p0

    goto/16 :goto_48

    :cond_39
    move-object v4, v3

    check-cast v4, Lcom/sgscq/vpn/handler/k0;

    invoke-virtual {v4, v6}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    iget-object v10, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-virtual {v10, v5}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    if-nez v12, :cond_3a

    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_3a
    const-string v15, "training.trainingInfo"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    move-object/from16 v16, v10

    const-string v10, "training_status"

    move-object/from16 v31, v1

    const-string v1, "general_leader_id"

    move-object/from16 v18, v13

    const-string v13, ""

    if-eqz v15, :cond_40

    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v2

    .line 69
    invoke-static {v13}, Lcom/sgscq/vpn/handler/d1;->a1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 70
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v12}, Lcom/sgscq/vpn/cloud/m0;->W2(Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_25
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 71
    invoke-static {}, Lcom/sgscq/vpn/handler/f1;->values()[Lcom/sgscq/vpn/handler/f1;

    move-result-object v11

    array-length v13, v11

    const/4 v14, 0x0

    :goto_26
    if-ge v14, v13, :cond_3c

    aget-object v15, v11, v14

    move-object/from16 p1, v7

    iget-object v7, v15, Lcom/sgscq/vpn/handler/f1;->a:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    goto :goto_27

    :cond_3b
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, p1

    goto :goto_26

    :cond_3c
    move-object/from16 p1, v7

    move-object/from16 v15, v21

    :goto_27
    if-nez v15, :cond_3d

    :goto_28
    move-object/from16 v7, p1

    goto :goto_25

    :cond_3d
    const-string v7, "card_name"

    .line 72
    iget-object v9, v15, Lcom/sgscq/vpn/handler/f1;->b:Ljava/lang/String;

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v3, v8}, Lcom/sgscq/vpn/cloud/m0;->r2(JLjava/util/Map;)V

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/4 v9, 0x1

    invoke-static {v7, v9}, Lcom/sgscq/vpn/cloud/m0;->h1(Ljava/lang/Object;I)I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_3e

    goto :goto_28

    :cond_3e
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7, v8}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const-string v8, "created_at"

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "finish_at"

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_3f
    const-string v1, "training_info"

    .line 73
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, p0

    move-object/from16 p2, v4

    move-object v4, v5

    goto/16 :goto_47

    :cond_40
    const-string v15, "training.training"

    .line 74
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iget-object v15, v4, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    move-object/from16 p2, v4

    const-string v4, "info"

    move-object/from16 p3, v1

    const-string v1, "117"

    const-string v17, "\u52fe\u7389\u4e0d\u8db3"

    const-string v20, "General,Item,TeamGeneral"

    const-string v22, "General,TeamGeneral"

    move-object/from16 v23, v5

    const-string v5, "magatama_need"

    move-object/from16 p1, v1

    const-string v1, "TeamGeneral"

    move-object/from16 v26, v2

    const-string v2, "General"

    move-object/from16 v25, v0

    const-string v0, "add"

    move-object/from16 v24, v4

    const-string v4, "exp"

    const-string v27, "\u5f53\u524d\u9635\u5bb9\u6ca1\u6709\u53ef\u83b7\u5f97\u7ecf\u9a8c\u7684\u6b66\u5c06"

    const-string v28, "\u7ec3\u5175\u53c2\u6570\u9519\u8bef"

    move-object/from16 v29, v1

    const-string v1, "double"

    if-eqz v9, :cond_51

    .line 75
    check-cast v3, Lcom/sgscq/vpn/handler/k0;

    iget-object v3, v3, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v3

    new-instance v9, Lc/e;

    move-object/from16 v30, v2

    move-object/from16 v2, p0

    invoke-direct {v9, v2, v3}, Lc/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v2

    move-object/from16 v32, v7

    const-string v7, "user_training_id"

    move-object/from16 v33, v0

    .line 77
    invoke-static {v7, v6}, Lcom/sgscq/vpn/handler/d1;->w0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v6}, Lcom/sgscq/vpn/handler/d1;->w0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    invoke-static {v1, v6}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v6, :cond_41

    const/4 v6, 0x2

    if-eq v1, v6, :cond_41

    goto :goto_2c

    .line 78
    :cond_41
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_42

    goto :goto_2a

    :cond_42
    invoke-static {v12}, Lcom/sgscq/vpn/cloud/m0;->W2(Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_29
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_44

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 p3, v6

    move-object/from16 v6, v18

    check-cast v6, Ljava/util/Map;

    .line 79
    invoke-static {v6, v7, v0}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_43

    move-object/from16 v6, p3

    goto :goto_29

    .line 80
    :cond_43
    invoke-static {v2, v3, v6}, Lcom/sgscq/vpn/cloud/m0;->r2(JLjava/util/Map;)V

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/sgscq/vpn/cloud/m0;->h1(Ljava/lang/Object;I)I

    move-result v0

    if-nez v0, :cond_44

    goto :goto_2b

    :cond_44
    :goto_2a
    move-object/from16 v6, v21

    :goto_2b
    if-nez v6, :cond_45

    const-string v28, "\u4e3b\u516c\u83ab\u6025\uff0c\u7ec3\u5175\u5c1a\u672a\u5b8c\u6210"

    .line 81
    :goto_2c
    invoke-static/range {v28 .. v28}, Lcom/sgscq/vpn/handler/d1;->I(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object/from16 v2, v26

    goto/16 :goto_33

    :cond_45
    invoke-static {v15}, Lcom/sgscq/vpn/p5;->i0(Landroid/content/Context;)Z

    move-result v0

    .line 82
    invoke-static {v12}, Lcom/sgscq/vpn/cloud/m0;->n2(Ljava/util/Map;)I

    move-result v2

    invoke-static {v12}, Lcom/sgscq/vpn/cloud/m0;->A2(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_46

    move-object/from16 v17, v27

    goto :goto_2e

    :cond_46
    move-object/from16 v7, v19

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x64

    invoke-static {v4, v7}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result v4

    const/4 v7, 0x1

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v7, v1, -0x1

    mul-int/2addr v7, v4

    const/4 v10, 0x0

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v4, v2}, Lcom/sgscq/vpn/handler/d1;->j1(II)I

    move-result v15

    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/d1;->I0(ILjava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v2

    const/4 v10, 0x2

    if-ne v1, v10, :cond_47

    invoke-interface {v6, v5, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2d

    :cond_47
    const/4 v1, 0x0

    :goto_2d
    if-lez v1, :cond_49

    invoke-static {v1, v12}, Lcom/sgscq/vpn/handler/d1;->Y(ILjava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_48

    :goto_2e
    invoke-static/range {v17 .. v17}, Lcom/sgscq/vpn/handler/d1;->I(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object/from16 v2, v26

    goto/16 :goto_32

    :cond_48
    invoke-static {v1, v12}, Lcom/sgscq/vpn/handler/d1;->X0(ILjava/util/Map;)V

    :cond_49
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    move-object/from16 p3, v3

    const-string v3, "level"

    move/from16 p4, v15

    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move/from16 v18, v1

    const-string v1, "general_level"

    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v6

    const/4 v6, 0x1

    invoke-static {v1, v6}, Lcom/sgscq/vpn/handler/d1;->P0(Ljava/lang/Object;I)I

    move-result v1

    invoke-static {v15, v1}, Lcom/sgscq/vpn/handler/d1;->P0(Ljava/lang/Object;I)I

    move-result v1

    invoke-interface {v14, v11, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4a

    move/from16 v15, p4

    goto :goto_30

    :cond_4a
    const/4 v15, 0x0

    :goto_30
    add-int/2addr v15, v7

    invoke-static {v4, v0}, Lcom/sgscq/vpn/handler/d1;->m0(IZ)I

    move-result v17

    invoke-static {v15, v0}, Lcom/sgscq/vpn/handler/d1;->m0(IZ)I

    move-result v15

    move/from16 v28, v0

    add-int v0, v17, v15

    invoke-static {v12, v14, v0, v9}, Lcom/sgscq/vpn/handler/d1;->e(Ljava/util/Map;Ljava/util/Map;ILc/e;)V

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-static/range {v21 .. v21}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v0

    invoke-virtual {v0, v6, v12}, Lcom/sgscq/vpn/w1;->F2(Ljava/lang/String;Ljava/util/Map;)Z

    :cond_4b
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v34, "exp"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    const-string v36, "extra_exp"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    const-string v38, "level_before"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    const-string v40, "level_now"

    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/d1;->P0(Ljava/lang/Object;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    filled-new-array/range {v34 .. v41}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v11, v6, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p3

    move/from16 v15, p4

    move/from16 v1, v18

    move-object/from16 v6, v19

    move/from16 v0, v28

    goto/16 :goto_2f

    :cond_4c
    move/from16 v18, v1

    move-object/from16 v19, v6

    invoke-static {v12}, Lcom/sgscq/vpn/handler/d1;->G(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v2, v33

    filled-new-array {v8, v5, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v9, v32

    invoke-static {v9, v1, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object/from16 v14, v30

    invoke-interface {v12, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12, v6}, Lcom/sgscq/vpn/cloud/m0;->s2(Ljava/util/Map;Ljava/util/Map;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v3, v29

    invoke-static {v3, v12}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3, v12}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    filled-new-array {v8, v1, v2, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v9, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v18, :cond_4d

    goto :goto_31

    :cond_4d
    move-object/from16 v20, v22

    :goto_31
    invoke-static/range {v20 .. v20}, Lcom/sgscq/vpn/handler/d1;->a1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14, v12}, Lcom/sgscq/vpn/handler/d1;->E(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    if-lez v18, :cond_4e

    move-object/from16 v10, v25

    invoke-static {v10, v12}, Lcom/sgscq/vpn/handler/d1;->E(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_4e
    invoke-static {v3, v12}, Lcom/sgscq/vpn/handler/d1;->E(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object/from16 v2, v26

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :goto_32
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "result"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    move-object/from16 v1, p1

    invoke-static {v1, v12}, Lcom/sgscq/vpn/handler/p;->e(Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    :cond_4f
    :goto_33
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_50

    check-cast v1, Ljava/util/Map;

    goto :goto_34

    :cond_50
    move-object v1, v12

    .line 85
    :goto_34
    invoke-static {v0}, Lcom/sgscq/vpn/handler/d1;->C(Ljava/util/LinkedHashMap;)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p0

    move-object/from16 v4, v23

    invoke-virtual {v3, v4, v1, v12, v2}, Lcom/sgscq/vpn/handler/d1;->h(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    :goto_35
    move-object/from16 v2, v31

    goto/16 :goto_46

    :cond_51
    move-object/from16 v60, p1

    move-object v14, v2

    move-object v9, v7

    move-object/from16 v7, v19

    move-object/from16 v59, v23

    move-object/from16 v58, v26

    move-object/from16 v10, v29

    move-object v2, v0

    move-object/from16 v0, p0

    .line 86
    check-cast v3, Lcom/sgscq/vpn/handler/k0;

    iget-object v3, v3, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v3

    new-instance v10, Lc/e;

    invoke-direct {v10, v0, v3}, Lc/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v33, v2

    .line 87
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v2

    move-object/from16 v0, p3

    .line 88
    invoke-static {v0, v6}, Lcom/sgscq/vpn/handler/d1;->w0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v32, v9

    move-object/from16 v9, v18

    .line 89
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_56

    .line 90
    invoke-static {}, Lcom/sgscq/vpn/handler/f1;->values()[Lcom/sgscq/vpn/handler/f1;

    move-result-object v9

    move-object/from16 v30, v14

    array-length v14, v9

    const/16 v18, 0x0

    move-object/from16 v19, v8

    move/from16 v8, v18

    :goto_36
    if-ge v8, v14, :cond_53

    move/from16 v18, v14

    aget-object v14, v9, v8

    move-object/from16 p1, v9

    iget-object v9, v14, Lcom/sgscq/vpn/handler/f1;->a:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_52

    goto :goto_37

    :cond_52
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v9, p1

    move/from16 v14, v18

    goto :goto_36

    :cond_53
    move-object/from16 v14, v21

    :goto_37
    if-eqz v14, :cond_54

    const/4 v8, 0x1

    goto :goto_38

    :cond_54
    const/4 v8, 0x0

    :goto_38
    if-eqz v8, :cond_55

    goto :goto_39

    :cond_55
    const/4 v8, 0x0

    goto :goto_3a

    :cond_56
    move-object/from16 v19, v8

    move-object/from16 v30, v14

    :goto_39
    const/4 v8, 0x1

    :goto_3a
    if-nez v8, :cond_57

    const-string v27, "\u7ec3\u5175\u6559\u5b98\u53c2\u6570\u9519\u8bef"

    goto :goto_3b

    .line 91
    :cond_57
    invoke-static {v1, v6}, Lcom/sgscq/vpn/handler/d1;->w0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    invoke-static {v1, v6}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v6, :cond_58

    const/4 v6, 0x2

    if-eq v1, v6, :cond_58

    move-object/from16 v27, v28

    goto :goto_3b

    :cond_58
    invoke-static {v15}, Lcom/sgscq/vpn/p5;->i0(Landroid/content/Context;)Z

    move-result v6

    invoke-static {v2, v3, v0, v12}, Lcom/sgscq/vpn/cloud/m0;->O(JLjava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const-string v3, "\u6ca1\u6709\u53ef\u62dc\u8c22\u7684\u7ec3\u5175"

    if-eqz v2, :cond_59

    invoke-static {v3}, Lcom/sgscq/vpn/handler/d1;->I(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    goto/16 :goto_42

    :cond_59
    invoke-static {v12}, Lcom/sgscq/vpn/cloud/m0;->n2(Ljava/util/Map;)I

    move-result v2

    invoke-static {v12}, Lcom/sgscq/vpn/cloud/m0;->A2(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5a

    :goto_3b
    invoke-static/range {v27 .. v27}, Lcom/sgscq/vpn/handler/d1;->I(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    goto/16 :goto_42

    :cond_5a
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v15, 0x0

    const/16 v18, 0x0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 p1, v0

    move-object/from16 v0, v23

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 p3, v3

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v23, v4

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v4, v3

    move-object/from16 v26, v7

    const/4 v7, 0x0

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v2}, Lcom/sgscq/vpn/handler/d1;->j1(II)I

    move-result v7

    move/from16 p4, v7

    invoke-static {v2, v8}, Lcom/sgscq/vpn/handler/d1;->I0(ILjava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v7

    move/from16 v27, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5b

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v28, v5

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/sgscq/vpn/handler/d1;->P0(Ljava/lang/Object;I)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_3d

    :cond_5b
    move-object/from16 v28, v5

    const/4 v2, 0x0

    :goto_3d
    if-lez v2, :cond_5c

    invoke-static {v2, v12}, Lcom/sgscq/vpn/handler/d1;->Y(ILjava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_5c

    move/from16 v36, v1

    goto/16 :goto_40

    :cond_5c
    if-lez v2, :cond_5d

    invoke-static {v2, v12}, Lcom/sgscq/vpn/handler/d1;->X0(ILjava/util/Map;)V

    const/4 v2, 0x1

    move/from16 v18, v2

    :cond_5d
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    move-object/from16 v34, v2

    const-string v2, "level"

    move-object/from16 v35, v8

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move/from16 v36, v1

    const-string v1, "general_level"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move/from16 v37, v15

    const/4 v15, 0x1

    invoke-static {v1, v15}, Lcom/sgscq/vpn/handler/d1;->P0(Ljava/lang/Object;I)I

    move-result v1

    invoke-static {v8, v1}, Lcom/sgscq/vpn/handler/d1;->P0(Ljava/lang/Object;I)I

    move-result v1

    invoke-interface {v5, v11, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5e

    move/from16 v15, p4

    goto :goto_3f

    :cond_5e
    const/4 v15, 0x0

    :goto_3f
    add-int/2addr v15, v4

    invoke-static {v3, v6}, Lcom/sgscq/vpn/handler/d1;->m0(IZ)I

    move-result v38

    invoke-static {v15, v6}, Lcom/sgscq/vpn/handler/d1;->m0(IZ)I

    move-result v15

    move/from16 v39, v3

    add-int v3, v38, v15

    invoke-static {v12, v5, v3, v10}, Lcom/sgscq/vpn/handler/d1;->e(Ljava/util/Map;Ljava/util/Map;ILc/e;)V

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5f

    invoke-static/range {v21 .. v21}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v3

    invoke-virtual {v3, v8, v12}, Lcom/sgscq/vpn/w1;->F2(Ljava/lang/String;Ljava/util/Map;)Z

    invoke-interface {v14, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5f
    const-string v40, "exp"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    const-string v42, "extra_exp"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    const-string v44, "level_before"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    const-string v46, "level_now"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sgscq/vpn/handler/d1;->P0(Ljava/lang/Object;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    filled-new-array/range {v40 .. v47}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v11, v8, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v34

    move-object/from16 v8, v35

    move/from16 v1, v36

    move/from16 v15, v37

    move/from16 v3, v39

    goto/16 :goto_3e

    :cond_60
    move/from16 v36, v1

    move-object/from16 v35, v8

    move/from16 v37, v15

    invoke-static {v12, v0}, Lcom/sgscq/vpn/cloud/m0;->s2(Ljava/util/Map;Ljava/util/Map;)V

    add-int/lit8 v15, v37, 0x1

    move-object/from16 v0, p1

    move-object/from16 v3, p3

    move-object/from16 v4, v23

    move-object/from16 v7, v26

    move/from16 v2, v27

    move-object/from16 v5, v28

    goto/16 :goto_3c

    :cond_61
    move/from16 v36, v1

    move-object/from16 p3, v3

    :goto_40
    move/from16 v37, v15

    if-nez v37, :cond_63

    const/4 v0, 0x2

    move/from16 v1, v36

    if-ne v1, v0, :cond_62

    goto :goto_41

    :cond_62
    move-object/from16 v17, p3

    :goto_41
    invoke-static/range {v17 .. v17}, Lcom/sgscq/vpn/handler/d1;->I(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    :goto_42
    move-object/from16 v2, v58

    goto :goto_44

    :cond_63
    invoke-static {v12}, Lcom/sgscq/vpn/handler/d1;->G(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v3, v19

    move-object/from16 v4, v33

    filled-new-array {v3, v2, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v5, v30

    move-object/from16 v2, v32

    .line 92
    invoke-static {v2, v1, v0, v12, v5}, Lc/a;->n(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v6, v29

    invoke-static {v6, v12}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v6, v12}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    filled-new-array {v3, v1, v4, v7}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-interface {v12, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v18, :cond_64

    goto :goto_43

    :cond_64
    move-object/from16 v20, v22

    :goto_43
    invoke-static/range {v20 .. v20}, Lcom/sgscq/vpn/handler/d1;->a1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v60

    invoke-static {v1, v12}, Lcom/sgscq/vpn/handler/p;->e(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v5, v12}, Lcom/sgscq/vpn/handler/d1;->E(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    if-eqz v18, :cond_65

    move-object/from16 v2, v25

    invoke-static {v2, v12}, Lcom/sgscq/vpn/handler/d1;->E(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_65
    invoke-static {v6, v12}, Lcom/sgscq/vpn/handler/d1;->E(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object/from16 v2, v58

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :goto_44
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_66

    check-cast v1, Ljava/util/Map;

    goto :goto_45

    :cond_66
    move-object v1, v12

    .line 95
    :goto_45
    invoke-static {v0}, Lcom/sgscq/vpn/handler/d1;->C(Ljava/util/LinkedHashMap;)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p0

    move-object/from16 v4, v59

    invoke-virtual {v3, v4, v1, v12, v2}, Lcom/sgscq/vpn/handler/d1;->h(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    goto/16 :goto_35

    :goto_46
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_47
    move-object/from16 v1, v16

    invoke-virtual {v1, v4, v12}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, p2

    invoke-virtual {v8, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    move-result-object v21

    :goto_48
    return-object v21

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public T0(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/handler/k0;

    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-virtual {v0, p1, p2}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/LinkedHashSet;)Ljava/util/LinkedHashMap;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

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

    new-instance p3, Ljava/util/LinkedHashSet;

    invoke-direct {p3, p4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    const-string p4, "Combat"

    invoke-interface {p2, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p4, "General"

    invoke-interface {p2, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string p4, "GeneralSoul"

    invoke-interface {p2, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string p4, "Skill"

    invoke-interface {p2, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string p4, "TeamGeneral"

    invoke-interface {p2, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object p4, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p4, p2, p1, p3}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    return-object p1
.end method

.method public varargs h(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 3
    .line 4
    move-object/from16 v10, p3

    .line 5
    .line 6
    move-object/from16 v11, p4

    .line 7
    .line 8
    iget v2, v0, Lcom/sgscq/vpn/handler/d1;->a:I

    .line 9
    .line 10
    const-string v3, "user_power"

    .line 11
    .line 12
    const-string v4, "user_energy"

    .line 13
    .line 14
    const-string v5, "user_gold"

    .line 15
    .line 16
    iget-object v6, v0, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    .line 17
    .line 18
    sparse-switch v2, :sswitch_data_0

    .line 19
    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :sswitch_0
    move-object v12, v6

    .line 24
    check-cast v12, Lcom/sgscq/vpn/handler/k0;

    .line 25
    .line 26
    iget-object v2, v12, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 27
    .line 28
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    long-to-int v6, v6

    .line 33
    invoke-virtual {v12}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    int-to-long v7, v7

    .line 38
    invoke-virtual {v12, v7, v8, v10}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v7

    .line 42
    invoke-virtual {v12}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    invoke-virtual {v12, v9, v5, v10}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-virtual {v12}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    invoke-virtual {v12, v9, v4, v10}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    invoke-virtual {v12}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-virtual {v12, v4, v3, v10}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 63
    .line 64
    .line 65
    move-result v13

    .line 66
    move v3, v6

    .line 67
    move v4, v5

    .line 68
    move v5, v9

    .line 69
    move v6, v13

    .line 70
    move-object v9, p1

    .line 71
    move-object/from16 v10, p3

    .line 72
    .line 73
    invoke-virtual/range {v2 .. v10}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    iget-object v3, v12, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 78
    .line 79
    invoke-virtual {v3, v1, v2, v11}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    return-object v1

    .line 88
    :sswitch_1
    move-object v12, v6

    .line 89
    check-cast v12, Lcom/sgscq/vpn/handler/k0;

    .line 90
    .line 91
    iget-object v2, v12, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 92
    .line 93
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 94
    .line 95
    .line 96
    move-result-wide v6

    .line 97
    long-to-int v6, v6

    .line 98
    invoke-virtual {v12}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    int-to-long v7, v7

    .line 103
    invoke-virtual {v12, v7, v8, v10}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 104
    .line 105
    .line 106
    move-result-wide v7

    .line 107
    invoke-virtual {v12}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    invoke-virtual {v12, v9, v5, v10}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    invoke-virtual {v12}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    invoke-virtual {v12, v9, v4, v10}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    invoke-virtual {v12}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    invoke-virtual {v12, v4, v3, v10}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 128
    .line 129
    .line 130
    move-result v13

    .line 131
    move v3, v6

    .line 132
    move v4, v5

    .line 133
    move v5, v9

    .line 134
    move v6, v13

    .line 135
    move-object v9, p1

    .line 136
    move-object/from16 v10, p3

    .line 137
    .line 138
    invoke-virtual/range {v2 .. v10}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    iget-object v3, v12, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 143
    .line 144
    invoke-virtual {v3, v1, v2, v11}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    return-object v1

    .line 153
    :sswitch_2
    move-object v12, v6

    .line 154
    check-cast v12, Lcom/sgscq/vpn/handler/k0;

    .line 155
    .line 156
    iget-object v2, v12, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 157
    .line 158
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 159
    .line 160
    .line 161
    move-result-wide v6

    .line 162
    long-to-int v6, v6

    .line 163
    invoke-virtual {v12}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    int-to-long v7, v7

    .line 168
    invoke-virtual {v12, v7, v8, v10}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 169
    .line 170
    .line 171
    move-result-wide v7

    .line 172
    invoke-virtual {v12}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 173
    .line 174
    .line 175
    move-result v9

    .line 176
    invoke-virtual {v12, v9, v5, v10}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    invoke-virtual {v12}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    invoke-virtual {v12, v9, v4, v10}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 185
    .line 186
    .line 187
    move-result v9

    .line 188
    invoke-virtual {v12}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    invoke-virtual {v12, v4, v3, v10}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 193
    .line 194
    .line 195
    move-result v13

    .line 196
    move v3, v6

    .line 197
    move v4, v5

    .line 198
    move v5, v9

    .line 199
    move v6, v13

    .line 200
    move-object v9, p1

    .line 201
    move-object/from16 v10, p3

    .line 202
    .line 203
    invoke-virtual/range {v2 .. v10}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    iget-object v3, v12, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 208
    .line 209
    invoke-virtual {v3, v1, v2, v11}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    return-object v1

    .line 218
    :goto_0
    move-object v12, v6

    .line 219
    check-cast v12, Lcom/sgscq/vpn/handler/k0;

    .line 220
    .line 221
    iget-object v2, v12, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 222
    .line 223
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 224
    .line 225
    .line 226
    move-result-wide v6

    .line 227
    long-to-int v6, v6

    .line 228
    invoke-virtual {v12}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 229
    .line 230
    .line 231
    move-result v7

    .line 232
    int-to-long v7, v7

    .line 233
    invoke-virtual {v12, v7, v8, v10}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 234
    .line 235
    .line 236
    move-result-wide v7

    .line 237
    invoke-virtual {v12}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    invoke-virtual {v12, v9, v5, v10}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    invoke-virtual {v12}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 246
    .line 247
    .line 248
    move-result v9

    .line 249
    invoke-virtual {v12, v9, v4, v10}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 250
    .line 251
    .line 252
    move-result v9

    .line 253
    invoke-virtual {v12}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    invoke-virtual {v12, v4, v3, v10}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 258
    .line 259
    .line 260
    move-result v13

    .line 261
    move v3, v6

    .line 262
    move v4, v5

    .line 263
    move v5, v9

    .line 264
    move v6, v13

    .line 265
    move-object v9, p1

    .line 266
    move-object/from16 v10, p3

    .line 267
    .line 268
    invoke-virtual/range {v2 .. v10}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    iget-object v3, v12, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 273
    .line 274
    invoke-virtual {v3, v1, v2, v11}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    return-object v1

    .line 283
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x3 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public n0()Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    check-cast v1, Lcom/sgscq/vpn/handler/k0;

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
