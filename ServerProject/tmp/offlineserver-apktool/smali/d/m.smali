.class public final Ld/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/j0;


# instance fields
.field public final a:Lc/i;

.field public final b:Z


# direct methods
.method public constructor <init>(Lc/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/m;->a:Lc/i;

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld/m;->b:Z

    return-void
.end method


# virtual methods
.method public final a(La/o;Lcom/google/gson/reflect/TypeToken;)La/i0;
    .locals 13

    .line 1
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-class v2, Ljava/util/Map;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1

    .line 19
    :cond_0
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x1

    .line 21
    const-class v5, Ljava/util/Properties;

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    if-ne v0, v5, :cond_1

    .line 25
    .line 26
    new-array v0, v6, [Ljava/lang/reflect/Type;

    .line 27
    .line 28
    const-class v1, Ljava/lang/String;

    .line 29
    .line 30
    aput-object v1, v0, v3

    .line 31
    .line 32
    aput-object v1, v0, v4

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {v0, v1, v2}, Lcom/sgscq/vpn/cloud/m0;->a1(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    new-array v0, v6, [Ljava/lang/reflect/Type;

    .line 51
    .line 52
    const-class v1, Ljava/lang/Object;

    .line 53
    .line 54
    aput-object v1, v0, v3

    .line 55
    .line 56
    aput-object v1, v0, v4

    .line 57
    .line 58
    :goto_0
    aget-object v1, v0, v3

    .line 59
    .line 60
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 61
    .line 62
    if-eq v1, v2, :cond_4

    .line 63
    .line 64
    const-class v2, Ljava/lang/Boolean;

    .line 65
    .line 66
    if-ne v1, v2, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-static {v1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p1, v1}, La/o;->f(Lcom/google/gson/reflect/TypeToken;)La/i0;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    goto :goto_2

    .line 78
    :cond_4
    :goto_1
    sget-object v1, Ld/a0;->c:La/l;

    .line 79
    .line 80
    :goto_2
    move-object v9, v1

    .line 81
    aget-object v1, v0, v4

    .line 82
    .line 83
    invoke-static {v1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {p1, v1}, La/o;->f(Lcom/google/gson/reflect/TypeToken;)La/i0;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    iget-object v1, p0, Ld/m;->a:Lc/i;

    .line 92
    .line 93
    invoke-virtual {v1, p2}, Lc/i;->b(Lcom/google/gson/reflect/TypeToken;)Lc/t;

    .line 94
    .line 95
    .line 96
    move-result-object v12

    .line 97
    new-instance p2, Ld/l;

    .line 98
    .line 99
    aget-object v8, v0, v3

    .line 100
    .line 101
    aget-object v10, v0, v4

    .line 102
    .line 103
    move-object v5, p2

    .line 104
    move-object v6, p0

    .line 105
    move-object v7, p1

    .line 106
    invoke-direct/range {v5 .. v12}, Ld/l;-><init>(Ld/m;La/o;Ljava/lang/reflect/Type;La/i0;Ljava/lang/reflect/Type;La/i0;Lc/t;)V

    .line 107
    .line 108
    .line 109
    return-object p2
.end method
