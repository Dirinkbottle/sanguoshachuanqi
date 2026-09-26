.class public final Lcom/sgscq/vpn/handler/h1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/concurrent/atomic/AtomicLong;

.field public static c:Ljava/util/LinkedHashMap;

.field public static d:Ljava/util/List;


# instance fields
.field public final a:Lcom/sgscq/vpn/handler/k0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/sgscq/vpn/handler/h1;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/sgscq/vpn/handler/k0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/handler/h1;->a:Lcom/sgscq/vpn/handler/k0;

    return-void
.end method

.method public static A(ILjava/lang/String;Ljava/util/Map;)I
    .locals 0

    .line 1
    if-nez p2, :cond_0

    return p0

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p0
.end method

.method public static B(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/handler/h1;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "361001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "362001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "363001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "9361001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "9362001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "9363001"

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

.method public static C(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static D(Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/handler/h1;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/sgscq/vpn/handler/j0;->b:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-static {}, Lcom/sgscq/vpn/handler/h1;->f0()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/Map;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    return v2

    .line 29
    :cond_1
    const-string v3, "300000"

    .line 30
    .line 31
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_5

    .line 36
    .line 37
    const-string v3, "400"

    .line 38
    .line 39
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string v3, "skill_code"

    .line 47
    .line 48
    const-string v4, ""

    .line 49
    .line 50
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-nez v4, :cond_5

    .line 67
    .line 68
    const-string v4, "null"

    .line 69
    .line 70
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const/4 v3, 0x0

    .line 78
    invoke-static {v3}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3, p0}, Lcom/sgscq/vpn/w1;->m1(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    if-eqz p0, :cond_4

    .line 87
    .line 88
    const-string v3, "\u795e\u79d8"

    .line 89
    .line 90
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_4

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    move p0, v2

    .line 98
    goto :goto_1

    .line 99
    :cond_5
    :goto_0
    move p0, v1

    .line 100
    :goto_1
    if-eqz p0, :cond_6

    .line 101
    .line 102
    return v2

    .line 103
    :cond_6
    const-string p0, "source"

    .line 104
    .line 105
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    instance-of v2, p0, Ljava/util/List;

    .line 110
    .line 111
    const-string v3, "5"

    .line 112
    .line 113
    const-string v4, "source_type"

    .line 114
    .line 115
    if-eqz v2, :cond_9

    .line 116
    .line 117
    check-cast p0, Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    :cond_7
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_9

    .line 128
    .line 129
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    instance-of v5, v2, Ljava/util/Map;

    .line 134
    .line 135
    if-nez v5, :cond_8

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_8
    check-cast v2, Ljava/util/Map;

    .line 139
    .line 140
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_7

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_9
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    :goto_3
    return v1
.end method

.method public static E(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->V1()Lcom/sgscq/vpn/a7;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/sgscq/vpn/a7;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sgscq/vpn/a7;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static F(JLjava/lang/String;Ljava/util/Map;)J
    .locals 0

    .line 1
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Ljava/lang/Number;

    if-eqz p3, :cond_0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    :try_start_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    double-to-long p0, p0

    :catch_1
    return-wide p0
.end method

.method public static G(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/battle/BattleUnit;
    .locals 8

    .line 1
    new-instance v7, Lcom/sgscq/vpn/handler/e;

    .line 2
    .line 3
    invoke-direct {v7, p2, p0, p1}, Lcom/sgscq/vpn/handler/e;-><init>(Ljava/lang/String;II)V

    .line 4
    .line 5
    .line 6
    iput-object p4, v7, Lcom/sgscq/vpn/handler/e;->d:Ljava/util/Map;

    .line 7
    .line 8
    iput-object p3, v7, Lcom/sgscq/vpn/handler/e;->g:Ljava/lang/String;

    .line 9
    .line 10
    const-wide v1, 0x4072c00000000000L    # 300.0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 16
    .line 17
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 18
    .line 19
    move-object v0, v7

    .line 20
    invoke-virtual/range {v0 .. v6}, Lcom/sgscq/vpn/handler/e;->a(DDD)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    if-ne p0, p1, :cond_2

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    invoke-static {p0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0, p2}, Lcom/sgscq/vpn/w1;->T0(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lcom/sgscq/vpn/handler/h1;->C(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    if-eqz p3, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    const/4 p3, 0x3

    .line 47
    if-lt p0, p3, :cond_1

    .line 48
    .line 49
    new-instance p0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string p3, "3"

    .line 52
    .line 53
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p0}, Lcom/sgscq/vpn/handler/h1;->C(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const-string p0, "321007"

    .line 75
    .line 76
    :goto_0
    iput-object p0, v7, Lcom/sgscq/vpn/handler/e;->n:Ljava/lang/String;

    .line 77
    .line 78
    iput-boolean p1, v7, Lcom/sgscq/vpn/handler/e;->m:Z

    .line 79
    .line 80
    :cond_2
    invoke-static {v7}, Lcom/sgscq/vpn/handler/f;->a(Lcom/sgscq/vpn/handler/e;)Lcom/sgscq/vpn/battle/BattleUnit;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0
.end method

.method public static H(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public static I(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/util/Map;

    const-string p1, "upd"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static J(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/util/Map;

    const-string p1, "del"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static K(Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/util/Map;

    const-string p1, "add"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sgscq/vpn/handler/h1;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const-string p1, "upd"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sgscq/vpn/handler/h1;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const-string p1, "update_list"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {p0, v0}, Lcom/sgscq/vpn/handler/h1;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    :cond_1
    return-object v0
.end method

.method public static L(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "311004"

    return-object p0
.end method

.method public static M(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 10

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/handler/h1;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "pk_id"

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-interface {p2, v3, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "skill_id"

    invoke-interface {p2, v5, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v8

    :goto_1
    if-nez v1, :cond_2

    return v7

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "SkillPiece"

    invoke-static {v1, p1}, Lcom/sgscq/vpn/handler/h1;->J(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {v1, p1}, Lcom/sgscq/vpn/handler/h1;->I(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    const-string v6, "add"

    invoke-static {v1, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    const-string v9, "upd"

    filled-new-array {v9, v2, v6, v7}, [Ljava/lang/Object;

    move-result-object v2

    const-string v6, "del"

    invoke-static {v6, v4, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v8
.end method

.method public static N(Ljava/util/Map;)I
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/w1;->A(Ljava/util/Map;)I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "fightPoint"

    invoke-static {v0, v1, p0}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    const-string v2, "fighting"

    invoke-static {v1, v2, p0}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    const-string v2, "user_fighting"

    invoke-static {v1, v2, p0}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static O(Ljava/io/File;)[B
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p0, 0x2000

    :try_start_0
    new-array p0, p0, [B

    :cond_0
    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_1

    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw p0
.end method

.method public static P(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of p1, p0, Ljava/util/Map;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    check-cast p0, Ljava/util/Map;

    .line 11
    .line 12
    const-string p1, "add"

    .line 13
    .line 14
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    instance-of v0, p1, Ljava/util/List;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    check-cast p1, Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    const-string p1, "upd"

    .line 28
    .line 29
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    instance-of v0, p1, Ljava/util/List;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    check-cast p1, Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_2
    const-string p1, "update_list"

    .line 43
    .line 44
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    instance-of p1, p0, Ljava/util/List;

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    check-cast p0, Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_3
    return-void
.end method

.method public static Q(Ljava/util/List;IIJ)Ljava/util/ArrayList;
    .locals 8

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_5

    .line 8
    .line 9
    const/16 v4, 0xa

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    move-object v1, p0

    .line 17
    move v2, p1

    .line 18
    move v3, p2

    .line 19
    invoke-static/range {v1 .. v6}, Lcom/sgscq/vpn/handler/h1;->a0(Ljava/util/List;IIIZLjava/util/List;)Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x4

    .line 24
    invoke-static {v0, p2, v1, p3, p4}, Lcom/sgscq/vpn/handler/h1;->R(Ljava/util/ArrayList;IIJ)Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-ge v2, v1, :cond_0

    .line 33
    .line 34
    const/16 v5, 0x14

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    move-object v2, p0

    .line 38
    move v3, p1

    .line 39
    move v4, p2

    .line 40
    move-object v7, v0

    .line 41
    invoke-static/range {v2 .. v7}, Lcom/sgscq/vpn/handler/h1;->a0(Ljava/util/List;IIIZLjava/util/List;)Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    rsub-int/lit8 v3, v3, 0x4

    .line 50
    .line 51
    const-wide v4, -0x61c8864680b583ebL

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    xor-long/2addr v4, p3

    .line 57
    invoke-static {v2, p2, v3, v4, v5}, Lcom/sgscq/vpn/handler/h1;->R(Ljava/util/ArrayList;IIJ)Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-ge v2, v1, :cond_1

    .line 69
    .line 70
    const/16 v5, 0x14

    .line 71
    .line 72
    const/4 v6, 0x0

    .line 73
    move-object v2, p0

    .line 74
    move v3, p1

    .line 75
    move v4, p2

    .line 76
    move-object v7, v0

    .line 77
    invoke-static/range {v2 .. v7}, Lcom/sgscq/vpn/handler/h1;->a0(Ljava/util/List;IIIZLjava/util/List;)Ljava/util/ArrayList;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    rsub-int/lit8 v3, v3, 0x4

    .line 86
    .line 87
    const-wide v4, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    xor-long/2addr v4, p3

    .line 93
    invoke-static {v2, p2, v3, v4, v5}, Lcom/sgscq/vpn/handler/h1;->R(Ljava/util/ArrayList;IIJ)Ljava/util/ArrayList;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    .line 99
    .line 100
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_4

    .line 105
    .line 106
    const/4 v2, 0x1

    .line 107
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    int-to-long v2, v2

    .line 112
    new-instance v4, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_3

    .line 126
    .line 127
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    check-cast v5, Lcom/sgscq/vpn/v5;

    .line 132
    .line 133
    if-eqz v5, :cond_2

    .line 134
    .line 135
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_3
    new-instance p0, Lcom/sgscq/vpn/l7;

    .line 140
    .line 141
    const/4 v5, 0x5

    .line 142
    invoke-direct {p0, p1, v5}, Lcom/sgscq/vpn/l7;-><init>(II)V

    .line 143
    .line 144
    .line 145
    invoke-static {p0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    new-instance p1, Lcom/sgscq/vpn/o7;

    .line 150
    .line 151
    invoke-direct {p1, v2, v3, v5}, Lcom/sgscq/vpn/o7;-><init>(JI)V

    .line 152
    .line 153
    .line 154
    invoke-interface {p0, p1}, Ljava/util/Comparator;->thenComparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    new-instance p1, Ln/a;

    .line 159
    .line 160
    const/16 v2, 0x18

    .line 161
    .line 162
    invoke-direct {p1, v2}, Ln/a;-><init>(I)V

    .line 163
    .line 164
    .line 165
    invoke-interface {p0, p1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 173
    .line 174
    .line 175
    move-result p0

    .line 176
    const/16 p1, 0xc

    .line 177
    .line 178
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    const/4 p1, 0x0

    .line 183
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    new-instance v2, Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {v4, p1, p0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 194
    .line 195
    .line 196
    const-wide p0, 0x27d4eb2f165667c5L    # 8.29537680305513E-117

    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    xor-long/2addr p0, p3

    .line 202
    invoke-static {v2, p2, v1, p0, p1}, Lcom/sgscq/vpn/handler/h1;->R(Ljava/util/ArrayList;IIJ)Ljava/util/ArrayList;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 207
    .line 208
    .line 209
    :cond_4
    return-object v0

    .line 210
    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .line 214
    .line 215
    return-object p0
.end method

.method public static R(Ljava/util/ArrayList;IIJ)Ljava/util/ArrayList;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    new-instance p0, Ljava/util/Random;

    .line 12
    .line 13
    invoke-direct {p0, p3, p4}, Ljava/util/Random;-><init>(J)V

    .line 14
    .line 15
    .line 16
    new-instance p3, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result p4

    .line 25
    if-ge p4, p2, :cond_3

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result p4

    .line 31
    if-nez p4, :cond_3

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p4

    .line 37
    const-wide/16 v2, 0x0

    .line 38
    .line 39
    move-wide v4, v2

    .line 40
    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_0

    .line 45
    .line 46
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Lcom/sgscq/vpn/v5;

    .line 51
    .line 52
    iget v6, v6, Lcom/sgscq/vpn/v5;->d:I

    .line 53
    .line 54
    invoke-static {v6, p1}, Lcom/sgscq/vpn/handler/h1;->c0(II)D

    .line 55
    .line 56
    .line 57
    move-result-wide v6

    .line 58
    add-double/2addr v4, v6

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    .line 61
    .line 62
    .line 63
    move-result-wide v6

    .line 64
    mul-double/2addr v6, v4

    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result p4

    .line 69
    sub-int/2addr p4, v0

    .line 70
    const/4 v4, 0x0

    .line 71
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-ge v4, v5, :cond_2

    .line 76
    .line 77
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Lcom/sgscq/vpn/v5;

    .line 82
    .line 83
    iget v5, v5, Lcom/sgscq/vpn/v5;->d:I

    .line 84
    .line 85
    invoke-static {v5, p1}, Lcom/sgscq/vpn/handler/h1;->c0(II)D

    .line 86
    .line 87
    .line 88
    move-result-wide v8

    .line 89
    sub-double/2addr v6, v8

    .line 90
    cmpg-double v5, v6, v2

    .line 91
    .line 92
    if-gtz v5, :cond_1

    .line 93
    .line 94
    move p4, v4

    .line 95
    goto :goto_3

    .line 96
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_2
    :goto_3
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p4

    .line 103
    check-cast p4, Lcom/sgscq/vpn/v5;

    .line 104
    .line 105
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    return-object p3
.end method

.method public static S(ILjava/util/Map;)Z
    .locals 2

    .line 1
    const-string v0, "info"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/List;

    if-ltz p0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_2

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const-string p1, "evolution_image_status"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static T(Ljava/lang/String;I)Ljava/util/LinkedHashMap;
    .locals 8

    .line 1
    const-string v0, "id"

    const-string v2, "skill_id"

    const-string v4, "num"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "skill_piece_num"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v1, p0

    move-object v3, p0

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "pk_id"

    invoke-static {v0, p0, p1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static U(Ljava/util/Map;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "skill_piece_num"

    invoke-static {v0, v1, p0}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    const-string v1, "num"

    invoke-static {v0, v1, p0}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result p0

    return p0
.end method

.method public static V()Ljava/util/LinkedHashMap;
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

.method public static W(Ljava/util/Map;)I
    .locals 5

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const-string v1, "team_position"

    .line 8
    .line 9
    const-string v2, "general_position"

    .line 10
    .line 11
    const-string v3, "position"

    .line 12
    .line 13
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    const/4 v4, 0x3

    .line 20
    if-ge v3, v4, :cond_2

    .line 21
    .line 22
    aget-object v4, v1, v3

    .line 23
    .line 24
    invoke-static {p0, v4, v2}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-lez v4, :cond_1

    .line 29
    .line 30
    return v4

    .line 31
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return v0
.end method

.method public static X(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4

    .line 1
    invoke-static {p0, p1}, Lcom/sgscq/vpn/handler/h1;->I(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p0, p1}, Lcom/sgscq/vpn/handler/h1;->J(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p0, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "add"

    .line 23
    .line 24
    const-string v3, "upd"

    .line 25
    .line 26
    filled-new-array {v3, v0, v2, v1}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "del"

    .line 31
    .line 32
    invoke-static {v1, p2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static Y(Ljava/util/Map;Ljava/util/Map;)V
    .locals 5

    .line 1
    const-string v0, "SkillPiece"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/sgscq/vpn/handler/h1;->I(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {v0, p0}, Lcom/sgscq/vpn/handler/h1;->J(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {v0, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "add"

    .line 25
    .line 26
    const-string v4, "upd"

    .line 27
    .line 28
    filled-new-array {v4, v1, v3, v2}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "del"

    .line 33
    .line 34
    invoke-static {v2, p1, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static Z(Landroid/content/Context;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    goto :goto_1

    .line 5
    :cond_0
    :try_start_0
    new-instance v1, Lcom/sgscq/vpn/h;

    .line 6
    .line 7
    invoke-direct {v1, v0, p0}, Lcom/sgscq/vpn/h;-><init>(ILandroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x6

    .line 11
    invoke-virtual {v1, p0}, Lcom/sgscq/vpn/h;->d(I)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    :goto_0
    move v0, p0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const/4 p0, 0x5

    .line 20
    invoke-virtual {v1, p0}, Lcom/sgscq/vpn/h;->d(I)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/4 p0, 0x4

    .line 28
    invoke-virtual {v1, p0}, Lcom/sgscq/vpn/h;->d(I)Z

    .line 29
    .line 30
    .line 31
    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    :cond_3
    :goto_1
    return v0
.end method

.method public static a(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 7

    .line 1
    const-string v0, "SkillPiece"

    .line 2
    .line 3
    invoke-static {v0, p2}, Lcom/sgscq/vpn/handler/h1;->w(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, p2}, Lcom/sgscq/vpn/handler/h1;->K(Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/Map;

    .line 27
    .line 28
    const-string v4, "id"

    .line 29
    .line 30
    const-string v5, ""

    .line 31
    .line 32
    const-string v6, "skill_id"

    .line 33
    .line 34
    invoke-static {v2, v4, v5, v6, p1}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {p1, p2, v2}, Lcom/sgscq/vpn/handler/h1;->M(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Lcom/sgscq/vpn/handler/h1;->U(Ljava/util/Map;)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    add-int v0, p1, p0

    .line 49
    .line 50
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const-string v1, "num"

    .line 55
    .line 56
    const-string v3, "skill_piece_num"

    .line 57
    .line 58
    invoke-static {v0, v2, v1, v0, v3}, Lc/a;->t(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    if-ne v0, p1, :cond_1

    .line 62
    .line 63
    if-nez p0, :cond_2

    .line 64
    .line 65
    :cond_1
    invoke-static {p2, v2}, Lcom/sgscq/vpn/handler/h1;->Y(Ljava/util/Map;Ljava/util/Map;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    return-object v2

    .line 69
    :cond_3
    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    invoke-static {p1, p0}, Lcom/sgscq/vpn/handler/h1;->T(Ljava/lang/String;I)Ljava/util/LinkedHashMap;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    invoke-static {p2, p0}, Lcom/sgscq/vpn/handler/h1;->Y(Ljava/util/Map;Ljava/util/Map;)V

    .line 81
    .line 82
    .line 83
    return-object p0
.end method

.method public static a0(Ljava/util/List;IIIZLjava/util/List;)Ljava/util/ArrayList;
    .locals 8

    .line 1
    const/4 v0, 0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-double v0, p2

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide v4, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sgscq/vpn/v5;

    if-eqz v4, :cond_0

    invoke-interface {p5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    iget v5, v4, Lcom/sgscq/vpn/v5;->c:I

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, p3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    iget v5, v4, Lcom/sgscq/vpn/v5;->d:I

    int-to-long v5, v5

    cmp-long v7, v5, v2

    if-ltz v7, :cond_0

    cmp-long v5, v5, v0

    if-lez v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object p2
.end method

.method public static b(Ljava/lang/Object;Ljava/util/ArrayList;)V
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

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static b0(ILandroid/content/Context;Ljava/lang/String;)I
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    const-string v0, "user_levels.json"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :try_start_1
    new-instance v0, Lcom/sgscq/vpn/handler/WarlordHandler$2;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/sgscq/vpn/handler/WarlordHandler$2;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, La/o;

    .line 29
    .line 30
    invoke-direct {v1}, La/o;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1, v0}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Ljava/util/List;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_1
    :cond_1
    sget-object p1, Lcom/sgscq/vpn/handler/h1;->d:Ljava/util/List;

    .line 49
    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    new-instance p1, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    sput-object p1, Lcom/sgscq/vpn/handler/h1;->d:Ljava/util/List;

    .line 58
    .line 59
    const-string p1, "docs/game_data_json/user_levels.json"

    .line 60
    .line 61
    invoke-static {p1}, Lcom/sgscq/vpn/handler/h1;->t(Ljava/lang/String;)Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    :try_start_2
    new-instance v0, Lcom/sgscq/vpn/handler/WarlordHandler$3;

    .line 74
    .line 75
    invoke-direct {v0}, Lcom/sgscq/vpn/handler/WarlordHandler$3;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v1, La/o;

    .line 83
    .line 84
    invoke-direct {v1}, La/o;-><init>()V

    .line 85
    .line 86
    .line 87
    new-instance v2, Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {p1}, Lcom/sgscq/vpn/handler/h1;->O(Ljava/io/File;)[B

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 94
    .line 95
    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v2, v0}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Ljava/util/List;

    .line 103
    .line 104
    if-eqz p1, :cond_2

    .line 105
    .line 106
    sput-object p1, Lcom/sgscq/vpn/handler/h1;->d:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 107
    .line 108
    :catch_2
    :cond_2
    sget-object p1, Lcom/sgscq/vpn/handler/h1;->d:Ljava/util/List;

    .line 109
    .line 110
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    const/4 v1, 0x0

    .line 115
    if-eqz v0, :cond_3

    .line 116
    .line 117
    return v1

    .line 118
    :cond_3
    const/4 v0, 0x1

    .line 119
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    sub-int/2addr p0, v0

    .line 124
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    sub-int/2addr v2, v0

    .line 129
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    check-cast p0, Ljava/util/Map;

    .line 142
    .line 143
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    instance-of p1, p0, Ljava/lang/Number;

    .line 148
    .line 149
    if-eqz p1, :cond_4

    .line 150
    .line 151
    check-cast p0, Ljava/lang/Number;

    .line 152
    .line 153
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    .line 154
    .line 155
    .line 156
    move-result-wide p0

    .line 157
    goto :goto_3

    .line 158
    :cond_4
    if-nez p0, :cond_5

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_5
    :try_start_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 166
    .line 167
    .line 168
    move-result-wide p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 169
    goto :goto_3

    .line 170
    :catch_3
    :goto_2
    const-wide/16 p0, 0x0

    .line 171
    .line 172
    :goto_3
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    .line 173
    .line 174
    .line 175
    move-result-wide p0

    .line 176
    long-to-int p0, p0

    .line 177
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    return p0
.end method

.method public static c(Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/LinkedHashMap;)V
    .locals 10

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "result"

    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "delta_data"

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_0
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v3, "cmn_modules"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p0, p1}, Lcom/sgscq/vpn/handler/y0;->c(Ljava/util/List;Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Lcom/sgscq/vpn/handler/j;->a(Ljava/util/Map;Ljava/util/AbstractCollection;)V

    invoke-virtual {p0, p2}, Lcom/sgscq/vpn/handler/j;->b(Ljava/util/Map;)V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    return-void
.end method

.method public static c0(II)D
    .locals 8

    .line 1
    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    int-to-double p0, p0

    div-double v4, p0, v0

    const-wide v6, 0x3fa999999999999aL    # 0.05

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    sub-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    div-double/2addr p0, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p0, v0

    add-double/2addr p0, v2

    div-double/2addr v4, p0

    return-wide v4
.end method

.method public static d(Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Lcom/sgscq/vpn/p7;Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 130

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/h1;->n(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "skill_id"

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v6, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1
    :goto_0
    invoke-static {v5}, Lcom/sgscq/vpn/handler/h1;->B(Ljava/lang/String;)Z

    move-result v5

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/handler/h1;->Z(Landroid/content/Context;)I

    move-result v5

    const/4 v9, 0x5

    if-lt v5, v9, :cond_2

    const/16 v5, 0x63

    goto :goto_2

    :cond_2
    if-lt v5, v7, :cond_3

    const/16 v5, 0xa

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v8

    :goto_2
    const-string v7, "user_energy"

    const/4 v9, 0x0

    if-gt v5, v8, :cond_4

    move v5, v8

    goto :goto_3

    .line 2
    :cond_4
    invoke-static {v9, v7, v0}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v2, v0}, Lcom/sgscq/vpn/handler/h1;->g0(Landroid/content/Context;Ljava/util/Map;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x8

    add-int/2addr v11, v10

    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_3
    const/4 v10, 0x0

    move-object v11, v0

    move-object v13, v11

    move-object v12, v2

    move v15, v9

    :goto_4
    if-ge v15, v5, :cond_6f

    if-lez v15, :cond_7

    .line 3
    invoke-static {v9, v7, v11}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v14

    if-lt v14, v8, :cond_5

    move-object/from16 v17, v12

    goto :goto_5

    :cond_5
    invoke-static {v12, v11}, Lcom/sgscq/vpn/handler/h1;->g0(Landroid/content/Context;Ljava/util/Map;)I

    move-result v14

    if-gtz v14, :cond_6

    move-object/from16 v17, v12

    move v12, v9

    goto :goto_6

    :cond_6
    const-string v14, "user_gold"

    invoke-static {v9, v14, v11}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v16

    add-int/lit8 v16, v16, -0x32

    move-object/from16 v17, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9, v7, v11}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v12

    add-int/lit8 v12, v12, 0x8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "600029"

    invoke-static {v12, v11}, Lcom/sgscq/vpn/cloud/m0;->b0(Ljava/lang/String;Ljava/util/Map;)I

    move-result v14

    add-int/2addr v14, v8

    invoke-static {v14, v12, v11}, Lcom/sgscq/vpn/cloud/m0;->D2(ILjava/lang/String;Ljava/util/Map;)V

    :goto_5
    move v12, v8

    :goto_6
    if-nez v12, :cond_8

    goto/16 :goto_55

    :cond_7
    move-object/from16 v17, v12

    :cond_8
    add-int/lit8 v10, v5, -0x1

    if-ne v15, v10, :cond_9

    move/from16 v37, v8

    goto :goto_7

    :cond_9
    move/from16 v37, v9

    :goto_7
    if-nez v15, :cond_a

    goto :goto_8

    :cond_a
    move v8, v9

    .line 4
    :goto_8
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/h1;->n(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    if-nez v1, :cond_b

    goto :goto_9

    :cond_b
    invoke-interface {v1, v6, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    :goto_9
    if-eqz v8, :cond_c

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/h1;->h(Ljava/util/Map;)V

    const-string v8, "Item"

    invoke-static {v8, v11}, Lcom/sgscq/vpn/handler/h1;->i(Ljava/lang/String;Ljava/util/Map;)V

    :cond_c
    invoke-static {v10}, Lcom/sgscq/vpn/handler/h1;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Lcom/sgscq/vpn/handler/h1;->u(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    const-string v12, "pk_id"

    if-eqz v10, :cond_d

    .line 5
    invoke-static {v10, v12, v8}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 6
    invoke-static {v9, v8, v11}, Lcom/sgscq/vpn/handler/h1;->a(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    const/4 v9, 0x1

    :cond_d
    invoke-static {v8}, Lcom/sgscq/vpn/handler/h1;->B(Ljava/lang/String;)Z

    move-result v10

    const-string v14, "cmn_modules"

    move/from16 v38, v5

    const-string v5, "delta_data"

    move-object/from16 v39, v6

    const-string v6, "return_info"

    move/from16 v29, v15

    const-string v15, "SkillPiece"

    if-nez v10, :cond_e

    invoke-static {v8, v11}, Lcom/sgscq/vpn/handler/h1;->u(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    invoke-static {v10}, Lcom/sgscq/vpn/handler/h1;->U(Ljava/util/Map;)I

    move-result v10

    move/from16 v16, v9

    invoke-static {v8}, Lcom/sgscq/vpn/handler/h1;->j(Ljava/lang/String;)I

    move-result v9

    if-lt v10, v9, :cond_f

    const/4 v9, 0x0

    invoke-static {v9, v8, v11}, Lcom/sgscq/vpn/handler/h1;->a(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    const-string v10, "\u788e\u7247\u5df2\u6ee1\uff0c\u8bf7\u5148\u5408\u6210"

    invoke-static {v10}, Lcom/sgscq/vpn/handler/h1;->r(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v10

    invoke-static {v8, v11}, Lcom/sgscq/vpn/handler/h1;->f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v8

    invoke-interface {v10, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v15, v11}, Lcom/sgscq/vpn/handler/h1;->o(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-interface {v10, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v10, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_e
    move/from16 v16, v9

    :cond_f
    const/4 v9, 0x0

    invoke-static {v9, v7, v11}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v10

    if-gtz v10, :cond_10

    const-string v5, "\u7cbe\u529b\u4e0d\u8db3"

    invoke-static {v5}, Lcom/sgscq/vpn/handler/h1;->r(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v10

    :goto_a
    const/4 v5, 0x1

    move-object v1, v0

    move v8, v5

    move-object v4, v7

    move-object/from16 v12, v17

    move/from16 v45, v29

    goto/16 :goto_54

    :cond_10
    invoke-static {v9, v7, v11}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/16 v9, 0x96

    move-object/from16 v17, v14

    const-string v14, "max_energy"

    .line 7
    invoke-static {v9, v14, v11}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v14

    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object/from16 v36, v15

    .line 8
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v14

    invoke-static {v13, v10, v9, v14, v15}, Lcom/sgscq/vpn/p5;->e(Ljava/util/Map;IIJ)V

    const-string v15, "level"

    const/4 v9, 0x1

    invoke-static {v9, v15, v11}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v13

    const-string v14, "user_level"

    invoke-static {v13, v14, v11}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v13

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    const-string v13, "user_exp"

    move-object/from16 v40, v5

    const/4 v5, 0x0

    move-object/from16 v41, v7

    invoke-static {v5, v13, v11}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v7

    move/from16 v26, v10

    const-string v10, "user_experience"

    invoke-static {v7, v10, v11}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/16 v18, 0x0

    move-object/from16 v27, v6

    invoke-static/range {v18 .. v18}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v6

    invoke-virtual {v6, v9, v7, v5}, Lcom/sgscq/vpn/w1;->m(III)Ll/c;

    move-result-object v5

    const-string v7, "chaos_npc_"

    const-string v9, "other_id"

    if-nez v1, :cond_11

    move-object/from16 v30, v10

    move-object/from16 v28, v13

    goto :goto_b

    .line 9
    :cond_11
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v28, v13

    move-object/from16 v13, v18

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_12

    invoke-virtual {v13, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_12

    move-object/from16 v30, v10

    const/16 v10, 0xa

    invoke-virtual {v13, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x1

    invoke-static {v10, v13}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result v10

    sub-int/2addr v10, v13

    const/4 v13, 0x3

    invoke-static {v13, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v13, 0x0

    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_c

    :cond_12
    move-object/from16 v30, v10

    :goto_b
    const/4 v10, 0x0

    :goto_c
    const-string v13, ""

    if-nez v3, :cond_13

    const/4 v9, 0x0

    move-object/from16 v18, v6

    goto :goto_f

    :cond_13
    move-object/from16 v18, v6

    if-nez v1, :cond_14

    move-object v6, v13

    goto :goto_d

    :cond_14
    const-string v6, "player_id"

    .line 10
    invoke-interface {v1, v6, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1, v9, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_d
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_15

    const/4 v6, 0x0

    goto :goto_e

    :cond_15
    invoke-virtual {v3, v6}, Lcom/sgscq/vpn/p7;->g(Ljava/lang/String;)Lcom/sgscq/vpn/v5;

    move-result-object v6

    :goto_e
    move-object v9, v6

    if-eqz v9, :cond_16

    :goto_f
    move-object v1, v9

    move-object/from16 v31, v14

    move-object/from16 v42, v15

    goto :goto_12

    :cond_16
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/h1;->N(Ljava/util/Map;)I

    move-result v6

    const/4 v9, 0x1

    invoke-static {v9, v15, v11}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    invoke-static {v1, v14, v11}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-gtz v6, :cond_17

    invoke-static {v8}, Lcom/sgscq/vpn/handler/h1;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    move-object v9, v14

    move-object/from16 v42, v15

    int-to-long v14, v6

    invoke-virtual {v3, v1, v14, v15, v4}, Lcom/sgscq/vpn/p7;->o(IJLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v31, v9

    goto :goto_10

    :cond_17
    move-object v9, v14

    move-object/from16 v42, v15

    invoke-static {v8}, Lcom/sgscq/vpn/handler/h1;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v14

    int-to-long v14, v14

    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v19

    const-wide/16 v21, 0x3c

    div-long v19, v19, v21

    xor-long v14, v14, v19

    move-object/from16 v31, v9

    invoke-virtual {v3, v6, v14, v15, v4}, Lcom/sgscq/vpn/p7;->m(IJLjava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-static {v9, v1, v6, v14, v15}, Lcom/sgscq/vpn/handler/h1;->Q(Ljava/util/List;IIJ)Ljava/util/ArrayList;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_18

    const/4 v9, 0x0

    goto :goto_11

    :cond_18
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/sgscq/vpn/v5;

    :goto_11
    move-object v1, v9

    :goto_12
    if-nez v1, :cond_19

    const/4 v6, 0x3

    .line 11
    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v9, 0x0

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    mul-int/lit8 v6, v6, 0xf

    add-int/lit8 v6, v6, 0x14

    goto :goto_13

    .line 12
    :cond_19
    iget v6, v1, Lcom/sgscq/vpn/v5;->c:I

    :goto_13
    const-string v9, "\u4e71\u6b66\u5bf9\u624b"

    if-nez v1, :cond_1a

    .line 13
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x3

    invoke-static {v15, v10}, Ljava/lang/Math;->min(II)I

    move-result v15

    const/4 v3, 0x0

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_14

    .line 14
    :cond_1a
    iget-object v3, v1, Lcom/sgscq/vpn/v5;->b:Ljava/lang/String;

    :goto_14
    if-nez v1, :cond_1b

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v10, 0x1

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_15

    :cond_1b
    iget-object v7, v1, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    :goto_15
    if-nez v1, :cond_1c

    invoke-static {v6, v10, v8}, Lcom/sgscq/vpn/handler/h1;->g(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    goto :goto_16

    :cond_1c
    invoke-virtual {v1}, Lcom/sgscq/vpn/v5;->f()Ljava/util/List;

    move-result-object v14

    :goto_16
    move-object v15, v14

    if-nez v1, :cond_1d

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v14

    const/4 v4, 0x1

    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_17

    :cond_1d
    invoke-virtual {v1}, Lcom/sgscq/vpn/v5;->k()I

    move-result v4

    :goto_17
    const-string v14, "fighting"

    if-nez v1, :cond_22

    if-eqz v15, :cond_20

    .line 15
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_1e

    goto :goto_19

    :cond_1e
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    const/16 v20, 0x0

    :goto_18
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v32, v7

    move-object/from16 v7, v21

    check-cast v7, Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2, v14, v7}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v2

    add-int v20, v2, v20

    move-object/from16 v2, p2

    move-object/from16 v7, v32

    goto :goto_18

    :cond_1f
    move-object/from16 v32, v7

    if-lez v20, :cond_21

    goto :goto_1a

    :cond_20
    :goto_19
    move-object/from16 v32, v7

    :cond_21
    const/16 v20, 0xdac

    :goto_1a
    move/from16 v2, v20

    goto :goto_1b

    :cond_22
    move-object/from16 v32, v7

    .line 16
    iget v2, v1, Lcom/sgscq/vpn/v5;->d:I

    :goto_1b
    const-string v7, "general_name"

    move-object/from16 v83, v1

    const-string v1, "null"

    move-object/from16 v19, v5

    const-string v5, "112001"

    move-object/from16 v33, v3

    const-string v3, "general_id"

    move/from16 v34, v6

    const-string v6, "\u73a9\u5bb6"

    move-object/from16 v20, v14

    const-string v14, "user_nickname"

    const-string v0, "id"

    move/from16 v21, v10

    const-string v10, "general_pk_id"

    move-object/from16 v35, v8

    const-string v8, "TeamGeneral"

    move/from16 v22, v2

    const-string v2, "General"

    move/from16 v23, v4

    const-string v4, "fightPoint"

    if-eqz v37, :cond_47

    move-object/from16 v24, v4

    .line 17
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v11}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v25

    if-eqz v25, :cond_2c

    .line 18
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->isEmpty()Z

    move-result v43

    if-eqz v43, :cond_23

    goto/16 :goto_21

    :cond_23
    move-object/from16 v84, v2

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v43

    :goto_1c
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v44

    move-object/from16 v45, v9

    const-string v9, "bound_lieutenants"

    if-eqz v44, :cond_26

    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    move-object/from16 v85, v15

    move-object/from16 v15, v44

    check-cast v15, Ljava/util/Map;

    if-nez v15, :cond_24

    goto :goto_1d

    :cond_24
    invoke-interface {v15, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v15, v10, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v15, v12, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v44

    if-nez v44, :cond_25

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_25

    invoke-interface {v2, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    :goto_1d
    move-object/from16 v9, v45

    move-object/from16 v15, v85

    goto :goto_1c

    :cond_26
    move-object/from16 v85, v15

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_28

    :cond_27
    move-object/from16 v25, v1

    move-object/from16 v86, v12

    goto :goto_22

    :cond_28
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_27

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v43, v15

    move-object/from16 v15, v25

    check-cast v15, Ljava/util/Map;

    move-object/from16 v25, v1

    if-nez v15, :cond_29

    goto :goto_1f

    :cond_29
    const-string v1, "major_pk_id"

    invoke-interface {v15, v1, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_2a

    :goto_1f
    move-object/from16 v1, v25

    move-object/from16 v15, v43

    goto :goto_1e

    :cond_2a
    move-object/from16 v44, v2

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v86, v12

    instance-of v12, v2, Ljava/util/List;

    if-eqz v12, :cond_2b

    check-cast v2, Ljava/util/List;

    goto :goto_20

    :cond_2b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_20
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v25

    move-object/from16 v15, v43

    move-object/from16 v2, v44

    move-object/from16 v12, v86

    goto :goto_1e

    :cond_2c
    :goto_21
    move-object/from16 v25, v1

    move-object/from16 v84, v2

    move-object/from16 v45, v9

    move-object/from16 v86, v12

    move-object/from16 v85, v15

    .line 19
    :goto_22
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v8, v11}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lc/n;

    const/16 v9, 0xc

    invoke-direct {v2, v9}, Lc/n;-><init>(I)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lcom/sgscq/vpn/handler/h1;->W(Ljava/util/Map;)I

    move-result v9

    const/4 v12, 0x1

    if-lt v9, v12, :cond_2f

    const v12, 0x7fffffff

    if-ne v9, v12, :cond_2d

    goto :goto_24

    :cond_2d
    invoke-interface {v2, v10, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11}, Lcom/sgscq/vpn/handler/h1;->s(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_2e

    goto :goto_24

    .line 20
    :cond_2e
    invoke-static {v2, v0, v5, v3}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 21
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-interface {v11, v14, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v2, v7, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v53, v0

    .line 22
    new-instance v0, Lcom/sgscq/vpn/handler/e;

    move-object/from16 v43, v1

    const/4 v1, 0x0

    invoke-direct {v0, v9, v1, v12}, Lcom/sgscq/vpn/handler/e;-><init>(Ljava/lang/String;II)V

    .line 23
    iput-object v2, v0, Lcom/sgscq/vpn/handler/e;->d:Ljava/util/Map;

    .line 24
    iput-object v11, v0, Lcom/sgscq/vpn/handler/e;->e:Ljava/util/Map;

    .line 25
    iput-object v15, v0, Lcom/sgscq/vpn/handler/e;->g:Ljava/lang/String;

    const-wide v47, 0x4072c00000000000L    # 300.0

    const-wide/high16 v49, 0x4059000000000000L    # 100.0

    const-wide/high16 v51, 0x4059000000000000L    # 100.0

    move-object/from16 v46, v0

    .line 26
    invoke-virtual/range {v46 .. v52}, Lcom/sgscq/vpn/handler/e;->a(DDD)V

    invoke-static {v0}, Lcom/sgscq/vpn/handler/f;->a(Lcom/sgscq/vpn/handler/e;)Lcom/sgscq/vpn/battle/BattleUnit;

    move-result-object v0

    .line 27
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_2f
    :goto_24
    move-object/from16 v53, v0

    move-object/from16 v43, v1

    :goto_25
    move-object/from16 v1, v43

    move-object/from16 v0, v53

    goto :goto_23

    :cond_30
    move-object/from16 v53, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v11, v14, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2, v2, v5, v0, v1}, Lcom/sgscq/vpn/handler/h1;->G(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/battle/BattleUnit;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v85 .. v85}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v15, 0x1

    move-object/from16 v43, v1

    move-object/from16 v1, v45

    invoke-static {v15, v12, v9, v1, v2}, Lcom/sgscq/vpn/handler/h1;->G(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/battle/BattleUnit;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v43

    goto :goto_26

    :cond_32
    const/4 v1, 0x0

    .line 29
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/sgscq/vpn/w1;->B(Ljava/util/Map;)I

    move-result v1

    if-lez v1, :cond_33

    const/4 v2, 0x1

    move/from16 v9, v23

    goto :goto_28

    .line 30
    :cond_33
    invoke-static {v8, v11}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_34
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-static {v9}, Lcom/sgscq/vpn/handler/h1;->W(Ljava/util/Map;)I

    move-result v9

    const/4 v11, 0x1

    if-lt v9, v11, :cond_34

    const v11, 0x7fffffff

    if-eq v9, v11, :cond_34

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_35
    const/4 v1, 0x1

    .line 31
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v9, v23

    move/from16 v129, v2

    move v2, v1

    move/from16 v1, v129

    .line 32
    :goto_28
    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move/from16 v11, v22

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {}, Lo/h;->a()Lo/h;

    move-result-object v11

    new-instance v12, Ljava/util/Random;

    invoke-static/range {v35 .. v35}, Lcom/sgscq/vpn/handler/h1;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v15

    move-object/from16 v22, v7

    move-object/from16 v87, v8

    int-to-long v7, v15

    move/from16 v23, v2

    move/from16 v15, v21

    move-object/from16 v21, v3

    int-to-long v2, v15

    const-wide/16 v43, 0x1f

    mul-long v2, v2, v43

    add-long/2addr v2, v7

    invoke-direct {v12, v2, v3}, Ljava/util/Random;-><init>(J)V

    new-instance v2, Lcom/sgscq/vpn/battle/BattleScenario;

    int-to-double v7, v1

    move-object v3, v13

    int-to-double v12, v9

    const/16 v46, 0x0

    move-object/from16 v43, v2

    move-object/from16 v44, v4

    move-object/from16 v45, v0

    move-wide/from16 v47, v7

    move-wide/from16 v49, v12

    invoke-direct/range {v43 .. v50}, Lcom/sgscq/vpn/battle/BattleScenario;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;DD)V

    .line 33
    invoke-virtual {v11, v2}, Lo/h;->b(Lcom/sgscq/vpn/battle/BattleScenario;)Lcom/sgscq/vpn/battle/BattleResult;

    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lcom/sgscq/vpn/battle/BattleResult;->getFightInfo()Ljava/util/Map;

    move-result-object v7

    if-nez v7, :cond_36

    .line 35
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_29

    :cond_36
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8, v7}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v7, v8

    :goto_29
    const-string v8, "init"

    .line 36
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Ljava/util/Map;

    if-nez v12, :cond_37

    const/4 v1, 0x1

    move-object/from16 v13, p0

    move-object/from16 v125, v5

    move-object/from16 v126, v6

    move-object/from16 v127, v10

    move-object/from16 v124, v14

    move/from16 v20, v15

    move-object/from16 v9, v33

    move-object/from16 v24, v53

    move-object/from16 v10, v85

    goto/16 :goto_2e

    :cond_37
    check-cast v11, Ljava/util/Map;

    move-object/from16 v13, p0

    move-object/from16 v12, v53

    invoke-interface {v13, v14, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    move-object/from16 v124, v14

    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/h1;->p(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v113

    move-object/from16 v125, v5

    const/4 v5, 0x0

    move-object/from16 v126, v6

    move-object/from16 v6, v24

    invoke-static {v5, v6, v13}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v5

    move-object/from16 v6, v20

    invoke-static {v5, v6, v13}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v5

    const-string v6, "cards"

    .line 37
    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move/from16 v20, v15

    instance-of v15, v6, Ljava/util/List;

    if-nez v15, :cond_39

    :cond_38
    move-object/from16 v127, v10

    goto :goto_2c

    :cond_39
    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_38

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v24, v6

    instance-of v6, v15, Ljava/util/Map;

    if-nez v6, :cond_3a

    move-object/from16 v127, v10

    goto :goto_2b

    :cond_3a
    check-cast v15, Ljava/util/Map;

    const-string v6, "side"

    move-object/from16 v127, v10

    const/4 v10, -0x1

    invoke-static {v10, v6, v15}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v6

    const/4 v10, 0x1

    if-ne v6, v10, :cond_3b

    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3b

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3b

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v10, v85

    goto :goto_2d

    :cond_3b
    :goto_2b
    move-object/from16 v6, v24

    move-object/from16 v10, v127

    goto :goto_2a

    :goto_2c
    move-object/from16 v10, v85

    move-object/from16 v6, v125

    .line 38
    :goto_2d
    invoke-static {v6, v10}, Lcom/sgscq/vpn/handler/h1;->v(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v72

    move-object/from16 v60, v72

    move-object/from16 v62, v72

    move-object/from16 v64, v72

    move-object/from16 v66, v72

    move-object/from16 v68, v72

    move-object/from16 v70, v72

    const/4 v6, 0x0

    invoke-static {v6, v11}, Lcom/sgscq/vpn/handler/h1;->S(ILjava/util/Map;)Z

    move-result v6

    const/4 v15, 0x1

    invoke-static {v15, v11}, Lcom/sgscq/vpn/handler/h1;->S(ILjava/util/Map;)Z

    move-result v15

    move-object/from16 v24, v12

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/util/Map;

    const-string v88, "nickname"

    const-string v90, "player_name"

    const-string v92, "userName"

    const-string v94, "teamPoint"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v95

    const-string v96, "fighting"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v97

    const-string v98, "fight_point"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v99

    const-string v100, "general_id"

    const-string v102, "general_skin"

    const-string v104, "user_general_skin"

    const-string v106, "teamLeader"

    const-string v108, "team_leader"

    const-string v110, "head"

    const-string v112, "avatar"

    const-string v114, "user_ability"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v115

    const-string v116, "leadership_num"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v117

    const-string v118, "leadershipNum"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v119

    const-string v120, "user_leadership_num"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v121

    const-string v122, "evolution_image_status"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v123

    move-object/from16 v89, v14

    move-object/from16 v91, v14

    move-object/from16 v93, v14

    move-object/from16 v101, v113

    move-object/from16 v103, v113

    move-object/from16 v105, v113

    move-object/from16 v107, v113

    move-object/from16 v109, v113

    move-object/from16 v111, v113

    filled-new-array/range {v88 .. v123}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "name"

    invoke-static {v5, v14, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v12, v6

    const-string v43, "nickname"

    const-string v45, "player_name"

    const-string v47, "userName"

    const-string v49, "player_level"

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    const-string v51, "level"

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    const-string v53, "teamPoint"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    const-string v55, "fighting"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    const-string v57, "fight_point"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v58

    const-string v59, "general_id"

    const-string v61, "general_skin"

    const-string v63, "user_general_skin"

    const-string v65, "teamLeader"

    const-string v67, "team_leader"

    const-string v69, "head"

    const-string v71, "avatar"

    const-string v73, "user_ability"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v74

    const-string v75, "leadership_num"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v76

    const-string v77, "leadershipNum"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    const-string v79, "user_leadership_num"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v80

    const-string v81, "evolution_image_status"

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v82

    move-object/from16 v44, v33

    move-object/from16 v46, v33

    move-object/from16 v48, v33

    filled-new-array/range {v43 .. v82}, [Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v9, v33

    invoke-static {v5, v9, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v12, v5

    invoke-static {v12}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v6, "info"

    invoke-interface {v11, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v5

    .line 39
    :goto_2e
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/util/Map;

    if-nez v6, :cond_3c

    goto :goto_2f

    :cond_3c
    check-cast v5, Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "skipRounds"

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :goto_2f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz v6, :cond_3f

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3d
    :goto_31
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    instance-of v14, v12, Ljava/util/Map;

    if-nez v14, :cond_3d

    instance-of v14, v12, Ljava/util/List;

    if-eqz v14, :cond_3e

    goto :goto_31

    :cond_3e
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    :cond_3f
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_40
    const-string v5, "enemy_team"

    .line 41
    invoke-interface {v7, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    move/from16 v46, v5

    :cond_41
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sgscq/vpn/battle/BattleUnit;

    if-eqz v5, :cond_41

    invoke-virtual {v5}, Lcom/sgscq/vpn/battle/BattleUnit;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_41

    add-int/lit8 v46, v46, 0x1

    goto :goto_32

    :cond_42
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v5, 0x0

    :goto_33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_46

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_46

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sgscq/vpn/battle/BattleUnit;

    invoke-virtual {v6}, Lcom/sgscq/vpn/battle/BattleUnit;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_43

    move-object/from16 v8, v21

    goto :goto_35

    :cond_43
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    move-object/from16 v8, v21

    invoke-interface {v6, v8, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_44

    goto :goto_35

    :cond_44
    const/4 v11, 0x0

    invoke-static {v11, v6, v1}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v11

    const v12, 0x7fffffff

    if-lt v11, v12, :cond_45

    goto :goto_34

    :cond_45
    add-int/lit8 v12, v11, 0x1

    :goto_34
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_35
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v21, v8

    goto :goto_33

    :cond_46
    move-object/from16 v8, v21

    new-instance v0, Lcom/sgscq/vpn/handler/g1;

    invoke-virtual {v2}, Lcom/sgscq/vpn/battle/BattleResult;->isSuccess()Z

    move-result v45

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v47

    invoke-virtual {v2}, Lcom/sgscq/vpn/battle/BattleResult;->getRoundCount()I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v48

    move-object/from16 v43, v0

    move-object/from16 v44, v7

    move-object/from16 v49, v1

    invoke-direct/range {v43 .. v49}, Lcom/sgscq/vpn/handler/g1;-><init>(Ljava/util/LinkedHashMap;ZIIILjava/util/LinkedHashMap;)V

    goto :goto_37

    :cond_47
    move-object/from16 v24, v0

    move-object/from16 v25, v1

    move-object/from16 v84, v2

    move-object/from16 v125, v5

    move-object/from16 v126, v6

    move-object/from16 v87, v8

    move-object/from16 v127, v10

    move-object/from16 v86, v12

    move-object/from16 v124, v14

    move-object v10, v15

    move-object/from16 v0, v20

    move/from16 v20, v21

    move/from16 v11, v22

    move-object/from16 v9, v33

    move-object v8, v3

    move-object v6, v4

    move-object/from16 v22, v7

    move-object v3, v13

    move-object/from16 v13, p0

    const/4 v1, 0x0

    .line 42
    invoke-static {v1, v6, v13}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    invoke-static {v1, v0, v13}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lt v0, v1, :cond_48

    const/4 v0, 0x1

    goto :goto_36

    :cond_48
    const/4 v0, 0x0

    :goto_36
    move/from16 v45, v0

    new-instance v0, Lcom/sgscq/vpn/handler/g1;

    new-instance v44, Ljava/util/LinkedHashMap;

    invoke-direct/range {v44 .. v44}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    new-instance v49, Ljava/util/LinkedHashMap;

    invoke-direct/range {v49 .. v49}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v43, v0

    invoke-direct/range {v43 .. v49}, Lcom/sgscq/vpn/handler/g1;-><init>(Ljava/util/LinkedHashMap;ZIIILjava/util/LinkedHashMap;)V

    :goto_37
    const-string v1, "ladder_fight_user_exp"

    move-object/from16 v2, v19

    .line 43
    iget v4, v2, Ll/c;->a:I

    move-object/from16 v5, p2

    invoke-static {v4, v5, v1}, Lcom/sgscq/vpn/handler/h1;->b0(ILandroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 44
    invoke-static {v1, v5}, Lcom/sgscq/vpn/p5;->B0(ILandroid/content/Context;)I

    move-result v1

    .line 45
    iget-boolean v6, v0, Lcom/sgscq/vpn/handler/g1;->b:Z

    if-eqz v6, :cond_49

    const-string v7, "ladder_fight_general_exp"

    .line 46
    invoke-static {v4, v5, v7}, Lcom/sgscq/vpn/handler/h1;->b0(ILandroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 47
    invoke-static {v7, v5}, Lcom/sgscq/vpn/p5;->B0(ILandroid/content/Context;)I

    move-result v7

    goto :goto_38

    :cond_49
    const/4 v7, 0x0

    :goto_38
    if-eqz v6, :cond_4c

    .line 48
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    move/from16 v11, v34

    .line 49
    invoke-static {v15, v11}, Ljava/lang/Math;->max(II)I

    move-result v12

    int-to-long v11, v12

    const-wide/16 v45, 0x44c

    mul-long v11, v11, v45

    const-wide/32 v43, 0x7fffffff

    cmp-long v19, v11, v43

    if-ltz v19, :cond_4a

    goto :goto_39

    :cond_4a
    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-long v14, v14

    mul-long/2addr v11, v14

    cmp-long v14, v11, v43

    if-ltz v14, :cond_4b

    :goto_39
    const v11, 0x7fffffff

    goto :goto_3a

    :cond_4b
    long-to-int v11, v11

    goto :goto_3a

    :cond_4c
    const/4 v11, 0x0

    :goto_3a
    move v15, v11

    .line 50
    iget v2, v2, Ll/c;->b:I

    move-object/from16 v11, v18

    invoke-virtual {v11, v4, v2, v1}, Lcom/sgscq/vpn/w1;->m(III)Ll/c;

    move-result-object v2

    iget v4, v2, Ll/c;->a:I

    move-object/from16 v11, v31

    move-object/from16 v12, v42

    .line 51
    invoke-static {v4, v13, v11, v4, v12}, Lc/a;->t(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    iget v2, v2, Ll/c;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move/from16 v31, v1

    move-object/from16 v1, v30

    invoke-interface {v13, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v1, v28

    invoke-interface {v13, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "experience"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v13, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-gtz v7, :cond_4d

    move-object/from16 v46, v0

    move/from16 v33, v2

    move/from16 v45, v4

    move/from16 v47, v6

    move-object/from16 v42, v9

    move-object/from16 v85, v10

    move-object/from16 v4, v86

    move-object/from16 v2, v87

    goto/16 :goto_3d

    :cond_4d
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move/from16 v33, v2

    move-object/from16 v2, v87

    invoke-static {v2, v13}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_3b
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_50

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v42, v9

    move-object/from16 v9, v19

    check-cast v9, Ljava/util/Map;

    move-object/from16 v46, v0

    move/from16 v45, v4

    move-object/from16 v85, v10

    move-object/from16 v4, v86

    move-object/from16 v10, v127

    .line 54
    invoke-static {v9, v4, v3, v10}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    move/from16 v47, v6

    if-nez v19, :cond_4e

    const-string v6, "0"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4e

    move-object/from16 v6, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_4e
    move-object/from16 v6, v25

    :cond_4f
    :goto_3c
    move-object/from16 v86, v4

    move-object/from16 v25, v6

    move-object/from16 v127, v10

    move-object/from16 v9, v42

    move/from16 v4, v45

    move-object/from16 v0, v46

    move/from16 v6, v47

    move-object/from16 v10, v85

    goto :goto_3b

    :cond_50
    move-object/from16 v46, v0

    move/from16 v45, v4

    move/from16 v47, v6

    move-object/from16 v42, v9

    move-object/from16 v85, v10

    move-object/from16 v4, v86

    move-object/from16 v10, v127

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    :goto_3d
    const/4 v0, 0x0

    move-object/from16 v19, v0

    move-object v0, v1

    move-object/from16 v87, v2

    move v13, v7

    move-object/from16 v50, v11

    move/from16 v48, v15

    move-object v11, v4

    goto/16 :goto_49

    :cond_51
    new-instance v0, Lc/n;

    const/16 v6, 0xa

    invoke-direct {v0, v6}, Lc/n;-><init>(I)V

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v6, v84

    invoke-static {v6, v13}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_52

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v9

    move-object/from16 v9, v18

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, v4, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, p2

    move-object/from16 v9, v19

    goto :goto_3e

    :cond_52
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v9

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v5, v18

    check-cast v5, Ljava/util/Map;

    move-object/from16 v18, v14

    .line 56
    invoke-static {v5, v4, v3, v10}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 57
    invoke-virtual {v0, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_53

    move-object/from16 v14, v18

    move-object/from16 v0, v23

    const/4 v5, 0x0

    goto :goto_3f

    :cond_53
    move/from16 v48, v15

    const/4 v15, 0x1

    move-object/from16 v49, v1

    invoke-static {v15, v12, v0}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    move-object/from16 v86, v4

    const-string v4, "general_level"

    invoke-static {v1, v4, v0}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-string v15, "general_experience"

    move-object/from16 v21, v5

    move-object/from16 v84, v6

    const-wide/16 v5, 0x0

    move-object/from16 v127, v10

    move-object/from16 v50, v11

    invoke-static {v5, v6, v15, v0}, Lcom/sgscq/vpn/handler/h1;->F(JLjava/lang/String;Ljava/util/Map;)J

    move-result-wide v10

    move-object/from16 v87, v2

    const-string v2, "general_exp"

    invoke-static {v10, v11, v2, v0}, Lcom/sgscq/vpn/handler/h1;->F(JLjava/lang/String;Ljava/util/Map;)J

    move-result-wide v10

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    move-object/from16 v10, v24

    .line 58
    invoke-static {v0, v10, v3, v8}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v9, :cond_54

    .line 59
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_54

    move-object/from16 v24, v8

    const/4 v8, 0x1

    move-object/from16 v25, v3

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v9, v11, v3}, Lcom/sgscq/vpn/w1;->c0(Ljava/lang/String;I)J

    move-result-wide v51

    const-wide/16 v53, 0x0

    goto :goto_40

    :cond_54
    move-object/from16 v25, v3

    move-object/from16 v24, v8

    const/4 v8, 0x1

    const-wide/16 v53, 0x0

    const-wide/16 v51, 0x0

    :goto_40
    cmp-long v3, v51, v53

    const-wide/16 v53, 0x3e8

    if-gtz v3, :cond_55

    if-le v1, v8, :cond_55

    add-int/lit8 v3, v1, -0x1

    move-object v8, v4

    int-to-long v3, v3

    mul-long v51, v3, v53

    goto :goto_41

    :cond_55
    move-object v8, v4

    :goto_41
    move-wide/from16 v3, v51

    move-object/from16 v51, v14

    move-object/from16 v52, v15

    const-wide/16 v14, 0x0

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const/4 v5, 0x1

    move-object/from16 v6, v50

    .line 60
    invoke-static {v5, v6, v13}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v14

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    mul-int/lit8 v14, v14, 0x4

    .line 61
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz v9, :cond_57

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_56

    goto :goto_42

    :cond_56
    move-object/from16 v50, v6

    move v15, v7

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-virtual {v9, v14, v11, v6, v7}, Lcom/sgscq/vpn/w1;->P0(ILjava/lang/String;J)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_43

    :cond_57
    :goto_42
    move-object/from16 v50, v6

    move v15, v7

    :goto_43
    if-eqz v9, :cond_58

    .line 62
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_58

    const/4 v6, 0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v9, v11, v7}, Lcom/sgscq/vpn/w1;->c0(Ljava/lang/String;I)J

    move-result-wide v55

    const-wide/16 v57, 0x0

    goto :goto_44

    :cond_58
    const/4 v6, 0x1

    const-wide/16 v57, 0x0

    const-wide/16 v55, 0x0

    :goto_44
    move v7, v15

    move-wide/from16 v14, v57

    cmp-long v11, v55, v14

    if-gtz v11, :cond_59

    if-le v5, v6, :cond_59

    add-int/lit8 v6, v5, -0x1

    move v11, v7

    int-to-long v6, v6

    mul-long v55, v6, v53

    goto :goto_45

    :cond_59
    move v11, v7

    :goto_45
    move-wide/from16 v6, v55

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v53

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    sub-long v6, v53, v6

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const-wide/32 v14, 0x7fffffff

    cmp-long v43, v6, v14

    if-lez v43, :cond_5a

    const v6, 0x7fffffff

    goto :goto_46

    :cond_5a
    long-to-int v6, v6

    .line 63
    :goto_46
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "exp"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/sgscq/vpn/handler/h1;->m(J)Ljava/lang/Number;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/sgscq/vpn/handler/h1;->m(J)Ljava/lang/Number;

    move-result-object v6

    move-object/from16 v14, v52

    invoke-interface {v0, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {v9, v1, v5, v0}, Lcom/sgscq/vpn/w1;->g(IILjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v6, v51

    :try_start_1
    invoke-virtual {v9, v6, v13}, Lcom/sgscq/vpn/w1;->F2(Ljava/lang/String;Ljava/util/Map;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_47

    :catch_0
    move-object/from16 v6, v51

    :catch_1
    :goto_47
    move-object/from16 v15, v21

    .line 64
    invoke-static {v5, v15, v8, v5, v12}, Lc/a;->t(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    move/from16 v21, v11

    move-object/from16 v11, v84

    .line 65
    invoke-static {v11, v13, v0}, Lcom/sgscq/vpn/handler/h1;->X(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    move-object/from16 v11, v87

    invoke-static {v11, v13, v15}, Lcom/sgscq/vpn/handler/h1;->X(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    move-object/from16 v15, v25

    .line 66
    invoke-interface {v0, v10, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v15, v24

    invoke-interface {v0, v15, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, v86

    move-object/from16 v13, v127

    .line 67
    invoke-static {v11, v6, v13, v6}, Lc/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v6

    .line 68
    invoke-interface {v6, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v13, v21

    .line 69
    invoke-static {v6, v15, v0, v13, v7}, Lcom/sgscq/vpn/handler/l;->b(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    invoke-static {v3, v4}, Lcom/sgscq/vpn/handler/h1;->m(J)Ljava/lang/Number;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/sgscq/vpn/handler/h1;->m(J)Ljava/lang/Number;

    move-result-object v2

    invoke-interface {v6, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "level_before"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "level_now"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_5b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5b

    invoke-virtual {v9, v0}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sgscq/vpn/p5;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v22

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "resource_id"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "general_painting_id"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    :cond_5b
    move-object/from16 v2, v22

    :goto_48
    move-object/from16 v0, v49

    .line 71
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    move-object/from16 v22, v2

    move-object/from16 v24, v10

    move-object v4, v11

    move v7, v13

    move-object v8, v15

    move-object/from16 v14, v18

    move-object/from16 v0, v23

    move-object/from16 v3, v25

    move/from16 v15, v48

    move-object/from16 v11, v50

    move-object/from16 v6, v84

    move-object/from16 v2, v87

    move-object/from16 v10, v127

    const/4 v5, 0x0

    move-object/from16 v13, p0

    goto/16 :goto_3f

    :cond_5c
    move-object v0, v1

    move-object/from16 v87, v2

    move-object/from16 v84, v6

    move v13, v7

    move-object/from16 v50, v11

    move/from16 v48, v15

    move-object v11, v4

    const/16 v19, 0x0

    .line 72
    :goto_49
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/p5;->x(Ljava/util/Map;)J

    move-result-wide v1

    move/from16 v3, v48

    int-to-long v4, v3

    add-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "user_coin"

    move-object/from16 v6, p0

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "arena_total_fight_times"

    const/4 v7, 0x1

    invoke-static {v7, v4, v6}, Lcom/sgscq/vpn/handler/h1;->z(ILjava/lang/String;Ljava/util/Map;)V

    const-string v4, "competition_total_fight_times"

    invoke-static {v7, v4, v6}, Lcom/sgscq/vpn/handler/h1;->z(ILjava/lang/String;Ljava/util/Map;)V

    const-string v4, "surrender_total_arena_fights"

    invoke-static {v7, v4, v6}, Lcom/sgscq/vpn/handler/h1;->z(ILjava/lang/String;Ljava/util/Map;)V

    const/4 v4, 0x3

    .line 73
    invoke-static {v6, v4, v7}, Lcom/sgscq/vpn/handler/m;->o(Ljava/util/Map;II)Lcom/sgscq/vpn/handler/j;

    move-result-object v7

    .line 74
    invoke-static {}, Lcom/sgscq/vpn/handler/h1;->V()Ljava/util/LinkedHashMap;

    move-result-object v8

    if-nez v83, :cond_5d

    add-int/lit8 v10, v20, 0x1

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v9, v4

    move/from16 v10, v20

    move-object/from16 v4, v83

    goto :goto_4a

    :cond_5d
    move-object/from16 v4, v83

    iget-object v9, v4, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    move/from16 v10, v20

    invoke-static {v9, v10}, Lcom/sgscq/vpn/handler/h1;->e0(Ljava/lang/String;I)I

    move-result v9

    :goto_4a
    new-instance v14, Ljava/util/Random;

    move/from16 v48, v3

    move-object/from16 v83, v4

    if-nez p2, :cond_5e

    const-wide/16 v3, 0x0

    invoke-direct {v14, v3, v4}, Ljava/util/Random;-><init>(J)V

    move-object/from16 v49, v0

    move-wide/from16 v43, v1

    goto :goto_4b

    :cond_5e
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    move-result-wide v3

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->hashCode()I

    move-result v15

    move-object/from16 v49, v0

    move-wide/from16 v43, v1

    int-to-long v0, v15

    xor-long/2addr v0, v3

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    xor-long/2addr v0, v2

    int-to-long v2, v10

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    invoke-direct {v14, v0, v1}, Ljava/util/Random;-><init>(J)V

    :goto_4b
    move-object/from16 v0, v35

    invoke-static {v0, v6}, Lcom/sgscq/vpn/handler/h1;->u(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/sgscq/vpn/handler/h1;->U(Ljava/util/Map;)I

    move-result v1

    if-eqz v47, :cond_62

    .line 75
    invoke-virtual {v14}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    const/4 v4, 0x1

    if-ne v9, v4, :cond_5f

    const-wide v9, 0x3feccccccccccccdL    # 0.9

    goto :goto_4c

    :cond_5f
    const/4 v4, 0x2

    if-ne v9, v4, :cond_60

    const-wide/high16 v9, 0x3fe8000000000000L    # 0.75

    goto :goto_4c

    :cond_60
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    :goto_4c
    cmpg-double v2, v2, v9

    if-gez v2, :cond_61

    const/4 v2, 0x1

    goto :goto_4d

    :cond_61
    const/4 v2, 0x0

    :goto_4d
    if-eqz v2, :cond_62

    const/4 v2, 0x1

    .line 76
    invoke-static {v2, v0, v6}, Lcom/sgscq/vpn/handler/h1;->a(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/sgscq/vpn/handler/h1;->U(Ljava/util/Map;)I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v1, 0x0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v1, :cond_62

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v18, "id"

    const-string v20, "skill_id"

    const-string v22, "num"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const-string v24, "pk_id"

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v19, v0

    move-object/from16 v21, v0

    filled-new-array/range {v18 .. v25}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "type"

    invoke-static {v2, v3, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v19

    const/4 v9, 0x1

    move v1, v9

    goto :goto_4e

    :cond_62
    move/from16 v1, v16

    :goto_4e
    if-nez v19, :cond_63

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    goto :goto_4f

    :cond_63
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/util/Map;

    const/4 v4, 0x0

    aput-object v19, v2, v4

    invoke-static {v2}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    :goto_4f
    move-object/from16 v24, v2

    invoke-static {v0, v6}, Lcom/sgscq/vpn/handler/h1;->f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object/from16 v2, v27

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fight_info"

    move-object/from16 v2, v46

    iget-object v4, v2, Lcom/sgscq/vpn/handler/g1;->a:Ljava/util/Map;

    invoke-interface {v8, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget v0, v2, Lcom/sgscq/vpn/handler/g1;->d:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v4, v2, Lcom/sgscq/vpn/handler/g1;->c:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v9, 0x0

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v10, v47

    .line 78
    invoke-static {v10, v4, v0}, Lcom/sgscq/vpn/battle/BattleStarCalculator;->calculate(ZII)I

    move-result v9

    .line 79
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v18, "rounds"

    iget v11, v2, Lcom/sgscq/vpn/handler/g1;->e:I

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v20, "residue_team_num"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const-string v22, "residue_team_percent"

    invoke-static {v4, v0}, Lcom/sgscq/vpn/battle/BattleStarCalculator;->ceilPercent(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    filled-new-array/range {v18 .. v23}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "star_level"

    invoke-static {v3, v9, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v14

    move-object/from16 v0, v17

    move-object/from16 v3, v50

    move-object/from16 v4, v124

    const-string v9, "user_id"

    const-string v11, "100001"

    .line 80
    invoke-interface {v6, v9, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v11, v126

    invoke-interface {v6, v4, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v11, v85

    move-object/from16 v15, v125

    invoke-static {v15, v11}, Lcom/sgscq/vpn/handler/h1;->v(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/h1;->p(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    move/from16 v21, v13

    move/from16 v13, v45

    invoke-static {v13, v9, v4, v15}, Lcom/sgscq/vpn/cloud/m0;->F2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v4

    move-object/from16 v15, v32

    move/from16 v9, v34

    move-object/from16 v129, v42

    move-object/from16 v42, v0

    move-object/from16 v0, v129

    invoke-static {v9, v15, v0, v11}, Lcom/sgscq/vpn/cloud/m0;->F2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sgscq/vpn/cloud/m0;->T1(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object/from16 v20, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v15, v41

    invoke-interface {v0, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "user_energy_date"

    move-object/from16 v17, v4

    const/4 v11, 0x0

    invoke-static {v11, v4, v6}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v13, v30

    invoke-interface {v0, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v13, v28

    invoke-interface {v0, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v9, "is_win"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move/from16 v16, v26

    const-string v18, "fight_type"

    move-object/from16 v41, v7

    move v7, v11

    move-object/from16 v2, v84

    move-object/from16 v6, v87

    move-object/from16 v11, v18

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v25, v12

    move-object/from16 v12, v18

    const-string v18, "fight_calculate_info"

    move/from16 v43, v1

    move-object/from16 v128, v13

    move/from16 v34, v21

    move-object/from16 v1, p0

    move-object/from16 v13, v18

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static {v7, v4, v1}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-string v19, "player_info"

    const-string v21, "drop_info"

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v51, "general_exp"

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    const-string v53, "user_coin"

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    const-string v55, "add_list"

    move-object/from16 v56, v24

    filled-new-array/range {v51 .. v56}, [Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v6, v128

    invoke-static {v6, v4, v7}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v22

    const-string v23, "add_list"

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const-string v27, "player_exp"

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const-string v31, "coin"

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    const-string v33, "general_exp"

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    const-string v35, "show_general_info"

    move-object v4, v15

    move-object/from16 v7, v25

    move/from16 v45, v29

    move-object/from16 v47, v36

    move-object/from16 v25, v6

    move-object/from16 v29, v5

    move-object/from16 v36, v49

    filled-new-array/range {v9 .. v36}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "success"

    invoke-static {v6, v0, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v5, "fight_result"

    invoke-interface {v8, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {v0, v7, v1}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v5

    invoke-static {v5, v3, v1}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "107"

    invoke-static {v0, v3, v6, v5, v1}, Lcom/sgscq/vpn/handler/p;->d(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    if-nez v37, :cond_64

    goto/16 :goto_53

    :cond_64
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v6, "Player"

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_65

    invoke-static {v2, v1}, Lcom/sgscq/vpn/handler/h1;->o(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sgscq/vpn/handler/h1;->H(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    move-result-object v3

    move-object/from16 v6, v87

    invoke-static {v6, v1}, Lcom/sgscq/vpn/handler/h1;->o(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/sgscq/vpn/handler/h1;->H(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_65
    move-object/from16 v2, v47

    if-eqz v43, :cond_66

    invoke-static {v2, v1}, Lcom/sgscq/vpn/handler/h1;->o(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sgscq/vpn/handler/h1;->H(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_66
    move-object/from16 v6, v41

    iget-boolean v7, v6, Lcom/sgscq/vpn/handler/j;->a:Z

    if-eqz v7, :cond_67

    iget-object v7, v6, Lcom/sgscq/vpn/handler/j;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    const-string v9, "meeting_info"

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "meeting_list"

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "list"

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_67
    iget-boolean v7, v6, Lcom/sgscq/vpn/handler/j;->b:Z

    if-eqz v7, :cond_69

    .line 82
    iget-object v6, v6, Lcom/sgscq/vpn/handler/j;->d:Ljava/lang/Object;

    check-cast v6, Ljava/util/Set;

    .line 83
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_68
    :goto_50
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_69

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_68

    invoke-static {v7, v1}, Lcom/sgscq/vpn/handler/h1;->o(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/sgscq/vpn/handler/h1;->H(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    move-result-object v3

    goto :goto_50

    .line 84
    :cond_69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/handler/h1;->E(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6a
    :goto_51
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v9, "4"

    invoke-static {v9, v7}, Lcom/sgscq/vpn/handler/h1;->y(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v9

    if-nez v9, :cond_6b

    const-string v9, "18"

    invoke-static {v9, v7}, Lcom/sgscq/vpn/handler/h1;->y(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v9

    if-eqz v9, :cond_6a

    :cond_6b
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    :cond_6c
    move-object/from16 v7, v46

    .line 85
    iget-object v6, v7, Lcom/sgscq/vpn/handler/g1;->f:Ljava/util/Map;

    invoke-static {v2, v1, v6}, Lcom/sgscq/vpn/handler/y0;->j(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {v2, v1}, Lcom/sgscq/vpn/handler/y0;->c(Ljava/util/List;Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;

    move-result-object v2

    invoke-virtual {v2, v3, v5}, Lcom/sgscq/vpn/handler/j;->a(Ljava/util/Map;Ljava/util/AbstractCollection;)V

    invoke-virtual {v2, v8}, Lcom/sgscq/vpn/handler/j;->b(Ljava/util/Map;)V

    move-object/from16 v2, v40

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    :goto_52
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_52

    :cond_6d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v42

    invoke-interface {v8, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v83

    invoke-static {v8, v9}, Lcom/sgscq/vpn/handler/p0;->l(Ljava/util/LinkedHashMap;Lcom/sgscq/vpn/v5;)V

    :goto_53
    move-object/from16 v12, p2

    move-object v11, v1

    move-object v13, v11

    move-object v10, v8

    const/4 v9, 0x0

    move v8, v0

    .line 86
    :goto_54
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "result"

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    return-object v10

    :cond_6e
    add-int/lit8 v15, v45, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v0, v1

    move-object v7, v4

    move/from16 v5, v38

    move-object/from16 v6, v39

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    goto/16 :goto_4

    :cond_6f
    :goto_55
    return-object v10
.end method

.method public static d0(Ljava/util/List;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "skill_id"

    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    const-string v3, "id"

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-interface {v4, v1, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-static {v5}, Lcom/sgscq/vpn/handler/h1;->D(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    invoke-static {v4}, Lcom/sgscq/vpn/handler/h1;->U(Ljava/util/Map;)I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-lez v5, :cond_1

    .line 54
    .line 55
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    :goto_1
    const-string p0, "level"

    .line 60
    .line 61
    const/4 v4, 0x1

    .line 62
    invoke-static {v4, p0, p1}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    const-string v5, "user_level"

    .line 67
    .line 68
    invoke-static {p0, v5, p1}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    invoke-static {v4, p0}, Ljava/lang/Math;->max(II)I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    const/16 p1, 0x14

    .line 77
    .line 78
    if-gt p0, p1, :cond_3

    .line 79
    .line 80
    const-string p0, "363001"

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    const/16 p1, 0x28

    .line 84
    .line 85
    if-le p0, p1, :cond_4

    .line 86
    .line 87
    const-string p0, "361001"

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    const-string p0, "362001"

    .line 91
    .line 92
    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const/4 v4, 0x0

    .line 102
    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_7

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    check-cast v5, Ljava/util/Map;

    .line 113
    .line 114
    invoke-interface {v5, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-interface {v5, v1, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-static {v6}, Lcom/sgscq/vpn/handler/h1;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-eqz v6, :cond_6

    .line 135
    .line 136
    if-nez v4, :cond_5

    .line 137
    .line 138
    move-object v4, v5

    .line 139
    goto :goto_3

    .line 140
    :cond_6
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_7
    const/4 v0, 0x0

    .line 145
    if-nez v4, :cond_8

    .line 146
    .line 147
    invoke-static {p0, v0}, Lcom/sgscq/vpn/handler/h1;->T(Ljava/lang/String;I)Ljava/util/LinkedHashMap;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    :cond_8
    invoke-virtual {p1, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    return-object p1
.end method

.method public static e(Ljava/util/ArrayList;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "add_list"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "SkillPiece"

    invoke-static {p0, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sgscq/vpn/handler/h1;->d0(Ljava/util/List;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/h1;->k(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    const-string p1, "piece_info"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "success"

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static e0(Ljava/lang/String;I)I
    .locals 3

    .line 1
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->floorMod(II)I

    move-result p0

    add-int/2addr p0, v1

    return p0

    :cond_1
    :goto_0
    add-int/2addr p1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 9

    .line 1
    const-string v0, "SkillPiece"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Lcom/sgscq/vpn/handler/h1;->d0(Ljava/util/List;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/sgscq/vpn/handler/h1;->k(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p0}, Lcom/sgscq/vpn/handler/h1;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "id"

    .line 20
    .line 21
    invoke-static {p0}, Lcom/sgscq/vpn/handler/h1;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "skill_id"

    .line 26
    .line 27
    invoke-static {p0}, Lcom/sgscq/vpn/handler/h1;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const-string v5, "num"

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    const-string v7, "skill_piece_num"

    .line 39
    .line 40
    move-object v6, v8

    .line 41
    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "pk_id"

    .line 46
    .line 47
    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Ljava/util/Map;

    .line 66
    .line 67
    invoke-static {p0}, Lcom/sgscq/vpn/handler/h1;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const-string v4, "skill_id"

    .line 72
    .line 73
    invoke-static {v2, v4, v3}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_0

    .line 78
    .line 79
    move-object v0, v2

    .line 80
    :cond_1
    const-string p0, "current_piece_info"

    .line 81
    .line 82
    const-string v1, "skill_piece_info"

    .line 83
    .line 84
    filled-new-array {p0, v0, v1, v0}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const-string v0, "piece_info"

    .line 89
    .line 90
    invoke-static {v0, p1, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method

.method public static f0()Ljava/util/Map;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/sgscq/vpn/w1;->k0()Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    return-object v1

    .line 48
    :cond_2
    sget-object v0, Lcom/sgscq/vpn/handler/h1;->c:Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    if-nez v0, :cond_7

    .line 51
    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v1, "docs/game_data_json/skills.json"

    .line 58
    .line 59
    invoke-static {v1}, Lcom/sgscq/vpn/handler/h1;->t(Ljava/lang/String;)Ljava/io/File;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_6

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_3

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    :try_start_0
    new-instance v2, Lcom/sgscq/vpn/handler/WarlordHandler$6;

    .line 73
    .line 74
    invoke-direct {v2}, Lcom/sgscq/vpn/handler/WarlordHandler$6;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    new-instance v3, La/o;

    .line 82
    .line 83
    invoke-direct {v3}, La/o;-><init>()V

    .line 84
    .line 85
    .line 86
    new-instance v4, Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v1}, Lcom/sgscq/vpn/handler/h1;->O(Ljava/io/File;)[B

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 93
    .line 94
    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v4, v2}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Ljava/util/List;

    .line 102
    .line 103
    if-nez v1, :cond_4

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_6

    .line 115
    .line 116
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Ljava/util/Map;

    .line 121
    .line 122
    const-string v3, "id"

    .line 123
    .line 124
    const-string v4, ""

    .line 125
    .line 126
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-nez v4, :cond_5

    .line 139
    .line 140
    const-string v4, "null"

    .line 141
    .line 142
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-nez v4, :cond_5

    .line 147
    .line 148
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :catch_0
    :cond_6
    :goto_2
    sput-object v0, Lcom/sgscq/vpn/handler/h1;->c:Ljava/util/LinkedHashMap;

    .line 153
    .line 154
    :cond_7
    sget-object v0, Lcom/sgscq/vpn/handler/h1;->c:Ljava/util/LinkedHashMap;

    .line 155
    .line 156
    return-object v0
.end method

.method public static g(IILjava/lang/String;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1, p0}, Lcom/sgscq/vpn/w1;->h1(I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    mul-int/lit16 v3, p0, 0xb4

    .line 16
    .line 17
    add-int/lit16 v3, v3, 0x1388

    .line 18
    .line 19
    mul-int/lit16 v4, p1, 0x578

    .line 20
    .line 21
    add-int/2addr v4, v3

    .line 22
    invoke-static {p2}, Lcom/sgscq/vpn/handler/h1;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    mul-int/lit8 p1, p1, 0x11

    .line 35
    .line 36
    add-int/2addr p1, p2

    .line 37
    new-instance p2, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    move v5, v3

    .line 44
    :goto_0
    if-ge v5, v1, :cond_3

    .line 45
    .line 46
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    div-int v6, v4, v6

    .line 51
    .line 52
    mul-int/lit8 v7, p0, 0x7

    .line 53
    .line 54
    add-int/2addr v7, p1

    .line 55
    add-int/2addr v7, v5

    .line 56
    invoke-static {v7}, Lcom/sgscq/vpn/p5;->i1(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 61
    .line 62
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v9, "slot"

    .line 66
    .line 67
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    const-string v9, "general_id"

    .line 75
    .line 76
    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    const/16 v7, 0x14

    .line 80
    .line 81
    if-lt p0, v7, :cond_0

    .line 82
    .line 83
    const/4 v7, 0x2

    .line 84
    goto :goto_1

    .line 85
    :cond_0
    const/16 v7, 0xa

    .line 86
    .line 87
    if-lt p0, v7, :cond_1

    .line 88
    .line 89
    move v7, v2

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    move v7, v3

    .line 92
    :goto_1
    if-ge v5, v7, :cond_2

    .line 93
    .line 94
    mul-int/lit8 v7, p0, 0xb

    .line 95
    .line 96
    add-int/2addr v7, p1

    .line 97
    mul-int/lit8 v9, v5, 0x2

    .line 98
    .line 99
    add-int/2addr v9, v7

    .line 100
    add-int/2addr v9, v2

    .line 101
    invoke-static {v9}, Lcom/sgscq/vpn/p5;->i1(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    const-string v9, "deputy_general_id"

    .line 106
    .line 107
    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    invoke-virtual {v9, v7}, Lcom/sgscq/vpn/w1;->T0(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    if-eqz v7, :cond_2

    .line 119
    .line 120
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    if-nez v9, :cond_2

    .line 125
    .line 126
    const-string v9, "0"

    .line 127
    .line 128
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    if-nez v9, :cond_2

    .line 133
    .line 134
    const-string v9, "lieutenant_skill_id"

    .line 135
    .line 136
    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    :cond_2
    const-string v7, "level"

    .line 140
    .line 141
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    const-string v7, "fighting"

    .line 149
    .line 150
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    div-int/lit8 v7, v6, 0x8

    .line 158
    .line 159
    mul-int/lit8 v9, p0, 0x8

    .line 160
    .line 161
    add-int/2addr v9, v7

    .line 162
    mul-int/lit8 v7, v5, 0x50

    .line 163
    .line 164
    add-int/2addr v7, v9

    .line 165
    const/16 v9, 0x2bc

    .line 166
    .line 167
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    const-string v9, "hp"

    .line 176
    .line 177
    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    div-int/lit8 v7, v6, 0x2d

    .line 181
    .line 182
    mul-int/lit8 v9, p0, 0x2

    .line 183
    .line 184
    add-int/2addr v9, v7

    .line 185
    mul-int/lit8 v7, v5, 0x8

    .line 186
    .line 187
    add-int/2addr v7, v9

    .line 188
    const/16 v9, 0x5a

    .line 189
    .line 190
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    const-string v10, "atk"

    .line 199
    .line 200
    invoke-interface {v8, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    div-int/2addr v6, v9

    .line 204
    add-int/2addr v6, p0

    .line 205
    mul-int/lit8 v7, v5, 0x4

    .line 206
    .line 207
    add-int/2addr v7, v6

    .line 208
    const/16 v6, 0x37

    .line 209
    .line 210
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 211
    .line 212
    .line 213
    move-result v9

    .line 214
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v9

    .line 218
    const-string v10, "def"

    .line 219
    .line 220
    invoke-interface {v8, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    const-string v7, "wis"

    .line 232
    .line 233
    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    add-int/lit8 v5, v5, 0x1

    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :cond_3
    return-object p2
.end method

.method public static g0(Landroid/content/Context;Ljava/util/Map;)I
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/handler/h1;->Z(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/m0;->n2(Ljava/util/Map;)I

    move-result v0

    const-string v1, "600029"

    invoke-static {v0, p0, v1}, Lcom/sgscq/vpn/cloud/m0;->i2(ILandroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-static {v1, p1}, Lcom/sgscq/vpn/cloud/m0;->b0(Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    sub-int/2addr p0, v0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const-string v0, "user_gold"

    invoke-static {v2, v0, p1}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result p1

    div-int/lit8 p1, p1, 0x32

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static h(Ljava/util/Map;)V
    .locals 11

    .line 1
    const-string v0, "SkillPiece"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v1, v1, Ljava/util/Map;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {v0, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v0, p0}, Lcom/sgscq/vpn/handler/h1;->K(Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_4

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/util/Map;

    .line 35
    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const-string v4, "id"

    .line 40
    .line 41
    const-string v5, ""

    .line 42
    .line 43
    const-string v6, "skill_id"

    .line 44
    .line 45
    const-string v7, "pk_id"

    .line 46
    .line 47
    invoke-static {v3, v4, v5, v6, v7}, Lc/a;->k(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    const/4 v9, 0x0

    .line 52
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    if-ge v9, v10, :cond_3

    .line 57
    .line 58
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    check-cast v10, Ljava/util/Map;

    .line 63
    .line 64
    invoke-static {v10, v4, v5, v6, v7}, Lc/a;->k(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    if-eqz v10, :cond_2

    .line 73
    .line 74
    invoke-interface {v1, v9, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    new-instance v3, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v4, "add"

    .line 96
    .line 97
    const-string v5, "upd"

    .line 98
    .line 99
    filled-new-array {v5, v3, v4, v1}, [Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const-string v3, "del"

    .line 104
    .line 105
    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "add"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "upd"

    filled-new-array {v3, v2, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "del"

    invoke-static {v2, v1, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static j(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {}, Lcom/sgscq/vpn/handler/h1;->f0()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/h1;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_0

    const-string v0, "compose_need_piece_num"

    const/4 v1, 0x0

    invoke-static {v1, v0, p0}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result p0

    if-lez p0, :cond_0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static k(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/util/Map;

    .line 21
    .line 22
    const-string v2, "id"

    .line 23
    .line 24
    const-string v3, "400101"

    .line 25
    .line 26
    const-string v4, "skill_id"

    .line 27
    .line 28
    invoke-static {v1, v2, v3, v4}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v1}, Lcom/sgscq/vpn/handler/h1;->U(Ljava/util/Map;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-static {v2}, Lcom/sgscq/vpn/handler/h1;->B(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-static {v2}, Lcom/sgscq/vpn/handler/h1;->j(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    :goto_1
    const-string v5, "id"

    .line 52
    .line 53
    const-string v7, "skill_id"

    .line 54
    .line 55
    const-string v9, "num"

    .line 56
    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    const-string v11, "skill_piece_num"

    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    move-object v6, v2

    .line 68
    move-object v8, v2

    .line 69
    filled-new-array/range {v5 .. v12}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v3, "pk_id"

    .line 74
    .line 75
    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    return-object v0
.end method

.method public static l(Ljava/util/ArrayList;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_4

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/util/Map;

    .line 18
    .line 19
    const-string v3, "id"

    .line 20
    .line 21
    const-string v4, ""

    .line 22
    .line 23
    const-string v5, "skill_id"

    .line 24
    .line 25
    invoke-static {v2, v3, v4, v5}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const-string v3, "361001"

    .line 37
    .line 38
    invoke-static {v2}, Lcom/sgscq/vpn/handler/h1;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/4 v4, 0x1

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    invoke-static {}, Lcom/sgscq/vpn/handler/h1;->f0()Ljava/util/Map;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v2}, Lcom/sgscq/vpn/handler/h1;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Ljava/util/Map;

    .line 65
    .line 66
    const-string v3, "grade"

    .line 67
    .line 68
    invoke-static {v0, v3, v2}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-ne v2, v4, :cond_3

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    :goto_1
    move v4, v0

    .line 76
    :goto_2
    if-eqz v4, :cond_0

    .line 77
    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    return v1
.end method

.method public static m(J)Ljava/lang/Number;
    .locals 2

    .line 1
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "SkillPiece"

    invoke-static {v0, p0}, Lcom/sgscq/vpn/handler/h1;->K(Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "311004"

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "skill_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/handler/h1;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/handler/h1;->D(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public static o(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;
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

.method public static p(Ljava/util/Map;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "general_skin"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "0"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    const-string v2, "null"

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 41
    :cond_2
    if-eqz v0, :cond_3

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 45
    .line 46
    const-string v2, "TeamGeneral"

    .line 47
    .line 48
    invoke-static {v2, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Lc/n;

    .line 56
    .line 57
    const/16 v3, 0xb

    .line 58
    .line 59
    invoke-direct {v2, v3}, Lc/n;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    const-string v3, "112001"

    .line 74
    .line 75
    if-eqz v2, :cond_5

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Ljava/util/Map;

    .line 82
    .line 83
    const-string v4, "general_pk_id"

    .line 84
    .line 85
    const-string v5, ""

    .line 86
    .line 87
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v2, p0}, Lcom/sgscq/vpn/handler/h1;->s(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    if-eqz v2, :cond_4

    .line 100
    .line 101
    const-string p0, "id"

    .line 102
    .line 103
    const-string v0, "general_id"

    .line 104
    .line 105
    invoke-static {v2, p0, v3, v0}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0

    .line 110
    :cond_5
    const-string v0, "first_choose_general"

    .line 111
    .line 112
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    if-eqz p0, :cond_6

    .line 117
    .line 118
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_6

    .line 127
    .line 128
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_6

    .line 137
    .line 138
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0

    .line 143
    :cond_6
    return-object v3
.end method

.method public static q(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 36

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    invoke-static/range {p0 .. p1}, Lcom/sgscq/vpn/handler/h1;->u(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {v1, v5, v3}, Lcom/sgscq/vpn/handler/h1;->a(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    move-object v15, v0

    .line 17
    invoke-static {v15}, Lcom/sgscq/vpn/handler/h1;->U(Ljava/util/Map;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/h1;->j(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    sub-int/2addr v0, v2

    .line 26
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result v30

    .line 30
    const-string v0, "num"

    .line 31
    .line 32
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v15, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const-string v0, "skill_piece_num"

    .line 40
    .line 41
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v15, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const-string v14, "Skill"

    .line 49
    .line 50
    invoke-static {v14, v3}, Lcom/sgscq/vpn/w1;->e2(Ljava/lang/String;Ljava/util/Map;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v13

    .line 58
    const-string v0, "id"

    .line 59
    .line 60
    const-string v2, "skill_id"

    .line 61
    .line 62
    const-string v4, "skill_code"

    .line 63
    .line 64
    const-string v6, "level"

    .line 65
    .line 66
    const-string v7, "1"

    .line 67
    .line 68
    const-string v8, "skill_level"

    .line 69
    .line 70
    const-string v9, "1"

    .line 71
    .line 72
    const-string v10, "card_type"

    .line 73
    .line 74
    const-string v11, "4"

    .line 75
    .line 76
    const-string v12, "general_pk_id"

    .line 77
    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    move-object/from16 v31, v13

    .line 83
    .line 84
    move-object v13, v1

    .line 85
    const-string v1, "pos"

    .line 86
    .line 87
    move-object/from16 v32, v14

    .line 88
    .line 89
    move-object v14, v1

    .line 90
    const-string v1, "0"

    .line 91
    .line 92
    move-object/from16 v33, v15

    .line 93
    .line 94
    move-object v15, v1

    .line 95
    const-string v16, "position"

    .line 96
    .line 97
    const-string v17, "0"

    .line 98
    .line 99
    const-string v18, "skill_position"

    .line 100
    .line 101
    const-string v19, "0"

    .line 102
    .line 103
    const-string v20, "is_natural"

    .line 104
    .line 105
    sget-object v21, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 106
    .line 107
    const-string v22, "exp"

    .line 108
    .line 109
    const-string v23, "0"

    .line 110
    .line 111
    const-string v24, "extra_level"

    .line 112
    .line 113
    const-string v25, "0"

    .line 114
    .line 115
    const-string v26, "advanced_level"

    .line 116
    .line 117
    const-string v27, "0"

    .line 118
    .line 119
    const-string v28, "get_time"

    .line 120
    .line 121
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 122
    .line 123
    .line 124
    move-result-wide v34

    .line 125
    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v29

    .line 129
    move-object/from16 v1, p0

    .line 130
    .line 131
    move-object/from16 v3, p0

    .line 132
    .line 133
    move-object/from16 v5, p0

    .line 134
    .line 135
    filled-new-array/range {v0 .. v29}, [Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const-string v1, "pk_id"

    .line 140
    .line 141
    move-object/from16 v2, v31

    .line 142
    .line 143
    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const/4 v2, 0x0

    .line 148
    :try_start_0
    invoke-static {v2}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    move-object/from16 v3, p0

    .line 153
    .line 154
    invoke-virtual {v2, v3, v0}, Lcom/sgscq/vpn/w1;->S(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .line 156
    .line 157
    :catch_0
    move-object/from16 v2, p1

    .line 158
    .line 159
    move-object/from16 v3, v32

    .line 160
    .line 161
    invoke-static {v3, v2}, Lcom/sgscq/vpn/handler/h1;->w(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    const-string v4, "add"

    .line 169
    .line 170
    const-string v5, "upd"

    .line 171
    .line 172
    const-string v6, "del"

    .line 173
    .line 174
    if-gtz v30, :cond_3

    .line 175
    .line 176
    const-string v7, ""

    .line 177
    .line 178
    move-object/from16 v8, v33

    .line 179
    .line 180
    invoke-interface {v8, v1, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 189
    .line 190
    .line 191
    move-result v7

    .line 192
    if-eqz v7, :cond_1

    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_1
    const-string v7, "SkillPiece"

    .line 196
    .line 197
    invoke-static {v7, v2, v8}, Lcom/sgscq/vpn/handler/h1;->P(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 198
    .line 199
    .line 200
    invoke-static {v7, v2}, Lcom/sgscq/vpn/handler/h1;->J(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    invoke-interface {v8, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v9

    .line 208
    if-nez v9, :cond_2

    .line 209
    .line 210
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    :cond_2
    invoke-static {v7, v2}, Lcom/sgscq/vpn/handler/h1;->I(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-static {v7, v2}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    filled-new-array {v5, v1, v4, v9}, [Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-static {v6, v8, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-interface {v2, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    goto :goto_0

    .line 233
    :cond_3
    move-object/from16 v8, v33

    .line 234
    .line 235
    invoke-static {v2, v8}, Lcom/sgscq/vpn/handler/h1;->Y(Ljava/util/Map;Ljava/util/Map;)V

    .line 236
    .line 237
    .line 238
    :goto_0
    invoke-static {v3, v2}, Lcom/sgscq/vpn/handler/h1;->I(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    if-nez v7, :cond_4

    .line 247
    .line 248
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    :cond_4
    invoke-static {v3, v2}, Lcom/sgscq/vpn/handler/h1;->J(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    invoke-static {v3, v2}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    filled-new-array {v5, v1, v4, v8}, [Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-static {v6, v7, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    return-object v0
.end method

.method public static r(Ljava/lang/String;)Ljava/util/LinkedHashMap;
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

.method public static s(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 3

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
    const-string v1, "pk_id"

    .line 31
    .line 32
    const-string v2, ""

    .line 33
    .line 34
    invoke-static {v0, v1, v2, p0}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 42
    return-object p0
.end method

.method public static t(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "user.dir"

    const-string v2, "."

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static u(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 4

    .line 1
    const-string v0, "SkillPiece"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/sgscq/vpn/handler/h1;->K(Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/Map;

    .line 22
    .line 23
    const-string v1, "id"

    .line 24
    .line 25
    const-string v2, ""

    .line 26
    .line 27
    const-string v3, "skill_id"

    .line 28
    .line 29
    invoke-static {v0, v1, v2, v3, p0}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method

.method public static v(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "general_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static w(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 5

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    const-string v2, "add"

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "upd"

    filled-new-array {v4, v3, v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "del"

    invoke-static {v3, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static y(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const-string v0, "surrender_tasks"

    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
    instance-of v0, p1, Ljava/util/List;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    check-cast p1, Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    instance-of v2, v0, Ljava/util/Map;

    .line 34
    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    check-cast v0, Ljava/util/Map;

    .line 39
    .line 40
    const-string v2, "type"

    .line 41
    .line 42
    const-string v3, ""

    .line 43
    .line 44
    const-string v4, "surrender_type"

    .line 45
    .line 46
    invoke-static {v0, v2, v3, v4, p0}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    const/4 p0, 0x1

    .line 53
    return p0

    .line 54
    :cond_4
    return v1
.end method

.method public static z(ILjava/lang/String;Ljava/util/Map;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-gtz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    int-to-long v0, v0

    int-to-long v2, p0

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    const p0, 0x7fffffff

    goto :goto_0

    :cond_1
    long-to-int p0, v0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final x(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 37

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v2, "warlord."

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    const/4 v3, 0x0

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    return-object v3

    .line 22
    :cond_1
    move-object/from16 v2, p0

    .line 23
    .line 24
    iget-object v4, v2, Lcom/sgscq/vpn/handler/h1;->a:Lcom/sgscq/vpn/handler/k0;

    .line 25
    .line 26
    invoke-virtual {v4, v1}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v12

    .line 30
    iget-object v14, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 31
    .line 32
    invoke-virtual {v14, v12}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    if-nez v5, :cond_2

    .line 37
    .line 38
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    :cond_2
    move-object v13, v5

    .line 44
    iget-object v5, v4, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 45
    .line 46
    if-nez v5, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    invoke-static {v5}, Lcom/sgscq/vpn/p7;->h(Landroid/content/Context;)Lcom/sgscq/vpn/p7;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Lcom/sgscq/vpn/p7;->i()V

    .line 54
    .line 55
    .line 56
    :goto_1
    const-string v6, "warlord.warlordPieceInfo"

    .line 57
    .line 58
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    const-string v7, "num"

    .line 63
    .line 64
    const-string v8, "id"

    .line 65
    .line 66
    const-string v9, "add_list"

    .line 67
    .line 68
    const-string v10, "type"

    .line 69
    .line 70
    const-string v11, "SkillPiece"

    .line 71
    .line 72
    const-string v15, "pk_id"

    .line 73
    .line 74
    const-string v2, "cmn_modules"

    .line 75
    .line 76
    move-object/from16 v16, v4

    .line 77
    .line 78
    const-string v4, "delta_data"

    .line 79
    .line 80
    move-object/from16 v17, v5

    .line 81
    .line 82
    const-string v5, ""

    .line 83
    .line 84
    move-object/from16 v18, v3

    .line 85
    .line 86
    const-string v3, "return_info"

    .line 87
    .line 88
    const-string v1, "skill_id"

    .line 89
    .line 90
    if-eqz v6, :cond_1d

    .line 91
    .line 92
    invoke-static {v13}, Lcom/sgscq/vpn/handler/h1;->h(Ljava/util/Map;)V

    .line 93
    .line 94
    .line 95
    new-instance v0, Ljava/util/ArrayList;

    .line 96
    .line 97
    const-string v6, "Item"

    .line 98
    .line 99
    move-object/from16 v19, v12

    .line 100
    .line 101
    invoke-static {v6, v13}, Lcom/sgscq/vpn/handler/h1;->K(Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const/4 v12, 0x0

    .line 113
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v17

    .line 117
    move-object/from16 v20, v14

    .line 118
    .line 119
    const-string v14, "add"

    .line 120
    .line 121
    move-object/from16 v21, v2

    .line 122
    .line 123
    const-string v2, "upd"

    .line 124
    .line 125
    move-object/from16 v22, v4

    .line 126
    .line 127
    const-string v4, "del"

    .line 128
    .line 129
    if-eqz v17, :cond_d

    .line 130
    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v17

    .line 135
    move-object/from16 p1, v0

    .line 136
    .line 137
    move-object/from16 v0, v17

    .line 138
    .line 139
    check-cast v0, Ljava/util/Map;

    .line 140
    .line 141
    move/from16 p2, v12

    .line 142
    .line 143
    const-string v12, "item_id"

    .line 144
    .line 145
    invoke-static {v0, v8, v5, v12}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v12

    .line 149
    const/16 v17, 0x0

    .line 150
    .line 151
    move-object/from16 v23, v3

    .line 152
    .line 153
    invoke-static/range {v17 .. v17}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v3, v12}, Lcom/sgscq/vpn/w1;->c1(Ljava/lang/String;)Ljava/util/Map;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    move-object/from16 v24, v1

    .line 162
    .line 163
    if-eqz v3, :cond_7

    .line 164
    .line 165
    const-string v1, "item_type"

    .line 166
    .line 167
    move-object/from16 v25, v11

    .line 168
    .line 169
    const/4 v11, 0x0

    .line 170
    invoke-static {v11, v1, v3}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    const/16 v11, 0x15

    .line 175
    .line 176
    if-ne v1, v11, :cond_8

    .line 177
    .line 178
    const-string v1, "effect_value"

    .line 179
    .line 180
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    instance-of v3, v1, Ljava/util/Map;

    .line 185
    .line 186
    if-eqz v3, :cond_8

    .line 187
    .line 188
    check-cast v1, Ljava/util/Map;

    .line 189
    .line 190
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    instance-of v3, v1, Ljava/util/Map;

    .line 195
    .line 196
    if-eqz v3, :cond_4

    .line 197
    .line 198
    move-object v3, v1

    .line 199
    check-cast v3, Ljava/util/Map;

    .line 200
    .line 201
    const/4 v11, 0x0

    .line 202
    invoke-static {v11, v10, v3}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    .line 203
    .line 204
    .line 205
    move-result v11

    .line 206
    move-object/from16 v17, v3

    .line 207
    .line 208
    const/4 v3, 0x7

    .line 209
    if-ne v11, v3, :cond_4

    .line 210
    .line 211
    move-object/from16 v3, v17

    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_4
    instance-of v3, v1, Ljava/util/List;

    .line 215
    .line 216
    if-eqz v3, :cond_8

    .line 217
    .line 218
    check-cast v1, Ljava/util/List;

    .line 219
    .line 220
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    if-eqz v3, :cond_8

    .line 229
    .line 230
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    instance-of v11, v3, Ljava/util/Map;

    .line 235
    .line 236
    if-eqz v11, :cond_5

    .line 237
    .line 238
    check-cast v3, Ljava/util/Map;

    .line 239
    .line 240
    const/4 v11, 0x0

    .line 241
    invoke-static {v11, v10, v3}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    .line 242
    .line 243
    .line 244
    move-result v11

    .line 245
    move-object/from16 v17, v1

    .line 246
    .line 247
    const/4 v1, 0x7

    .line 248
    if-ne v11, v1, :cond_6

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_6
    move-object/from16 v1, v17

    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_7
    move-object/from16 v25, v11

    .line 255
    .line 256
    :cond_8
    sget-object v1, Lcom/sgscq/vpn/handler/j0;->b:Ljava/util/Map;

    .line 257
    .line 258
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    check-cast v1, Ljava/lang/String;

    .line 263
    .line 264
    if-nez v1, :cond_9

    .line 265
    .line 266
    const/4 v3, 0x0

    .line 267
    goto :goto_4

    .line 268
    :cond_9
    const/4 v3, 0x7

    .line 269
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    const/4 v11, 0x1

    .line 274
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object v11

    .line 278
    filled-new-array {v8, v1, v7, v11}, [Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-static {v10, v3, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    :goto_4
    if-nez v3, :cond_a

    .line 287
    .line 288
    move-object/from16 v0, p1

    .line 289
    .line 290
    move/from16 v12, p2

    .line 291
    .line 292
    :goto_5
    move-object/from16 v14, v20

    .line 293
    .line 294
    move-object/from16 v2, v21

    .line 295
    .line 296
    move-object/from16 v4, v22

    .line 297
    .line 298
    move-object/from16 v3, v23

    .line 299
    .line 300
    move-object/from16 v1, v24

    .line 301
    .line 302
    move-object/from16 v11, v25

    .line 303
    .line 304
    goto/16 :goto_2

    .line 305
    .line 306
    :cond_a
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    const-string v11, "item_num"

    .line 315
    .line 316
    const/4 v12, 0x0

    .line 317
    invoke-static {v12, v11, v0}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    .line 318
    .line 319
    .line 320
    move-result v11

    .line 321
    invoke-static {v11, v7, v0}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    .line 322
    .line 323
    .line 324
    move-result v11

    .line 325
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    .line 326
    .line 327
    .line 328
    move-result v11

    .line 329
    const/4 v12, 0x1

    .line 330
    invoke-static {v12, v7, v3}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    .line 331
    .line 332
    .line 333
    move-result v3

    .line 334
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    mul-int/2addr v3, v11

    .line 339
    if-lez v3, :cond_b

    .line 340
    .line 341
    invoke-static {v3, v1, v13}, Lcom/sgscq/vpn/handler/h1;->a(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 342
    .line 343
    .line 344
    :cond_b
    invoke-interface {v0, v15, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-static {v6, v13, v0}, Lcom/sgscq/vpn/handler/h1;->P(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 353
    .line 354
    .line 355
    invoke-static {v6, v13}, Lcom/sgscq/vpn/handler/h1;->J(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    if-nez v3, :cond_c

    .line 364
    .line 365
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v3

    .line 369
    if-nez v3, :cond_c

    .line 370
    .line 371
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    :cond_c
    invoke-static {v6, v13}, Lcom/sgscq/vpn/handler/h1;->I(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-static {v6, v13}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    filled-new-array {v2, v1, v14, v3}, [Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-static {v4, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-interface {v13, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    const/4 v12, 0x1

    .line 394
    move-object/from16 v0, p1

    .line 395
    .line 396
    goto :goto_5

    .line 397
    :cond_d
    move-object/from16 v24, v1

    .line 398
    .line 399
    move-object/from16 v23, v3

    .line 400
    .line 401
    move-object v1, v11

    .line 402
    move/from16 p2, v12

    .line 403
    .line 404
    invoke-static {v1, v13}, Lcom/sgscq/vpn/handler/h1;->K(Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 409
    .line 410
    .line 411
    move-result v3

    .line 412
    if-eqz v3, :cond_e

    .line 413
    .line 414
    const/4 v3, 0x0

    .line 415
    move-object/from16 v11, v24

    .line 416
    .line 417
    goto :goto_8

    .line 418
    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    const/4 v7, 0x0

    .line 423
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 424
    .line 425
    .line 426
    move-result v9

    .line 427
    if-eqz v9, :cond_11

    .line 428
    .line 429
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v9

    .line 433
    check-cast v9, Ljava/util/Map;

    .line 434
    .line 435
    move-object/from16 v11, v24

    .line 436
    .line 437
    invoke-static {v9, v8, v5, v11}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v10

    .line 441
    invoke-static {v10}, Lcom/sgscq/vpn/handler/h1;->D(Ljava/lang/String;)Z

    .line 442
    .line 443
    .line 444
    move-result v12

    .line 445
    if-nez v12, :cond_f

    .line 446
    .line 447
    goto :goto_7

    .line 448
    :cond_f
    invoke-static {v10, v13, v9}, Lcom/sgscq/vpn/handler/h1;->M(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    .line 449
    .line 450
    .line 451
    move-result v10

    .line 452
    if-eqz v10, :cond_10

    .line 453
    .line 454
    invoke-static {v13, v9}, Lcom/sgscq/vpn/handler/h1;->Y(Ljava/util/Map;Ljava/util/Map;)V

    .line 455
    .line 456
    .line 457
    const/4 v7, 0x1

    .line 458
    :cond_10
    :goto_7
    move-object/from16 v24, v11

    .line 459
    .line 460
    goto :goto_6

    .line 461
    :cond_11
    move-object/from16 v11, v24

    .line 462
    .line 463
    move v3, v7

    .line 464
    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 465
    .line 466
    .line 467
    move-result v7

    .line 468
    if-eqz v7, :cond_12

    .line 469
    .line 470
    const/4 v2, 0x0

    .line 471
    move/from16 v17, v3

    .line 472
    .line 473
    move-object/from16 p1, v6

    .line 474
    .line 475
    goto/16 :goto_c

    .line 476
    .line 477
    :cond_12
    invoke-static {v1, v13}, Lcom/sgscq/vpn/handler/h1;->J(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 478
    .line 479
    .line 480
    move-result-object v7

    .line 481
    new-instance v9, Ljava/util/ArrayList;

    .line 482
    .line 483
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 487
    .line 488
    .line 489
    move-result v10

    .line 490
    add-int/lit8 v10, v10, -0x1

    .line 491
    .line 492
    const/4 v12, 0x0

    .line 493
    :goto_9
    if-ltz v10, :cond_15

    .line 494
    .line 495
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v17

    .line 499
    move-object/from16 p1, v6

    .line 500
    .line 501
    move-object/from16 v6, v17

    .line 502
    .line 503
    check-cast v6, Ljava/util/Map;

    .line 504
    .line 505
    move/from16 v17, v3

    .line 506
    .line 507
    invoke-interface {v6, v8, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v3

    .line 511
    invoke-interface {v6, v11, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v3

    .line 515
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    invoke-static {v3}, Lcom/sgscq/vpn/handler/h1;->D(Ljava/lang/String;)Z

    .line 520
    .line 521
    .line 522
    move-result v3

    .line 523
    if-eqz v3, :cond_13

    .line 524
    .line 525
    goto :goto_a

    .line 526
    :cond_13
    invoke-interface {v6, v15, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 535
    .line 536
    .line 537
    move-result v6

    .line 538
    if-nez v6, :cond_14

    .line 539
    .line 540
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    move-result v6

    .line 547
    if-nez v6, :cond_14

    .line 548
    .line 549
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    :cond_14
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    const/4 v12, 0x1

    .line 556
    :goto_a
    add-int/lit8 v10, v10, -0x1

    .line 557
    .line 558
    move-object/from16 v6, p1

    .line 559
    .line 560
    move/from16 v3, v17

    .line 561
    .line 562
    goto :goto_9

    .line 563
    :cond_15
    move/from16 v17, v3

    .line 564
    .line 565
    move-object/from16 p1, v6

    .line 566
    .line 567
    if-eqz v12, :cond_18

    .line 568
    .line 569
    invoke-static {v1, v13}, Lcom/sgscq/vpn/handler/h1;->I(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 574
    .line 575
    .line 576
    move-result v6

    .line 577
    add-int/lit8 v6, v6, -0x1

    .line 578
    .line 579
    :goto_b
    if-ltz v6, :cond_17

    .line 580
    .line 581
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v8

    .line 585
    check-cast v8, Ljava/util/Map;

    .line 586
    .line 587
    invoke-interface {v8, v15, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v8

    .line 591
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v8

    .line 595
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    move-result v8

    .line 599
    if-eqz v8, :cond_16

    .line 600
    .line 601
    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    :cond_16
    add-int/lit8 v6, v6, -0x1

    .line 605
    .line 606
    goto :goto_b

    .line 607
    :cond_17
    filled-new-array {v2, v3, v14, v0}, [Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    invoke-static {v4, v7, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 612
    .line 613
    .line 614
    move-result-object v2

    .line 615
    invoke-interface {v13, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    :cond_18
    move v2, v12

    .line 619
    :goto_c
    invoke-static {v0, v13}, Lcom/sgscq/vpn/handler/h1;->d0(Ljava/util/List;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    invoke-static {}, Lcom/sgscq/vpn/handler/h1;->V()Ljava/util/LinkedHashMap;

    .line 624
    .line 625
    .line 626
    move-result-object v3

    .line 627
    invoke-static {v0}, Lcom/sgscq/vpn/handler/h1;->k(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    const/4 v4, 0x0

    .line 632
    new-array v4, v4, [Ljava/lang/Object;

    .line 633
    .line 634
    const-string v6, "piece_info"

    .line 635
    .line 636
    invoke-static {v6, v0, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    move-object/from16 v4, v23

    .line 641
    .line 642
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    const-string v0, "_save_player"

    .line 646
    .line 647
    if-nez p2, :cond_1a

    .line 648
    .line 649
    if-nez v17, :cond_1a

    .line 650
    .line 651
    if-eqz v2, :cond_19

    .line 652
    .line 653
    goto :goto_d

    .line 654
    :cond_19
    move-object/from16 v2, v21

    .line 655
    .line 656
    move-object/from16 v6, v22

    .line 657
    .line 658
    goto :goto_f

    .line 659
    :cond_1a
    :goto_d
    invoke-static {v1, v13}, Lcom/sgscq/vpn/handler/h1;->o(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 660
    .line 661
    .line 662
    move-result-object v2

    .line 663
    if-eqz p2, :cond_1b

    .line 664
    .line 665
    move-object/from16 v4, p1

    .line 666
    .line 667
    invoke-static {v4, v13}, Lcom/sgscq/vpn/handler/h1;->o(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 668
    .line 669
    .line 670
    move-result-object v1

    .line 671
    invoke-static {v2, v1}, Lcom/sgscq/vpn/handler/h1;->H(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 672
    .line 673
    .line 674
    move-result-object v2

    .line 675
    const-string v11, "SkillPiece,Item"

    .line 676
    .line 677
    goto :goto_e

    .line 678
    :cond_1b
    move-object v11, v1

    .line 679
    :goto_e
    move-object/from16 v6, v22

    .line 680
    .line 681
    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-object/from16 v2, v21

    .line 685
    .line 686
    invoke-interface {v3, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 690
    .line 691
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    :goto_f
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 695
    .line 696
    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 701
    .line 702
    .line 703
    move-result v0

    .line 704
    move-object/from16 v12, v19

    .line 705
    .line 706
    move-object/from16 v14, v20

    .line 707
    .line 708
    if-eqz v0, :cond_1c

    .line 709
    .line 710
    invoke-virtual {v14, v12, v13}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 711
    .line 712
    .line 713
    :cond_1c
    move-object/from16 v24, v5

    .line 714
    .line 715
    move-object v5, v6

    .line 716
    move-object v0, v12

    .line 717
    move-object v1, v14

    .line 718
    goto/16 :goto_2b

    .line 719
    .line 720
    :cond_1d
    move-object v6, v4

    .line 721
    move-object v4, v3

    .line 722
    move-object/from16 v36, v11

    .line 723
    .line 724
    move-object v11, v1

    .line 725
    move-object/from16 v1, v36

    .line 726
    .line 727
    const-string v3, "warlord.warlordInfo"

    .line 728
    .line 729
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 730
    .line 731
    .line 732
    move-result v3

    .line 733
    const/16 v19, 0x6

    .line 734
    .line 735
    const/16 v20, 0x5

    .line 736
    .line 737
    const/16 v21, 0x2

    .line 738
    .line 739
    if-eqz v3, :cond_25

    .line 740
    .line 741
    invoke-static {v13}, Lcom/sgscq/vpn/handler/h1;->n(Ljava/util/Map;)Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    move-object/from16 v3, p2

    .line 746
    .line 747
    invoke-interface {v3, v11, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    check-cast v0, Ljava/lang/String;

    .line 752
    .line 753
    invoke-static {}, Lcom/sgscq/vpn/handler/h1;->V()Ljava/util/LinkedHashMap;

    .line 754
    .line 755
    .line 756
    move-result-object v3

    .line 757
    const/4 v1, 0x0

    .line 758
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 759
    .line 760
    .line 761
    move-result-object v1

    .line 762
    const/4 v7, 0x1

    .line 763
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 764
    .line 765
    .line 766
    move-result-object v7

    .line 767
    const-string v8, "prob_type"

    .line 768
    .line 769
    const-string v9, "deputy_count"

    .line 770
    .line 771
    const-string v10, "fight_salary"

    .line 772
    .line 773
    const-string v15, "\u4e71\u6b66"

    .line 774
    .line 775
    move-object/from16 v22, v2

    .line 776
    .line 777
    const-string v2, "rank_name"

    .line 778
    .line 779
    move-object/from16 v23, v6

    .line 780
    .line 781
    const-string v6, "player_type"

    .line 782
    .line 783
    move-object/from16 v24, v5

    .line 784
    .line 785
    const-string v5, "level"

    .line 786
    .line 787
    if-nez v18, :cond_22

    .line 788
    .line 789
    move-object/from16 v25, v14

    .line 790
    .line 791
    new-instance v14, Ljava/util/ArrayList;

    .line 792
    .line 793
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .line 795
    .line 796
    const/16 v17, 0x0

    .line 797
    .line 798
    move-object/from16 p1, v3

    .line 799
    .line 800
    move-object/from16 v26, v4

    .line 801
    .line 802
    move/from16 v3, v17

    .line 803
    .line 804
    :goto_10
    const/4 v4, 0x4

    .line 805
    if-ge v3, v4, :cond_21

    .line 806
    .line 807
    new-instance v4, Ljava/lang/StringBuilder;

    .line 808
    .line 809
    move-object/from16 v27, v12

    .line 810
    .line 811
    const-string v12, "\u4e71\u6b66\u5bf9\u624b"

    .line 812
    .line 813
    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    const/4 v12, 0x3

    .line 817
    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    .line 818
    .line 819
    .line 820
    move-result v12

    .line 821
    move-object/from16 v28, v13

    .line 822
    .line 823
    const/4 v13, 0x0

    .line 824
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    .line 825
    .line 826
    .line 827
    move-result v12

    .line 828
    add-int/lit8 v12, v12, 0x1

    .line 829
    .line 830
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 831
    .line 832
    .line 833
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v4

    .line 837
    const/4 v12, 0x3

    .line 838
    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    .line 839
    .line 840
    .line 841
    move-result v12

    .line 842
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    .line 843
    .line 844
    .line 845
    move-result v12

    .line 846
    mul-int/lit8 v12, v12, 0xf

    .line 847
    .line 848
    add-int/lit8 v12, v12, 0x14

    .line 849
    .line 850
    mul-int/lit16 v13, v12, 0xb4

    .line 851
    .line 852
    add-int/lit16 v13, v13, 0x1388

    .line 853
    .line 854
    move-object/from16 p2, v14

    .line 855
    .line 856
    mul-int/lit16 v14, v3, 0x578

    .line 857
    .line 858
    add-int/2addr v14, v13

    .line 859
    invoke-static {v12, v3, v0}, Lcom/sgscq/vpn/handler/h1;->g(IILjava/lang/String;)Ljava/util/ArrayList;

    .line 860
    .line 861
    .line 862
    move-result-object v13

    .line 863
    move-object/from16 v17, v0

    .line 864
    .line 865
    const/4 v0, 0x0

    .line 866
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 867
    .line 868
    .line 869
    move-result-object v0

    .line 870
    check-cast v0, Ljava/util/Map;

    .line 871
    .line 872
    move-object/from16 v29, v11

    .line 873
    .line 874
    const-string v11, "112001"

    .line 875
    .line 876
    move-object/from16 v30, v8

    .line 877
    .line 878
    const-string v8, "general_id"

    .line 879
    .line 880
    invoke-interface {v0, v8, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    move-result-object v0

    .line 884
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 885
    .line 886
    .line 887
    move-result-object v0

    .line 888
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 889
    .line 890
    .line 891
    move-result v11

    .line 892
    move-object/from16 v18, v13

    .line 893
    .line 894
    const/16 v13, 0x14

    .line 895
    .line 896
    if-lt v12, v13, :cond_1e

    .line 897
    .line 898
    move/from16 v31, v21

    .line 899
    .line 900
    goto :goto_12

    .line 901
    :cond_1e
    const/16 v13, 0xa

    .line 902
    .line 903
    if-lt v12, v13, :cond_1f

    .line 904
    .line 905
    const/4 v13, 0x1

    .line 906
    goto :goto_11

    .line 907
    :cond_1f
    const/4 v13, 0x0

    .line 908
    :goto_11
    move/from16 v31, v13

    .line 909
    .line 910
    :goto_12
    new-instance v13, Ljava/lang/StringBuilder;

    .line 911
    .line 912
    move-object/from16 v32, v9

    .line 913
    .line 914
    const-string v9, "chaos_npc_"

    .line 915
    .line 916
    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 917
    .line 918
    .line 919
    add-int/lit8 v9, v3, 0x1

    .line 920
    .line 921
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 922
    .line 923
    .line 924
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v13

    .line 928
    move-object/from16 v33, v13

    .line 929
    .line 930
    const/16 v13, 0x3c

    .line 931
    .line 932
    new-array v13, v13, [Ljava/lang/Object;

    .line 933
    .line 934
    const/16 v34, 0x0

    .line 935
    .line 936
    aput-object v6, v13, v34

    .line 937
    .line 938
    if-nez v3, :cond_20

    .line 939
    .line 940
    const/16 v34, 0x1

    .line 941
    .line 942
    goto :goto_13

    .line 943
    :cond_20
    const/16 v34, 0x0

    .line 944
    .line 945
    :goto_13
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 946
    .line 947
    .line 948
    move-result-object v34

    .line 949
    const/16 v35, 0x1

    .line 950
    .line 951
    aput-object v34, v13, v35

    .line 952
    .line 953
    const-string v34, "player_level"

    .line 954
    .line 955
    aput-object v34, v13, v21

    .line 956
    .line 957
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 958
    .line 959
    .line 960
    move-result-object v34

    .line 961
    const/16 v35, 0x3

    .line 962
    .line 963
    aput-object v34, v13, v35

    .line 964
    .line 965
    const/16 v34, 0x4

    .line 966
    .line 967
    aput-object v5, v13, v34

    .line 968
    .line 969
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 970
    .line 971
    .line 972
    move-result-object v12

    .line 973
    aput-object v12, v13, v20

    .line 974
    .line 975
    const-string v12, "nickname"

    .line 976
    .line 977
    aput-object v12, v13, v19

    .line 978
    .line 979
    const/4 v12, 0x7

    .line 980
    aput-object v4, v13, v12

    .line 981
    .line 982
    const-string v12, "user_name"

    .line 983
    .line 984
    const/16 v34, 0x8

    .line 985
    .line 986
    aput-object v12, v13, v34

    .line 987
    .line 988
    const/16 v12, 0x9

    .line 989
    .line 990
    aput-object v4, v13, v12

    .line 991
    .line 992
    const-string v12, "user_nick"

    .line 993
    .line 994
    const/16 v34, 0xa

    .line 995
    .line 996
    aput-object v12, v13, v34

    .line 997
    .line 998
    const/16 v12, 0xb

    .line 999
    .line 1000
    aput-object v4, v13, v12

    .line 1001
    .line 1002
    const/16 v12, 0xc

    .line 1003
    .line 1004
    const-string v34, "userName"

    .line 1005
    .line 1006
    aput-object v34, v13, v12

    .line 1007
    .line 1008
    const/16 v12, 0xd

    .line 1009
    .line 1010
    aput-object v4, v13, v12

    .line 1011
    .line 1012
    const/16 v12, 0xe

    .line 1013
    .line 1014
    const-string v34, "roleName"

    .line 1015
    .line 1016
    aput-object v34, v13, v12

    .line 1017
    .line 1018
    const/16 v12, 0xf

    .line 1019
    .line 1020
    aput-object v4, v13, v12

    .line 1021
    .line 1022
    const/16 v4, 0x10

    .line 1023
    .line 1024
    const-string v12, "user_vip_level"

    .line 1025
    .line 1026
    aput-object v12, v13, v4

    .line 1027
    .line 1028
    const/16 v4, 0x11

    .line 1029
    .line 1030
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v3

    .line 1034
    aput-object v3, v13, v4

    .line 1035
    .line 1036
    const/16 v3, 0x12

    .line 1037
    .line 1038
    aput-object v2, v13, v3

    .line 1039
    .line 1040
    const/16 v3, 0x13

    .line 1041
    .line 1042
    aput-object v15, v13, v3

    .line 1043
    .line 1044
    const-string v3, "to_attack"

    .line 1045
    .line 1046
    const/16 v4, 0x14

    .line 1047
    .line 1048
    aput-object v3, v13, v4

    .line 1049
    .line 1050
    const/16 v3, 0x15

    .line 1051
    .line 1052
    aput-object v7, v13, v3

    .line 1053
    .line 1054
    const/16 v3, 0x16

    .line 1055
    .line 1056
    const-string v4, "is_enemy"

    .line 1057
    .line 1058
    aput-object v4, v13, v3

    .line 1059
    .line 1060
    const/16 v3, 0x17

    .line 1061
    .line 1062
    aput-object v7, v13, v3

    .line 1063
    .line 1064
    const/16 v3, 0x18

    .line 1065
    .line 1066
    aput-object v8, v13, v3

    .line 1067
    .line 1068
    const/16 v3, 0x19

    .line 1069
    .line 1070
    aput-object v0, v13, v3

    .line 1071
    .line 1072
    const/16 v3, 0x1a

    .line 1073
    .line 1074
    const-string v4, "general_skin"

    .line 1075
    .line 1076
    aput-object v4, v13, v3

    .line 1077
    .line 1078
    const/16 v3, 0x1b

    .line 1079
    .line 1080
    aput-object v0, v13, v3

    .line 1081
    .line 1082
    const/16 v3, 0x1c

    .line 1083
    .line 1084
    const-string v4, "teamLeader"

    .line 1085
    .line 1086
    aput-object v4, v13, v3

    .line 1087
    .line 1088
    const/16 v3, 0x1d

    .line 1089
    .line 1090
    aput-object v0, v13, v3

    .line 1091
    .line 1092
    const/16 v3, 0x1e

    .line 1093
    .line 1094
    const-string v4, "head"

    .line 1095
    .line 1096
    aput-object v4, v13, v3

    .line 1097
    .line 1098
    const/16 v3, 0x1f

    .line 1099
    .line 1100
    aput-object v0, v13, v3

    .line 1101
    .line 1102
    const/16 v3, 0x20

    .line 1103
    .line 1104
    const-string v4, "avatar"

    .line 1105
    .line 1106
    aput-object v4, v13, v3

    .line 1107
    .line 1108
    const/16 v3, 0x21

    .line 1109
    .line 1110
    aput-object v0, v13, v3

    .line 1111
    .line 1112
    const/16 v0, 0x22

    .line 1113
    .line 1114
    aput-object v10, v13, v0

    .line 1115
    .line 1116
    const/16 v0, 0x23

    .line 1117
    .line 1118
    aput-object v1, v13, v0

    .line 1119
    .line 1120
    const/16 v0, 0x24

    .line 1121
    .line 1122
    const-string v3, "fighting"

    .line 1123
    .line 1124
    aput-object v3, v13, v0

    .line 1125
    .line 1126
    const/16 v0, 0x25

    .line 1127
    .line 1128
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v3

    .line 1132
    aput-object v3, v13, v0

    .line 1133
    .line 1134
    const/16 v0, 0x26

    .line 1135
    .line 1136
    const-string v3, "fight_point"

    .line 1137
    .line 1138
    aput-object v3, v13, v0

    .line 1139
    .line 1140
    const/16 v0, 0x27

    .line 1141
    .line 1142
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v3

    .line 1146
    aput-object v3, v13, v0

    .line 1147
    .line 1148
    const/16 v0, 0x28

    .line 1149
    .line 1150
    const-string v3, "fightPoint"

    .line 1151
    .line 1152
    aput-object v3, v13, v0

    .line 1153
    .line 1154
    const/16 v0, 0x29

    .line 1155
    .line 1156
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v3

    .line 1160
    aput-object v3, v13, v0

    .line 1161
    .line 1162
    const/16 v0, 0x2a

    .line 1163
    .line 1164
    const-string v3, "user_ability"

    .line 1165
    .line 1166
    aput-object v3, v13, v0

    .line 1167
    .line 1168
    const/16 v0, 0x2b

    .line 1169
    .line 1170
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v3

    .line 1174
    aput-object v3, v13, v0

    .line 1175
    .line 1176
    const/16 v0, 0x2c

    .line 1177
    .line 1178
    const-string v3, "leadership_num"

    .line 1179
    .line 1180
    aput-object v3, v13, v0

    .line 1181
    .line 1182
    const/16 v0, 0x2d

    .line 1183
    .line 1184
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v3

    .line 1188
    aput-object v3, v13, v0

    .line 1189
    .line 1190
    const/16 v0, 0x2e

    .line 1191
    .line 1192
    const-string v3, "leadershipNum"

    .line 1193
    .line 1194
    aput-object v3, v13, v0

    .line 1195
    .line 1196
    const/16 v0, 0x2f

    .line 1197
    .line 1198
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v3

    .line 1202
    aput-object v3, v13, v0

    .line 1203
    .line 1204
    const/16 v0, 0x30

    .line 1205
    .line 1206
    const-string v3, "user_leadership_num"

    .line 1207
    .line 1208
    aput-object v3, v13, v0

    .line 1209
    .line 1210
    const/16 v0, 0x31

    .line 1211
    .line 1212
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v3

    .line 1216
    aput-object v3, v13, v0

    .line 1217
    .line 1218
    const/16 v0, 0x32

    .line 1219
    .line 1220
    const-string v3, "team_size"

    .line 1221
    .line 1222
    aput-object v3, v13, v0

    .line 1223
    .line 1224
    const/16 v0, 0x33

    .line 1225
    .line 1226
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v3

    .line 1230
    aput-object v3, v13, v0

    .line 1231
    .line 1232
    const/16 v0, 0x34

    .line 1233
    .line 1234
    aput-object v32, v13, v0

    .line 1235
    .line 1236
    const/16 v0, 0x35

    .line 1237
    .line 1238
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v3

    .line 1242
    aput-object v3, v13, v0

    .line 1243
    .line 1244
    const/16 v0, 0x36

    .line 1245
    .line 1246
    const-string v3, "deputy_general_id"

    .line 1247
    .line 1248
    aput-object v3, v13, v0

    .line 1249
    .line 1250
    const/4 v0, 0x0

    .line 1251
    move-object/from16 v4, v18

    .line 1252
    .line 1253
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v0

    .line 1257
    check-cast v0, Ljava/util/Map;

    .line 1258
    .line 1259
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v0

    .line 1263
    const/16 v3, 0x37

    .line 1264
    .line 1265
    aput-object v0, v13, v3

    .line 1266
    .line 1267
    const/16 v0, 0x38

    .line 1268
    .line 1269
    aput-object v30, v13, v0

    .line 1270
    .line 1271
    const/4 v0, 0x3

    .line 1272
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    .line 1273
    .line 1274
    .line 1275
    move-result v0

    .line 1276
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v0

    .line 1280
    const/16 v3, 0x39

    .line 1281
    .line 1282
    aput-object v0, v13, v3

    .line 1283
    .line 1284
    const/16 v0, 0x3a

    .line 1285
    .line 1286
    aput-object v29, v13, v0

    .line 1287
    .line 1288
    const/16 v0, 0x3b

    .line 1289
    .line 1290
    invoke-static/range {v17 .. v17}, Lcom/sgscq/vpn/handler/h1;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v3

    .line 1294
    aput-object v3, v13, v0

    .line 1295
    .line 1296
    const-string v0, "player_id"

    .line 1297
    .line 1298
    move-object/from16 v3, v33

    .line 1299
    .line 1300
    invoke-static {v0, v3, v13}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v0

    .line 1304
    move-object/from16 v3, p2

    .line 1305
    .line 1306
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    .line 1308
    .line 1309
    move-object v14, v3

    .line 1310
    move v3, v9

    .line 1311
    move-object/from16 v0, v17

    .line 1312
    .line 1313
    move-object/from16 v12, v27

    .line 1314
    .line 1315
    move-object/from16 v13, v28

    .line 1316
    .line 1317
    move-object/from16 v11, v29

    .line 1318
    .line 1319
    move-object/from16 v8, v30

    .line 1320
    .line 1321
    move-object/from16 v9, v32

    .line 1322
    .line 1323
    goto/16 :goto_10

    .line 1324
    .line 1325
    :cond_21
    move-object v3, v14

    .line 1326
    goto/16 :goto_16

    .line 1327
    .line 1328
    :cond_22
    move-object/from16 v17, v0

    .line 1329
    .line 1330
    move-object/from16 p1, v3

    .line 1331
    .line 1332
    move-object/from16 v26, v4

    .line 1333
    .line 1334
    move-object/from16 v30, v8

    .line 1335
    .line 1336
    move-object/from16 v32, v9

    .line 1337
    .line 1338
    move-object/from16 v29, v11

    .line 1339
    .line 1340
    move-object/from16 v27, v12

    .line 1341
    .line 1342
    move-object/from16 v28, v13

    .line 1343
    .line 1344
    move-object/from16 v25, v14

    .line 1345
    .line 1346
    invoke-static/range {v28 .. v28}, Lcom/sgscq/vpn/handler/h1;->N(Ljava/util/Map;)I

    .line 1347
    .line 1348
    .line 1349
    move-result v0

    .line 1350
    const-string v3, "user_level"

    .line 1351
    .line 1352
    const/4 v4, 0x1

    .line 1353
    invoke-static {v4, v5, v13}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    .line 1354
    .line 1355
    .line 1356
    move-result v5

    .line 1357
    invoke-static {v5, v3, v13}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    .line 1358
    .line 1359
    .line 1360
    move-result v3

    .line 1361
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 1362
    .line 1363
    .line 1364
    move-result v3

    .line 1365
    sget-object v4, Lcom/sgscq/vpn/handler/h1;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1366
    .line 1367
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 1368
    .line 1369
    .line 1370
    move-result-wide v4

    .line 1371
    invoke-static/range {v17 .. v17}, Lcom/sgscq/vpn/handler/h1;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v8

    .line 1375
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 1376
    .line 1377
    .line 1378
    move-result v8

    .line 1379
    int-to-long v8, v8

    .line 1380
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 1381
    .line 1382
    .line 1383
    move-result-wide v11

    .line 1384
    xor-long/2addr v8, v11

    .line 1385
    const-wide v11, -0x61c8864680b583ebL

    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    mul-long/2addr v4, v11

    .line 1391
    xor-long/2addr v4, v8

    .line 1392
    if-gtz v0, :cond_23

    .line 1393
    .line 1394
    move-object/from16 v11, v18

    .line 1395
    .line 1396
    move-object/from16 v12, v27

    .line 1397
    .line 1398
    invoke-virtual {v11, v3, v4, v5, v12}, Lcom/sgscq/vpn/p7;->o(IJLjava/lang/String;)Ljava/util/List;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v0

    .line 1402
    goto :goto_14

    .line 1403
    :cond_23
    move-object/from16 v11, v18

    .line 1404
    .line 1405
    move-object/from16 v12, v27

    .line 1406
    .line 1407
    invoke-virtual {v11, v0, v4, v5, v12}, Lcom/sgscq/vpn/p7;->m(IJLjava/lang/String;)Ljava/util/List;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v8

    .line 1411
    invoke-static {v8, v3, v0, v4, v5}, Lcom/sgscq/vpn/handler/h1;->Q(Ljava/util/List;IIJ)Ljava/util/ArrayList;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v0

    .line 1415
    :goto_14
    new-instance v14, Ljava/util/ArrayList;

    .line 1416
    .line 1417
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1418
    .line 1419
    .line 1420
    const/4 v3, 0x0

    .line 1421
    :goto_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1422
    .line 1423
    .line 1424
    move-result v4

    .line 1425
    if-ge v3, v4, :cond_24

    .line 1426
    .line 1427
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v4

    .line 1431
    check-cast v4, Lcom/sgscq/vpn/v5;

    .line 1432
    .line 1433
    iget-object v5, v4, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 1434
    .line 1435
    invoke-virtual {v11, v5}, Lcom/sgscq/vpn/p7;->v(Ljava/lang/String;)I

    .line 1436
    .line 1437
    .line 1438
    move-result v5

    .line 1439
    invoke-virtual {v4, v5}, Lcom/sgscq/vpn/v5;->m(I)Ljava/util/LinkedHashMap;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v5

    .line 1443
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    .line 1445
    .line 1446
    invoke-interface {v5, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    .line 1448
    .line 1449
    invoke-interface {v5, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    .line 1451
    .line 1452
    iget-object v8, v4, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 1453
    .line 1454
    invoke-static {v8, v3}, Lcom/sgscq/vpn/handler/h1;->e0(Ljava/lang/String;I)I

    .line 1455
    .line 1456
    .line 1457
    move-result v8

    .line 1458
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v8

    .line 1462
    move-object/from16 v9, v30

    .line 1463
    .line 1464
    invoke-interface {v5, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    .line 1466
    .line 1467
    invoke-static/range {v17 .. v17}, Lcom/sgscq/vpn/handler/h1;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v8

    .line 1471
    move-object/from16 p2, v2

    .line 1472
    .line 1473
    move-object/from16 v2, v29

    .line 1474
    .line 1475
    invoke-interface {v5, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    .line 1477
    .line 1478
    iget v4, v4, Lcom/sgscq/vpn/v5;->u:I

    .line 1479
    .line 1480
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v4

    .line 1484
    move-object/from16 v8, v32

    .line 1485
    .line 1486
    invoke-interface {v5, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    .line 1488
    .line 1489
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1490
    .line 1491
    .line 1492
    add-int/lit8 v3, v3, 0x1

    .line 1493
    .line 1494
    move-object/from16 v2, p2

    .line 1495
    .line 1496
    goto :goto_15

    .line 1497
    :cond_24
    :goto_16
    const/4 v0, 0x0

    .line 1498
    new-array v0, v0, [Ljava/lang/Object;

    .line 1499
    .line 1500
    const-string v1, "warlord_info"

    .line 1501
    .line 1502
    invoke-static {v1, v14, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v0

    .line 1506
    move-object/from16 v1, p1

    .line 1507
    .line 1508
    move-object/from16 v4, v26

    .line 1509
    .line 1510
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    .line 1512
    .line 1513
    move-object v3, v1

    .line 1514
    move-object v0, v12

    .line 1515
    move-object/from16 v2, v22

    .line 1516
    .line 1517
    move-object/from16 v5, v23

    .line 1518
    .line 1519
    move-object/from16 v1, v25

    .line 1520
    .line 1521
    goto/16 :goto_2b

    .line 1522
    .line 1523
    :cond_25
    move-object/from16 v3, p2

    .line 1524
    .line 1525
    move-object/from16 v22, v2

    .line 1526
    .line 1527
    move-object/from16 v24, v5

    .line 1528
    .line 1529
    move-object/from16 v23, v6

    .line 1530
    .line 1531
    move-object v2, v11

    .line 1532
    move-object/from16 v25, v14

    .line 1533
    .line 1534
    move-object/from16 v11, v18

    .line 1535
    .line 1536
    const-string v5, "warlord.warlord"

    .line 1537
    .line 1538
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1539
    .line 1540
    .line 1541
    move-result v5

    .line 1542
    if-eqz v5, :cond_26

    .line 1543
    .line 1544
    move-object/from16 v5, v17

    .line 1545
    .line 1546
    invoke-static {v13, v3, v5, v11, v12}, Lcom/sgscq/vpn/handler/h1;->d(Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Lcom/sgscq/vpn/p7;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1547
    .line 1548
    .line 1549
    move-result-object v0

    .line 1550
    move-object/from16 v14, v25

    .line 1551
    .line 1552
    invoke-virtual {v14, v12, v13}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 1553
    .line 1554
    .line 1555
    move-object v3, v0

    .line 1556
    move-object/from16 v11, v24

    .line 1557
    .line 1558
    goto/16 :goto_1c

    .line 1559
    .line 1560
    :cond_26
    move-object/from16 v5, v17

    .line 1561
    .line 1562
    move-object/from16 v14, v25

    .line 1563
    .line 1564
    const-string v6, "warlord.warlordSkillList"

    .line 1565
    .line 1566
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1567
    .line 1568
    .line 1569
    move-result v6

    .line 1570
    if-eqz v6, :cond_2e

    .line 1571
    .line 1572
    invoke-static {}, Lcom/sgscq/vpn/handler/h1;->V()Ljava/util/LinkedHashMap;

    .line 1573
    .line 1574
    .line 1575
    move-result-object v0

    .line 1576
    new-instance v1, Ljava/util/ArrayList;

    .line 1577
    .line 1578
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1579
    .line 1580
    .line 1581
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v3

    .line 1585
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 1586
    .line 1587
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1588
    .line 1589
    .line 1590
    if-eqz v3, :cond_28

    .line 1591
    .line 1592
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v3

    .line 1596
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1597
    .line 1598
    .line 1599
    move-result v6

    .line 1600
    if-eqz v6, :cond_28

    .line 1601
    .line 1602
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v6

    .line 1606
    check-cast v6, Ljava/util/Map;

    .line 1607
    .line 1608
    move-object/from16 v11, v24

    .line 1609
    .line 1610
    invoke-interface {v6, v8, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    .line 1612
    .line 1613
    move-result-object v9

    .line 1614
    invoke-interface {v6, v2, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v9

    .line 1618
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v9

    .line 1622
    invoke-static {v9}, Lcom/sgscq/vpn/handler/h1;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 1623
    .line 1624
    .line 1625
    move-result-object v9

    .line 1626
    invoke-static {v9}, Lcom/sgscq/vpn/handler/h1;->D(Ljava/lang/String;)Z

    .line 1627
    .line 1628
    .line 1629
    move-result v10

    .line 1630
    if-eqz v10, :cond_27

    .line 1631
    .line 1632
    const-string v10, "skill_piece_num"

    .line 1633
    .line 1634
    const/4 v15, 0x0

    .line 1635
    invoke-static {v15, v10, v6}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    .line 1636
    .line 1637
    .line 1638
    move-result v10

    .line 1639
    invoke-static {v10, v7, v6}, Lcom/sgscq/vpn/handler/h1;->A(ILjava/lang/String;Ljava/util/Map;)I

    .line 1640
    .line 1641
    .line 1642
    move-result v6

    .line 1643
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v6

    .line 1647
    invoke-interface {v5, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    .line 1649
    .line 1650
    :cond_27
    move-object/from16 v24, v11

    .line 1651
    .line 1652
    goto :goto_17

    .line 1653
    :cond_28
    move-object/from16 v11, v24

    .line 1654
    .line 1655
    new-instance v3, Ljava/util/ArrayList;

    .line 1656
    .line 1657
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1658
    .line 1659
    .line 1660
    invoke-static {}, Lcom/sgscq/vpn/handler/h1;->f0()Ljava/util/Map;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v6

    .line 1664
    check-cast v6, Ljava/util/LinkedHashMap;

    .line 1665
    .line 1666
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 1667
    .line 1668
    .line 1669
    move-result-object v6

    .line 1670
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1671
    .line 1672
    .line 1673
    move-result-object v6

    .line 1674
    :cond_29
    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1675
    .line 1676
    .line 1677
    move-result v9

    .line 1678
    if-eqz v9, :cond_2a

    .line 1679
    .line 1680
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1681
    .line 1682
    .line 1683
    move-result-object v9

    .line 1684
    check-cast v9, Ljava/lang/String;

    .line 1685
    .line 1686
    invoke-static {v9}, Lcom/sgscq/vpn/handler/h1;->D(Ljava/lang/String;)Z

    .line 1687
    .line 1688
    .line 1689
    move-result v10

    .line 1690
    if-eqz v10, :cond_29

    .line 1691
    .line 1692
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1693
    .line 1694
    .line 1695
    goto :goto_18

    .line 1696
    :cond_2a
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1697
    .line 1698
    .line 1699
    new-instance v6, Ljava/util/ArrayList;

    .line 1700
    .line 1701
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1702
    .line 1703
    .line 1704
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v3

    .line 1708
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1709
    .line 1710
    .line 1711
    move-result v9

    .line 1712
    if-eqz v9, :cond_2b

    .line 1713
    .line 1714
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1715
    .line 1716
    .line 1717
    move-result-object v9

    .line 1718
    check-cast v9, Ljava/lang/String;

    .line 1719
    .line 1720
    const/4 v10, 0x0

    .line 1721
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1722
    .line 1723
    .line 1724
    move-result-object v10

    .line 1725
    invoke-virtual {v5, v9, v10}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v10

    .line 1729
    check-cast v10, Ljava/lang/Integer;

    .line 1730
    .line 1731
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 1732
    .line 1733
    .line 1734
    move-result v10

    .line 1735
    invoke-static {v9, v10}, Lcom/sgscq/vpn/handler/h1;->T(Ljava/lang/String;I)Ljava/util/LinkedHashMap;

    .line 1736
    .line 1737
    .line 1738
    move-result-object v9

    .line 1739
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1740
    .line 1741
    .line 1742
    goto :goto_19

    .line 1743
    :cond_2b
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1744
    .line 1745
    .line 1746
    move-result-object v3

    .line 1747
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1748
    .line 1749
    .line 1750
    move-result v5

    .line 1751
    if-eqz v5, :cond_2d

    .line 1752
    .line 1753
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1754
    .line 1755
    .line 1756
    move-result-object v5

    .line 1757
    check-cast v5, Ljava/util/Map;

    .line 1758
    .line 1759
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    .line 1761
    .line 1762
    move-result-object v5

    .line 1763
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1764
    .line 1765
    .line 1766
    move-result-object v5

    .line 1767
    const/16 v6, 0x8

    .line 1768
    .line 1769
    new-array v6, v6, [Ljava/lang/Object;

    .line 1770
    .line 1771
    const/4 v9, 0x0

    .line 1772
    aput-object v8, v6, v9

    .line 1773
    .line 1774
    const/4 v9, 0x1

    .line 1775
    aput-object v5, v6, v9

    .line 1776
    .line 1777
    const-string v9, "need_num"

    .line 1778
    .line 1779
    aput-object v9, v6, v21

    .line 1780
    .line 1781
    invoke-static {v5}, Lcom/sgscq/vpn/handler/h1;->j(Ljava/lang/String;)I

    .line 1782
    .line 1783
    .line 1784
    move-result v9

    .line 1785
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1786
    .line 1787
    .line 1788
    move-result-object v9

    .line 1789
    const/4 v10, 0x3

    .line 1790
    aput-object v9, v6, v10

    .line 1791
    .line 1792
    const/4 v9, 0x4

    .line 1793
    aput-object v7, v6, v9

    .line 1794
    .line 1795
    invoke-static {v5}, Lcom/sgscq/vpn/handler/h1;->j(Ljava/lang/String;)I

    .line 1796
    .line 1797
    .line 1798
    move-result v9

    .line 1799
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1800
    .line 1801
    .line 1802
    move-result-object v9

    .line 1803
    aput-object v9, v6, v20

    .line 1804
    .line 1805
    const-string v9, "warlord_general_id"

    .line 1806
    .line 1807
    aput-object v9, v6, v19

    .line 1808
    .line 1809
    invoke-static {}, Lcom/sgscq/vpn/handler/h1;->f0()Ljava/util/Map;

    .line 1810
    .line 1811
    .line 1812
    move-result-object v10

    .line 1813
    invoke-static {v5}, Lcom/sgscq/vpn/handler/h1;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 1814
    .line 1815
    .line 1816
    move-result-object v15

    .line 1817
    check-cast v10, Ljava/util/LinkedHashMap;

    .line 1818
    .line 1819
    invoke-virtual {v10, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1820
    .line 1821
    .line 1822
    move-result-object v10

    .line 1823
    check-cast v10, Ljava/util/Map;

    .line 1824
    .line 1825
    if-eqz v10, :cond_2c

    .line 1826
    .line 1827
    invoke-interface {v10, v9, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1828
    .line 1829
    .line 1830
    move-result-object v9

    .line 1831
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v9

    .line 1835
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1836
    .line 1837
    .line 1838
    move-result-object v9

    .line 1839
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 1840
    .line 1841
    .line 1842
    move-result v10

    .line 1843
    if-nez v10, :cond_2c

    .line 1844
    .line 1845
    const-string v10, "0"

    .line 1846
    .line 1847
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1848
    .line 1849
    .line 1850
    move-result v10

    .line 1851
    if-nez v10, :cond_2c

    .line 1852
    .line 1853
    const-string v10, "null"

    .line 1854
    .line 1855
    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1856
    .line 1857
    .line 1858
    move-result v10

    .line 1859
    if-nez v10, :cond_2c

    .line 1860
    .line 1861
    goto :goto_1b

    .line 1862
    :cond_2c
    invoke-static {v5}, Lcom/sgscq/vpn/handler/h1;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 1863
    .line 1864
    .line 1865
    move-result-object v9

    .line 1866
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 1867
    .line 1868
    .line 1869
    move-result v9

    .line 1870
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 1871
    .line 1872
    .line 1873
    move-result v9

    .line 1874
    rem-int/lit8 v9, v9, 0x4

    .line 1875
    .line 1876
    const v10, 0x1b581

    .line 1877
    .line 1878
    .line 1879
    add-int/2addr v9, v10

    .line 1880
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1881
    .line 1882
    .line 1883
    move-result-object v9

    .line 1884
    :goto_1b
    const/4 v10, 0x7

    .line 1885
    aput-object v9, v6, v10

    .line 1886
    .line 1887
    invoke-static {v2, v5, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1888
    .line 1889
    .line 1890
    move-result-object v5

    .line 1891
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1892
    .line 1893
    .line 1894
    goto/16 :goto_1a

    .line 1895
    .line 1896
    :cond_2d
    const-string v2, "skill_list"

    .line 1897
    .line 1898
    const/4 v3, 0x0

    .line 1899
    new-array v3, v3, [Ljava/lang/Object;

    .line 1900
    .line 1901
    invoke-static {v2, v1, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1902
    .line 1903
    .line 1904
    move-result-object v1

    .line 1905
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    .line 1907
    .line 1908
    move-object v3, v0

    .line 1909
    :goto_1c
    move-object/from16 v24, v11

    .line 1910
    .line 1911
    move-object v0, v12

    .line 1912
    move-object v1, v14

    .line 1913
    move-object/from16 v2, v22

    .line 1914
    .line 1915
    move-object/from16 v5, v23

    .line 1916
    .line 1917
    goto/16 :goto_2b

    .line 1918
    .line 1919
    :cond_2e
    move-object/from16 v11, v24

    .line 1920
    .line 1921
    const-string v6, "warlord.warlordExchangeSkill"

    .line 1922
    .line 1923
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1924
    .line 1925
    .line 1926
    move-result v6

    .line 1927
    const-string v7, "god_skill_book_compose_times"

    .line 1928
    .line 1929
    const-string v8, "surrender_total_god_skill_book_compose_times"

    .line 1930
    .line 1931
    const-string v11, "30"

    .line 1932
    .line 1933
    const-string v0, "Skill,SkillPiece"

    .line 1934
    .line 1935
    move-object/from16 v19, v12

    .line 1936
    .line 1937
    const-string v12, "Skill"

    .line 1938
    .line 1939
    if-eqz v6, :cond_33

    .line 1940
    .line 1941
    invoke-static {v13}, Lcom/sgscq/vpn/handler/h1;->n(Ljava/util/Map;)Ljava/lang/String;

    .line 1942
    .line 1943
    .line 1944
    move-result-object v6

    .line 1945
    invoke-interface {v3, v2, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    .line 1947
    .line 1948
    move-result-object v3

    .line 1949
    check-cast v3, Ljava/lang/String;

    .line 1950
    .line 1951
    invoke-static {v5}, Lcom/sgscq/vpn/handler/h1;->E(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 1952
    .line 1953
    .line 1954
    move-result-object v5

    .line 1955
    invoke-static {v12, v13}, Lcom/sgscq/vpn/handler/h1;->i(Ljava/lang/String;Ljava/util/Map;)V

    .line 1956
    .line 1957
    .line 1958
    invoke-static {v13}, Lcom/sgscq/vpn/handler/h1;->h(Ljava/util/Map;)V

    .line 1959
    .line 1960
    .line 1961
    invoke-static {v3}, Lcom/sgscq/vpn/handler/h1;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 1962
    .line 1963
    .line 1964
    move-result-object v3

    .line 1965
    invoke-static {v3, v13}, Lcom/sgscq/vpn/handler/h1;->u(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 1966
    .line 1967
    .line 1968
    move-result-object v6

    .line 1969
    if-nez v6, :cond_2f

    .line 1970
    .line 1971
    move-object/from16 v20, v14

    .line 1972
    .line 1973
    goto :goto_1d

    .line 1974
    :cond_2f
    invoke-static {v6}, Lcom/sgscq/vpn/handler/h1;->U(Ljava/util/Map;)I

    .line 1975
    .line 1976
    .line 1977
    move-result v6

    .line 1978
    move-object/from16 v20, v14

    .line 1979
    .line 1980
    invoke-static {v3}, Lcom/sgscq/vpn/handler/h1;->j(Ljava/lang/String;)I

    .line 1981
    .line 1982
    .line 1983
    move-result v14

    .line 1984
    if-lt v6, v14, :cond_30

    .line 1985
    .line 1986
    const/4 v6, 0x1

    .line 1987
    goto :goto_1e

    .line 1988
    :cond_30
    :goto_1d
    const/4 v6, 0x0

    .line 1989
    :goto_1e
    if-nez v6, :cond_31

    .line 1990
    .line 1991
    const-string v0, "\u6280\u80fd\u788e\u7247\u4e0d\u8db3"

    .line 1992
    .line 1993
    invoke-static {v0}, Lcom/sgscq/vpn/handler/h1;->r(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1994
    .line 1995
    .line 1996
    move-result-object v0

    .line 1997
    move-object v3, v0

    .line 1998
    move-object/from16 v6, v19

    .line 1999
    .line 2000
    move-object/from16 v0, v20

    .line 2001
    .line 2002
    move-object/from16 v14, v22

    .line 2003
    .line 2004
    move-object/from16 v7, v23

    .line 2005
    .line 2006
    goto/16 :goto_20

    .line 2007
    .line 2008
    :cond_31
    invoke-static {v3, v13}, Lcom/sgscq/vpn/handler/h1;->q(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 2009
    .line 2010
    .line 2011
    move-result-object v3

    .line 2012
    invoke-static {}, Lcom/sgscq/vpn/handler/h1;->V()Ljava/util/LinkedHashMap;

    .line 2013
    .line 2014
    .line 2015
    move-result-object v6

    .line 2016
    const/4 v14, 0x1

    .line 2017
    new-array v14, v14, [Ljava/util/Map;

    .line 2018
    .line 2019
    const/16 v17, 0x4

    .line 2020
    .line 2021
    move-object/from16 v18, v7

    .line 2022
    .line 2023
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2024
    .line 2025
    .line 2026
    move-result-object v7

    .line 2027
    const-string v25, "id"

    .line 2028
    .line 2029
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2030
    .line 2031
    .line 2032
    move-result-object v26

    .line 2033
    const-string v27, "skill_id"

    .line 2034
    .line 2035
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2036
    .line 2037
    .line 2038
    move-result-object v28

    .line 2039
    const-string v29, "pk_id"

    .line 2040
    .line 2041
    invoke-virtual {v3, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    .line 2043
    .line 2044
    move-result-object v30

    .line 2045
    const-string v31, "num"

    .line 2046
    .line 2047
    const/4 v2, 0x1

    .line 2048
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2049
    .line 2050
    .line 2051
    move-result-object v32

    .line 2052
    filled-new-array/range {v25 .. v32}, [Ljava/lang/Object;

    .line 2053
    .line 2054
    .line 2055
    move-result-object v2

    .line 2056
    invoke-static {v10, v7, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2057
    .line 2058
    .line 2059
    move-result-object v2

    .line 2060
    const/4 v3, 0x0

    .line 2061
    aput-object v2, v14, v3

    .line 2062
    .line 2063
    invoke-static {v14}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 2064
    .line 2065
    .line 2066
    move-result-object v2

    .line 2067
    invoke-interface {v6, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2068
    .line 2069
    .line 2070
    invoke-static {v2, v13}, Lcom/sgscq/vpn/handler/h1;->e(Ljava/util/ArrayList;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 2071
    .line 2072
    .line 2073
    move-result-object v3

    .line 2074
    invoke-interface {v6, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2075
    .line 2076
    .line 2077
    invoke-static {v12, v13}, Lcom/sgscq/vpn/handler/h1;->o(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 2078
    .line 2079
    .line 2080
    move-result-object v3

    .line 2081
    invoke-static {v1, v13}, Lcom/sgscq/vpn/handler/h1;->o(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 2082
    .line 2083
    .line 2084
    move-result-object v1

    .line 2085
    invoke-static {v3, v1}, Lcom/sgscq/vpn/handler/h1;->H(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 2086
    .line 2087
    .line 2088
    move-result-object v1

    .line 2089
    move-object/from16 v7, v23

    .line 2090
    .line 2091
    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    .line 2093
    .line 2094
    move-object/from16 v14, v22

    .line 2095
    .line 2096
    invoke-interface {v6, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2097
    .line 2098
    .line 2099
    invoke-static {v2}, Lcom/sgscq/vpn/handler/h1;->l(Ljava/util/ArrayList;)I

    .line 2100
    .line 2101
    .line 2102
    move-result v0

    .line 2103
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 2104
    .line 2105
    .line 2106
    move-result-object v1

    .line 2107
    invoke-static {v13, v5, v11, v0, v1}, Lcom/sgscq/vpn/handler/y0;->d(Ljava/util/Map;Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/Set;)V

    .line 2108
    .line 2109
    .line 2110
    if-gtz v0, :cond_32

    .line 2111
    .line 2112
    goto :goto_1f

    .line 2113
    :cond_32
    invoke-static {v0, v8, v13}, Lcom/sgscq/vpn/handler/h1;->z(ILjava/lang/String;Ljava/util/Map;)V

    .line 2114
    .line 2115
    .line 2116
    move-object/from16 v1, v18

    .line 2117
    .line 2118
    invoke-static {v0, v1, v13}, Lcom/sgscq/vpn/handler/h1;->z(ILjava/lang/String;Ljava/util/Map;)V

    .line 2119
    .line 2120
    .line 2121
    const-string v1, "skill_book_compose_times"

    .line 2122
    .line 2123
    invoke-static {v0, v1, v13}, Lcom/sgscq/vpn/handler/h1;->z(ILjava/lang/String;Ljava/util/Map;)V

    .line 2124
    .line 2125
    .line 2126
    :goto_1f
    invoke-static {v5, v13, v6}, Lcom/sgscq/vpn/handler/h1;->c(Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 2127
    .line 2128
    .line 2129
    move-object v3, v6

    .line 2130
    move-object/from16 v6, v19

    .line 2131
    .line 2132
    move-object/from16 v0, v20

    .line 2133
    .line 2134
    :goto_20
    invoke-virtual {v0, v6, v13}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 2135
    .line 2136
    .line 2137
    move-object v1, v0

    .line 2138
    move-object v0, v6

    .line 2139
    move-object v5, v7

    .line 2140
    move-object v2, v14

    .line 2141
    goto/16 :goto_2b

    .line 2142
    .line 2143
    :cond_33
    move-object/from16 v17, v0

    .line 2144
    .line 2145
    move-object v0, v7

    .line 2146
    move-object/from16 v20, v14

    .line 2147
    .line 2148
    move-object/from16 v14, v22

    .line 2149
    .line 2150
    move-object/from16 v7, v23

    .line 2151
    .line 2152
    const-string v6, "warlord.warlordBatchExchangeSkill"

    .line 2153
    .line 2154
    move-object/from16 v18, v0

    .line 2155
    .line 2156
    move-object/from16 v0, p1

    .line 2157
    .line 2158
    move-object/from16 v36, v17

    .line 2159
    .line 2160
    move-object/from16 v17, v8

    .line 2161
    .line 2162
    move-object/from16 v8, v36

    .line 2163
    .line 2164
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2165
    .line 2166
    .line 2167
    move-result v0

    .line 2168
    if-eqz v0, :cond_40

    .line 2169
    .line 2170
    const-string v0, "skill_ids"

    .line 2171
    .line 2172
    move-object/from16 v6, v24

    .line 2173
    .line 2174
    invoke-interface {v3, v0, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2175
    .line 2176
    .line 2177
    move-result-object v0

    .line 2178
    check-cast v0, Ljava/lang/String;

    .line 2179
    .line 2180
    invoke-static {v5}, Lcom/sgscq/vpn/handler/h1;->E(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 2181
    .line 2182
    .line 2183
    move-result-object v3

    .line 2184
    invoke-static {v12, v13}, Lcom/sgscq/vpn/handler/h1;->i(Ljava/lang/String;Ljava/util/Map;)V

    .line 2185
    .line 2186
    .line 2187
    invoke-static {v13}, Lcom/sgscq/vpn/handler/h1;->h(Ljava/util/Map;)V

    .line 2188
    .line 2189
    .line 2190
    new-instance v5, Ljava/util/ArrayList;

    .line 2191
    .line 2192
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2193
    .line 2194
    .line 2195
    move-object/from16 v21, v8

    .line 2196
    .line 2197
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 2198
    .line 2199
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2200
    .line 2201
    .line 2202
    move-object/from16 v22, v14

    .line 2203
    .line 2204
    new-instance v14, Ljava/util/ArrayList;

    .line 2205
    .line 2206
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2207
    .line 2208
    .line 2209
    if-nez v0, :cond_34

    .line 2210
    .line 2211
    move-object v0, v6

    .line 2212
    goto :goto_21

    .line 2213
    :cond_34
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2214
    .line 2215
    .line 2216
    move-result-object v0

    .line 2217
    :goto_21
    move-object/from16 v23, v7

    .line 2218
    .line 2219
    const-string v7, "["

    .line 2220
    .line 2221
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2222
    .line 2223
    .line 2224
    move-result v7

    .line 2225
    if-eqz v7, :cond_35

    .line 2226
    .line 2227
    const-string v7, "]"

    .line 2228
    .line 2229
    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 2230
    .line 2231
    .line 2232
    move-result v7

    .line 2233
    if-eqz v7, :cond_35

    .line 2234
    .line 2235
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 2236
    .line 2237
    .line 2238
    move-result v7

    .line 2239
    move-object/from16 v25, v1

    .line 2240
    .line 2241
    const/4 v1, 0x1

    .line 2242
    sub-int/2addr v7, v1

    .line 2243
    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 2244
    .line 2245
    .line 2246
    move-result-object v0

    .line 2247
    goto :goto_22

    .line 2248
    :cond_35
    move-object/from16 v25, v1

    .line 2249
    .line 2250
    :goto_22
    const-string v1, ","

    .line 2251
    .line 2252
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 2253
    .line 2254
    .line 2255
    move-result-object v0

    .line 2256
    array-length v1, v0

    .line 2257
    const/4 v7, 0x0

    .line 2258
    :goto_23
    if-ge v7, v1, :cond_37

    .line 2259
    .line 2260
    move/from16 v24, v1

    .line 2261
    .line 2262
    aget-object v1, v0, v7

    .line 2263
    .line 2264
    move-object/from16 p1, v0

    .line 2265
    .line 2266
    const-string v0, "\""

    .line 2267
    .line 2268
    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 2269
    .line 2270
    .line 2271
    move-result-object v0

    .line 2272
    const-string v1, "\'"

    .line 2273
    .line 2274
    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 2275
    .line 2276
    .line 2277
    move-result-object v0

    .line 2278
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2279
    .line 2280
    .line 2281
    move-result-object v0

    .line 2282
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 2283
    .line 2284
    .line 2285
    move-result v1

    .line 2286
    if-nez v1, :cond_36

    .line 2287
    .line 2288
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2289
    .line 2290
    .line 2291
    :cond_36
    add-int/lit8 v7, v7, 0x1

    .line 2292
    .line 2293
    move-object/from16 v0, p1

    .line 2294
    .line 2295
    move/from16 v1, v24

    .line 2296
    .line 2297
    goto :goto_23

    .line 2298
    :cond_37
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2299
    .line 2300
    .line 2301
    move-result v0

    .line 2302
    if-eqz v0, :cond_38

    .line 2303
    .line 2304
    const-string v0, "400101"

    .line 2305
    .line 2306
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2307
    .line 2308
    .line 2309
    :cond_38
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2310
    .line 2311
    .line 2312
    move-result-object v0

    .line 2313
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2314
    .line 2315
    .line 2316
    move-result v1

    .line 2317
    if-eqz v1, :cond_39

    .line 2318
    .line 2319
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2320
    .line 2321
    .line 2322
    move-result-object v1

    .line 2323
    check-cast v1, Ljava/lang/String;

    .line 2324
    .line 2325
    invoke-static {v1}, Lcom/sgscq/vpn/handler/h1;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 2326
    .line 2327
    .line 2328
    move-result-object v1

    .line 2329
    const/4 v7, 0x0

    .line 2330
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2331
    .line 2332
    .line 2333
    move-result-object v7

    .line 2334
    invoke-virtual {v8, v1, v7}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2335
    .line 2336
    .line 2337
    move-result-object v7

    .line 2338
    check-cast v7, Ljava/lang/Integer;

    .line 2339
    .line 2340
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 2341
    .line 2342
    .line 2343
    move-result v7

    .line 2344
    add-int/lit8 v7, v7, 0x1

    .line 2345
    .line 2346
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2347
    .line 2348
    .line 2349
    move-result-object v7

    .line 2350
    invoke-interface {v8, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2351
    .line 2352
    .line 2353
    goto :goto_24

    .line 2354
    :cond_39
    new-instance v0, Ljava/util/ArrayList;

    .line 2355
    .line 2356
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2357
    .line 2358
    .line 2359
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 2360
    .line 2361
    .line 2362
    move-result-object v1

    .line 2363
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2364
    .line 2365
    .line 2366
    move-result-object v1

    .line 2367
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2368
    .line 2369
    .line 2370
    move-result v7

    .line 2371
    if-eqz v7, :cond_3d

    .line 2372
    .line 2373
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2374
    .line 2375
    .line 2376
    move-result-object v7

    .line 2377
    check-cast v7, Ljava/util/Map$Entry;

    .line 2378
    .line 2379
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2380
    .line 2381
    .line 2382
    move-result-object v8

    .line 2383
    check-cast v8, Ljava/lang/String;

    .line 2384
    .line 2385
    invoke-static {v8}, Lcom/sgscq/vpn/handler/h1;->j(Ljava/lang/String;)I

    .line 2386
    .line 2387
    .line 2388
    move-result v8

    .line 2389
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2390
    .line 2391
    .line 2392
    move-result-object v14

    .line 2393
    check-cast v14, Ljava/lang/String;

    .line 2394
    .line 2395
    invoke-static {v14, v13}, Lcom/sgscq/vpn/handler/h1;->u(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 2396
    .line 2397
    .line 2398
    move-result-object v14

    .line 2399
    invoke-static {v14}, Lcom/sgscq/vpn/handler/h1;->U(Ljava/util/Map;)I

    .line 2400
    .line 2401
    .line 2402
    move-result v14

    .line 2403
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2404
    .line 2405
    .line 2406
    move-result-object v24

    .line 2407
    check-cast v24, Ljava/lang/Integer;

    .line 2408
    .line 2409
    move-object/from16 p1, v1

    .line 2410
    .line 2411
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    .line 2412
    .line 2413
    .line 2414
    move-result v1

    .line 2415
    move-object/from16 v24, v6

    .line 2416
    .line 2417
    div-int v6, v14, v8

    .line 2418
    .line 2419
    if-lt v14, v8, :cond_3c

    .line 2420
    .line 2421
    if-le v1, v6, :cond_3a

    .line 2422
    .line 2423
    goto :goto_27

    .line 2424
    :cond_3a
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 2425
    .line 2426
    .line 2427
    move-result v1

    .line 2428
    const/4 v6, 0x0

    .line 2429
    :goto_26
    if-ge v6, v1, :cond_3b

    .line 2430
    .line 2431
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2432
    .line 2433
    .line 2434
    move-result-object v8

    .line 2435
    check-cast v8, Ljava/lang/String;

    .line 2436
    .line 2437
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2438
    .line 2439
    .line 2440
    add-int/lit8 v6, v6, 0x1

    .line 2441
    .line 2442
    goto :goto_26

    .line 2443
    :cond_3b
    move-object/from16 v1, p1

    .line 2444
    .line 2445
    move-object/from16 v6, v24

    .line 2446
    .line 2447
    goto :goto_25

    .line 2448
    :cond_3c
    :goto_27
    const-string v0, "\u6280\u80fd\u788e\u7247\u4e0d\u8db3"

    .line 2449
    .line 2450
    invoke-static {v0}, Lcom/sgscq/vpn/handler/h1;->r(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 2451
    .line 2452
    .line 2453
    move-result-object v0

    .line 2454
    move-object v3, v0

    .line 2455
    move-object/from16 v0, v19

    .line 2456
    .line 2457
    move-object/from16 v1, v20

    .line 2458
    .line 2459
    move-object/from16 v2, v22

    .line 2460
    .line 2461
    move-object/from16 v5, v23

    .line 2462
    .line 2463
    goto/16 :goto_2a

    .line 2464
    .line 2465
    :cond_3d
    move-object/from16 v24, v6

    .line 2466
    .line 2467
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2468
    .line 2469
    .line 2470
    move-result-object v0

    .line 2471
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2472
    .line 2473
    .line 2474
    move-result v1

    .line 2475
    if-eqz v1, :cond_3e

    .line 2476
    .line 2477
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2478
    .line 2479
    .line 2480
    move-result-object v1

    .line 2481
    check-cast v1, Ljava/lang/String;

    .line 2482
    .line 2483
    invoke-static {v1, v13}, Lcom/sgscq/vpn/handler/h1;->q(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 2484
    .line 2485
    .line 2486
    move-result-object v1

    .line 2487
    const/4 v6, 0x4

    .line 2488
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2489
    .line 2490
    .line 2491
    move-result-object v6

    .line 2492
    const-string v26, "id"

    .line 2493
    .line 2494
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2495
    .line 2496
    .line 2497
    move-result-object v27

    .line 2498
    const-string v28, "skill_id"

    .line 2499
    .line 2500
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2501
    .line 2502
    .line 2503
    move-result-object v29

    .line 2504
    const-string v30, "pk_id"

    .line 2505
    .line 2506
    invoke-virtual {v1, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2507
    .line 2508
    .line 2509
    move-result-object v31

    .line 2510
    const-string v32, "num"

    .line 2511
    .line 2512
    const/4 v1, 0x1

    .line 2513
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2514
    .line 2515
    .line 2516
    move-result-object v33

    .line 2517
    filled-new-array/range {v26 .. v33}, [Ljava/lang/Object;

    .line 2518
    .line 2519
    .line 2520
    move-result-object v1

    .line 2521
    invoke-static {v10, v6, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2522
    .line 2523
    .line 2524
    move-result-object v1

    .line 2525
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2526
    .line 2527
    .line 2528
    goto :goto_28

    .line 2529
    :cond_3e
    invoke-static {v5}, Lcom/sgscq/vpn/handler/h1;->l(Ljava/util/ArrayList;)I

    .line 2530
    .line 2531
    .line 2532
    move-result v0

    .line 2533
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 2534
    .line 2535
    .line 2536
    move-result-object v1

    .line 2537
    invoke-static {v13, v3, v11, v0, v1}, Lcom/sgscq/vpn/handler/y0;->d(Ljava/util/Map;Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/Set;)V

    .line 2538
    .line 2539
    .line 2540
    invoke-static {}, Lcom/sgscq/vpn/handler/h1;->V()Ljava/util/LinkedHashMap;

    .line 2541
    .line 2542
    .line 2543
    move-result-object v1

    .line 2544
    invoke-interface {v1, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2545
    .line 2546
    .line 2547
    invoke-static {v5, v13}, Lcom/sgscq/vpn/handler/h1;->e(Ljava/util/ArrayList;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 2548
    .line 2549
    .line 2550
    move-result-object v2

    .line 2551
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2552
    .line 2553
    .line 2554
    invoke-static {v12, v13}, Lcom/sgscq/vpn/handler/h1;->o(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 2555
    .line 2556
    .line 2557
    move-result-object v2

    .line 2558
    move-object/from16 v4, v25

    .line 2559
    .line 2560
    invoke-static {v4, v13}, Lcom/sgscq/vpn/handler/h1;->o(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 2561
    .line 2562
    .line 2563
    move-result-object v4

    .line 2564
    invoke-static {v2, v4}, Lcom/sgscq/vpn/handler/h1;->H(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 2565
    .line 2566
    .line 2567
    move-result-object v2

    .line 2568
    move-object/from16 v5, v23

    .line 2569
    .line 2570
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2571
    .line 2572
    .line 2573
    move-object/from16 v4, v21

    .line 2574
    .line 2575
    move-object/from16 v2, v22

    .line 2576
    .line 2577
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2578
    .line 2579
    .line 2580
    if-gtz v0, :cond_3f

    .line 2581
    .line 2582
    goto :goto_29

    .line 2583
    :cond_3f
    move-object/from16 v4, v17

    .line 2584
    .line 2585
    invoke-static {v0, v4, v13}, Lcom/sgscq/vpn/handler/h1;->z(ILjava/lang/String;Ljava/util/Map;)V

    .line 2586
    .line 2587
    .line 2588
    move-object/from16 v4, v18

    .line 2589
    .line 2590
    invoke-static {v0, v4, v13}, Lcom/sgscq/vpn/handler/h1;->z(ILjava/lang/String;Ljava/util/Map;)V

    .line 2591
    .line 2592
    .line 2593
    const-string v4, "skill_book_compose_times"

    .line 2594
    .line 2595
    invoke-static {v0, v4, v13}, Lcom/sgscq/vpn/handler/h1;->z(ILjava/lang/String;Ljava/util/Map;)V

    .line 2596
    .line 2597
    .line 2598
    :goto_29
    invoke-static {v3, v13, v1}, Lcom/sgscq/vpn/handler/h1;->c(Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 2599
    .line 2600
    .line 2601
    move-object v3, v1

    .line 2602
    move-object/from16 v0, v19

    .line 2603
    .line 2604
    move-object/from16 v1, v20

    .line 2605
    .line 2606
    :goto_2a
    invoke-virtual {v1, v0, v13}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 2607
    .line 2608
    .line 2609
    goto :goto_2b

    .line 2610
    :cond_40
    move-object v5, v7

    .line 2611
    move-object v2, v14

    .line 2612
    move-object/from16 v0, v19

    .line 2613
    .line 2614
    move-object/from16 v1, v20

    .line 2615
    .line 2616
    invoke-static {}, Lcom/sgscq/vpn/handler/h1;->V()Ljava/util/LinkedHashMap;

    .line 2617
    .line 2618
    .line 2619
    move-result-object v3

    .line 2620
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2621
    .line 2622
    const/4 v7, 0x0

    .line 2623
    new-array v7, v7, [Ljava/lang/Object;

    .line 2624
    .line 2625
    const-string v8, "success"

    .line 2626
    .line 2627
    invoke-static {v8, v6, v7}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2628
    .line 2629
    .line 2630
    move-result-object v6

    .line 2631
    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2632
    .line 2633
    .line 2634
    :goto_2b
    if-nez v3, :cond_41

    .line 2635
    .line 2636
    const/4 v4, 0x0

    .line 2637
    goto :goto_2c

    .line 2638
    :cond_41
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2639
    .line 2640
    .line 2641
    move-result-object v4

    .line 2642
    :goto_2c
    instance-of v5, v4, Ljava/util/Map;

    .line 2643
    .line 2644
    if-eqz v5, :cond_42

    .line 2645
    .line 2646
    check-cast v4, Ljava/util/Map;

    .line 2647
    .line 2648
    goto :goto_2d

    .line 2649
    :cond_42
    move-object v4, v13

    .line 2650
    :goto_2d
    move-object/from16 v5, v24

    .line 2651
    .line 2652
    invoke-interface {v3, v2, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2653
    .line 2654
    .line 2655
    move-result-object v2

    .line 2656
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2657
    .line 2658
    .line 2659
    move-result-object v2

    .line 2660
    const-string v5, ","

    .line 2661
    .line 2662
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 2663
    .line 2664
    .line 2665
    move-result-object v2

    .line 2666
    new-instance v5, Ljava/util/ArrayList;

    .line 2667
    .line 2668
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2669
    .line 2670
    .line 2671
    array-length v6, v2

    .line 2672
    const/4 v7, 0x0

    .line 2673
    :goto_2e
    if-ge v7, v6, :cond_44

    .line 2674
    .line 2675
    aget-object v8, v2, v7

    .line 2676
    .line 2677
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2678
    .line 2679
    .line 2680
    move-result-object v8

    .line 2681
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 2682
    .line 2683
    .line 2684
    move-result v9

    .line 2685
    if-nez v9, :cond_43

    .line 2686
    .line 2687
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2688
    .line 2689
    .line 2690
    :cond_43
    add-int/lit8 v7, v7, 0x1

    .line 2691
    .line 2692
    goto :goto_2e

    .line 2693
    :cond_44
    const/4 v2, 0x0

    .line 2694
    new-array v2, v2, [Ljava/lang/String;

    .line 2695
    .line 2696
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2697
    .line 2698
    .line 2699
    move-result-object v2

    .line 2700
    check-cast v2, [Ljava/lang/String;

    .line 2701
    .line 2702
    move-object/from16 v14, v16

    .line 2703
    .line 2704
    iget-object v5, v14, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2705
    .line 2706
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 2707
    .line 2708
    .line 2709
    move-result-wide v6

    .line 2710
    long-to-int v6, v6

    .line 2711
    invoke-virtual {v14}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 2712
    .line 2713
    .line 2714
    move-result v7

    .line 2715
    int-to-long v7, v7

    .line 2716
    invoke-virtual {v14, v7, v8, v13}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 2717
    .line 2718
    .line 2719
    move-result-wide v10

    .line 2720
    const-string v7, "user_gold"

    .line 2721
    .line 2722
    invoke-virtual {v14}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 2723
    .line 2724
    .line 2725
    move-result v8

    .line 2726
    invoke-virtual {v14, v8, v7, v13}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 2727
    .line 2728
    .line 2729
    move-result v7

    .line 2730
    const-string v8, "user_energy"

    .line 2731
    .line 2732
    invoke-virtual {v14}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 2733
    .line 2734
    .line 2735
    move-result v9

    .line 2736
    invoke-virtual {v14, v9, v8, v13}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 2737
    .line 2738
    .line 2739
    move-result v8

    .line 2740
    const-string v9, "user_power"

    .line 2741
    .line 2742
    invoke-virtual {v14}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 2743
    .line 2744
    .line 2745
    move-result v12

    .line 2746
    invoke-virtual {v14, v12, v9, v13}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 2747
    .line 2748
    .line 2749
    move-result v9

    .line 2750
    move-object v12, v0

    .line 2751
    invoke-virtual/range {v5 .. v13}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 2752
    .line 2753
    .line 2754
    move-result-object v0

    .line 2755
    invoke-virtual {v1, v4, v0, v2}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 2756
    .line 2757
    .line 2758
    move-result-object v0

    .line 2759
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 2760
    .line 2761
    .line 2762
    move-result-object v0

    .line 2763
    invoke-static {v0, v3}, Lcom/sgscq/vpn/cloud/m0;->v2(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)Ljava/util/Map;

    .line 2764
    .line 2765
    .line 2766
    invoke-static {v3}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 2767
    .line 2768
    .line 2769
    move-result-object v0

    .line 2770
    invoke-virtual {v14, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 2771
    .line 2772
    .line 2773
    move-result-object v0

    .line 2774
    return-object v0
.end method
