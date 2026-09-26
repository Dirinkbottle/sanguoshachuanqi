.class public final Ld/w;
.super La/i0;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(La/o;La/i0;Ljava/lang/reflect/Type;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ld/w;->a:I

    .line 1
    invoke-direct {p0}, La/i0;-><init>()V

    iput-object p1, p0, Ld/w;->b:Ljava/lang/Object;

    iput-object p2, p0, Ld/w;->c:Ljava/lang/Object;

    iput-object p3, p0, Ld/w;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 12

    const/4 v0, 0x1

    iput v0, p0, Ld/w;->a:I

    .line 2
    invoke-direct {p0}, La/i0;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ld/w;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ld/w;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ld/w;->d:Ljava/lang/Object;

    :try_start_0
    new-instance v0, Ld/z;

    invoke-direct {v0, p1}, Ld/z;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Field;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lb/b;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lb/b;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v7, p0, Ld/w;->b:Ljava/lang/Object;

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v3}, Lb/b;->value()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lb/b;->alternate()[Ljava/lang/String;

    move-result-object v3

    array-length v8, v3

    move v9, v1

    :goto_1
    if-ge v9, v8, :cond_0

    aget-object v10, v3, v9

    move-object v11, v7

    check-cast v11, Ljava/util/Map;

    invoke-interface {v11, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Ld/w;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Ld/w;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final b(Lh/a;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Ld/w;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ld/w;->c:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast v1, La/i0;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, La/i0;->b(Lh/a;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :goto_0
    invoke-virtual {p1}, Lh/a;->z()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v2, 0x9

    .line 21
    .line 22
    if-ne v0, v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Lh/a;->v()V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {p1}, Lh/a;->x()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, p0, Ld/w;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Ljava/util/Map;

    .line 36
    .line 37
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/Enum;

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    check-cast v1, Ljava/util/Map;

    .line 46
    .line 47
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Ljava/lang/Enum;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move-object p1, v0

    .line 55
    :goto_1
    return-object p1

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lh/b;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Ld/w;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ld/w;->d:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_5

    .line 9
    :pswitch_0
    iget-object v0, p0, Ld/w;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, La/i0;

    .line 12
    .line 13
    check-cast v1, Ljava/lang/reflect/Type;

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    instance-of v2, v1, Ljava/lang/Class;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    instance-of v2, v1, Ljava/lang/reflect/TypeVariable;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v2, v1

    .line 31
    :goto_0
    if-eq v2, v1, :cond_7

    .line 32
    .line 33
    iget-object v1, p0, Ld/w;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, La/o;

    .line 36
    .line 37
    invoke-static {v2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, La/o;->f(Lcom/google/gson/reflect/TypeToken;)La/i0;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    instance-of v2, v1, Ld/r;

    .line 46
    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_2
    move-object v2, v0

    .line 51
    :goto_1
    instance-of v3, v2, Ld/v;

    .line 52
    .line 53
    if-eqz v3, :cond_5

    .line 54
    .line 55
    move-object v3, v2

    .line 56
    check-cast v3, Ld/v;

    .line 57
    .line 58
    check-cast v3, La/n;

    .line 59
    .line 60
    iget-object v3, v3, La/n;->a:La/i0;

    .line 61
    .line 62
    if-eqz v3, :cond_4

    .line 63
    .line 64
    if-ne v3, v2, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    move-object v2, v3

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    const-string p2, "Adapter for type with cyclic dependency has been used before dependency has been resolved"

    .line 72
    .line 73
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_5
    :goto_2
    instance-of v2, v2, Ld/r;

    .line 78
    .line 79
    if-nez v2, :cond_6

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_6
    :goto_3
    move-object v0, v1

    .line 83
    :cond_7
    :goto_4
    invoke-virtual {v0, p1, p2}, La/i0;->c(Lh/b;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :goto_5
    check-cast p2, Ljava/lang/Enum;

    .line 88
    .line 89
    if-nez p2, :cond_8

    .line 90
    .line 91
    const/4 p2, 0x0

    .line 92
    goto :goto_6

    .line 93
    :cond_8
    check-cast v1, Ljava/util/Map;

    .line 94
    .line 95
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    check-cast p2, Ljava/lang/String;

    .line 100
    .line 101
    :goto_6
    invoke-virtual {p1, p2}, Lh/b;->r(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
