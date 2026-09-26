.class public final Lc/s;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final i:Lc/n;


# instance fields
.field public final a:Ljava/util/Comparator;

.field public final b:Z

.field public c:Lc/r;

.field public d:I

.field public e:I

.field public final f:Lc/r;

.field public g:Lc/p;

.field public h:Lc/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/n;-><init>(I)V

    sput-object v0, Lc/s;->i:Lc/n;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 1
    sget-object v0, Lc/s;->i:Lc/n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lc/s;->d:I

    .line 8
    .line 9
    iput v1, p0, Lc/s;->e:I

    .line 10
    .line 11
    iput-object v0, p0, Lc/s;->a:Ljava/util/Comparator;

    .line 12
    .line 13
    iput-boolean p1, p0, Lc/s;->b:Z

    .line 14
    .line 15
    new-instance v0, Lc/r;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lc/r;-><init>(Z)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lc/s;->f:Lc/r;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Z)Lc/r;
    .locals 12

    .line 1
    iget-object v0, p0, Lc/s;->c:Lc/r;

    sget-object v1, Lc/s;->i:Lc/n;

    const/4 v2, 0x0

    iget-object v3, p0, Lc/s;->a:Ljava/util/Comparator;

    if-eqz v0, :cond_5

    if-ne v3, v1, :cond_0

    move-object v4, p1

    check-cast v4, Ljava/lang/Comparable;

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    iget-object v5, v0, Lc/r;->f:Ljava/lang/Object;

    if-eqz v4, :cond_1

    invoke-interface {v4, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    :goto_1
    if-nez v5, :cond_2

    return-object v0

    :cond_2
    if-gez v5, :cond_3

    iget-object v6, v0, Lc/r;->b:Lc/r;

    goto :goto_2

    :cond_3
    iget-object v6, v0, Lc/r;->c:Lc/r;

    :goto_2
    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v6

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-nez p2, :cond_6

    return-object v2

    :cond_6
    const/4 p2, 0x1

    iget-object v10, p0, Lc/s;->f:Lc/r;

    if-nez v0, :cond_9

    if-ne v3, v1, :cond_8

    instance-of v1, p1, Ljava/lang/Comparable;

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    new-instance p2, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, " is not Comparable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    :goto_4
    new-instance v1, Lc/r;

    iget-boolean v7, p0, Lc/s;->b:Z

    iget-object v11, v10, Lc/r;->e:Lc/r;

    move-object v6, v1

    move-object v8, v0

    move-object v9, p1

    invoke-direct/range {v6 .. v11}, Lc/r;-><init>(ZLc/r;Ljava/lang/Object;Lc/r;Lc/r;)V

    iput-object v1, p0, Lc/s;->c:Lc/r;

    goto :goto_6

    :cond_9
    new-instance v1, Lc/r;

    iget-boolean v7, p0, Lc/s;->b:Z

    iget-object v11, v10, Lc/r;->e:Lc/r;

    move-object v6, v1

    move-object v8, v0

    move-object v9, p1

    invoke-direct/range {v6 .. v11}, Lc/r;-><init>(ZLc/r;Ljava/lang/Object;Lc/r;Lc/r;)V

    if-gez v5, :cond_a

    iput-object v1, v0, Lc/r;->b:Lc/r;

    goto :goto_5

    :cond_a
    iput-object v1, v0, Lc/r;->c:Lc/r;

    :goto_5
    invoke-virtual {p0, v0, p2}, Lc/s;->c(Lc/r;Z)V

    :goto_6
    iget p1, p0, Lc/s;->d:I

    add-int/2addr p1, p2

    iput p1, p0, Lc/s;->d:I

    iget p1, p0, Lc/s;->e:I

    add-int/2addr p1, p2

    iput p1, p0, Lc/s;->e:I

    return-object v1
.end method

.method public final b(Ljava/util/Map$Entry;)Lc/r;
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lc/s;->a(Ljava/lang/Object;Z)Lc/r;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    :cond_0
    move-object v0, v2

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v3, v0, Lc/r;->h:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    :cond_1
    if-eqz v1, :cond_2

    .line 31
    .line 32
    move-object v2, v0

    .line 33
    :cond_2
    return-object v2
.end method

.method public final c(Lc/r;Z)V
    .locals 7

    .line 1
    :goto_0
    if-eqz p1, :cond_e

    iget-object v0, p1, Lc/r;->b:Lc/r;

    iget-object v1, p1, Lc/r;->c:Lc/r;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v3, v0, Lc/r;->i:I

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    if-eqz v1, :cond_1

    iget v4, v1, Lc/r;->i:I

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    sub-int v5, v3, v4

    const/4 v6, -0x2

    if-ne v5, v6, :cond_6

    iget-object v0, v1, Lc/r;->b:Lc/r;

    iget-object v3, v1, Lc/r;->c:Lc/r;

    if-eqz v3, :cond_2

    iget v3, v3, Lc/r;->i:I

    goto :goto_3

    :cond_2
    move v3, v2

    :goto_3
    if-eqz v0, :cond_3

    iget v2, v0, Lc/r;->i:I

    :cond_3
    sub-int/2addr v2, v3

    const/4 v0, -0x1

    if-eq v2, v0, :cond_5

    if-nez v2, :cond_4

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v1}, Lc/s;->g(Lc/r;)V

    :cond_5
    :goto_4
    invoke-virtual {p0, p1}, Lc/s;->f(Lc/r;)V

    if-eqz p2, :cond_d

    goto :goto_7

    :cond_6
    const/4 v1, 0x2

    const/4 v6, 0x1

    if-ne v5, v1, :cond_b

    iget-object v1, v0, Lc/r;->b:Lc/r;

    iget-object v3, v0, Lc/r;->c:Lc/r;

    if-eqz v3, :cond_7

    iget v3, v3, Lc/r;->i:I

    goto :goto_5

    :cond_7
    move v3, v2

    :goto_5
    if-eqz v1, :cond_8

    iget v2, v1, Lc/r;->i:I

    :cond_8
    sub-int/2addr v2, v3

    if-eq v2, v6, :cond_a

    if-nez v2, :cond_9

    if-nez p2, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {p0, v0}, Lc/s;->f(Lc/r;)V

    :cond_a
    :goto_6
    invoke-virtual {p0, p1}, Lc/s;->g(Lc/r;)V

    if-eqz p2, :cond_d

    goto :goto_7

    :cond_b
    if-nez v5, :cond_c

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lc/r;->i:I

    if-eqz p2, :cond_d

    goto :goto_7

    :cond_c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v6

    iput v0, p1, Lc/r;->i:I

    if-nez p2, :cond_d

    goto :goto_7

    :cond_d
    iget-object p1, p1, Lc/r;->a:Lc/r;

    goto :goto_0

    :cond_e
    :goto_7
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lc/s;->c:Lc/r;

    const/4 v0, 0x0

    iput v0, p0, Lc/s;->d:I

    iget v0, p0, Lc/s;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/s;->e:I

    iget-object v0, p0, Lc/s;->f:Lc/r;

    iput-object v0, v0, Lc/r;->e:Lc/r;

    iput-object v0, v0, Lc/r;->d:Lc/r;

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lc/s;->a(Ljava/lang/Object;Z)Lc/r;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    :cond_1
    return v0
.end method

.method public final d(Lc/r;Z)V
    .locals 6

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p1, Lc/r;->e:Lc/r;

    .line 4
    .line 5
    iget-object v0, p1, Lc/r;->d:Lc/r;

    .line 6
    .line 7
    iput-object v0, p2, Lc/r;->d:Lc/r;

    .line 8
    .line 9
    iget-object v0, p1, Lc/r;->d:Lc/r;

    .line 10
    .line 11
    iput-object p2, v0, Lc/r;->e:Lc/r;

    .line 12
    .line 13
    :cond_0
    iget-object p2, p1, Lc/r;->b:Lc/r;

    .line 14
    .line 15
    iget-object v0, p1, Lc/r;->c:Lc/r;

    .line 16
    .line 17
    iget-object v1, p1, Lc/r;->a:Lc/r;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz p2, :cond_6

    .line 22
    .line 23
    if-eqz v0, :cond_6

    .line 24
    .line 25
    iget v1, p2, Lc/r;->i:I

    .line 26
    .line 27
    iget v4, v0, Lc/r;->i:I

    .line 28
    .line 29
    if-le v1, v4, :cond_1

    .line 30
    .line 31
    :goto_0
    iget-object v0, p2, Lc/r;->c:Lc/r;

    .line 32
    .line 33
    move-object v5, v0

    .line 34
    move-object v0, p2

    .line 35
    move-object p2, v5

    .line 36
    if-eqz p2, :cond_3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    iget-object p2, v0, Lc/r;->b:Lc/r;

    .line 40
    .line 41
    move-object v5, v0

    .line 42
    move-object v0, p2

    .line 43
    move-object p2, v5

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move-object v0, p2

    .line 48
    :cond_3
    invoke-virtual {p0, v0, v2}, Lc/s;->d(Lc/r;Z)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p1, Lc/r;->b:Lc/r;

    .line 52
    .line 53
    if-eqz p2, :cond_4

    .line 54
    .line 55
    iget v1, p2, Lc/r;->i:I

    .line 56
    .line 57
    iput-object p2, v0, Lc/r;->b:Lc/r;

    .line 58
    .line 59
    iput-object v0, p2, Lc/r;->a:Lc/r;

    .line 60
    .line 61
    iput-object v3, p1, Lc/r;->b:Lc/r;

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    move v1, v2

    .line 65
    :goto_2
    iget-object p2, p1, Lc/r;->c:Lc/r;

    .line 66
    .line 67
    if-eqz p2, :cond_5

    .line 68
    .line 69
    iget v2, p2, Lc/r;->i:I

    .line 70
    .line 71
    iput-object p2, v0, Lc/r;->c:Lc/r;

    .line 72
    .line 73
    iput-object v0, p2, Lc/r;->a:Lc/r;

    .line 74
    .line 75
    iput-object v3, p1, Lc/r;->c:Lc/r;

    .line 76
    .line 77
    :cond_5
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    add-int/lit8 p2, p2, 0x1

    .line 82
    .line 83
    iput p2, v0, Lc/r;->i:I

    .line 84
    .line 85
    invoke-virtual {p0, p1, v0}, Lc/s;->e(Lc/r;Lc/r;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_6
    if-eqz p2, :cond_7

    .line 90
    .line 91
    invoke-virtual {p0, p1, p2}, Lc/s;->e(Lc/r;Lc/r;)V

    .line 92
    .line 93
    .line 94
    iput-object v3, p1, Lc/r;->b:Lc/r;

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_7
    if-eqz v0, :cond_8

    .line 98
    .line 99
    invoke-virtual {p0, p1, v0}, Lc/s;->e(Lc/r;Lc/r;)V

    .line 100
    .line 101
    .line 102
    iput-object v3, p1, Lc/r;->c:Lc/r;

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_8
    invoke-virtual {p0, p1, v3}, Lc/s;->e(Lc/r;Lc/r;)V

    .line 106
    .line 107
    .line 108
    :goto_3
    invoke-virtual {p0, v1, v2}, Lc/s;->c(Lc/r;Z)V

    .line 109
    .line 110
    .line 111
    iget p1, p0, Lc/s;->d:I

    .line 112
    .line 113
    add-int/lit8 p1, p1, -0x1

    .line 114
    .line 115
    iput p1, p0, Lc/s;->d:I

    .line 116
    .line 117
    iget p1, p0, Lc/s;->e:I

    .line 118
    .line 119
    add-int/lit8 p1, p1, 0x1

    .line 120
    .line 121
    iput p1, p0, Lc/s;->e:I

    .line 122
    .line 123
    return-void
.end method

.method public final e(Lc/r;Lc/r;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lc/r;->a:Lc/r;

    const/4 v1, 0x0

    iput-object v1, p1, Lc/r;->a:Lc/r;

    if-eqz p2, :cond_0

    iput-object v0, p2, Lc/r;->a:Lc/r;

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lc/r;->b:Lc/r;

    if-ne v1, p1, :cond_1

    iput-object p2, v0, Lc/r;->b:Lc/r;

    goto :goto_0

    :cond_1
    iput-object p2, v0, Lc/r;->c:Lc/r;

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lc/s;->c:Lc/r;

    :goto_0
    return-void
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/s;->g:Lc/p;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lc/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/p;-><init>(Lc/s;I)V

    iput-object v0, p0, Lc/s;->g:Lc/p;

    :goto_0
    return-object v0
.end method

.method public final f(Lc/r;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lc/r;->b:Lc/r;

    iget-object v1, p1, Lc/r;->c:Lc/r;

    iget-object v2, v1, Lc/r;->b:Lc/r;

    iget-object v3, v1, Lc/r;->c:Lc/r;

    iput-object v2, p1, Lc/r;->c:Lc/r;

    if-eqz v2, :cond_0

    iput-object p1, v2, Lc/r;->a:Lc/r;

    :cond_0
    invoke-virtual {p0, p1, v1}, Lc/s;->e(Lc/r;Lc/r;)V

    iput-object p1, v1, Lc/r;->b:Lc/r;

    iput-object v1, p1, Lc/r;->a:Lc/r;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Lc/r;->i:I

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    if-eqz v2, :cond_2

    iget v2, v2, Lc/r;->i:I

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lc/r;->i:I

    if-eqz v3, :cond_3

    iget v4, v3, Lc/r;->i:I

    :cond_3
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lc/r;->i:I

    return-void
.end method

.method public final g(Lc/r;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lc/r;->b:Lc/r;

    iget-object v1, p1, Lc/r;->c:Lc/r;

    iget-object v2, v0, Lc/r;->b:Lc/r;

    iget-object v3, v0, Lc/r;->c:Lc/r;

    iput-object v3, p1, Lc/r;->b:Lc/r;

    if-eqz v3, :cond_0

    iput-object p1, v3, Lc/r;->a:Lc/r;

    :cond_0
    invoke-virtual {p0, p1, v0}, Lc/s;->e(Lc/r;Lc/r;)V

    iput-object p1, v0, Lc/r;->c:Lc/r;

    iput-object v0, p1, Lc/r;->a:Lc/r;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget v1, v1, Lc/r;->i:I

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    if-eqz v3, :cond_2

    iget v3, v3, Lc/r;->i:I

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lc/r;->i:I

    if-eqz v2, :cond_3

    iget v4, v2, Lc/r;->i:I

    :cond_3
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lc/r;->i:I

    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lc/s;->a(Ljava/lang/Object;Z)Lc/r;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    :cond_0
    move-object p1, v0

    .line 11
    :goto_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object v0, p1, Lc/r;->h:Ljava/lang/Object;

    .line 14
    .line 15
    :cond_1
    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/s;->h:Lc/p;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lc/p;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lc/p;-><init>(Lc/s;I)V

    iput-object v0, p0, Lc/s;->h:Lc/p;

    :goto_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    iget-boolean v0, p0, Lc/s;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lc/s;->a(Ljava/lang/Object;Z)Lc/r;

    move-result-object p1

    iget-object v0, p1, Lc/r;->h:Ljava/lang/Object;

    iput-object p2, p1, Lc/r;->h:Ljava/lang/Object;

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lc/s;->a(Ljava/lang/Object;Z)Lc/r;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    :cond_0
    move-object p1, v0

    .line 11
    :goto_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p0, p1, v1}, Lc/s;->d(Lc/r;Z)V

    .line 15
    .line 16
    .line 17
    :cond_1
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-object v0, p1, Lc/r;->h:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_2
    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lc/s;->d:I

    return v0
.end method
