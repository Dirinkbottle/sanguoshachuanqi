.class public final La/t;
.super La/q;
.source "SourceFile"


# instance fields
.field public final a:Lc/s;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, La/q;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lc/s;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lc/s;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, La/t;->a:Lc/s;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()La/q;
    .locals 4

    .line 1
    new-instance v0, La/t;

    .line 2
    .line 3
    invoke-direct {v0}, La/t;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, La/t;->a:Lc/s;

    .line 7
    .line 8
    invoke-virtual {v1}, Lc/s;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lc/p;

    .line 13
    .line 14
    invoke-virtual {v1}, Lc/p;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    move-object v2, v1

    .line 19
    check-cast v2, Lc/q;

    .line 20
    .line 21
    invoke-virtual {v2}, Lc/q;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    move-object v2, v1

    .line 28
    check-cast v2, Lc/o;

    .line 29
    .line 30
    invoke-virtual {v2}, Lc/o;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/util/Map$Entry;

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, La/q;

    .line 47
    .line 48
    invoke-virtual {v2}, La/q;->a()La/q;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v3, v2}, La/t;->j(Ljava/lang/String;La/q;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-eq p1, p0, :cond_1

    instance-of v0, p1, La/t;

    if-eqz v0, :cond_0

    check-cast p1, La/t;

    iget-object p1, p1, La/t;->a:Lc/s;

    iget-object v0, p0, La/t;->a:Lc/s;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, La/t;->a:Lc/s;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final j(Ljava/lang/String;La/q;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    sget-object p2, La/s;->a:La/s;

    :cond_0
    iget-object v0, p0, La/t;->a:Lc/s;

    invoke-virtual {v0, p1, p2}, Lc/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    sget-object p2, La/s;->a:La/s;

    goto :goto_0

    :cond_0
    new-instance v0, La/x;

    invoke-direct {v0, p2}, La/x;-><init>(Ljava/lang/Number;)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, La/t;->j(Ljava/lang/String;La/q;)V

    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    sget-object p2, La/s;->a:La/s;

    goto :goto_0

    :cond_0
    new-instance v0, La/x;

    invoke-direct {v0, p2}, La/x;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, La/t;->j(Ljava/lang/String;La/q;)V

    return-void
.end method

.method public final m(Ljava/lang/String;)La/q;
    .locals 1

    .line 1
    iget-object v0, p0, La/t;->a:Lc/s;

    invoke-virtual {v0, p1}, Lc/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/q;

    return-object p1
.end method

.method public final n(Ljava/lang/String;)La/p;
    .locals 1

    .line 1
    iget-object v0, p0, La/t;->a:Lc/s;

    invoke-virtual {v0, p1}, Lc/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/p;

    return-object p1
.end method

.method public final o(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, La/t;->a:Lc/s;

    invoke-virtual {v0, p1}, Lc/s;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
