.class public final Lcom/sgscq/vpn/handler/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile e:Ljava/lang/String;

.field public static volatile f:Ljava/util/Map;

.field public static volatile g:Ljava/util/Map;

.field public static final h:Ljava/util/HashSet;


# instance fields
.field public final a:Lcom/sgscq/vpn/handler/k0;

.field public final b:Lcom/sgscq/vpn/handler/x;

.field public final c:Ljava/util/Random;

.field public d:Lcom/sgscq/vpn/handler/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "4"

    const-string v2, "2"

    const-string v3, "3"

    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sgscq/vpn/handler/w;->h:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lcom/sgscq/vpn/handler/k0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/handler/w;->c:Ljava/util/Random;

    iput-object p1, p0, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    new-instance v0, Lcom/sgscq/vpn/handler/x;

    invoke-direct {v0, p1}, Lcom/sgscq/vpn/handler/x;-><init>(Lcom/sgscq/vpn/handler/k0;)V

    iput-object v0, p0, Lcom/sgscq/vpn/handler/w;->b:Lcom/sgscq/vpn/handler/x;

    return-void
.end method

.method public static A(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "105"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static A0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "105"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-lt v0, v2, :cond_2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static B(J)Ljava/lang/Number;
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

.method public static B0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "105"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/sgscq/vpn/handler/w;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static C0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "105000\\d{2}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "105"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static D(Lcom/sgscq/vpn/handler/j;)[Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "General"

    .line 2
    .line 3
    const-string v1, "Skill"

    .line 4
    .line 5
    const-string v2, "TeamGeneral"

    .line 6
    .line 7
    const-string v3, "Item"

    .line 8
    .line 9
    const-string v4, "Equipment"

    .line 10
    .line 11
    const-string v5, "EquipmentPiece"

    .line 12
    .line 13
    const-string v6, "Atlas"

    .line 14
    .line 15
    new-instance v7, Ljava/util/LinkedHashSet;

    .line 16
    .line 17
    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 18
    .line 19
    .line 20
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v7, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    const-string v0, "GeneralSoul"

    .line 28
    .line 29
    invoke-virtual {v7, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    const-string v0, "SkillPiece"

    .line 33
    .line 34
    invoke-virtual {v7, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/sgscq/vpn/handler/j;->d:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Ljava/util/Set;

    .line 40
    .line 41
    invoke-virtual {v7, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    new-array p0, p0, [Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v7, p0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, [Ljava/lang/String;

    .line 52
    .line 53
    return-object p0
.end method

.method public static D0(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/sgscq/vpn/handler/w;->B0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static E(Lcom/sgscq/vpn/w1;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Lcom/sgscq/vpn/handler/w;->g0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, p0

    :goto_1
    return-object p1
.end method

.method public static E0(Ljava/lang/Object;)D
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    if-nez p0, :cond_1

    return-wide v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method public static F0(Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "105\\d{2}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public static G(Ljava/lang/String;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "105"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x8

    if-lt v1, v3, :cond_1

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_2
    :goto_0
    return v0
.end method

.method public static G0(Ljava/lang/Object;I)I
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

    return p1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    double-to-int p0, p0

    return p0

    :catch_0
    return p1
.end method

.method public static H(Ljava/util/Map;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "SkillPiece"

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

.method public static H0(Ljava/lang/Object;J)J
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    if-nez p0, :cond_1

    return-wide p1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    double-to-long p0, p0

    return-wide p0

    :catch_1
    return-wide p1
.end method

.method public static I0(Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "5\\d{2}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/lit16 p0, p0, -0x1f4

    return p0

    :cond_1
    const-string v1, "500\\d{3}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_2
    :goto_0
    return v0
.end method

.method public static J(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "\u5173\u5361"

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const-string v0, "105"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "01"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-static {p0, p1}, Lcom/sgscq/vpn/handler/w;->g0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, p0

    :goto_1
    return-object p1
.end method

.method public static J0()Ljava/util/ArrayList;
    .locals 11

    .line 1
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static K(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/handler/w;->T0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/w;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/w;->k0(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_1

    move v1, p0

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public static K0(Ljava/lang/Object;)I
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    return v1
.end method

.method public static L(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_4

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    const-string v4, "105"

    .line 33
    .line 34
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/4 v4, 0x0

    .line 42
    :try_start_0
    invoke-static {v4}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v4, v2}, Lcom/sgscq/vpn/w1;->x0(Ljava/lang/String;)Ljava/util/HashMap;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-eqz v4, :cond_3

    .line 51
    .line 52
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 53
    .line 54
    const-string v6, "hidden"

    .line 55
    .line 56
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    if-eqz v4, :cond_3

    .line 65
    .line 66
    const/4 v3, 0x1

    .line 67
    :catch_0
    :cond_3
    :goto_1
    if-nez v3, :cond_1

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_5
    move-object p1, v0

    .line 81
    :goto_2
    invoke-static {p0}, Lcom/sgscq/vpn/handler/w;->F0(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-gtz p0, :cond_6

    .line 86
    .line 87
    move p0, v3

    .line 88
    goto :goto_3

    .line 89
    :cond_6
    const/16 v0, 0x18

    .line 90
    .line 91
    if-lt p0, v0, :cond_7

    .line 92
    .line 93
    const/4 p0, 0x7

    .line 94
    goto :goto_3

    .line 95
    :cond_7
    const/16 v0, 0xf

    .line 96
    .line 97
    if-lt p0, v0, :cond_8

    .line 98
    .line 99
    const/4 p0, 0x6

    .line 100
    goto :goto_3

    .line 101
    :cond_8
    const/4 v0, 0x5

    .line 102
    if-lt p0, v0, :cond_9

    .line 103
    .line 104
    move p0, v0

    .line 105
    goto :goto_3

    .line 106
    :cond_9
    const/4 p0, 0x4

    .line 107
    :goto_3
    if-lez p0, :cond_a

    .line 108
    .line 109
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-le v0, p0, :cond_a

    .line 114
    .line 115
    new-instance v0, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-interface {p1, v3, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 122
    .line 123
    .line 124
    return-object v0

    .line 125
    :cond_a
    return-object p1
.end method

.method public static L0(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p0, "\u73a9\u5bb6"

    :cond_1
    const-string v0, "userName"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "name"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nickname"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "player_name"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static M(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const-string v0, "9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static M0(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/util/Map;)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    const-string v1, "general_hp_attr"

    .line 5
    .line 6
    const-string v2, "attr_hp"

    .line 7
    .line 8
    const-string v3, "general_hp"

    .line 9
    .line 10
    const-string v4, "hpMax"

    .line 11
    .line 12
    const-string v5, "hpCur"

    .line 13
    .line 14
    const-string v6, "base_hp"

    .line 15
    .line 16
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move v2, v0

    .line 21
    :goto_0
    const/4 v3, 0x6

    .line 22
    if-ge v2, v3, :cond_1

    .line 23
    .line 24
    aget-object v3, v1, v2

    .line 25
    .line 26
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3, v0}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-lez v3, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-eqz p0, :cond_2

    .line 45
    .line 46
    array-length p1, p0

    .line 47
    if-lez p1, :cond_2

    .line 48
    .line 49
    aget-wide p1, p0, v0

    .line 50
    .line 51
    const-wide/16 v0, 0x0

    .line 52
    .line 53
    cmpl-double p0, p1, v0

    .line 54
    .line 55
    if-lez p0, :cond_2

    .line 56
    .line 57
    double-to-int v3, p1

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const/16 v3, 0x3e8

    .line 60
    .line 61
    :goto_1
    return v3
.end method

.method public static N(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "105"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static O(Ljava/util/Map;)Ljava/util/Map;
    .locals 9

    .line 1
    const-string v0, "General"

    invoke-static {v0, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "TeamGeneral"

    invoke-static {v1, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v3, "pk_id"

    const-string v4, "general_pk_id"

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v5, "general_position"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "position"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, v4, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_0
    const-string v1, "story_guest"

    if-eqz p0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    return-object v6

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return-object v0

    :cond_7
    return-object v2
.end method

.method public static O0(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
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

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/sgscq/vpn/p5;->W0(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static P(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 10

    .line 1
    const-string v0, "General"

    invoke-static {v0, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    const-string v1, "TeamGeneral"

    invoke-static {v1, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "general_pk_id"

    const-string v5, "pk_id"

    const-string v6, "story_guest"

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "null"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Lcom/sgscq/vpn/n1;

    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/sgscq/vpn/n1;-><init>(I)V

    invoke-static {p0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v7, "general_position"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "position"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    move-result v7

    if-gtz v7, :cond_5

    goto :goto_1

    :cond_5
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-eqz v7, :cond_4

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    :goto_2
    return-object v1
.end method

.method public static P0(ILjava/lang/String;Ljava/util/Map;Z)V
    .locals 2

    .line 1
    if-eqz p3, :cond_2

    if-gtz p0, :cond_0

    goto :goto_1

    :cond_0
    const-string p3, "user_level"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const-string v0, "level"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    move-result v0

    invoke-static {p3, v0}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    move-result p3

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {p1}, Lcom/sgscq/vpn/handler/x;->o(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "112"

    goto :goto_0

    :cond_1
    const-string p1, "108"

    :goto_0
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3, p1, v0, p2}, Lcom/sgscq/vpn/handler/p;->d(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public static Q(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/util/Map;

    .line 26
    .line 27
    const-string v2, "pk_id"

    .line 28
    .line 29
    const-string v3, ""

    .line 30
    .line 31
    invoke-static {v1, v2, v3, p0}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    const-string v2, "id"

    .line 38
    .line 39
    invoke-static {v1, v2, v3, p0}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    const-string v2, "skill_id"

    .line 46
    .line 47
    invoke-static {v1, v2, v3, p0}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    const-string v2, "item_id"

    .line 54
    .line 55
    invoke-static {v1, v2, v3, p0}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    :cond_2
    return-object v1

    .line 62
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static R(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
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
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

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
    const-string v1, "pk_id"

    .line 25
    .line 26
    const-string v2, ""

    .line 27
    .line 28
    invoke-static {v0, v1, v2, p0}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    const-string v1, "general_pk_id"

    .line 35
    .line 36
    invoke-static {v0, v1, v2, p0}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    :cond_2
    return-object v0

    .line 43
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 44
    return-object p0
.end method

.method public static R0(Ljava/util/Map;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v1

    const-string v2, "user_map_step"

    const-string v3, "user_position_step"

    invoke-static {p0, v1, v2, v3, v0}, Lcom/sgscq/vpn/handler/w;->S0(Ljava/util/Map;Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    or-int/2addr v0, v2

    const-string v2, "user_elite_position_step"

    const/4 v3, 0x1

    const-string v4, "user_elite_map_step"

    invoke-static {p0, v1, v4, v2, v3}, Lcom/sgscq/vpn/handler/w;->S0(Ljava/util/Map;Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static S()Ljava/io/File;
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
    const/4 v2, 0x6

    const-string v3, "docs/game_data_json/gift_box_contents.json"

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static S0(Ljava/util/Map;Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, ""

    .line 6
    .line 7
    invoke-interface {p0, p3, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x6

    .line 24
    if-ge v2, v3, :cond_1

    .line 25
    .line 26
    return v0

    .line 27
    :cond_1
    if-eqz p4, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x5

    .line 34
    if-lt v2, v3, :cond_2

    .line 35
    .line 36
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v2, 0x3

    .line 42
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :goto_0
    if-eqz p4, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/sgscq/vpn/w1;->g0()Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    invoke-virtual {p1}, Lcom/sgscq/vpn/w1;->j0()Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-nez v4, :cond_e

    .line 62
    .line 63
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    const/4 v5, 0x1

    .line 68
    sub-int/2addr v4, v5

    .line 69
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-nez v3, :cond_4

    .line 80
    .line 81
    goto/16 :goto_6

    .line 82
    .line 83
    :cond_4
    invoke-virtual {p1, v2, v2}, Lcom/sgscq/vpn/w1;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p1}, Lcom/sgscq/vpn/handler/w;->D0(Ljava/util/List;)Ljava/util/ArrayList;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p4, :cond_5

    .line 92
    .line 93
    invoke-static {v2, p1}, Lcom/sgscq/vpn/handler/w;->L(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_6

    .line 102
    .line 103
    goto/16 :goto_6

    .line 104
    .line 105
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    sub-int/2addr v3, v5

    .line 110
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Ljava/lang/String;

    .line 115
    .line 116
    if-eqz p1, :cond_9

    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-nez v3, :cond_9

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_7

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_7
    if-eqz p4, :cond_8

    .line 132
    .line 133
    invoke-static {p1}, Lcom/sgscq/vpn/handler/w;->T0(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-static {v1}, Lcom/sgscq/vpn/handler/w;->T0(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    goto :goto_2

    .line 142
    :cond_8
    invoke-static {p1}, Lcom/sgscq/vpn/handler/w;->A0(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-static {v1}, Lcom/sgscq/vpn/handler/w;->A0(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    goto :goto_4

    .line 155
    :cond_9
    :goto_3
    move v3, v0

    .line 156
    :goto_4
    if-nez v3, :cond_a

    .line 157
    .line 158
    return v0

    .line 159
    :cond_a
    invoke-static {p1, p0}, Lcom/sgscq/vpn/handler/w;->e0(Ljava/lang/String;Ljava/util/Map;)Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-nez v3, :cond_b

    .line 164
    .line 165
    return v0

    .line 166
    :cond_b
    if-eqz p4, :cond_c

    .line 167
    .line 168
    invoke-static {p1}, Lcom/sgscq/vpn/handler/w;->y0(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    goto :goto_5

    .line 173
    :cond_c
    invoke-static {p1}, Lcom/sgscq/vpn/handler/w;->z0(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    :goto_5
    if-eqz p1, :cond_e

    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result p4

    .line 183
    if-nez p4, :cond_e

    .line 184
    .line 185
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result p4

    .line 189
    if-eqz p4, :cond_d

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_d
    invoke-interface {p0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    new-instance p0, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string p4, "[Dungeon] repair stuck final chapter progress map="

    .line 198
    .line 199
    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string p2, " chapter="

    .line 206
    .line 207
    const-string p4, " "

    .line 208
    .line 209
    invoke-static {p0, p2, v2, p4, p3}, Lc/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string p2, " -> "

    .line 219
    .line 220
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    const-string p1, "SGSCQ_SRV"

    .line 231
    .line 232
    invoke-static {p1, p0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    return v5

    .line 236
    :cond_e
    :goto_6
    return v0
.end method

.method public static varargs T([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public static T0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "105\\d{5}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "01"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static U(Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "mapId"

    const-string v1, "1"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "dungeonId"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "dungeon_id"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static U0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/util/Map;
    .locals 4

    .line 1
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p0, :cond_1

    move-object p0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->c1(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    :try_start_0
    const-string p0, "docs/game_data_json/items.json"

    invoke-static {p0}, Lcom/sgscq/vpn/handler/w;->O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    new-instance v1, La/o;

    invoke-direct {v1}, La/o;-><init>()V

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, La/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_5

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_4

    check-cast p0, Ljava/util/Map;

    move-object v0, p0

    :cond_4
    return-object v0

    :cond_5
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_7

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_6

    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_7
    :goto_1
    return-object v0
.end method

.method public static W(Ljava/util/Map;Lcom/sgscq/vpn/w1;Ljava/lang/String;IILjava/util/ArrayList;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    .line 7
    .line 8
    .line 9
    move-result p3

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, p3, :cond_4

    .line 12
    .line 13
    invoke-static {p2, p0}, Lcom/sgscq/vpn/handler/w;->f0(Ljava/lang/String;Ljava/util/Map;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/16 v3, 0x12

    .line 20
    .line 21
    invoke-static {v3, p2, p0}, Lcom/sgscq/vpn/w1;->k(ILjava/lang/String;Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p2, v3}, Lcom/sgscq/vpn/handler/w;->v(Ljava/lang/String;I)Ljava/util/LinkedHashMap;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_0
    invoke-virtual {p1, p2, p0}, Lcom/sgscq/vpn/w1;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    const-string v3, "[Dungeon] skip non-surrenderable general reward general_id="

    .line 40
    .line 41
    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v4, "SGSCQ_SRV"

    .line 46
    .line 47
    invoke-static {v4, v3}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :cond_1
    const-string v4, "level"

    .line 53
    .line 54
    const-string v5, "general_level"

    .line 55
    .line 56
    if-gt p4, v0, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-static {v7, v0}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    invoke-static {v6, v7}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-lt v6, p4, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {p1, v6, p4, v3}, Lcom/sgscq/vpn/w1;->g(IILjava/util/Map;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    :goto_1
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 96
    .line 97
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v7, ""

    .line 101
    .line 102
    const-string v8, "pk_id"

    .line 103
    .line 104
    invoke-interface {v3, v8, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    const-string v8, "general_pk_id"

    .line 116
    .line 117
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    const-string v7, "id"

    .line 121
    .line 122
    invoke-interface {v6, v7, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    const-string v7, "general_id"

    .line 126
    .line 127
    invoke-interface {v6, v7, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    const-string v8, "item_id"

    .line 131
    .line 132
    invoke-interface {v6, v8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    const-string v8, "num"

    .line 136
    .line 137
    invoke-interface {v6, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    const-string v8, "item_num"

    .line 141
    .line 142
    invoke-interface {v6, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    const/16 v8, 0x1f

    .line 146
    .line 147
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    const-string v9, "item_type"

    .line 152
    .line 153
    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    const-string v8, "type"

    .line 157
    .line 158
    invoke-interface {v6, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-static {v3, v0}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    invoke-static {v8, v3}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-interface {v6, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    const-string v3, "is_new"

    .line 185
    .line 186
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 187
    .line 188
    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    const/4 v3, 0x0

    .line 195
    invoke-static {v7, p2, v3, p0}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 196
    .line 197
    .line 198
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :cond_4
    return-void
.end method

.method public static X0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/sgscq/vpn/handler/DungeonHandler$2;

    invoke-direct {v0}, Lcom/sgscq/vpn/handler/DungeonHandler$2;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    new-instance v2, La/o;

    invoke-direct {v2}, La/o;-><init>()V

    invoke-virtual {v2, p1, v0}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_1

    move-object p0, v1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_2

    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static Y0(ILjava/util/Map;)I
    .locals 1

    .line 1
    const-string v0, "killCount"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "fight_num"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 p1, 0x1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p0, p1

    :goto_0
    if-ge p0, p1, :cond_0

    goto :goto_1

    :cond_0
    move p1, p0

    :goto_1
    const/16 p0, 0x63

    if-le p1, p0, :cond_1

    move p1, p0

    :cond_1
    return p1
.end method

.method public static Z0(Lcom/sgscq/vpn/w1;)Lcom/sgscq/vpn/handler/t;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "142007"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    :goto_0
    if-nez v2, :cond_1

    .line 14
    .line 15
    const/16 v4, 0x11b

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-static {v0, v1, v2}, Lcom/sgscq/vpn/handler/w;->M0(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/util/Map;)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    :goto_1
    const/4 v6, 0x1

    .line 23
    const-wide/16 v7, 0x0

    .line 24
    .line 25
    const/4 v9, 0x5

    .line 26
    const/4 v10, 0x0

    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    const/16 v13, 0x64

    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_2
    const-string v11, "attr_attack"

    .line 33
    .line 34
    const-string v12, "general_attack"

    .line 35
    .line 36
    const-string v13, "general_attack_attr"

    .line 37
    .line 38
    const-string v14, "attack"

    .line 39
    .line 40
    const-string v15, "base_attack"

    .line 41
    .line 42
    filled-new-array {v13, v11, v12, v14, v15}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v11

    .line 46
    move v12, v10

    .line 47
    :goto_2
    if-ge v12, v9, :cond_4

    .line 48
    .line 49
    aget-object v13, v11, v12

    .line 50
    .line 51
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v13

    .line 55
    invoke-static {v13, v10}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 56
    .line 57
    .line 58
    move-result v13

    .line 59
    if-lez v13, :cond_3

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    add-int/lit8 v12, v12, 0x1

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_4
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    if-eqz v11, :cond_5

    .line 70
    .line 71
    array-length v12, v11

    .line 72
    if-le v12, v6, :cond_5

    .line 73
    .line 74
    aget-wide v12, v11, v6

    .line 75
    .line 76
    cmpl-double v11, v12, v7

    .line 77
    .line 78
    if-lez v11, :cond_5

    .line 79
    .line 80
    double-to-int v11, v12

    .line 81
    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    .line 82
    .line 83
    .line 84
    move-result v13

    .line 85
    goto :goto_3

    .line 86
    :cond_5
    const/16 v13, 0x1f4

    .line 87
    .line 88
    :goto_3
    if-nez v2, :cond_6

    .line 89
    .line 90
    const/16 v12, 0x7d

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_6
    const-string v12, "attr_defense"

    .line 94
    .line 95
    const-string v14, "general_defense"

    .line 96
    .line 97
    const-string v15, "general_defense_attr"

    .line 98
    .line 99
    const-string v3, "defense"

    .line 100
    .line 101
    const-string v5, "base_defense"

    .line 102
    .line 103
    filled-new-array {v15, v12, v14, v3, v5}, [Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    move v5, v10

    .line 108
    :goto_4
    if-ge v5, v9, :cond_8

    .line 109
    .line 110
    aget-object v12, v3, v5

    .line 111
    .line 112
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    invoke-static {v12, v10}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    if-lez v12, :cond_7

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_8
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    if-eqz v3, :cond_9

    .line 131
    .line 132
    array-length v5, v3

    .line 133
    const/4 v12, 0x2

    .line 134
    if-le v5, v12, :cond_9

    .line 135
    .line 136
    aget-wide v14, v3, v12

    .line 137
    .line 138
    cmpl-double v3, v14, v7

    .line 139
    .line 140
    if-lez v3, :cond_9

    .line 141
    .line 142
    double-to-int v3, v14

    .line 143
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    goto :goto_5

    .line 148
    :cond_9
    const/16 v12, 0x12c

    .line 149
    .line 150
    :goto_5
    if-nez v2, :cond_a

    .line 151
    .line 152
    const/16 v11, 0x8a

    .line 153
    .line 154
    goto :goto_7

    .line 155
    :cond_a
    const-string v5, "attr_wisdom"

    .line 156
    .line 157
    const-string v14, "general_wisdom"

    .line 158
    .line 159
    const-string v15, "general_wisdom_attr"

    .line 160
    .line 161
    const-string v3, "wisdom"

    .line 162
    .line 163
    const-string v11, "base_wisdom"

    .line 164
    .line 165
    filled-new-array {v15, v5, v14, v3, v11}, [Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    move v5, v10

    .line 170
    :goto_6
    if-ge v5, v9, :cond_c

    .line 171
    .line 172
    aget-object v11, v3, v5

    .line 173
    .line 174
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v11

    .line 178
    invoke-static {v11, v10}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    if-lez v11, :cond_b

    .line 183
    .line 184
    goto :goto_7

    .line 185
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_c
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    if-eqz v0, :cond_d

    .line 193
    .line 194
    array-length v1, v0

    .line 195
    const/4 v2, 0x3

    .line 196
    if-le v1, v2, :cond_d

    .line 197
    .line 198
    aget-wide v1, v0, v2

    .line 199
    .line 200
    cmpl-double v0, v1, v7

    .line 201
    .line 202
    if-lez v0, :cond_d

    .line 203
    .line 204
    double-to-int v0, v1

    .line 205
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    goto :goto_7

    .line 210
    :cond_d
    const/16 v11, 0xc8

    .line 211
    .line 212
    :goto_7
    if-gtz v4, :cond_e

    .line 213
    .line 214
    const/16 v3, 0x11b

    .line 215
    .line 216
    goto :goto_8

    .line 217
    :cond_e
    move v3, v4

    .line 218
    :goto_8
    if-gtz v13, :cond_f

    .line 219
    .line 220
    const/16 v5, 0x64

    .line 221
    .line 222
    goto :goto_9

    .line 223
    :cond_f
    move v5, v13

    .line 224
    :goto_9
    if-gtz v12, :cond_10

    .line 225
    .line 226
    const/16 v12, 0x7d

    .line 227
    .line 228
    :cond_10
    if-gtz v11, :cond_11

    .line 229
    .line 230
    const/16 v11, 0x8a

    .line 231
    .line 232
    :cond_11
    new-instance v0, Lcom/sgscq/vpn/handler/t;

    .line 233
    .line 234
    invoke-direct {v0, v3, v5, v12, v11}, Lcom/sgscq/vpn/handler/t;-><init>(IIII)V

    .line 235
    .line 236
    .line 237
    return-object v0
.end method

.method public static a(Ljava/util/HashMap;Ljava/util/Map;Lcom/sgscq/vpn/handler/j;)V
    .locals 7

    .line 1
    iget-object p2, p2, Lcom/sgscq/vpn/handler/j;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p2, Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    instance-of v2, v1, Ljava/util/Map;

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    check-cast v1, Ljava/util/Map;

    .line 31
    .line 32
    const-string v2, "upd"

    .line 33
    .line 34
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    instance-of v3, v3, Ljava/util/List;

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    new-instance v3, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Ljava/util/List;

    .line 49
    .line 50
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    :goto_1
    const-string v4, "del"

    .line 60
    .line 61
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    instance-of v5, v5, Ljava/util/List;

    .line 66
    .line 67
    if-eqz v5, :cond_2

    .line 68
    .line 69
    new-instance v5, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Ljava/util/List;

    .line 76
    .line 77
    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v6, "add"

    .line 92
    .line 93
    filled-new-array {v2, v3, v6, v1}, [Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v4, v5, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    return-void
.end method

.method public static a0(ILjava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 19

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    if-eqz p1, :cond_a

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_a

    .line 16
    .line 17
    if-gtz v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_7

    .line 20
    .line 21
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v11, "SkillPiece"

    .line 26
    .line 27
    invoke-static {v11, v1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v12

    .line 31
    invoke-static {v2, v12}, Lcom/sgscq/vpn/handler/w;->Q(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v14, "add"

    .line 36
    .line 37
    const-string v15, "upd"

    .line 38
    .line 39
    const-string v10, "pk_id"

    .line 40
    .line 41
    const-string v9, "del"

    .line 42
    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    const-string v3, "id"

    .line 46
    .line 47
    const-string v5, "skill_id"

    .line 48
    .line 49
    const-string v7, "num"

    .line 50
    .line 51
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    const-string v16, "skill_piece_num"

    .line 56
    .line 57
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v17

    .line 61
    move-object v4, v2

    .line 62
    move-object v6, v2

    .line 63
    move-object/from16 v18, v9

    .line 64
    .line 65
    move-object/from16 v9, v16

    .line 66
    .line 67
    move-object v13, v10

    .line 68
    move-object/from16 v10, v17

    .line 69
    .line 70
    filled-new-array/range {v3 .. v10}, [Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-static {v13, v2, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-object/from16 v6, v18

    .line 82
    .line 83
    const/4 v9, 0x0

    .line 84
    goto/16 :goto_6

    .line 85
    .line 86
    :cond_1
    move-object/from16 v18, v9

    .line 87
    .line 88
    move-object v13, v10

    .line 89
    if-eqz v2, :cond_9

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_2

    .line 96
    .line 97
    goto/16 :goto_4

    .line 98
    .line 99
    :cond_2
    const-string v4, ""

    .line 100
    .line 101
    invoke-interface {v3, v13, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    const-string v7, "skill_id"

    .line 114
    .line 115
    const-string v8, "id"

    .line 116
    .line 117
    if-eqz v6, :cond_4

    .line 118
    .line 119
    invoke-static {v3, v8, v4, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-eqz v6, :cond_4

    .line 124
    .line 125
    invoke-static {v3, v7, v4, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-nez v4, :cond_3

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_3
    const/4 v4, 0x0

    .line 133
    goto :goto_1

    .line 134
    :cond_4
    :goto_0
    const/4 v4, 0x1

    .line 135
    :goto_1
    if-nez v4, :cond_5

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-nez v4, :cond_8

    .line 143
    .line 144
    const-string v4, "null"

    .line 145
    .line 146
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-nez v4, :cond_8

    .line 151
    .line 152
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-nez v4, :cond_8

    .line 157
    .line 158
    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/handler/w;->H(Ljava/util/Map;)Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    if-nez v6, :cond_6

    .line 167
    .line 168
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    :cond_6
    const/4 v5, 0x4

    .line 172
    new-array v5, v5, [Ljava/lang/Object;

    .line 173
    .line 174
    const/4 v6, 0x0

    .line 175
    aput-object v15, v5, v6

    .line 176
    .line 177
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    instance-of v9, v6, Ljava/util/Map;

    .line 182
    .line 183
    if-eqz v9, :cond_7

    .line 184
    .line 185
    check-cast v6, Ljava/util/Map;

    .line 186
    .line 187
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    instance-of v9, v6, Ljava/util/List;

    .line 192
    .line 193
    if-eqz v9, :cond_7

    .line 194
    .line 195
    check-cast v6, Ljava/util/List;

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_7
    new-instance v6, Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .line 202
    .line 203
    :goto_2
    const/4 v9, 0x1

    .line 204
    aput-object v6, v5, v9

    .line 205
    .line 206
    const/4 v6, 0x2

    .line 207
    aput-object v14, v5, v6

    .line 208
    .line 209
    invoke-static {v11, v1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    const/4 v9, 0x3

    .line 214
    aput-object v6, v5, v9

    .line 215
    .line 216
    move-object/from16 v6, v18

    .line 217
    .line 218
    invoke-static {v6, v4, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    invoke-interface {v1, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_8
    move-object/from16 v6, v18

    .line 227
    .line 228
    :goto_3
    invoke-interface {v3, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    invoke-interface {v3, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    invoke-interface {v3, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_9
    :goto_4
    move-object/from16 v6, v18

    .line 239
    .line 240
    :goto_5
    const-string v4, "num"

    .line 241
    .line 242
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    const-string v7, "skill_piece_num"

    .line 247
    .line 248
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v8

    .line 252
    const/4 v9, 0x0

    .line 253
    invoke-static {v8, v9}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 254
    .line 255
    .line 256
    move-result v8

    .line 257
    invoke-static {v5, v8}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    add-int/2addr v5, v0

    .line 262
    invoke-static {v5, v3, v4, v5, v7}, Lc/a;->t(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 263
    .line 264
    .line 265
    :goto_6
    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/handler/w;->H(Ljava/util/Map;)Ljava/util/List;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    const/4 v5, 0x1

    .line 270
    new-array v5, v5, [Ljava/util/Map;

    .line 271
    .line 272
    aput-object v3, v5, v9

    .line 273
    .line 274
    invoke-static {v5}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    filled-new-array {v15, v5, v14, v12}, [Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    invoke-static {v6, v4, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    invoke-interface {v1, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    invoke-static {v0, v2, v3}, Lcom/sgscq/vpn/handler/w;->y(ILjava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    return-object v0

    .line 294
    :cond_a
    :goto_7
    const/4 v0, 0x0

    .line 295
    return-object v0
.end method

.method public static a1(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/w;->r0(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_9

    .line 11
    .line 12
    if-eqz v1, :cond_9

    .line 13
    .line 14
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    new-instance v2, Lcom/sgscq/vpn/handler/DungeonHandler$3;

    .line 27
    .line 28
    invoke-direct {v2}, Lcom/sgscq/vpn/handler/DungeonHandler$3;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v4, La/o;

    .line 36
    .line 37
    invoke-direct {v4}, La/o;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v1, v2}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/util/Map;

    .line 45
    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    move-object v1, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_0
    instance-of v2, v1, Ljava/util/Map;

    .line 55
    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    return-object v3

    .line 59
    :cond_2
    check-cast v1, Ljava/util/Map;

    .line 60
    .line 61
    const-string v2, "add_list"

    .line 62
    .line 63
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    instance-of v4, v2, Ljava/util/List;

    .line 68
    .line 69
    if-nez v4, :cond_3

    .line 70
    .line 71
    goto/16 :goto_2

    .line 72
    .line 73
    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    check-cast v2, Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    const-string v5, ""

    .line 89
    .line 90
    if-eqz v4, :cond_7

    .line 91
    .line 92
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    instance-of v6, v4, Ljava/util/Map;

    .line 97
    .line 98
    if-nez v6, :cond_5

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    check-cast v4, Ljava/util/Map;

    .line 102
    .line 103
    const-string v6, "item_id"

    .line 104
    .line 105
    const-string v7, "id"

    .line 106
    .line 107
    invoke-static {v4, v6, v5, v7}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    const-string v6, "num"

    .line 112
    .line 113
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    const-string v8, "item_num"

    .line 118
    .line 119
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    const/4 v9, 0x1

    .line 124
    invoke-static {v8, v9}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    invoke-static {v6, v8}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    const-string v8, "type"

    .line 133
    .line 134
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    const/4 v8, 0x5

    .line 139
    invoke-static {v4, v8}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-nez v8, :cond_4

    .line 148
    .line 149
    const-string v8, "null"

    .line 150
    .line 151
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    if-nez v8, :cond_4

    .line 156
    .line 157
    if-gtz v6, :cond_6

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_6
    const-string v11, "item_id"

    .line 161
    .line 162
    const-string v13, "num"

    .line 163
    .line 164
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v14

    .line 168
    const-string v15, "item_num"

    .line 169
    .line 170
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v16

    .line 174
    const-string v17, "type"

    .line 175
    .line 176
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v18

    .line 180
    move-object v12, v5

    .line 181
    filled-new-array/range {v11 .. v18}, [Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-static {v7, v5, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-eqz v2, :cond_8

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_8
    const-string v2, "name"

    .line 201
    .line 202
    const-string v3, "name"

    .line 203
    .line 204
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    const-string v7, "desc"

    .line 213
    .line 214
    const-string v3, "desc"

    .line 215
    .line 216
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    const-string v9, "add_list"

    .line 225
    .line 226
    move-object v5, v2

    .line 227
    filled-new-array/range {v5 .. v10}, [Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    const-string v2, "box_id"

    .line 232
    .line 233
    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    :cond_9
    :goto_2
    return-object v3
.end method

.method public static c(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 11

    .line 1
    const-string v0, "Item"

    .line 2
    .line 3
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v2, v1, Ljava/util/Map;

    .line 8
    .line 9
    const-string v3, "add"

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    check-cast v1, Ljava/util/Map;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v2, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v4, "del"

    .line 27
    .line 28
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v4, "upd"

    .line 37
    .line 38
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    new-instance v2, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    instance-of v0, p2, Ljava/util/List;

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    check-cast p2, Ljava/util/List;

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-static {v1, v3}, Lc/a;->o(Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const/4 v1, 0x0

    .line 72
    move v2, v1

    .line 73
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    const-string v5, "item_id"

    .line 78
    .line 79
    const-string v4, "id"

    .line 80
    .line 81
    const-string v6, "pk_id"

    .line 82
    .line 83
    const-string v10, "num"

    .line 84
    .line 85
    const-string v8, "item_num"

    .line 86
    .line 87
    if-eqz v3, :cond_4

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Ljava/util/Map;

    .line 94
    .line 95
    const-string v7, ""

    .line 96
    .line 97
    invoke-static {v3, v4, v7, v5, p1}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_3

    .line 102
    .line 103
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-static {p2, v1}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    invoke-static {p1, p2}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    add-int/2addr p1, p0

    .line 120
    invoke-static {p1, v3, v8, p1, v10}, Lc/a;->t(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return-object v3

    .line 124
    :cond_3
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-static {v3, v1}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-le v3, v2, :cond_2

    .line 133
    .line 134
    move v2, v3

    .line 135
    goto :goto_2

    .line 136
    :cond_4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 137
    .line 138
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 139
    .line 140
    .line 141
    add-int/lit8 v2, v2, 0x1

    .line 142
    .line 143
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-object v4, v0

    .line 154
    move-object v6, p1

    .line 155
    move v7, p0

    .line 156
    move v9, p0

    .line 157
    invoke-static/range {v4 .. v10}, Lc/a;->z(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string p0, "effect_time"

    .line 161
    .line 162
    const-string p1, "0"

    .line 163
    .line 164
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    const-string p0, "is_new"

    .line 168
    .line 169
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 170
    .line 171
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    return-object v0
.end method

.method public static c1(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "[]"

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sgscq/vpn/battle/BattleUnit;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sgscq/vpn/battle/BattleUnit;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sgscq/vpn/battle/BattleUnit;->getHpCur()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sgscq/vpn/battle/BattleUnit;->getHpMax()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d([DID)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    aget-wide v1, p0, v0

    add-double/2addr v1, p2

    aput-wide v1, p0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    aget-wide v1, p0, v0

    add-double/2addr v1, p2

    aput-wide v1, p0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    aget-wide v0, p0, p1

    add-double/2addr v0, p2

    aput-wide v0, p0, p1

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    aget-wide v1, p0, v0

    add-double/2addr v1, p2

    aput-wide v1, p0, v0

    :cond_4
    :goto_0
    return-void
.end method

.method public static e0(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "dungeon_stars"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    :try_start_0
    new-instance v1, La/o;

    invoke-direct {v1}, La/o;-><init>()V

    check-cast p1, Ljava/lang/String;

    new-instance v2, Lcom/sgscq/vpn/handler/DungeonHandler$1;

    invoke-direct {v2}, Lcom/sgscq/vpn/handler/DungeonHandler$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcom/sgscq/vpn/handler/w;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/w;->K0(Ljava/lang/Object;)I

    move-result p0

    if-gtz p0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/w;->K0(Ljava/lang/Object;)I

    move-result p0

    if-gtz p0, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v2, 0x6

    if-ne p0, v2, :cond_5

    const-string p0, "01"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/w;->K0(Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    :goto_1
    return v0
.end method

.method public static varargs e1(Z[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string p1, "Combat"

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static f(Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "general_pk_id"

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    const-string v2, "pk_id"

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-eqz v5, :cond_2

    .line 23
    .line 24
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Ljava/util/Map;

    .line 29
    .line 30
    invoke-static {v5, v0, v1, v2, v3}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static f0(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 4

    .line 1
    const-string v0, "General"

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
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

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
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    .line 25
    const-string v2, "story_guest"

    .line 26
    .line 27
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-string v1, "id"

    .line 39
    .line 40
    const-string v2, ""

    .line 41
    .line 42
    const-string v3, "general_id"

    .line 43
    .line 44
    invoke-static {v0, v1, v2, v3, p0}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    const/4 p0, 0x1

    .line 51
    return p0

    .line 52
    :cond_2
    const/4 p0, 0x0

    .line 53
    return p0
.end method

.method public static g(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 9

    if-eqz p6, :cond_0

    invoke-static {p1}, Lcom/sgscq/vpn/handler/w;->B0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sgscq/vpn/handler/w;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    if-nez p6, :cond_2

    const-string v1, "5\\d{5}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    if-eqz p6, :cond_3

    const-string v1, "105"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    if-eqz p6, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_4

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/sgscq/vpn/handler/w;->D0(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz p6, :cond_5

    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/w;->L(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v2

    :cond_5
    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_7

    if-eqz p6, :cond_7

    invoke-static {p1}, Lcom/sgscq/vpn/handler/w;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v5, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/sgscq/vpn/handler/w;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v3, v5

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    if-gez v3, :cond_8

    return v0

    :cond_8
    add-int/lit8 v4, v3, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    const-string v7, ""

    if-ge v4, v5, :cond_9

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p6, :cond_f

    goto :goto_5

    :cond_9
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_a

    return v0

    :cond_a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_c

    if-eqz p6, :cond_b

    invoke-static {p1}, Lcom/sgscq/vpn/handler/w;->y0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_b
    invoke-static {p1}, Lcom/sgscq/vpn/handler/w;->z0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_4
    move p2, v6

    goto :goto_7

    :cond_c
    add-int/2addr v4, v6

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/sgscq/vpn/handler/w;->D0(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p6, :cond_d

    invoke-static {v1, p1}, Lcom/sgscq/vpn/handler/w;->L(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_e

    move-object p1, v7

    goto :goto_6

    :cond_e
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p6, :cond_f

    :goto_5
    invoke-static {p1}, Lcom/sgscq/vpn/handler/w;->B0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_f
    invoke-static {p1}, Lcom/sgscq/vpn/handler/w;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_6
    move p2, v0

    :goto_7
    if-eqz p6, :cond_10

    goto :goto_8

    :cond_10
    const-string p3, "500"

    .line 1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit16 v1, v1, -0x1f4

    if-lez v1, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%03d"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v0

    invoke-static {p3, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    :cond_11
    move-object v1, v7

    :goto_8
    add-int/lit8 p3, v3, 0x2

    .line 2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v6

    if-lt v3, v2, :cond_12

    if-nez p2, :cond_12

    move p3, v6

    .line 3
    :cond_12
    invoke-interface {p0, p4, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-eqz p6, :cond_13

    invoke-static {p2}, Lcom/sgscq/vpn/handler/w;->F0(Ljava/lang/String;)I

    move-result p2

    goto :goto_9

    :cond_13
    invoke-static {p2}, Lcom/sgscq/vpn/handler/w;->I0(Ljava/lang/String;)I

    move-result p2

    :goto_9
    if-eqz p6, :cond_14

    invoke-static {v1}, Lcom/sgscq/vpn/handler/w;->F0(Ljava/lang/String;)I

    move-result p6

    goto :goto_a

    :cond_14
    invoke-static {v1}, Lcom/sgscq/vpn/handler/w;->I0(Ljava/lang/String;)I

    move-result p6

    :goto_a
    if-gtz p6, :cond_15

    goto :goto_d

    :cond_15
    if-gtz p2, :cond_16

    goto :goto_c

    :cond_16
    if-eq p6, p2, :cond_17

    if-le p6, p2, :cond_1a

    goto :goto_c

    :cond_17
    const-string p2, "0"

    invoke-interface {p0, p5, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sgscq/vpn/handler/w;->G(Ljava/lang/String;)I

    move-result p2

    if-gtz p2, :cond_19

    .line 4
    invoke-interface {p0, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of p6, p2, Ljava/lang/Number;

    if-eqz p6, :cond_18

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    goto :goto_b

    :cond_18
    :try_start_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_1
    move p2, v0

    :cond_19
    :goto_b
    if-le p3, p2, :cond_1a

    :goto_c
    move p2, v6

    goto :goto_e

    :cond_1a
    :goto_d
    move p2, v0

    :goto_e
    if-nez p2, :cond_1b

    return v0

    .line 5
    :cond_1b
    invoke-interface {p0, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v6
.end method

.method public static g0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    :cond_0
    if-nez p0, :cond_1

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->Y0(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    const-string v0, "\""

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-string v1, "\""

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eq v0, v1, :cond_2

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    const/4 v0, 0x0

    .line 31
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_4

    .line 51
    .line 52
    goto :goto_5

    .line 53
    :cond_4
    const-string p0, "i18n.json"

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-static {v0, p0}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    if-eqz p0, :cond_9

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_5

    .line 67
    .line 68
    goto :goto_5

    .line 69
    :cond_5
    sget-object v1, Lcom/sgscq/vpn/handler/w;->e:Ljava/lang/String;

    .line 70
    .line 71
    if-eq p0, v1, :cond_7

    .line 72
    .line 73
    const-class v1, Lcom/sgscq/vpn/handler/w;

    .line 74
    .line 75
    monitor-enter v1

    .line 76
    :try_start_0
    sget-object v2, Lcom/sgscq/vpn/handler/w;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    if-eq p0, v2, :cond_6

    .line 79
    .line 80
    :try_start_1
    new-instance v2, Lcom/sgscq/vpn/handler/DungeonHandler$4;

    .line 81
    .line 82
    invoke-direct {v2}, Lcom/sgscq/vpn/handler/DungeonHandler$4;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    new-instance v3, La/o;

    .line 90
    .line 91
    invoke-direct {v3}, La/o;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, p0, v2}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Ljava/util/Map;

    .line 99
    .line 100
    sput-object v2, Lcom/sgscq/vpn/handler/w;->f:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    sput-object v2, Lcom/sgscq/vpn/handler/w;->f:Ljava/util/Map;

    .line 108
    .line 109
    :goto_2
    sput-object p0, Lcom/sgscq/vpn/handler/w;->e:Ljava/lang/String;

    .line 110
    .line 111
    :cond_6
    monitor-exit v1

    .line 112
    goto :goto_3

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    throw p0

    .line 116
    :cond_7
    :goto_3
    sget-object p0, Lcom/sgscq/vpn/handler/w;->f:Ljava/util/Map;

    .line 117
    .line 118
    if-nez p0, :cond_8

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_8
    sget-object p0, Lcom/sgscq/vpn/handler/w;->f:Ljava/util/Map;

    .line 122
    .line 123
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    move-object v0, p0

    .line 128
    check-cast v0, Ljava/lang/String;

    .line 129
    .line 130
    :goto_4
    if-nez v0, :cond_a

    .line 131
    .line 132
    :cond_9
    :goto_5
    const-string v0, ""

    .line 133
    .line 134
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    if-nez p0, :cond_b

    .line 139
    .line 140
    return-object v0

    .line 141
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    if-eqz p0, :cond_c

    .line 146
    .line 147
    :goto_6
    const-string p0, ""

    .line 148
    .line 149
    goto :goto_a

    .line 150
    :cond_c
    sget-object p0, Lcom/sgscq/vpn/handler/w;->g:Ljava/util/Map;

    .line 151
    .line 152
    if-eqz p0, :cond_d

    .line 153
    .line 154
    goto :goto_9

    .line 155
    :cond_d
    const-class p0, Lcom/sgscq/vpn/handler/w;

    .line 156
    .line 157
    monitor-enter p0

    .line 158
    :try_start_3
    sget-object v0, Lcom/sgscq/vpn/handler/w;->g:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 159
    .line 160
    if-nez v0, :cond_10

    .line 161
    .line 162
    :try_start_4
    const-string v0, "docs/game_data_json/i18n.json"

    .line 163
    .line 164
    invoke-static {v0}, Lcom/sgscq/vpn/handler/w;->O0(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_e

    .line 173
    .line 174
    goto :goto_7

    .line 175
    :cond_e
    new-instance v1, Lcom/sgscq/vpn/handler/DungeonHandler$5;

    .line 176
    .line 177
    invoke-direct {v1}, Lcom/sgscq/vpn/handler/DungeonHandler$5;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    new-instance v2, La/o;

    .line 185
    .line 186
    invoke-direct {v2}, La/o;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v0, v1}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Ljava/util/Map;

    .line 194
    .line 195
    if-nez v0, :cond_f

    .line 196
    .line 197
    :goto_7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    goto :goto_8

    .line 202
    :cond_f
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 203
    .line 204
    .line 205
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 206
    goto :goto_8

    .line 207
    :catch_1
    :try_start_5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    :goto_8
    sput-object v0, Lcom/sgscq/vpn/handler/w;->g:Ljava/util/Map;

    .line 212
    .line 213
    :cond_10
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 214
    move-object p0, v0

    .line 215
    :goto_9
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    check-cast p0, Ljava/lang/String;

    .line 220
    .line 221
    if-nez p0, :cond_11

    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_11
    :goto_a
    return-object p0

    .line 225
    :catchall_1
    move-exception p1

    .line 226
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 227
    throw p1
.end method

.method public static h0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    new-instance v1, La/o;

    invoke-direct {v1}, La/o;-><init>()V

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, La/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const-string v3, "id"

    if-eqz v1, :cond_2

    :try_start_1
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Ljava/util/Map;

    if-eqz v4, :cond_1

    move-object v4, v1

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/sgscq/vpn/handler/w;->i0(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_2
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_4

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Ljava/util/Map;

    if-eqz v4, :cond_3

    move-object v4, v1

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/sgscq/vpn/handler/w;->i0(Ljava/util/Map;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_3

    return v2

    :catch_0
    :cond_4
    :goto_0
    return v0
.end method

.method public static i0(Ljava/util/Map;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/w1;->D1(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "surrender_gift_id"

    const-string v2, "0"

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static j(Lcom/sgscq/vpn/battle/BattleUnit;Ljava/lang/String;ILcom/sgscq/vpn/handler/t;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/sgscq/vpn/handler/w;->k0(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p3, Lcom/sgscq/vpn/handler/t;->a:I

    .line 6
    .line 7
    if-nez p1, :cond_6

    .line 8
    .line 9
    if-eqz p0, :cond_5

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    if-lt p2, p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleUnit;->getHpMax()D

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    int-to-double v0, v0

    .line 24
    cmpg-double p1, p1, v0

    .line 25
    .line 26
    if-gez p1, :cond_2

    .line 27
    .line 28
    sget-object p1, Lcom/sgscq/vpn/battle/BattleAttribute;->HP:Lcom/sgscq/vpn/battle/BattleAttribute;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleUnit;->getHpMax()D

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    sub-double/2addr v0, v2

    .line 35
    invoke-virtual {p0, p1, v0, v1}, Lcom/sgscq/vpn/battle/BattleUnit;->addAttribute(Lcom/sgscq/vpn/battle/BattleAttribute;D)V

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleUnit;->getAttack()D

    .line 39
    .line 40
    .line 41
    move-result-wide p1

    .line 42
    iget v0, p3, Lcom/sgscq/vpn/handler/t;->b:I

    .line 43
    .line 44
    int-to-double v0, v0

    .line 45
    cmpg-double p1, p1, v0

    .line 46
    .line 47
    if-gez p1, :cond_3

    .line 48
    .line 49
    sget-object p1, Lcom/sgscq/vpn/battle/BattleAttribute;->ATTACK:Lcom/sgscq/vpn/battle/BattleAttribute;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleUnit;->getAttack()D

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    sub-double/2addr v0, v2

    .line 56
    invoke-virtual {p0, p1, v0, v1}, Lcom/sgscq/vpn/battle/BattleUnit;->addAttribute(Lcom/sgscq/vpn/battle/BattleAttribute;D)V

    .line 57
    .line 58
    .line 59
    :cond_3
    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleUnit;->getDefense()D

    .line 60
    .line 61
    .line 62
    move-result-wide p1

    .line 63
    iget v0, p3, Lcom/sgscq/vpn/handler/t;->c:I

    .line 64
    .line 65
    int-to-double v0, v0

    .line 66
    cmpg-double p1, p1, v0

    .line 67
    .line 68
    if-gez p1, :cond_4

    .line 69
    .line 70
    sget-object p1, Lcom/sgscq/vpn/battle/BattleAttribute;->DEFENSE:Lcom/sgscq/vpn/battle/BattleAttribute;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleUnit;->getDefense()D

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    sub-double/2addr v0, v2

    .line 77
    invoke-virtual {p0, p1, v0, v1}, Lcom/sgscq/vpn/battle/BattleUnit;->addAttribute(Lcom/sgscq/vpn/battle/BattleAttribute;D)V

    .line 78
    .line 79
    .line 80
    :cond_4
    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleUnit;->getWisdom()D

    .line 81
    .line 82
    .line 83
    move-result-wide p1

    .line 84
    iget p3, p3, Lcom/sgscq/vpn/handler/t;->d:I

    .line 85
    .line 86
    int-to-double v0, p3

    .line 87
    cmpg-double p1, p1, v0

    .line 88
    .line 89
    if-gez p1, :cond_5

    .line 90
    .line 91
    sget-object p1, Lcom/sgscq/vpn/battle/BattleAttribute;->WISDOM:Lcom/sgscq/vpn/battle/BattleAttribute;

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleUnit;->getWisdom()D

    .line 94
    .line 95
    .line 96
    move-result-wide p2

    .line 97
    sub-double/2addr v0, p2

    .line 98
    invoke-virtual {p0, p1, v0, v1}, Lcom/sgscq/vpn/battle/BattleUnit;->addAttribute(Lcom/sgscq/vpn/battle/BattleAttribute;D)V

    .line 99
    .line 100
    .line 101
    :cond_5
    :goto_1
    return-void

    .line 102
    :cond_6
    if-eqz p0, :cond_7

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleUnit;->getHpMax()D

    .line 105
    .line 106
    .line 107
    move-result-wide p1

    .line 108
    int-to-double v0, v0

    .line 109
    cmpg-double p1, p1, v0

    .line 110
    .line 111
    if-gez p1, :cond_7

    .line 112
    .line 113
    sget-object p1, Lcom/sgscq/vpn/battle/BattleAttribute;->HP:Lcom/sgscq/vpn/battle/BattleAttribute;

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleUnit;->getHpMax()D

    .line 116
    .line 117
    .line 118
    move-result-wide p2

    .line 119
    sub-double/2addr v0, p2

    .line 120
    invoke-virtual {p0, p1, v0, v1}, Lcom/sgscq/vpn/battle/BattleUnit;->addAttribute(Lcom/sgscq/vpn/battle/BattleAttribute;D)V

    .line 121
    .line 122
    .line 123
    :cond_7
    return-void
.end method

.method public static j0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "map.getUserMap"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "chapter.getChapterInfo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dungeon.fightBefore"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dungeon.fight"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dungeon.multiKill"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dungeon.multiKillSpecialInfo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dungeon.multiKillSpecial"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dungeon.openBox"

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

.method public static k(Ljava/util/Map;Ljava/util/ArrayList;ZI)V
    .locals 11

    .line 1
    if-eqz p2, :cond_b

    .line 2
    .line 3
    if-lez p3, :cond_b

    .line 4
    .line 5
    new-instance p2, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "General"

    .line 16
    .line 17
    invoke-static {v1, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const-string v3, "pk_id"

    .line 30
    .line 31
    const-string v4, "story_guest"

    .line 32
    .line 33
    const-string v5, "general_id"

    .line 34
    .line 35
    const-string v6, ""

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/util/Map;

    .line 44
    .line 45
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v7, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-interface {v2, v3, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_2

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-nez v4, :cond_2

    .line 85
    .line 86
    invoke-virtual {p2, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-nez v3, :cond_0

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    .line 100
    .line 101
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v2, "TeamGeneral"

    .line 105
    .line 106
    invoke-static {v2, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    const/4 v8, 0x0

    .line 119
    if-eqz v7, :cond_7

    .line 120
    .line 121
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    check-cast v7, Ljava/util/Map;

    .line 126
    .line 127
    const-string v9, "general_position"

    .line 128
    .line 129
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    const-string v10, "position"

    .line 134
    .line 135
    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    invoke-static {v10, v8}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    invoke-static {v9, v8}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-lez v8, :cond_4

    .line 148
    .line 149
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 150
    .line 151
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    if-eqz v8, :cond_5

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_5
    const-string v8, "general_pk_id"

    .line 163
    .line 164
    invoke-interface {v7, v3, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    check-cast v8, Ljava/lang/String;

    .line 181
    .line 182
    if-eqz v8, :cond_6

    .line 183
    .line 184
    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    :cond_6
    invoke-interface {v7, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    if-eqz v8, :cond_4

    .line 200
    .line 201
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_7
    new-instance p2, Ljava/util/HashSet;

    .line 206
    .line 207
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v0, "EvolutionInfo"

    .line 211
    .line 212
    invoke-static {v0, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    :cond_8
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-eqz v2, :cond_a

    .line 225
    .line 226
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    check-cast v2, Ljava/util/Map;

    .line 231
    .line 232
    const-string v3, "status"

    .line 233
    .line 234
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-static {v3, v8}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    const/4 v4, 0x1

    .line 243
    if-eq v3, v4, :cond_9

    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_9
    const-string v3, "resource_id"

    .line 247
    .line 248
    invoke-static {v2, v3, v6, v5}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    if-eqz v3, :cond_8

    .line 257
    .line 258
    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_a
    const-string v0, "38"

    .line 263
    .line 264
    invoke-static {p0, p1, v0, p3, p2}, Lcom/sgscq/vpn/handler/y0;->d(Ljava/util/Map;Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/Set;)V

    .line 265
    .line 266
    .line 267
    :cond_b
    return-void
.end method

.method public static k0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "105"

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

.method public static l(Lcom/sgscq/vpn/w1;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_7

    .line 14
    .line 15
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x0

    .line 29
    const-string v6, ""

    .line 30
    .line 31
    const-string v7, "bound_lieutenants"

    .line 32
    .line 33
    const-string v8, "battle_lieutenant_wisdom_percent"

    .line 34
    .line 35
    const-string v9, "battle_lieutenant_defense_percent"

    .line 36
    .line 37
    const-string v10, "battle_lieutenant_attack_percent"

    .line 38
    .line 39
    const-string v11, "battle_lieutenant_hp_percent"

    .line 40
    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ljava/util/Map;

    .line 48
    .line 49
    if-nez v4, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-interface {v4, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-interface {v4, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-interface {v4, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-interface {v4, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-interface {v4, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    :goto_1
    const-string v5, "general_pk_id"

    .line 84
    .line 85
    const-string v7, "pk_id"

    .line 86
    .line 87
    invoke-static {v4, v5, v6, v7}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-nez v6, :cond_1

    .line 96
    .line 97
    const-string v6, "null"

    .line 98
    .line 99
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-nez v6, :cond_1

    .line 104
    .line 105
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    const-string v3, "General"

    .line 110
    .line 111
    invoke-static {v3, v1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_b

    .line 124
    .line 125
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Ljava/util/Map;

    .line 130
    .line 131
    const-string v12, "major_pk_id"

    .line 132
    .line 133
    invoke-interface {v4, v12, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v12

    .line 137
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v12

    .line 145
    check-cast v12, Ljava/util/Map;

    .line 146
    .line 147
    if-nez v12, :cond_4

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_4
    const/4 v13, 0x4

    .line 151
    new-array v13, v13, [D

    .line 152
    .line 153
    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v14

    .line 157
    invoke-static {v14}, Lcom/sgscq/vpn/handler/w;->E0(Ljava/lang/Object;)D

    .line 158
    .line 159
    .line 160
    move-result-wide v14

    .line 161
    aput-wide v14, v13, v5

    .line 162
    .line 163
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-static {v5}, Lcom/sgscq/vpn/handler/w;->E0(Ljava/lang/Object;)D

    .line 168
    .line 169
    .line 170
    move-result-wide v14

    .line 171
    const/4 v5, 0x1

    .line 172
    aput-wide v14, v13, v5

    .line 173
    .line 174
    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-static {v5}, Lcom/sgscq/vpn/handler/w;->E0(Ljava/lang/Object;)D

    .line 179
    .line 180
    .line 181
    move-result-wide v14

    .line 182
    const/4 v5, 0x2

    .line 183
    aput-wide v14, v13, v5

    .line 184
    .line 185
    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v14

    .line 189
    invoke-static {v14}, Lcom/sgscq/vpn/handler/w;->E0(Ljava/lang/Object;)D

    .line 190
    .line 191
    .line 192
    move-result-wide v14

    .line 193
    const/16 v16, 0x3

    .line 194
    .line 195
    aput-wide v14, v13, v16

    .line 196
    .line 197
    const-string v14, "lieutenant_skill_id"

    .line 198
    .line 199
    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v15

    .line 203
    const-string v5, "skill_type_lieutenant"

    .line 204
    .line 205
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    filled-new-array {v15, v5}, [Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    invoke-static {v5}, Lcom/sgscq/vpn/handler/w;->T([Ljava/lang/Object;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 218
    .line 219
    .line 220
    move-result v15

    .line 221
    move-object/from16 v17, v2

    .line 222
    .line 223
    const-string v2, "id"

    .line 224
    .line 225
    move-object/from16 v18, v3

    .line 226
    .line 227
    const-string v3, "general_id"

    .line 228
    .line 229
    if-eqz v15, :cond_5

    .line 230
    .line 231
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v15

    .line 235
    move-object/from16 v19, v5

    .line 236
    .line 237
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    filled-new-array {v15, v5}, [Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    invoke-static {v5}, Lcom/sgscq/vpn/handler/w;->T([Ljava/lang/Object;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    invoke-virtual {v0, v5}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    if-eqz v5, :cond_6

    .line 254
    .line 255
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    invoke-static {v5}, Lcom/sgscq/vpn/handler/w;->T([Ljava/lang/Object;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    goto :goto_3

    .line 268
    :cond_5
    move-object/from16 v19, v5

    .line 269
    .line 270
    :cond_6
    move-object/from16 v5, v19

    .line 271
    .line 272
    :goto_3
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-static {v2}, Lcom/sgscq/vpn/handler/w;->T([Ljava/lang/Object;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {v0, v2, v1}, Lcom/sgscq/vpn/w1;->y(Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/s1;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-virtual {v0, v5}, Lcom/sgscq/vpn/w1;->e1(Ljava/lang/String;)Ljava/util/Map;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    if-nez v3, :cond_7

    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_7
    const-string v5, "skill_grow"

    .line 300
    .line 301
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    instance-of v14, v5, Ljava/util/Map;

    .line 306
    .line 307
    if-nez v14, :cond_8

    .line 308
    .line 309
    goto :goto_4

    .line 310
    :cond_8
    check-cast v5, Ljava/util/Map;

    .line 311
    .line 312
    const-string v14, "insight_level"

    .line 313
    .line 314
    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v14

    .line 318
    const-string v15, "breachLevel"

    .line 319
    .line 320
    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v15

    .line 324
    const/4 v0, 0x1

    .line 325
    invoke-static {v15, v0}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 326
    .line 327
    .line 328
    move-result v15

    .line 329
    invoke-static {v14, v15}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 330
    .line 331
    .line 332
    move-result v14

    .line 333
    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    instance-of v5, v0, Ljava/util/Map;

    .line 346
    .line 347
    if-nez v5, :cond_9

    .line 348
    .line 349
    :goto_4
    const/4 v0, 0x0

    .line 350
    move v5, v0

    .line 351
    goto :goto_5

    .line 352
    :cond_9
    check-cast v0, Ljava/util/Map;

    .line 353
    .line 354
    const-string v5, "first_attr_type"

    .line 355
    .line 356
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    const/4 v14, 0x0

    .line 361
    invoke-static {v5, v14}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 362
    .line 363
    .line 364
    move-result v5

    .line 365
    const-string v14, "first_attr_value"

    .line 366
    .line 367
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v14

    .line 371
    invoke-static {v14}, Lcom/sgscq/vpn/handler/w;->E0(Ljava/lang/Object;)D

    .line 372
    .line 373
    .line 374
    move-result-wide v14

    .line 375
    iget-wide v1, v2, Lcom/sgscq/vpn/s1;->k:D

    .line 376
    .line 377
    add-double/2addr v14, v1

    .line 378
    invoke-static {v13, v5, v14, v15}, Lcom/sgscq/vpn/handler/w;->d([DID)V

    .line 379
    .line 380
    .line 381
    const-string v5, "second_attr_type"

    .line 382
    .line 383
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    const/4 v5, 0x0

    .line 388
    invoke-static {v3, v5}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    const-string v14, "second_attr_value"

    .line 393
    .line 394
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-static {v0}, Lcom/sgscq/vpn/handler/w;->E0(Ljava/lang/Object;)D

    .line 399
    .line 400
    .line 401
    move-result-wide v14

    .line 402
    add-double/2addr v14, v1

    .line 403
    invoke-static {v13, v3, v14, v15}, Lcom/sgscq/vpn/handler/w;->d([DID)V

    .line 404
    .line 405
    .line 406
    :goto_5
    aget-wide v0, v13, v5

    .line 407
    .line 408
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    invoke-interface {v12, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    const/4 v0, 0x1

    .line 416
    aget-wide v0, v13, v0

    .line 417
    .line 418
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    invoke-interface {v12, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    const/4 v0, 0x2

    .line 426
    aget-wide v0, v13, v0

    .line 427
    .line 428
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-interface {v12, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    aget-wide v0, v13, v16

    .line 436
    .line 437
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    instance-of v1, v0, Ljava/util/List;

    .line 449
    .line 450
    if-eqz v1, :cond_a

    .line 451
    .line 452
    check-cast v0, Ljava/util/List;

    .line 453
    .line 454
    goto :goto_6

    .line 455
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    .line 456
    .line 457
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .line 459
    .line 460
    :goto_6
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    invoke-interface {v12, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-object/from16 v0, p0

    .line 467
    .line 468
    move-object/from16 v1, p2

    .line 469
    .line 470
    move-object/from16 v2, v17

    .line 471
    .line 472
    move-object/from16 v3, v18

    .line 473
    .line 474
    goto/16 :goto_2

    .line 475
    .line 476
    :cond_b
    :goto_7
    return-void
.end method

.method public static l0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->c1(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "item_type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    const-string v1, "9\\d{6}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/sgscq/vpn/handler/w;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sgscq/vpn/handler/w;->m0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static m0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->z0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->c1(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const-string p0, "2\\d{5}"

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5

    .line 1
    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "init"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Ljava/util/Map;

    if-nez v0, :cond_1

    return-void

    :cond_1
    check-cast p2, Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "info"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_3

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_2

    new-instance v4, Ljava/util/LinkedHashMap;

    check-cast v3, Ljava/util/Map;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_4

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {p0, v2}, Lcom/sgscq/vpn/handler/w;->L0(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-static {p1, p0}, Lcom/sgscq/vpn/handler/w;->L0(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static n0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "100000"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-static {p0, p1}, Lcom/sgscq/vpn/handler/w;->o0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-nez v0, :cond_7

    .line 21
    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->c1(Ljava/lang/String;)Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    const-string v0, "item_type"

    .line 38
    .line 39
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const/4 v0, -0x1

    .line 44
    invoke-static {p0, v0}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    const/16 v0, 0x1f

    .line 49
    .line 50
    if-ne p0, v0, :cond_2

    .line 51
    .line 52
    move p0, v2

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    :goto_0
    move p0, v1

    .line 55
    :goto_1
    if-nez p0, :cond_7

    .line 56
    .line 57
    const-string p0, "1\\d{5}"

    .line 58
    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-nez p0, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    const-string p0, "164"

    .line 67
    .line 68
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_4

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    const-string p0, "12"

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-nez p0, :cond_6

    .line 82
    .line 83
    const-string p0, "13"

    .line 84
    .line 85
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-nez p0, :cond_6

    .line 90
    .line 91
    const-string p0, "14"

    .line 92
    .line 93
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-nez p0, :cond_6

    .line 98
    .line 99
    const-string p0, "15"

    .line 100
    .line 101
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_5

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_5
    :goto_2
    move p0, v1

    .line 109
    goto :goto_4

    .line 110
    :cond_6
    :goto_3
    move p0, v2

    .line 111
    :goto_4
    if-eqz p0, :cond_8

    .line 112
    .line 113
    :cond_7
    move v1, v2

    .line 114
    :cond_8
    return v1
.end method

.method public static o(IILjava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 2

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    const-string v1, "item_id"

    .line 4
    .line 5
    invoke-static {v0, p2, v1, p2}, Lc/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const-string v0, "num"

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string v0, "item_num"

    .line 19
    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string p0, "item_type"

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x5

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string p1, "type"

    .line 42
    .line 43
    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    const-string p0, "is_new"

    .line 47
    .line 48
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    return-object p2
.end method

.method public static o0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "164"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->C1(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static p(IIIIJLjava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 15

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "uid"

    .line 6
    .line 7
    const-string v3, "player_id"

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object/from16 v4, p6

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    invoke-static {v0, v2, v1, v3}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    :goto_1
    const-string v6, "nick"

    .line 26
    .line 27
    const-string v5, "nickname"

    .line 28
    .line 29
    const-string v7, "user_nickname"

    .line 30
    .line 31
    invoke-static {v0, v6, v1, v5, v7}, Lc/a;->k(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "user_id"

    .line 36
    .line 37
    invoke-static {v3, v4, v1, v4}, Lc/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    const-string v2, "player_type"

    .line 45
    .line 46
    const-string v3, "1"

    .line 47
    .line 48
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    const-string v9, "user_level"

    .line 58
    .line 59
    const-string v11, "level"

    .line 60
    .line 61
    move-object v5, v1

    .line 62
    move-object v7, v0

    .line 63
    move v8, p0

    .line 64
    move v10, p0

    .line 65
    invoke-static/range {v5 .. v11}, Lc/a;->z(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v10, "roleLevel"

    .line 69
    .line 70
    const-string v12, "role_level"

    .line 71
    .line 72
    const-string v14, "user_experience"

    .line 73
    .line 74
    move-object v9, v1

    .line 75
    move v11, p0

    .line 76
    move/from16 v13, p1

    .line 77
    .line 78
    invoke-static/range {v8 .. v14}, Lc/a;->s(ILjava/util/LinkedHashMap;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v0, "user_coin"

    .line 82
    .line 83
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    const-string v0, "user_power"

    .line 91
    .line 92
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    const-string v0, "user_power_date"

    .line 100
    .line 101
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    return-object v1
.end method

.method public static p0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->c1(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const-string p0, "3\\d{5}"

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static q(ILjava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 8

    .line 1
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/sgscq/vpn/handler/w;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "pk_id"

    .line 11
    .line 12
    invoke-interface {p2, v1, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-interface {v7, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const-string p2, "id"

    .line 24
    .line 25
    invoke-interface {v7, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const-string p2, "equipment_id"

    .line 29
    .line 30
    invoke-interface {v7, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const-string p2, "equip_id"

    .line 34
    .line 35
    invoke-interface {v7, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    const-string p2, "item_id"

    .line 39
    .line 40
    invoke-interface {v7, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const-string v1, "piece_id"

    .line 44
    .line 45
    const-string v4, "num"

    .line 46
    .line 47
    const-string v6, "item_num"

    .line 48
    .line 49
    move-object v0, v7

    .line 50
    move-object v2, p1

    .line 51
    move v3, p0

    .line 52
    move v5, p0

    .line 53
    invoke-static/range {v0 .. v6}, Lc/a;->z(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/16 v0, 0xf

    .line 57
    .line 58
    const-string v2, "item_type"

    .line 59
    .line 60
    const/16 v3, 0x8

    .line 61
    .line 62
    const-string v4, "type"

    .line 63
    .line 64
    const/4 v5, 0x1

    .line 65
    const-string v6, "level"

    .line 66
    .line 67
    move-object v1, v7

    .line 68
    invoke-static/range {v0 .. v6}, Lc/a;->s(ILjava/util/LinkedHashMap;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string p0, "is_new"

    .line 72
    .line 73
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-interface {v7, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    return-object v7
.end method

.method public static r(Ljava/lang/String;I)Ljava/util/LinkedHashMap;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "pk_id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "id"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "equipment_id"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "equip_id"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "item_id"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "num"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "item_num"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "item_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "level"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "is_new"

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static r0(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "4[1-4]0\\d{3}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, v1}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    move-result p0

    div-int/lit16 v0, p0, 0x3e8

    rem-int/lit16 p0, p0, 0x3e8

    const/16 v2, 0x19a

    if-lt v0, v2, :cond_1

    const/16 v2, 0x1b8

    if-gt v0, v2, :cond_1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    const/16 v2, 0x5a

    if-gt p0, v2, :cond_1

    move v1, v0

    :cond_1
    :goto_0
    return v1
.end method

.method public static s(Ljava/util/Map;Ljava/util/ArrayList;Lcom/sgscq/vpn/handler/v;)Ljava/util/HashMap;
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/sgscq/vpn/handler/v;->b:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/sgscq/vpn/handler/v;->c:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-string v12, "General"

    invoke-static {v12, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v13

    const-string v14, "Skill"

    invoke-static {v14, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v15

    move-object/from16 v16, v14

    const-string v14, "Item"

    move-object/from16 v17, v2

    invoke-static {v14, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v18, v14

    const-string v14, "GeneralSoul"

    move-object/from16 v19, v12

    invoke-static {v14, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v12

    move-object/from16 v20, v14

    const-string v14, "Equipment"

    invoke-static {v14, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v21, v14

    const-string v14, "EquipmentPiece"

    invoke-static {v14, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v23, v14

    const-string v14, "SkillPiece"

    move-object/from16 v24, v7

    invoke-static {v14, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v25, v14

    const-string v14, "TeamGeneral"

    invoke-static {v14, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    move-object/from16 v28, v14

    const-string v14, "SGSCQ_SRV"

    move-object/from16 v29, v5

    const-string v5, "pk_id"

    move-object/from16 v30, v2

    const-string v2, ""

    if-eqz v27, :cond_5

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v31, v9

    move-object/from16 v9, v27

    check-cast v9, Ljava/util/Map;

    move-object/from16 v27, v12

    const-string v12, "general_pk_id"

    .line 1
    invoke-static {v9, v5, v2, v12}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "null"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v2, v13}, Lcom/sgscq/vpn/handler/w;->R(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, "[Dungeon] skip invalid TeamGeneral pk_id="

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v32, v13

    const-string v13, "story_guest"

    move-object/from16 v33, v8

    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v5}, Lcom/sgscq/vpn/handler/w;->f(Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v2, v15}, Lcom/sgscq/vpn/handler/w;->R(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sgscq/vpn/handler/w;->f(Ljava/util/ArrayList;Ljava/util/Map;)V

    goto :goto_3

    :cond_3
    :goto_1
    const-string v5, "[Dungeon] skip story guest TeamGeneral pk_id="

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    :goto_2
    move-object/from16 v33, v8

    move-object/from16 v32, v13

    :goto_3
    move-object/from16 v12, v27

    move-object/from16 v14, v28

    move-object/from16 v5, v29

    move-object/from16 v2, v30

    move-object/from16 v9, v31

    move-object/from16 v13, v32

    move-object/from16 v8, v33

    goto/16 :goto_0

    :cond_5
    move-object/from16 v33, v8

    move-object/from16 v31, v9

    move-object/from16 v27, v12

    move-object/from16 v32, v13

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v12, "equipment_id"

    const-string v13, "skill_id"

    move-object/from16 v26, v14

    const-string v14, "general_id"

    move-object/from16 v34, v11

    const-string v11, "id"

    if-eqz v9, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, v5, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 p1, v8

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v35, v5

    const-string v5, "item_type"

    move-object/from16 v36, v3

    const-string v3, "type"

    .line 3
    invoke-static {v9, v5, v2, v3}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v37, 0x8

    move-object/from16 v38, v14

    .line 4
    invoke-static/range {v37 .. v37}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v37, v7

    const-string v7, "piece_id"

    move-object/from16 v39, v13

    const-string v13, "item_id"

    if-nez v14, :cond_e

    const/16 v14, 0xf

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 5
    invoke-static {v9, v5, v2, v14}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 6
    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto/16 :goto_9

    :cond_6
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v8, v1}, Lcom/sgscq/vpn/handler/w;->R(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/sgscq/vpn/handler/w;->f(Ljava/util/ArrayList;Ljava/util/Map;)V

    if-eqz v3, :cond_8

    .line 7
    invoke-static {v3, v11, v2, v12}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v12, v3, v10, v0}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    goto :goto_5

    :cond_7
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {v8, v15}, Lcom/sgscq/vpn/handler/w;->R(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sgscq/vpn/handler/w;->f(Ljava/util/ArrayList;Ljava/util/Map;)V

    if-eqz v3, :cond_8

    move-object/from16 v5, v39

    .line 9
    invoke-static {v3, v11, v2, v5}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v5, v3, v10, v0}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    :cond_8
    :goto_5
    move-object/from16 v5, v33

    move-object/from16 v14, v37

    goto :goto_6

    :cond_9
    move-object/from16 v5, v39

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 11
    invoke-static {v9, v11, v8, v13, v5}, Lc/a;->k(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v14, v37

    .line 12
    invoke-static {v3, v14}, Lcom/sgscq/vpn/handler/w;->Q(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v5, v33

    invoke-static {v5, v3}, Lcom/sgscq/vpn/handler/w;->f(Ljava/util/ArrayList;Ljava/util/Map;)V

    :goto_6
    move-object/from16 v37, v14

    move-object/from16 v33, v15

    move-object/from16 v8, v24

    move-object/from16 v3, v29

    move-object/from16 v29, v30

    move-object/from16 v14, v31

    move-object/from16 v15, v35

    move-object/from16 v30, v27

    move-object/from16 v27, v1

    move-object/from16 v1, v36

    move-object/from16 v36, v5

    goto/16 :goto_d

    :cond_a
    move-object/from16 v5, v33

    move-object/from16 v14, v37

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    move-object/from16 v7, v38

    .line 13
    invoke-static {v9, v11, v8, v13, v7}, Lc/a;->k(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v9, v27

    .line 14
    invoke-static {v3, v9}, Lcom/sgscq/vpn/handler/w;->R(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v12, v31

    invoke-static {v12, v3}, Lcom/sgscq/vpn/handler/w;->f(Ljava/util/ArrayList;Ljava/util/Map;)V

    move-object/from16 v27, v1

    move-object/from16 v3, v32

    move-object/from16 v1, v36

    goto :goto_7

    :cond_b
    move-object/from16 v9, v27

    move-object/from16 v12, v31

    move-object/from16 v7, v38

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v3, v32

    invoke-static {v8, v3}, Lcom/sgscq/vpn/handler/w;->R(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v13

    move-object/from16 v27, v1

    move-object/from16 v1, v36

    invoke-static {v1, v13}, Lcom/sgscq/vpn/handler/w;->f(Ljava/util/ArrayList;Ljava/util/Map;)V

    if-eqz v13, :cond_c

    invoke-static {v8, v15}, Lcom/sgscq/vpn/handler/w;->R(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/sgscq/vpn/handler/w;->f(Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-interface {v13, v11, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v13, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10, v0}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    :cond_c
    :goto_7
    move-object/from16 v32, v3

    move-object/from16 v36, v5

    move-object/from16 v37, v14

    move-object/from16 v33, v15

    move-object/from16 v8, v24

    move-object/from16 v3, v29

    move-object/from16 v29, v30

    move-object/from16 v15, v35

    move-object/from16 v30, v9

    goto :goto_8

    :cond_d
    move-object/from16 v27, v1

    move-object/from16 v7, v30

    move-object/from16 v3, v32

    move-object/from16 v1, v36

    invoke-static {v8, v7}, Lcom/sgscq/vpn/handler/w;->R(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v8

    move-object/from16 v11, v29

    invoke-static {v11, v8}, Lcom/sgscq/vpn/handler/w;->f(Ljava/util/ArrayList;Ljava/util/Map;)V

    move-object/from16 v36, v5

    move-object/from16 v29, v7

    move-object/from16 v30, v9

    move-object v3, v11

    move-object/from16 v37, v14

    move-object/from16 v33, v15

    move-object/from16 v8, v24

    move-object/from16 v15, v35

    :goto_8
    move-object v14, v12

    goto/16 :goto_d

    :cond_e
    :goto_9
    move-object/from16 v3, v29

    move-object/from16 v29, v30

    move-object/from16 v14, v31

    move-object/from16 v5, v33

    move-object/from16 v30, v27

    move-object/from16 v27, v1

    move-object/from16 v1, v36

    .line 15
    invoke-static {v9, v13, v8, v7}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 16
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_10

    :cond_f
    move-object/from16 v36, v5

    move-object/from16 v33, v15

    move-object/from16 v15, v35

    goto :goto_b

    :cond_10
    invoke-static {v8}, Lcom/sgscq/vpn/handler/w;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_a
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_f

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v36, v5

    move-object/from16 v5, v33

    check-cast v5, Ljava/util/Map;

    move-object/from16 v33, v15

    move-object/from16 v15, v35

    .line 17
    invoke-static {v5, v15, v2, v8}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_12

    invoke-static {v5, v13, v2, v8}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_12

    invoke-static {v5, v7, v2, v8}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_12

    invoke-static {v5, v11, v2, v9}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_12

    invoke-static {v5, v12, v2, v9}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_12

    move-object/from16 v35, v7

    const-string v7, "equip_id"

    invoke-static {v5, v7, v2, v9}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    goto :goto_c

    :cond_11
    move-object/from16 v7, v35

    move-object/from16 v5, v36

    move-object/from16 v35, v15

    move-object/from16 v15, v33

    goto :goto_a

    :goto_b
    const/4 v5, 0x0

    :cond_12
    :goto_c
    move-object/from16 v8, v24

    .line 18
    invoke-static {v8, v5}, Lcom/sgscq/vpn/handler/w;->f(Ljava/util/ArrayList;Ljava/util/Map;)V

    :goto_d
    move-object/from16 v24, v8

    move-object/from16 v31, v14

    move-object v5, v15

    move-object/from16 v14, v26

    move-object/from16 v15, v33

    move-object/from16 v11, v34

    move-object/from16 v33, v36

    move-object/from16 v7, v37

    move-object/from16 v8, p1

    move-object/from16 v40, v3

    move-object v3, v1

    move-object/from16 v1, v27

    move-object/from16 v27, v30

    move-object/from16 v30, v29

    move-object/from16 v29, v40

    goto/16 :goto_4

    :cond_13
    move-object v1, v3

    move-object v5, v13

    move-object v7, v14

    move-object/from16 v8, v24

    move-object/from16 v3, v29

    move-object/from16 v14, v31

    move-object/from16 v9, v33

    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    .line 20
    invoke-static {v15, v11, v2, v7}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 21
    invoke-static {v7, v15, v10, v0}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    goto :goto_e

    :cond_14
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    .line 22
    invoke-static {v13, v11, v2, v5}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 23
    invoke-static {v5, v13, v10, v0}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    goto :goto_f

    :cond_15
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 24
    invoke-static {v7, v11, v2, v12}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 25
    invoke-static {v12, v7, v10, v0}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    goto :goto_10

    :cond_16
    move-object/from16 v7, p2

    .line 26
    iget-object v2, v7, Lcom/sgscq/vpn/handler/v;->d:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v11, "upd"

    const-string v12, "add"

    filled-new-array {v11, v1, v12, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v13, "del"

    invoke-static {v13, v2, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    move-object/from16 v5, v17

    move-object/from16 v15, v19

    invoke-virtual {v5, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v7, Lcom/sgscq/vpn/handler/v;->e:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    filled-new-array {v11, v4, v12, v7}, [Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v15, v16

    .line 27
    invoke-static {v13, v2, v7, v5, v15}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 28
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v15, v34

    filled-new-array {v11, v15, v12, v7}, [Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, v28

    .line 29
    invoke-static {v13, v2, v7, v5, v0}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    filled-new-array {v11, v3, v12, v2}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v7, v18

    .line 31
    invoke-static {v13, v0, v2, v5, v7}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    filled-new-array {v11, v6, v12, v2}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v7, v21

    .line 33
    invoke-static {v13, v0, v2, v5, v7}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    filled-new-array {v11, v8, v12, v2}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v7, v23

    .line 35
    invoke-static {v13, v0, v2, v5, v7}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    filled-new-array {v11, v14, v12, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v13, v0, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object/from16 v2, v20

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/w;->H(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    filled-new-array {v11, v9, v12, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v13, v0, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object/from16 v2, v25

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    filled-new-array {v11, v10, v12, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v13, v0, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v2, "Atlas"

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[Dungeon] delta team="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " generals="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " skills="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " equips="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " equipPieces="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " souls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " skillPieces="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " atlas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v26

    invoke-static {v1, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method public static t0(Ljava/util/Map;Lcom/sgscq/vpn/w1;Ljava/lang/String;IILjava/lang/String;ZZZZ)Lcom/sgscq/vpn/battle/BattleUnit;
    .locals 1

    .line 1
    new-instance v0, Lcom/sgscq/vpn/handler/e;

    .line 2
    .line 3
    invoke-direct {v0, p2, p3, p4}, Lcom/sgscq/vpn/handler/e;-><init>(Ljava/lang/String;II)V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/sgscq/vpn/handler/e;->d:Ljava/util/Map;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/sgscq/vpn/handler/e;->f:Lcom/sgscq/vpn/w1;

    .line 9
    .line 10
    iput-object p5, v0, Lcom/sgscq/vpn/handler/e;->g:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean p6, v0, Lcom/sgscq/vpn/handler/e;->h:Z

    .line 13
    .line 14
    iput-boolean p7, v0, Lcom/sgscq/vpn/handler/e;->i:Z

    .line 15
    .line 16
    if-eqz p7, :cond_1

    .line 17
    .line 18
    if-eqz p8, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 24
    :goto_1
    iput-boolean p0, v0, Lcom/sgscq/vpn/handler/e;->j:Z

    .line 25
    .line 26
    iput-boolean p8, v0, Lcom/sgscq/vpn/handler/e;->k:Z

    .line 27
    .line 28
    iput-boolean p9, v0, Lcom/sgscq/vpn/handler/e;->l:Z

    .line 29
    .line 30
    const-wide p1, 0x407f400000000000L    # 500.0

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    const-wide p3, 0x4072c00000000000L    # 300.0

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    const-wide/high16 p5, 0x4069000000000000L    # 200.0

    .line 41
    .line 42
    move-object p0, v0

    .line 43
    invoke-virtual/range {p0 .. p6}, Lcom/sgscq/vpn/handler/e;->a(DDD)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lcom/sgscq/vpn/handler/f;->a(Lcom/sgscq/vpn/handler/e;)Lcom/sgscq/vpn/battle/BattleUnit;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method public static u(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 9

    .line 1
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v8

    .line 15
    const-string v4, "grade"

    .line 16
    .line 17
    const-string v2, "resource_id"

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const-string v6, "0"

    .line 32
    .line 33
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_0

    .line 38
    .line 39
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move-object v3, p1

    .line 45
    :goto_0
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    :try_start_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    move v5, v0

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move-object v3, p1

    .line 62
    :catch_0
    :cond_2
    move v5, v1

    .line 63
    :goto_1
    const-string v0, "id"

    .line 64
    .line 65
    invoke-interface {v7, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    const-string v0, "general_id"

    .line 69
    .line 70
    invoke-interface {v7, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-string v1, "general_name"

    .line 82
    .line 83
    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    const-string v0, "general_level"

    .line 87
    .line 88
    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    const-string v0, "general_naturalskill_id"

    .line 92
    .line 93
    invoke-interface {v7, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const-string v6, "general_quality"

    .line 97
    .line 98
    move-object v0, v7

    .line 99
    move-object v1, v2

    .line 100
    move-object v2, v3

    .line 101
    move v3, v5

    .line 102
    invoke-static/range {v0 .. v6}, Lc/a;->z(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v0, "general_star"

    .line 106
    .line 107
    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    const-string v0, "card_type"

    .line 111
    .line 112
    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    const-string v0, "general_painting_id"

    .line 116
    .line 117
    invoke-interface {v7, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v1, "dialogname"

    .line 123
    .line 124
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string p1, "01"

    .line 131
    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->Y0(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-static {p0}, Lcom/sgscq/vpn/p5;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    const-string p1, "dialog"

    .line 148
    .line 149
    invoke-interface {v7, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    return-object v7
.end method

.method public static u0(Ljava/lang/String;ILjava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 3

    .line 1
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "hpCur"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hpMax"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x4

    const-string v1, "name"

    aput-object v1, v0, p1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    const/4 p1, 0x5

    aput-object p2, v0, p1

    const-string p1, "id"

    invoke-static {p1, p0, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/lang/String;I)Ljava/util/LinkedHashMap;
    .locals 9

    .line 1
    const-string v0, "pk_id"

    .line 2
    .line 3
    const-string v1, "id"

    .line 4
    .line 5
    invoke-static {v0, p0, v1, p0}, Lc/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "general_id"

    .line 10
    .line 11
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    const-string v3, "item_id"

    .line 15
    .line 16
    const-string v6, "num"

    .line 17
    .line 18
    const-string v8, "item_num"

    .line 19
    .line 20
    move-object v2, v0

    .line 21
    move-object v4, p0

    .line 22
    move v5, p1

    .line 23
    move v7, p1

    .line 24
    invoke-static/range {v2 .. v8}, Lc/a;->z(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x6

    .line 28
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string p1, "item_type"

    .line 33
    .line 34
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const-string p1, "type"

    .line 38
    .line 39
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    const-string p0, "is_new"

    .line 43
    .line 44
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public static v0(ILjava/util/Map;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_4

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "init"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_1

    return-void

    :cond_1
    check-cast p1, Ljava/util/Map;

    const-string v0, "cards_size0"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    move-result v0

    const-string v1, "cards"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/util/List;

    if-nez v1, :cond_2

    return-void

    :cond_2
    check-cast p1, Ljava/util/List;

    add-int/2addr p0, v0

    if-lt p0, v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p0, v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_4

    check-cast p0, Ljava/util/Map;

    const-string p1, "isBoss"

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    return-void
.end method

.method public static w(ILjava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 8

    .line 1
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "pk_id"

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-interface {v7, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-string p2, "id"

    .line 22
    .line 23
    invoke-interface {v7, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    const-string v1, "item_id"

    .line 27
    .line 28
    const-string v4, "num"

    .line 29
    .line 30
    const-string v6, "item_num"

    .line 31
    .line 32
    move-object v0, v7

    .line 33
    move-object v2, p1

    .line 34
    move v3, p0

    .line 35
    move v5, p0

    .line 36
    invoke-static/range {v0 .. v6}, Lc/a;->z(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x5

    .line 40
    const-string v2, "type"

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    const-string v4, "level"

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    const-string v6, "effect_time"

    .line 47
    .line 48
    move-object v1, v7

    .line 49
    invoke-static/range {v0 .. v6}, Lc/a;->s(ILjava/util/LinkedHashMap;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string p0, "is_new"

    .line 53
    .line 54
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-interface {v7, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    return-object v7
.end method

.method public static x(Ljava/util/ArrayList;Ljava/util/List;Lcom/sgscq/vpn/w1;I)Ljava/util/ArrayList;
    .locals 28

    .line 1
    move/from16 v0, p3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    div-int v7, v0, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v9, v0, :cond_b

    if-ge v10, v6, :cond_b

    add-int/lit8 v11, v0, -0x1

    if-eq v9, v11, :cond_2

    add-int/lit8 v11, v6, -0x1

    if-ne v10, v11, :cond_1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    move v11, v4

    :goto_3
    if-nez v11, :cond_4

    rem-int/lit8 v12, v9, 0x2

    if-nez v12, :cond_3

    goto :goto_4

    :cond_3
    const/4 v12, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    move v12, v4

    :goto_5
    const-string v14, "from"

    const-string v15, "to"

    const-string v13, "hpCur"

    if-eqz v12, :cond_9

    move-object/from16 v12, p1

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v12, p2

    invoke-static {v12, v8, v4}, Lcom/sgscq/vpn/handler/w;->M0(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/util/Map;)I

    move-result v4

    rem-int v8, v9, v3

    add-int v18, v3, v10

    if-nez v11, :cond_6

    mul-int/lit8 v11, v7, 0x2

    rem-int v12, v9, v11

    const/4 v0, 0x1

    sub-int/2addr v11, v0

    if-lt v12, v11, :cond_5

    goto :goto_6

    :cond_5
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v11

    div-int v11, v4, v11

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v12, v4, -0x1

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    sub-int v12, v4, v11

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/16 v19, 0x0

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    :goto_6
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    move/from16 v19, v0

    const/4 v12, 0x0

    :goto_7
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const-string v20, "hpMax"

    const/16 v17, 0x0

    aput-object v20, v0, v17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v16, 0x1

    aput-object v4, v0, v16

    const-string v4, "hp"

    const/16 v20, 0x2

    aput-object v4, v0, v20

    const/4 v4, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v0, v4

    const/4 v4, 0x4

    const-string v11, "event"

    aput-object v11, v0, v4

    if-eqz v19, :cond_7

    const-string v4, "death"

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_8

    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_8
    const/4 v11, 0x5

    aput-object v4, v0, v11

    const/4 v4, 0x6

    const-string v11, "cure"

    aput-object v11, v0, v4

    const/4 v4, 0x7

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v0, v4

    invoke-static {v13, v12, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v15, v0, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v27

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v20, "to"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    const-string v22, "skill"

    const-string v23, "Attack_Knife"

    const-string v24, "type"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const-string v26, "params"

    filled-new-array/range {v20 .. v27}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v0, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v19, :cond_8

    add-int/lit8 v10, v10, 0x1

    :cond_8
    move-object/from16 v18, v2

    move/from16 p0, v3

    const/4 v3, 0x0

    const/4 v12, 0x1

    goto/16 :goto_9

    :cond_9
    if-lt v10, v6, :cond_a

    goto/16 :goto_a

    :cond_a
    add-int v0, v3, v10

    rem-int v4, v9, v3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit8 v12, p3, 0x1

    move-object/from16 v18, v2

    const/4 v2, 0x2

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int v2, v8, v2

    const/4 v12, 0x1

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 p0, v3

    add-int/lit8 v3, v11, -0x1

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v11, v2

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v4, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v19, "hpMax"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string v21, "hp"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const-string v23, "event"

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    const-string v25, "cure"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    filled-new-array/range {v19 .. v26}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v13, v3, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v15, v2, v8}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v26

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v19, "to"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    const-string v21, "skill"

    const-string v22, "Attack_Knife"

    const-string v23, "type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const-string v25, "params"

    filled-new-array/range {v19 .. v26}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v14, v0, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, p0

    move/from16 v0, p3

    move v4, v12

    move-object/from16 v2, v18

    goto/16 :goto_1

    :cond_b
    :goto_a
    return-object v1
.end method

.method public static x0(Ljava/util/Map;Ljava/util/Map;Lcom/sgscq/vpn/w1;)Ljava/util/LinkedHashMap;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const-string p0, "battle_skills"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_6

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "gSkill"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_2

    check-cast v3, Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "skill_level"

    filled-new-array {v5, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "skill_id"

    invoke-static {v5, v3, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string p0, "battle_lieutenants"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_c

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "bound_lieutenants"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_7

    check-cast v2, Ljava/util/List;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "general_id"

    invoke-static {v4, v2, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {p2, v2}, Lcom/sgscq/vpn/w1;->T0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "general_naturalskill_id"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-object v0
.end method

.method public static y(ILjava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 8

    .line 1
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    const-string v1, "pk_id"

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-interface {v7, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const-string p2, "id"

    .line 25
    .line 26
    invoke-interface {v7, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const-string p2, "skill_id"

    .line 30
    .line 31
    invoke-interface {v7, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v1, "item_id"

    .line 35
    .line 36
    const-string v4, "num"

    .line 37
    .line 38
    const-string v6, "skill_piece_num"

    .line 39
    .line 40
    move-object v0, v7

    .line 41
    move-object v2, p1

    .line 42
    move v3, p0

    .line 43
    move v5, p0

    .line 44
    invoke-static/range {v0 .. v6}, Lc/a;->z(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string p1, "item_num"

    .line 48
    .line 49
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-interface {v7, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x7

    .line 57
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string p2, "item_type"

    .line 62
    .line 63
    invoke-interface {v7, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    const-string p1, "type"

    .line 67
    .line 68
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-interface {v7, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    const/4 p0, 0x1

    .line 76
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string p1, "level"

    .line 81
    .line 82
    invoke-interface {v7, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    const-string p0, "is_new"

    .line 86
    .line 87
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-interface {v7, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    return-object v7
.end method

.method public static y0(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/handler/w;->B0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/w;->T0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "105"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x5

    :try_start_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "%03d"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    add-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v4

    invoke-static {v1, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static z(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/LinkedHashMap;
    .locals 8

    .line 1
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "pk_id"

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {v7, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-string p1, "id"

    .line 22
    .line 23
    invoke-interface {v7, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    const-string p1, "skill_id"

    .line 27
    .line 28
    invoke-interface {v7, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string v1, "item_id"

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    const-string v4, "num"

    .line 35
    .line 36
    const-string v6, "item_num"

    .line 37
    .line 38
    move-object v0, v7

    .line 39
    move-object v2, p0

    .line 40
    move v3, p1

    .line 41
    move v5, p1

    .line 42
    invoke-static/range {v0 .. v6}, Lc/a;->z(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 v3, 0x4

    .line 46
    const-string v2, "item_type"

    .line 47
    .line 48
    const-string v4, "type"

    .line 49
    .line 50
    const-string v6, "level"

    .line 51
    .line 52
    move v0, v3

    .line 53
    move-object v1, v7

    .line 54
    invoke-static/range {v0 .. v6}, Lc/a;->s(ILjava/util/LinkedHashMap;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string p0, "is_new"

    .line 58
    .line 59
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-interface {v7, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    return-object v7
.end method

.method public static z0(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/handler/w;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "5\\d{5}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "%03d"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    add-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-static {v1, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final C(Ljava/util/Map;)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    const-string v1, "roleLevel"

    .line 14
    .line 15
    const-string v2, "role_level"

    .line 16
    .line 17
    const-string v3, "user_level"

    .line 18
    .line 19
    const-string v4, "level"

    .line 20
    .line 21
    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    move v3, v2

    .line 27
    :goto_0
    const/4 v4, 0x4

    .line 28
    if-ge v3, v4, :cond_2

    .line 29
    .line 30
    aget-object v4, v1, v3

    .line 31
    .line 32
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v4, 0x0

    .line 53
    :goto_1
    const/4 p1, 0x1

    .line 54
    invoke-static {v4, p1}, Lcom/sgscq/vpn/cloud/m0;->h1(Ljava/lang/Object;I)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-virtual {v0}, Lcom/sgscq/vpn/w1;->X1()V

    .line 63
    .line 64
    .line 65
    iget-object v0, v0, Lcom/sgscq/vpn/w1;->E:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-static {p1, v0}, Lcom/sgscq/vpn/w1;->J2(ILjava/util/ArrayList;)Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-nez p1, :cond_3

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_3
    const-string v0, "ladder_fight_general_exp"

    .line 75
    .line 76
    const-string v1, "0"

    .line 77
    .line 78
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 87
    .line 88
    .line 89
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_2

    .line 91
    :catch_0
    const-wide/16 v0, 0x0

    .line 92
    .line 93
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    long-to-int p1, v0

    .line 98
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    :goto_3
    if-gtz v2, :cond_4

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_4
    int-to-long v0, v2

    .line 106
    const-wide/16 v2, 0x4e22

    .line 107
    .line 108
    mul-long/2addr v0, v2

    .line 109
    const-wide/32 v2, 0x20b70

    .line 110
    .line 111
    .line 112
    add-long/2addr v0, v2

    .line 113
    const-wide/32 v2, 0x416e0

    .line 114
    .line 115
    .line 116
    div-long/2addr v0, v2

    .line 117
    const-wide/16 v2, 0x3e8

    .line 118
    .line 119
    mul-long/2addr v0, v2

    .line 120
    const-wide/16 v2, 0x4

    .line 121
    .line 122
    mul-long/2addr v0, v2

    .line 123
    const-wide/16 v2, 0x64

    .line 124
    .line 125
    cmp-long p1, v0, v2

    .line 126
    .line 127
    if-gez p1, :cond_5

    .line 128
    .line 129
    :goto_4
    const/16 p1, 0x64

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_5
    const-wide/32 v2, 0x7fffffff

    .line 133
    .line 134
    .line 135
    cmp-long p1, v0, v2

    .line 136
    .line 137
    if-lez p1, :cond_6

    .line 138
    .line 139
    const p1, 0x7fffffff

    .line 140
    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_6
    long-to-int p1, v0

    .line 144
    :goto_5
    return p1
.end method

.method public final F(Ljava/lang/String;IIILcom/sgscq/vpn/handler/t;)[D
    .locals 22

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/w;->k0(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v5, 0x4

    .line 10
    iget v6, v1, Lcom/sgscq/vpn/handler/t;->a:I

    .line 11
    .line 12
    const/4 v7, 0x3

    .line 13
    const/4 v8, 0x0

    .line 14
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 15
    .line 16
    const/4 v11, 0x1

    .line 17
    if-eqz v2, :cond_13

    .line 18
    .line 19
    move-object/from16 v2, p0

    .line 20
    .line 21
    iget-object v0, v2, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 28
    .line 29
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/w;->k0(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/w;->T0(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/w1;->x0(Ljava/lang/String;)Ljava/util/HashMap;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 51
    .line 52
    const-string v12, "hidden"

    .line 53
    .line 54
    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    move v0, v11

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    :goto_1
    move v0, v8

    .line 67
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/w;->T0(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1}, Lcom/sgscq/vpn/handler/w;->A0(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v1}, Lcom/sgscq/vpn/handler/w;->k0(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v12

    .line 79
    const/16 v15, 0x17

    .line 80
    .line 81
    const/16 v13, 0xe

    .line 82
    .line 83
    const/16 v14, 0x8

    .line 84
    .line 85
    const/4 v3, 0x5

    .line 86
    if-eqz v12, :cond_8

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 89
    .line 90
    .line 91
    move-result v12

    .line 92
    if-ge v12, v14, :cond_3

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_3
    :try_start_0
    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v12

    .line 99
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    invoke-virtual {v1, v3, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    if-lez v12, :cond_8

    .line 112
    .line 113
    if-gtz v1, :cond_4

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_4
    move v7, v11

    .line 117
    :goto_3
    if-ge v7, v12, :cond_9

    .line 118
    .line 119
    if-gt v7, v5, :cond_5

    .line 120
    .line 121
    move/from16 v16, v3

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_5
    if-gt v7, v13, :cond_6

    .line 125
    .line 126
    const/16 v16, 0x6

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_6
    if-gt v7, v15, :cond_7

    .line 130
    .line 131
    const/16 v16, 0x7

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_7
    move/from16 v16, v14

    .line 135
    .line 136
    :goto_4
    add-int v1, v1, v16

    .line 137
    .line 138
    add-int/lit8 v7, v7, 0x1

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :catch_0
    :cond_8
    :goto_5
    move v1, v8

    .line 142
    :cond_9
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    sub-int/2addr v1, v11

    .line 147
    int-to-double v11, v1

    .line 148
    const-wide/high16 v16, 0x3fd0000000000000L    # 0.25

    .line 149
    .line 150
    mul-double v11, v11, v16

    .line 151
    .line 152
    add-double/2addr v11, v9

    .line 153
    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    .line 154
    .line 155
    mul-double v11, v11, v16

    .line 156
    .line 157
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/w;->K(Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    div-int/lit8 v7, v1, 0xa

    .line 162
    .line 163
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    const-wide/high16 v8, 0x3ff4000000000000L    # 1.25

    .line 168
    .line 169
    int-to-double v4, v7

    .line 170
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 171
    .line 172
    .line 173
    move-result-wide v4

    .line 174
    mul-double/2addr v4, v11

    .line 175
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/w;->T0(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    invoke-static {v7}, Lcom/sgscq/vpn/handler/w;->A0(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    invoke-static {v7}, Lcom/sgscq/vpn/handler/w;->k0(Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result v8

    .line 187
    if-eqz v8, :cond_b

    .line 188
    .line 189
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    if-ge v8, v14, :cond_a

    .line 194
    .line 195
    goto :goto_6

    .line 196
    :cond_a
    :try_start_1
    invoke-virtual {v7, v3, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    if-lez v7, :cond_b

    .line 205
    .line 206
    goto :goto_7

    .line 207
    :catch_1
    :cond_b
    :goto_6
    const/4 v7, 0x1

    .line 208
    :goto_7
    const/4 v8, 0x4

    .line 209
    if-gt v1, v8, :cond_c

    .line 210
    .line 211
    move v13, v3

    .line 212
    goto :goto_8

    .line 213
    :cond_c
    if-gt v1, v13, :cond_d

    .line 214
    .line 215
    const/4 v13, 0x6

    .line 216
    goto :goto_8

    .line 217
    :cond_d
    if-gt v1, v15, :cond_e

    .line 218
    .line 219
    const/4 v13, 0x7

    .line 220
    goto :goto_8

    .line 221
    :cond_e
    move v13, v14

    .line 222
    :goto_8
    const-string v3, "1053500801"

    .line 223
    .line 224
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/w;->T0(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    if-eqz v3, :cond_f

    .line 233
    .line 234
    const-wide v7, 0x41512a8800000000L    # 4500000.0

    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    move-wide v13, v7

    .line 240
    goto :goto_a

    .line 241
    :cond_f
    const/16 v3, 0x36

    .line 242
    .line 243
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    const/4 v8, 0x1

    .line 248
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->u(I)D

    .line 253
    .line 254
    .line 255
    move-result-wide v9

    .line 256
    if-eq v1, v3, :cond_11

    .line 257
    .line 258
    if-gt v13, v8, :cond_10

    .line 259
    .line 260
    goto :goto_9

    .line 261
    :cond_10
    invoke-static {v13, v7}, Ljava/lang/Math;->min(II)I

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    int-to-double v11, v3

    .line 270
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 271
    .line 272
    sub-double/2addr v11, v14

    .line 273
    move-wide/from16 p1, v9

    .line 274
    .line 275
    int-to-double v8, v13

    .line 276
    sub-double/2addr v8, v14

    .line 277
    div-double/2addr v11, v8

    .line 278
    const/4 v3, 0x1

    .line 279
    add-int/2addr v1, v3

    .line 280
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->u(I)D

    .line 281
    .line 282
    .line 283
    move-result-wide v8

    .line 284
    move-wide/from16 v13, p1

    .line 285
    .line 286
    div-double/2addr v8, v13

    .line 287
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 288
    .line 289
    .line 290
    move-result-wide v8

    .line 291
    mul-double/2addr v8, v13

    .line 292
    move-wide v13, v8

    .line 293
    goto :goto_a

    .line 294
    :cond_11
    :goto_9
    move-wide v13, v9

    .line 295
    :goto_a
    int-to-double v8, v6

    .line 296
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 297
    .line 298
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    .line 299
    .line 300
    .line 301
    move-result-wide v8

    .line 302
    div-double/2addr v13, v8

    .line 303
    if-eqz v0, :cond_12

    .line 304
    .line 305
    mul-double v16, v16, v4

    .line 306
    .line 307
    goto :goto_b

    .line 308
    :cond_12
    move-wide/from16 v16, v4

    .line 309
    .line 310
    :goto_b
    const/4 v0, 0x4

    .line 311
    new-array v0, v0, [D

    .line 312
    .line 313
    const/4 v1, 0x0

    .line 314
    aput-wide v13, v0, v1

    .line 315
    .line 316
    const/4 v1, 0x1

    .line 317
    aput-wide v16, v0, v1

    .line 318
    .line 319
    const/4 v1, 0x2

    .line 320
    aput-wide v4, v0, v1

    .line 321
    .line 322
    const/4 v1, 0x3

    .line 323
    aput-wide v16, v0, v1

    .line 324
    .line 325
    return-object v0

    .line 326
    :cond_13
    move-object/from16 v2, p0

    .line 327
    .line 328
    int-to-double v3, v6

    .line 329
    iget v5, v1, Lcom/sgscq/vpn/handler/t;->b:I

    .line 330
    .line 331
    int-to-double v5, v5

    .line 332
    iget v8, v1, Lcom/sgscq/vpn/handler/t;->c:I

    .line 333
    .line 334
    int-to-double v8, v8

    .line 335
    iget v1, v1, Lcom/sgscq/vpn/handler/t;->d:I

    .line 336
    .line 337
    int-to-double v11, v1

    .line 338
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 339
    .line 340
    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(DD)D

    .line 341
    .line 342
    .line 343
    move-result-wide v3

    .line 344
    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->max(DD)D

    .line 345
    .line 346
    .line 347
    move-result-wide v5

    .line 348
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(DD)D

    .line 349
    .line 350
    .line 351
    move-result-wide v8

    .line 352
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(DD)D

    .line 353
    .line 354
    .line 355
    move-result-wide v11

    .line 356
    invoke-static/range {p2 .. p4}, Lcom/sgscq/vpn/p5;->q1(III)D

    .line 357
    .line 358
    .line 359
    move-result-wide v16

    .line 360
    div-double v16, v16, v3

    .line 361
    .line 362
    sget-object v1, Lcom/sgscq/vpn/p5;->Q:[D

    .line 363
    .line 364
    const/4 v7, 0x1

    .line 365
    aget-wide v18, v1, v7

    .line 366
    .line 367
    const/16 v1, 0x36

    .line 368
    .line 369
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    move-wide/from16 v13, v18

    .line 378
    .line 379
    const/4 v10, 0x1

    .line 380
    :goto_c
    if-ge v10, v1, :cond_14

    .line 381
    .line 382
    move-wide/from16 v20, v8

    .line 383
    .line 384
    invoke-static {v10}, Lcom/sgscq/vpn/p5;->t(I)D

    .line 385
    .line 386
    .line 387
    move-result-wide v7

    .line 388
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(DD)D

    .line 389
    .line 390
    .line 391
    move-result-wide v13

    .line 392
    add-int/lit8 v10, v10, 0x1

    .line 393
    .line 394
    move-wide/from16 v8, v20

    .line 395
    .line 396
    goto :goto_c

    .line 397
    :cond_14
    move/from16 v7, p3

    .line 398
    .line 399
    move-wide/from16 v20, v8

    .line 400
    .line 401
    move/from16 v8, p4

    .line 402
    .line 403
    invoke-static {v1, v7, v8}, Lcom/sgscq/vpn/p5;->q1(III)D

    .line 404
    .line 405
    .line 406
    move-result-wide v7

    .line 407
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(DD)D

    .line 408
    .line 409
    .line 410
    move-result-wide v7

    .line 411
    div-double/2addr v7, v3

    .line 412
    const-wide v9, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(DD)D

    .line 418
    .line 419
    .line 420
    move-result-wide v7

    .line 421
    const-wide v9, 0x411fbd0000000000L    # 520000.0

    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    div-double/2addr v9, v3

    .line 427
    const-wide v3, 0x4101170000000000L    # 140000.0

    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    div-double v5, v3, v5

    .line 433
    .line 434
    invoke-static {v9, v10, v5, v6}, Lcom/sgscq/vpn/p5;->s(DD)D

    .line 435
    .line 436
    .line 437
    move-result-wide v5

    .line 438
    div-double/2addr v3, v11

    .line 439
    invoke-static {v9, v10, v3, v4}, Lcom/sgscq/vpn/p5;->s(DD)D

    .line 440
    .line 441
    .line 442
    move-result-wide v3

    .line 443
    const-wide v11, 0x40f5f90000000000L    # 90000.0

    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    div-double v11, v11, v20

    .line 449
    .line 450
    const-wide v13, 0x3ffb0a3d70a3d70bL    # 1.6900000000000002

    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    div-double/2addr v11, v13

    .line 456
    invoke-static {v9, v10, v11, v12}, Lcom/sgscq/vpn/p5;->s(DD)D

    .line 457
    .line 458
    .line 459
    move-result-wide v9

    .line 460
    const/4 v1, 0x4

    .line 461
    new-array v1, v1, [D

    .line 462
    .line 463
    const/4 v11, 0x0

    .line 464
    aput-wide v16, v1, v11

    .line 465
    .line 466
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 467
    .line 468
    .line 469
    move-result-wide v5

    .line 470
    const/4 v11, 0x1

    .line 471
    aput-wide v5, v1, v11

    .line 472
    .line 473
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 474
    .line 475
    .line 476
    move-result-wide v5

    .line 477
    const/16 v9, 0x1d

    .line 478
    .line 479
    const-wide v10, 0x3ff4cccccccccccdL    # 1.3

    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    if-lt v0, v9, :cond_15

    .line 485
    .line 486
    move-wide/from16 v18, v10

    .line 487
    .line 488
    goto :goto_d

    .line 489
    :cond_15
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 490
    .line 491
    :goto_d
    const/16 v9, 0x25

    .line 492
    .line 493
    if-lt v0, v9, :cond_16

    .line 494
    .line 495
    mul-double v18, v18, v10

    .line 496
    .line 497
    :cond_16
    mul-double v5, v5, v18

    .line 498
    .line 499
    const/4 v0, 0x2

    .line 500
    aput-wide v5, v1, v0

    .line 501
    .line 502
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 503
    .line 504
    .line 505
    move-result-wide v3

    .line 506
    const/4 v0, 0x3

    .line 507
    aput-wide v3, v1, v0

    .line 508
    .line 509
    return-object v1
.end method

.method public final I(Ljava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v0

    invoke-static {p1}, Lcom/sgscq/vpn/handler/w;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/w1;->l0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/sgscq/vpn/handler/w;->T0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sgscq/vpn/handler/w;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/sgscq/vpn/handler/w;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/2addr v1, v3

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/sgscq/vpn/handler/w;->G(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_2

    move v3, p1

    :cond_2
    return v3
.end method

.method public final N0(Ljava/util/Map;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    const/4 v1, 0x1

    const-string v2, "roleLevel"

    invoke-virtual {v0, v1, v2, p1}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    const-string v2, "level"

    invoke-virtual {v0, v1, v2, p1}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    const-string v2, "user_level"

    invoke-virtual {v0, v1, v2, p1}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result p1

    return p1
.end method

.method public final Q0(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sgscq/vpn/handler/x;->A(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-virtual {v0, p1, p2}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final V(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/k;
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/sgscq/vpn/handler/w;->T0(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/w1;->v0(Ljava/lang/String;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x3

    .line 22
    const/4 v5, 0x1

    .line 23
    const/4 v6, 0x0

    .line 24
    if-nez v3, :cond_10

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const-string p1, "105"

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const/4 v3, 0x5

    .line 41
    if-lt p1, v3, :cond_0

    .line 42
    .line 43
    :try_start_0
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    :cond_0
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-lt p1, v4, :cond_1

    .line 59
    .line 60
    :try_start_1
    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    add-int/lit16 p1, p1, -0x1f4

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_1
    :cond_1
    move p1, v6

    .line 72
    :goto_0
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/w1;->x0(Ljava/lang/String;)Ljava/util/HashMap;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v0, :cond_6

    .line 81
    .line 82
    if-gtz v1, :cond_2

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_2
    const-string v3, "battle_effects"

    .line 86
    .line 87
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    instance-of v3, v0, Ljava/util/List;

    .line 92
    .line 93
    if-nez v3, :cond_3

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    check-cast v0, Ljava/util/List;

    .line 102
    .line 103
    move v7, v6

    .line 104
    :goto_1
    if-ge v7, v1, :cond_7

    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-ge v7, v8, :cond_4

    .line 111
    .line 112
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    goto :goto_2

    .line 117
    :cond_4
    const/4 v8, 0x0

    .line 118
    :goto_2
    instance-of v9, v8, Ljava/util/Map;

    .line 119
    .line 120
    if-eqz v9, :cond_5

    .line 121
    .line 122
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 123
    .line 124
    check-cast v8, Ljava/util/Map;

    .line 125
    .line 126
    invoke-direct {v9, v8}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    :goto_3
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    add-int/lit8 v7, v7, 0x1

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_6
    :goto_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_8

    .line 149
    .line 150
    new-instance p1, Lcom/sgscq/vpn/cloud/k;

    .line 151
    .line 152
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-direct {p1, v0, v1}, Lcom/sgscq/vpn/cloud/k;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 161
    .line 162
    .line 163
    goto :goto_9

    .line 164
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-interface {v2, v6, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 179
    .line 180
    .line 181
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-le v4, v0, :cond_9

    .line 186
    .line 187
    new-instance v4, Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    invoke-interface {v2, v0, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 198
    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    :goto_5
    const/16 v7, 0x32

    .line 206
    .line 207
    if-lt p1, v7, :cond_a

    .line 208
    .line 209
    move p1, v6

    .line 210
    goto :goto_6

    .line 211
    :cond_a
    move p1, v5

    .line 212
    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    const/4 v8, -0x1

    .line 217
    if-le v7, p1, :cond_d

    .line 218
    .line 219
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    check-cast v2, Ljava/lang/String;

    .line 224
    .line 225
    if-eqz v2, :cond_c

    .line 226
    .line 227
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    const-string v7, "164\\d{3}"

    .line 232
    .line 233
    invoke-virtual {v2, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-eqz v2, :cond_b

    .line 238
    .line 239
    goto :goto_7

    .line 240
    :cond_b
    move v5, v6

    .line 241
    :cond_c
    :goto_7
    if-eqz v5, :cond_e

    .line 242
    .line 243
    :cond_d
    move p1, v8

    .line 244
    :cond_e
    if-lt p1, v0, :cond_f

    .line 245
    .line 246
    goto :goto_8

    .line 247
    :cond_f
    move v8, p1

    .line 248
    :goto_8
    new-instance p1, Lcom/sgscq/vpn/cloud/k;

    .line 249
    .line 250
    invoke-direct {p1, v8, v1, v4, v3}, Lcom/sgscq/vpn/cloud/k;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 251
    .line 252
    .line 253
    :goto_9
    return-object p1

    .line 254
    :cond_10
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    add-int/lit16 p1, p1, -0x1f4

    .line 263
    .line 264
    if-ge p1, v5, :cond_11

    .line 265
    .line 266
    goto :goto_a

    .line 267
    :cond_11
    move v5, p1

    .line 268
    :goto_a
    invoke-static {v5}, Lcom/sgscq/vpn/w1;->q0(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    const/4 v0, 0x2

    .line 273
    if-gt v5, v0, :cond_12

    .line 274
    .line 275
    new-instance v0, Lcom/sgscq/vpn/cloud/k;

    .line 276
    .line 277
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-direct {v0, p1, v1}, Lcom/sgscq/vpn/cloud/k;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 286
    .line 287
    .line 288
    return-object v0

    .line 289
    :cond_12
    const/4 v0, 0x4

    .line 290
    if-gt v5, v0, :cond_13

    .line 291
    .line 292
    new-instance v0, Ljava/util/ArrayList;

    .line 293
    .line 294
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    add-int/lit8 v5, v5, 0x7

    .line 301
    .line 302
    invoke-static {v5}, Lcom/sgscq/vpn/w1;->q0(I)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    new-instance p1, Lcom/sgscq/vpn/cloud/k;

    .line 310
    .line 311
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-direct {p1, v0, v1}, Lcom/sgscq/vpn/cloud/k;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 316
    .line 317
    .line 318
    return-object p1

    .line 319
    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    .line 320
    .line 321
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    add-int/lit8 p1, v5, 0x7

    .line 328
    .line 329
    invoke-static {p1}, Lcom/sgscq/vpn/w1;->q0(I)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    add-int/lit8 v5, v5, 0xb

    .line 337
    .line 338
    invoke-static {v5}, Lcom/sgscq/vpn/w1;->q0(I)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    new-instance p1, Lcom/sgscq/vpn/cloud/k;

    .line 346
    .line 347
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-direct {p1, v0, v1}, Lcom/sgscq/vpn/cloud/k;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 352
    .line 353
    .line 354
    return-object p1
.end method

.method public final V0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, ""

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_7

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p1, p2}, Lcom/sgscq/vpn/handler/w;->U0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_11

    .line 24
    .line 25
    const-string v2, "item_type"

    .line 26
    .line 27
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, -0x1

    .line 32
    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/16 v3, 0x1f

    .line 37
    .line 38
    if-eq v2, v3, :cond_1

    .line 39
    .line 40
    goto/16 :goto_6

    .line 41
    .line 42
    :cond_1
    const-string p2, "resource_id"

    .line 43
    .line 44
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p0, p2}, Lcom/sgscq/vpn/handler/w;->q0(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    return-object p2

    .line 59
    :cond_2
    const-string p2, "name"

    .line 60
    .line 61
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {p1, v0}, Lcom/sgscq/vpn/handler/w;->E(Lcom/sgscq/vpn/w1;Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    return-object v1

    .line 76
    :cond_3
    const-string v2, "docs/game_data_json/generals.json"

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_4

    .line 87
    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    .line 91
    .line 92
    if-eqz v3, :cond_5

    .line 93
    .line 94
    iget-object v3, v3, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 95
    .line 96
    const-string v4, "generals.json"

    .line 97
    .line 98
    invoke-static {v3, v4}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    goto :goto_0

    .line 103
    :cond_5
    invoke-static {v2}, Lcom/sgscq/vpn/handler/w;->O0(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 108
    :catch_0
    invoke-static {v2}, Lcom/sgscq/vpn/handler/w;->O0(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    :goto_0
    if-eqz v2, :cond_f

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_6

    .line 123
    .line 124
    goto/16 :goto_3

    .line 125
    .line 126
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    :try_start_1
    new-instance v4, La/o;

    .line 132
    .line 133
    invoke-direct {v4}, La/o;-><init>()V

    .line 134
    .line 135
    .line 136
    const-class v5, Ljava/lang/Object;

    .line 137
    .line 138
    invoke-virtual {v4, v2, v5}, La/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    instance-of v4, v2, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    .line 144
    const-string v5, "id"

    .line 145
    .line 146
    if-eqz v4, :cond_a

    .line 147
    .line 148
    :try_start_2
    check-cast v2, Ljava/util/Map;

    .line 149
    .line 150
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-eqz v4, :cond_e

    .line 163
    .line 164
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    check-cast v4, Ljava/util/Map$Entry;

    .line 169
    .line 170
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    instance-of v6, v6, Ljava/util/Map;

    .line 175
    .line 176
    if-nez v6, :cond_8

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_8
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    check-cast v6, Ljava/util/Map;

    .line 184
    .line 185
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    invoke-virtual {p0, v6}, Lcom/sgscq/vpn/handler/w;->q0(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    if-nez v7, :cond_9

    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_9
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    check-cast v4, Ljava/util/Map;

    .line 209
    .line 210
    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-static {p1, v4}, Lcom/sgscq/vpn/handler/w;->E(Lcom/sgscq/vpn/w1;Ljava/lang/Object;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    if-eqz v4, :cond_7

    .line 223
    .line 224
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_a
    instance-of v4, v2, Ljava/util/List;

    .line 229
    .line 230
    if-eqz v4, :cond_e

    .line 231
    .line 232
    check-cast v2, Ljava/util/List;

    .line 233
    .line 234
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    :cond_b
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-eqz v4, :cond_e

    .line 243
    .line 244
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    instance-of v6, v4, Ljava/util/Map;

    .line 249
    .line 250
    if-nez v6, :cond_c

    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_c
    move-object v6, v4

    .line 254
    check-cast v6, Ljava/util/Map;

    .line 255
    .line 256
    invoke-interface {v6, v5, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    invoke-virtual {p0, v6}, Lcom/sgscq/vpn/handler/w;->q0(Ljava/lang/String;)Z

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    if-nez v7, :cond_d

    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_d
    check-cast v4, Ljava/util/Map;

    .line 272
    .line 273
    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    invoke-static {p1, v4}, Lcom/sgscq/vpn/handler/w;->E(Lcom/sgscq/vpn/w1;Ljava/lang/Object;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    if-eqz v4, :cond_b

    .line 286
    .line 287
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 288
    .line 289
    .line 290
    goto :goto_2

    .line 291
    :cond_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    const/4 p2, 0x1

    .line 296
    if-ne p1, p2, :cond_f

    .line 297
    .line 298
    const/4 p1, 0x0

    .line 299
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    check-cast p1, Ljava/lang/String;

    .line 304
    .line 305
    goto :goto_4

    .line 306
    :catch_1
    :cond_f
    :goto_3
    const/4 p1, 0x0

    .line 307
    :goto_4
    if-nez p1, :cond_10

    .line 308
    .line 309
    goto :goto_5

    .line 310
    :cond_10
    move-object v1, p1

    .line 311
    :goto_5
    return-object v1

    .line 312
    :cond_11
    :goto_6
    invoke-virtual {p0, p2}, Lcom/sgscq/vpn/handler/w;->q0(Ljava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    if-eqz p1, :cond_12

    .line 317
    .line 318
    move-object v1, p2

    .line 319
    :cond_12
    :goto_7
    return-object v1
.end method

.method public final W0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/util/Map;
    .locals 5

    .line 1
    invoke-virtual {p1, p2}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/sgscq/vpn/handler/w;->d:Lcom/sgscq/vpn/handler/u;

    .line 10
    .line 11
    if-nez p1, :cond_a

    .line 12
    .line 13
    iget-object p1, p0, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p1, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 19
    .line 20
    :goto_0
    new-instance p1, Lcom/sgscq/vpn/handler/u;

    .line 21
    .line 22
    :try_start_0
    const-string v1, "generals.json"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    :cond_2
    const-string v0, "docs/game_data_json/generals.json"

    .line 37
    .line 38
    invoke-static {v0}, Lcom/sgscq/vpn/handler/w;->O0(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_4
    new-instance v1, Lcom/sgscq/vpn/handler/DungeonHandler$EnemyGeneralFallback$1;

    .line 50
    .line 51
    invoke-direct {v1}, Lcom/sgscq/vpn/handler/DungeonHandler$EnemyGeneralFallback$1;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v2, La/o;

    .line 59
    .line 60
    invoke-direct {v2}, La/o;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v0, v1}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Ljava/util/List;

    .line 68
    .line 69
    if-nez v0, :cond_5

    .line 70
    .line 71
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_2

    .line 76
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :cond_5
    :goto_2
    new-instance v1, Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 83
    .line 84
    .line 85
    if-nez v0, :cond_6

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_9

    .line 97
    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Ljava/util/Map;

    .line 103
    .line 104
    if-nez v2, :cond_8

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_8
    const-string v3, "id"

    .line 108
    .line 109
    const-string v4, ""

    .line 110
    .line 111
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-nez v4, :cond_7

    .line 124
    .line 125
    const-string v4, "null"

    .line 126
    .line 127
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-nez v4, :cond_7

    .line 132
    .line 133
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_9
    :goto_4
    invoke-direct {p1, v1}, Lcom/sgscq/vpn/handler/u;-><init>(Ljava/util/HashMap;)V

    .line 138
    .line 139
    .line 140
    iput-object p1, p0, Lcom/sgscq/vpn/handler/w;->d:Lcom/sgscq/vpn/handler/u;

    .line 141
    .line 142
    :cond_a
    iget-object p1, p0, Lcom/sgscq/vpn/handler/w;->d:Lcom/sgscq/vpn/handler/u;

    .line 143
    .line 144
    iget-object p1, p1, Lcom/sgscq/vpn/handler/u;->a:Ljava/util/Map;

    .line 145
    .line 146
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Ljava/util/Map;

    .line 151
    .line 152
    const-string v1, "142007"

    .line 153
    .line 154
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Ljava/util/Map;

    .line 159
    .line 160
    if-nez p1, :cond_b

    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_b
    new-instance v1, Ljava/util/HashMap;

    .line 164
    .line 165
    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 166
    .line 167
    .line 168
    sget-object p1, Lcom/sgscq/vpn/handler/u;->b:[Ljava/lang/String;

    .line 169
    .line 170
    const/4 v2, 0x0

    .line 171
    :goto_5
    const/4 v3, 0x7

    .line 172
    if-ge v2, v3, :cond_c

    .line 173
    .line 174
    aget-object v3, p1, v2

    .line 175
    .line 176
    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    add-int/lit8 v2, v2, 0x1

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_c
    if-eqz v0, :cond_d

    .line 183
    .line 184
    const-string p1, "weapon_effect"

    .line 185
    .line 186
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    if-eqz p2, :cond_d

    .line 191
    .line 192
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    :cond_d
    move-object v0, v1

    .line 200
    :goto_6
    return-object v0
.end method

.method public final X(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)Z
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    const-string v3, "SGSCQ_SRV"

    .line 6
    .line 7
    iget-object v4, v1, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object v0, v4, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 13
    .line 14
    const-string v6, "gift_box_contents.json"

    .line 15
    .line 16
    invoke-static {v0, v6}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v2, v0}, Lcom/sgscq/vpn/handler/w;->X0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    new-instance v6, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v7, "[Dungeon] gift box encrypted config failed: "

    .line 31
    .line 32
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v6, v3}, Lc/a;->u(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-static {}, Lcom/sgscq/vpn/handler/w;->S()Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-nez v6, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->W0(Ljava/io/File;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v2, v0}, Lcom/sgscq/vpn/handler/w;->X0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    goto :goto_1

    .line 58
    :catch_1
    :goto_0
    move-object v0, v5

    .line 59
    :goto_1
    const/4 v6, 0x0

    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    return v6

    .line 63
    :cond_2
    const-string v7, "add_list"

    .line 64
    .line 65
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    instance-of v9, v8, Ljava/util/List;

    .line 70
    .line 71
    if-nez v9, :cond_3

    .line 72
    .line 73
    return v6

    .line 74
    :cond_3
    if-eqz v4, :cond_4

    .line 75
    .line 76
    iget-object v5, v4, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 77
    .line 78
    :cond_4
    invoke-static {v5}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    const/4 v5, 0x1

    .line 83
    move/from16 v6, p1

    .line 84
    .line 85
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    check-cast v8, Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-eqz v9, :cond_1b

    .line 100
    .line 101
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    instance-of v10, v9, Ljava/util/Map;

    .line 106
    .line 107
    if-nez v10, :cond_6

    .line 108
    .line 109
    :cond_5
    :goto_3
    move-object/from16 v20, v0

    .line 110
    .line 111
    move/from16 v17, v6

    .line 112
    .line 113
    move-object/from16 p1, v8

    .line 114
    .line 115
    goto/16 :goto_a

    .line 116
    .line 117
    :cond_6
    check-cast v9, Ljava/util/Map;

    .line 118
    .line 119
    const-string v10, "item_id"

    .line 120
    .line 121
    const-string v11, ""

    .line 122
    .line 123
    const-string v12, "id"

    .line 124
    .line 125
    invoke-static {v9, v10, v11, v12}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v13

    .line 129
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v14

    .line 133
    if-nez v14, :cond_5

    .line 134
    .line 135
    const-string v14, "null"

    .line 136
    .line 137
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v15

    .line 141
    if-eqz v15, :cond_7

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_7
    const-string v15, "num"

    .line 145
    .line 146
    invoke-interface {v9, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v15

    .line 150
    move-object/from16 p1, v8

    .line 151
    .line 152
    const-string v8, "item_num"

    .line 153
    .line 154
    move-object/from16 v16, v10

    .line 155
    .line 156
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    invoke-static {v10, v5}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    invoke-static {v15, v5}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    mul-int/2addr v5, v6

    .line 169
    const-string v10, "type"

    .line 170
    .line 171
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v15

    .line 175
    move/from16 v17, v6

    .line 176
    .line 177
    const/4 v6, 0x5

    .line 178
    invoke-static {v15, v6}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    const/4 v15, 0x1

    .line 183
    if-ne v6, v15, :cond_1a

    .line 184
    .line 185
    const-string v6, "resource_id"

    .line 186
    .line 187
    invoke-interface {v0, v6, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    const-string v10, "item_type"

    .line 196
    .line 197
    if-eqz v4, :cond_d

    .line 198
    .line 199
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 200
    .line 201
    .line 202
    move-result v15

    .line 203
    if-nez v15, :cond_d

    .line 204
    .line 205
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v15

    .line 209
    if-nez v15, :cond_d

    .line 210
    .line 211
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v15

    .line 215
    if-eqz v15, :cond_8

    .line 216
    .line 217
    goto/16 :goto_4

    .line 218
    .line 219
    :cond_8
    invoke-static {v4, v13}, Lcom/sgscq/vpn/handler/w;->U0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/util/Map;

    .line 220
    .line 221
    .line 222
    move-result-object v15

    .line 223
    if-eqz v15, :cond_d

    .line 224
    .line 225
    move/from16 v18, v5

    .line 226
    .line 227
    invoke-interface {v15, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    move-object/from16 v19, v9

    .line 232
    .line 233
    const/4 v9, -0x1

    .line 234
    invoke-static {v5, v9}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    const/16 v9, 0x1f

    .line 239
    .line 240
    if-eq v5, v9, :cond_9

    .line 241
    .line 242
    move-object/from16 v20, v0

    .line 243
    .line 244
    move-object/from16 v16, v8

    .line 245
    .line 246
    goto/16 :goto_5

    .line 247
    .line 248
    :cond_9
    invoke-virtual {v1, v8}, Lcom/sgscq/vpn/handler/w;->q0(Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    if-eqz v5, :cond_a

    .line 253
    .line 254
    const/4 v5, 0x1

    .line 255
    move-object/from16 v20, v0

    .line 256
    .line 257
    move-object/from16 v16, v8

    .line 258
    .line 259
    goto/16 :goto_6

    .line 260
    .line 261
    :cond_a
    const-string v5, "name"

    .line 262
    .line 263
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    invoke-static {v4, v9}, Lcom/sgscq/vpn/handler/w;->E(Lcom/sgscq/vpn/w1;Ljava/lang/Object;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v9

    .line 271
    move-object/from16 v20, v0

    .line 272
    .line 273
    const-string v0, "01"

    .line 274
    .line 275
    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-static {v4, v0}, Lcom/sgscq/vpn/handler/w;->E(Lcom/sgscq/vpn/w1;Ljava/lang/Object;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    invoke-static {v4, v5}, Lcom/sgscq/vpn/handler/w;->E(Lcom/sgscq/vpn/w1;Ljava/lang/Object;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    move-object/from16 v16, v8

    .line 292
    .line 293
    const-string v8, "desc"

    .line 294
    .line 295
    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v8

    .line 299
    invoke-static {v4, v8}, Lcom/sgscq/vpn/handler/w;->E(Lcom/sgscq/vpn/w1;Ljava/lang/Object;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 304
    .line 305
    .line 306
    move-result v15

    .line 307
    if-nez v15, :cond_e

    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 310
    .line 311
    .line 312
    move-result v15

    .line 313
    if-nez v15, :cond_e

    .line 314
    .line 315
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 316
    .line 317
    .line 318
    move-result v15

    .line 319
    if-nez v15, :cond_e

    .line 320
    .line 321
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 322
    .line 323
    .line 324
    move-result v15

    .line 325
    if-eqz v15, :cond_b

    .line 326
    .line 327
    goto :goto_5

    .line 328
    :cond_b
    const-string v15, "\u793c\u5305"

    .line 329
    .line 330
    invoke-virtual {v9, v15, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v9

    .line 334
    const-string v15, "\u6b66\u5c06\u724c"

    .line 335
    .line 336
    invoke-virtual {v9, v15, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v9

    .line 340
    const-string v15, "*1"

    .line 341
    .line 342
    invoke-virtual {v9, v15, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v9

    .line 346
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v9

    .line 350
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v9

    .line 354
    if-eqz v9, :cond_e

    .line 355
    .line 356
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    if-nez v5, :cond_c

    .line 361
    .line 362
    goto :goto_5

    .line 363
    :cond_c
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    xor-int/lit8 v5, v0, 0x1

    .line 368
    .line 369
    goto :goto_6

    .line 370
    :cond_d
    :goto_4
    move-object/from16 v20, v0

    .line 371
    .line 372
    move/from16 v18, v5

    .line 373
    .line 374
    move-object/from16 v16, v8

    .line 375
    .line 376
    move-object/from16 v19, v9

    .line 377
    .line 378
    :cond_e
    :goto_5
    const/4 v5, 0x0

    .line 379
    :goto_6
    if-eqz v5, :cond_f

    .line 380
    .line 381
    move-object/from16 v11, v16

    .line 382
    .line 383
    goto/16 :goto_9

    .line 384
    .line 385
    :cond_f
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    if-nez v0, :cond_10

    .line 390
    .line 391
    invoke-virtual {v14, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    if-nez v0, :cond_10

    .line 396
    .line 397
    invoke-virtual {v1, v13}, Lcom/sgscq/vpn/handler/w;->q0(Ljava/lang/String;)Z

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    if-eqz v0, :cond_10

    .line 402
    .line 403
    move-object v11, v13

    .line 404
    goto/16 :goto_9

    .line 405
    .line 406
    :cond_10
    invoke-static {v4, v13}, Lcom/sgscq/vpn/handler/w;->U0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/util/Map;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    if-nez v0, :cond_11

    .line 411
    .line 412
    goto/16 :goto_9

    .line 413
    .line 414
    :cond_11
    const/16 v5, 0x1f

    .line 415
    .line 416
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    invoke-static {v0, v10, v5}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 421
    .line 422
    .line 423
    move-result v5

    .line 424
    if-nez v5, :cond_12

    .line 425
    .line 426
    goto :goto_9

    .line 427
    :cond_12
    invoke-interface {v0, v6, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v5

    .line 431
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v5

    .line 435
    invoke-virtual {v1, v5}, Lcom/sgscq/vpn/handler/w;->q0(Ljava/lang/String;)Z

    .line 436
    .line 437
    .line 438
    move-result v6

    .line 439
    if-eqz v6, :cond_13

    .line 440
    .line 441
    goto :goto_8

    .line 442
    :cond_13
    const-string v5, "effect_value"

    .line 443
    .line 444
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    instance-of v5, v0, Ljava/util/List;

    .line 449
    .line 450
    if-eqz v5, :cond_15

    .line 451
    .line 452
    check-cast v0, Ljava/util/List;

    .line 453
    .line 454
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 459
    .line 460
    .line 461
    move-result v5

    .line 462
    if-eqz v5, :cond_18

    .line 463
    .line 464
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v5

    .line 468
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v5

    .line 472
    invoke-virtual {v1, v5}, Lcom/sgscq/vpn/handler/w;->q0(Ljava/lang/String;)Z

    .line 473
    .line 474
    .line 475
    move-result v6

    .line 476
    if-eqz v6, :cond_14

    .line 477
    .line 478
    goto :goto_8

    .line 479
    :cond_15
    instance-of v5, v0, Ljava/util/Map;

    .line 480
    .line 481
    if-eqz v5, :cond_18

    .line 482
    .line 483
    check-cast v0, Ljava/util/Map;

    .line 484
    .line 485
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    instance-of v5, v0, Ljava/util/List;

    .line 490
    .line 491
    if-eqz v5, :cond_18

    .line 492
    .line 493
    check-cast v0, Ljava/util/List;

    .line 494
    .line 495
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    :cond_16
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 500
    .line 501
    .line 502
    move-result v5

    .line 503
    if-eqz v5, :cond_18

    .line 504
    .line 505
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v5

    .line 509
    instance-of v6, v5, Ljava/util/Map;

    .line 510
    .line 511
    if-nez v6, :cond_17

    .line 512
    .line 513
    goto :goto_7

    .line 514
    :cond_17
    check-cast v5, Ljava/util/Map;

    .line 515
    .line 516
    invoke-interface {v5, v12, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v5

    .line 520
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v5

    .line 524
    invoke-virtual {v1, v5}, Lcom/sgscq/vpn/handler/w;->q0(Ljava/lang/String;)Z

    .line 525
    .line 526
    .line 527
    move-result v6

    .line 528
    if-eqz v6, :cond_16

    .line 529
    .line 530
    :goto_8
    move-object v11, v5

    .line 531
    :cond_18
    :goto_9
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    if-eqz v0, :cond_19

    .line 536
    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    .line 538
    .line 539
    const-string v5, "[Dungeon] skip invalid general gift content gift_id="

    .line 540
    .line 541
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    const-string v5, " content_id="

    .line 548
    .line 549
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-static {v3, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    goto :goto_a

    .line 563
    :cond_19
    const-string v0, "level"

    .line 564
    .line 565
    move-object/from16 v9, v19

    .line 566
    .line 567
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    const/4 v5, 0x0

    .line 572
    invoke-static {v0, v5}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 573
    .line 574
    .line 575
    move-result v13

    .line 576
    move-object/from16 v9, p4

    .line 577
    .line 578
    move-object v10, v4

    .line 579
    move/from16 v12, v18

    .line 580
    .line 581
    move-object/from16 v14, p3

    .line 582
    .line 583
    invoke-static/range {v9 .. v14}, Lcom/sgscq/vpn/handler/w;->W(Ljava/util/Map;Lcom/sgscq/vpn/w1;Ljava/lang/String;IILjava/util/ArrayList;)V

    .line 584
    .line 585
    .line 586
    :goto_a
    move-object/from16 v6, p3

    .line 587
    .line 588
    move-object/from16 v8, p4

    .line 589
    .line 590
    goto :goto_b

    .line 591
    :cond_1a
    move-object/from16 v20, v0

    .line 592
    .line 593
    move/from16 v18, v5

    .line 594
    .line 595
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 600
    .line 601
    .line 602
    move-result-object v5

    .line 603
    filled-new-array {v8, v0, v10, v5}, [Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    move-object/from16 v5, v16

    .line 608
    .line 609
    invoke-static {v5, v13, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    move-object/from16 v6, p3

    .line 614
    .line 615
    move-object/from16 v8, p4

    .line 616
    .line 617
    invoke-virtual {v1, v6, v8, v0}, Lcom/sgscq/vpn/handler/w;->Y(Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 618
    .line 619
    .line 620
    :goto_b
    const/4 v5, 0x1

    .line 621
    move-object/from16 v8, p1

    .line 622
    .line 623
    move/from16 v6, v17

    .line 624
    .line 625
    move-object/from16 v0, v20

    .line 626
    .line 627
    goto/16 :goto_2

    .line 628
    .line 629
    :cond_1b
    return v5
.end method

.method public final Y(Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/LinkedHashMap;)V
    .locals 9

    .line 1
    const-string v0, "item_id"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    const-string v1, "item_num"

    .line 14
    .line 15
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_12

    .line 29
    .line 30
    if-gtz v6, :cond_0

    .line 31
    .line 32
    goto/16 :goto_6

    .line 33
    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v3, "100000"

    .line 39
    .line 40
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-object v1, v1, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 v1, 0x0

    .line 55
    :goto_0
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const-string v1, "type"

    .line 60
    .line 61
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v3, "item_type"

    .line 66
    .line 67
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    const/4 v3, 0x5

    .line 72
    invoke-static {p3, v3}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    invoke-static {v1, p3}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->h0(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    invoke-static {v6, v0, p2}, Lcom/sgscq/vpn/p5;->c(ILjava/lang/String;Ljava/util/Map;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->p0(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-eqz p2, :cond_3

    .line 94
    .line 95
    const/16 v2, 0x10

    .line 96
    .line 97
    :cond_3
    invoke-static {v6, v2, v0}, Lcom/sgscq/vpn/handler/w;->o(IILjava/lang/String;)Ljava/util/LinkedHashMap;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    goto/16 :goto_5

    .line 102
    .line 103
    :cond_4
    const/4 v1, 0x6

    .line 104
    if-ne p3, v1, :cond_5

    .line 105
    .line 106
    invoke-static {v6, v0, p2}, Lcom/sgscq/vpn/w1;->k(ILjava/lang/String;Ljava/util/Map;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v0, v6}, Lcom/sgscq/vpn/handler/w;->v(Ljava/lang/String;I)Ljava/util/LinkedHashMap;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    goto/16 :goto_5

    .line 114
    .line 115
    :cond_5
    invoke-static {v4, v0}, Lcom/sgscq/vpn/handler/w;->n0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_7

    .line 120
    .line 121
    invoke-virtual {p0, v4, v0}, Lcom/sgscq/vpn/handler/w;->V0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result p3

    .line 129
    if-nez p3, :cond_6

    .line 130
    .line 131
    const/4 v7, 0x0

    .line 132
    move-object v3, p2

    .line 133
    move-object v8, p1

    .line 134
    invoke-static/range {v3 .. v8}, Lcom/sgscq/vpn/handler/w;->W(Ljava/util/Map;Lcom/sgscq/vpn/w1;Ljava/lang/String;IILjava/util/ArrayList;)V

    .line 135
    .line 136
    .line 137
    :cond_6
    return-void

    .line 138
    :cond_7
    const/4 v1, 0x7

    .line 139
    const/4 v3, 0x0

    .line 140
    if-ne p3, v1, :cond_a

    .line 141
    .line 142
    const-string v1, "361001"

    .line 143
    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-nez v1, :cond_9

    .line 149
    .line 150
    const-string v1, "362001"

    .line 151
    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-nez v1, :cond_9

    .line 157
    .line 158
    const-string v1, "363001"

    .line 159
    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_8

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_8
    move v2, v3

    .line 168
    :cond_9
    :goto_1
    if-nez v2, :cond_a

    .line 169
    .line 170
    invoke-static {v6, v0, p2}, Lcom/sgscq/vpn/handler/w;->a0(ILjava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-static {v6, v0, p2}, Lcom/sgscq/vpn/handler/w;->y(ILjava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    goto :goto_5

    .line 179
    :cond_a
    const/16 v1, 0x8

    .line 180
    .line 181
    if-eq p3, v1, :cond_11

    .line 182
    .line 183
    const/16 v1, 0xf

    .line 184
    .line 185
    if-eq p3, v1, :cond_11

    .line 186
    .line 187
    invoke-static {v4, v0}, Lcom/sgscq/vpn/handler/w;->l0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result p3

    .line 191
    if-eqz p3, :cond_b

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_b
    invoke-static {v4, v0}, Lcom/sgscq/vpn/handler/w;->m0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result p3

    .line 198
    if-eqz p3, :cond_d

    .line 199
    .line 200
    :goto_2
    if-ge v3, v6, :cond_c

    .line 201
    .line 202
    invoke-virtual {p0, v0, p2}, Lcom/sgscq/vpn/handler/w;->b(Ljava/lang/String;Ljava/util/Map;)I

    .line 203
    .line 204
    .line 205
    move-result p3

    .line 206
    invoke-static {v0, p3}, Lcom/sgscq/vpn/handler/w;->r(Ljava/lang/String;I)Ljava/util/LinkedHashMap;

    .line 207
    .line 208
    .line 209
    move-result-object p3

    .line 210
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    add-int/lit8 v3, v3, 0x1

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_c
    return-void

    .line 217
    :cond_d
    invoke-static {v4, v0}, Lcom/sgscq/vpn/handler/w;->p0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result p3

    .line 221
    if-eqz p3, :cond_f

    .line 222
    .line 223
    :goto_3
    if-ge v3, v6, :cond_e

    .line 224
    .line 225
    invoke-virtual {p0, v0, p2}, Lcom/sgscq/vpn/handler/w;->e(Ljava/lang/String;Ljava/util/Map;)Ljava/util/HashMap;

    .line 226
    .line 227
    .line 228
    move-result-object p3

    .line 229
    invoke-static {v0, p3}, Lcom/sgscq/vpn/handler/w;->z(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/LinkedHashMap;

    .line 230
    .line 231
    .line 232
    move-result-object p3

    .line 233
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    add-int/lit8 v3, v3, 0x1

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_e
    return-void

    .line 240
    :cond_f
    invoke-virtual {p0, v6, v0, p1, p2}, Lcom/sgscq/vpn/handler/w;->X(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)Z

    .line 241
    .line 242
    .line 243
    move-result p3

    .line 244
    if-eqz p3, :cond_10

    .line 245
    .line 246
    return-void

    .line 247
    :cond_10
    invoke-static {v6, v0, p2}, Lcom/sgscq/vpn/handler/w;->c(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    invoke-static {v6, v0, p2}, Lcom/sgscq/vpn/handler/w;->w(ILjava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    goto :goto_5

    .line 256
    :cond_11
    :goto_4
    invoke-static {v6, v0, p2}, Lcom/sgscq/vpn/cloud/m0;->c1(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    invoke-static {v6, v0, p2}, Lcom/sgscq/vpn/handler/w;->q(ILjava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    :goto_5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    :cond_12
    :goto_6
    return-void
.end method

.method public final Z(Ljava/util/Map;Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    new-instance v8, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_17

    .line 11
    .line 12
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_b

    .line 19
    .line 20
    :cond_0
    const/4 v9, 0x0

    .line 21
    iget-object v1, v0, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v1, v1, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object v1, v9

    .line 29
    :goto_0
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v11

    .line 37
    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_17

    .line 42
    .line 43
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/util/Map;

    .line 48
    .line 49
    iget-object v2, v0, Lcom/sgscq/vpn/handler/w;->c:Ljava/util/Random;

    .line 50
    .line 51
    const/16 v3, 0x64

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    const/4 v3, 0x1

    .line 58
    const/4 v4, 0x6

    .line 59
    const/4 v5, 0x0

    .line 60
    const/4 v6, 0x5

    .line 61
    if-eqz p3, :cond_3

    .line 62
    .line 63
    goto :goto_5

    .line 64
    :cond_3
    if-ltz v2, :cond_7

    .line 65
    .line 66
    const/16 v12, 0x1e

    .line 67
    .line 68
    if-nez v1, :cond_4

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_4
    const-string v13, "drop_rate"

    .line 72
    .line 73
    const-string v14, "dropRate"

    .line 74
    .line 75
    const-string v15, "rate"

    .line 76
    .line 77
    const-string v16, "prob"

    .line 78
    .line 79
    const-string v17, "probability"

    .line 80
    .line 81
    const-string v18, "chance"

    .line 82
    .line 83
    filled-new-array/range {v13 .. v18}, [Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    move v14, v5

    .line 88
    :goto_2
    if-ge v14, v4, :cond_6

    .line 89
    .line 90
    aget-object v15, v13, v14

    .line 91
    .line 92
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v16

    .line 96
    if-eqz v16, :cond_5

    .line 97
    .line 98
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v13

    .line 102
    goto :goto_3

    .line 103
    :cond_5
    add-int/lit8 v14, v14, 0x1

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_6
    move-object v13, v9

    .line 107
    :goto_3
    invoke-static {v13, v12}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 108
    .line 109
    .line 110
    move-result v13

    .line 111
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    .line 116
    .line 117
    .line 118
    move-result v12

    .line 119
    :goto_4
    if-ge v2, v12, :cond_7

    .line 120
    .line 121
    :goto_5
    move v2, v3

    .line 122
    goto :goto_6

    .line 123
    :cond_7
    move v2, v5

    .line 124
    :goto_6
    if-nez v2, :cond_8

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_8
    const-string v2, "id"

    .line 128
    .line 129
    const-string v12, ""

    .line 130
    .line 131
    const-string v13, "item_id"

    .line 132
    .line 133
    invoke-static {v1, v2, v12, v13}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 138
    .line 139
    .line 140
    move-result v12

    .line 141
    if-nez v12, :cond_2

    .line 142
    .line 143
    const-string v12, "null"

    .line 144
    .line 145
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v12

    .line 149
    if-eqz v12, :cond_9

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v12

    .line 156
    const-string v13, "100000"

    .line 157
    .line 158
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v12

    .line 162
    if-eqz v12, :cond_a

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_a
    const-string v12, "num"

    .line 166
    .line 167
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    const-string v13, "item_num"

    .line 172
    .line 173
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v13

    .line 177
    invoke-static {v13, v3}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    invoke-static {v12, v3}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 182
    .line 183
    .line 184
    move-result v12

    .line 185
    if-gtz v12, :cond_b

    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :cond_b
    const-string v3, "type"

    .line 190
    .line 191
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-static {v1, v6}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-ne v1, v4, :cond_c

    .line 200
    .line 201
    invoke-static {v12, v2, v7}, Lcom/sgscq/vpn/w1;->k(ILjava/lang/String;Ljava/util/Map;)V

    .line 202
    .line 203
    .line 204
    invoke-static {v2, v12}, Lcom/sgscq/vpn/handler/w;->v(Ljava/lang/String;I)Ljava/util/LinkedHashMap;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    goto/16 :goto_a

    .line 209
    .line 210
    :cond_c
    invoke-static {v10, v2}, Lcom/sgscq/vpn/handler/w;->n0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-eqz v3, :cond_d

    .line 215
    .line 216
    if-ne v1, v6, :cond_2

    .line 217
    .line 218
    invoke-virtual {v0, v10, v2}, Lcom/sgscq/vpn/handler/w;->V0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-nez v1, :cond_2

    .line 227
    .line 228
    const/4 v5, 0x0

    .line 229
    move-object/from16 v1, p1

    .line 230
    .line 231
    move-object v2, v10

    .line 232
    move v4, v12

    .line 233
    move-object v6, v8

    .line 234
    invoke-static/range {v1 .. v6}, Lcom/sgscq/vpn/handler/w;->W(Ljava/util/Map;Lcom/sgscq/vpn/w1;Ljava/lang/String;IILjava/util/ArrayList;)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_1

    .line 238
    .line 239
    :cond_d
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->h0(Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    if-eqz v3, :cond_f

    .line 244
    .line 245
    invoke-static {v12, v2, v7}, Lcom/sgscq/vpn/p5;->c(ILjava/lang/String;Ljava/util/Map;)V

    .line 246
    .line 247
    .line 248
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->p0(Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-eqz v1, :cond_e

    .line 253
    .line 254
    const/16 v6, 0x10

    .line 255
    .line 256
    :cond_e
    invoke-static {v12, v6, v2}, Lcom/sgscq/vpn/handler/w;->o(IILjava/lang/String;)Ljava/util/LinkedHashMap;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    goto :goto_a

    .line 261
    :cond_f
    const/16 v3, 0x8

    .line 262
    .line 263
    if-eq v1, v3, :cond_16

    .line 264
    .line 265
    const/16 v3, 0xf

    .line 266
    .line 267
    if-eq v1, v3, :cond_16

    .line 268
    .line 269
    invoke-static {v10, v2}, Lcom/sgscq/vpn/handler/w;->l0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    if-eqz v3, :cond_10

    .line 274
    .line 275
    goto :goto_9

    .line 276
    :cond_10
    const/4 v3, 0x3

    .line 277
    if-eq v1, v3, :cond_15

    .line 278
    .line 279
    invoke-static {v10, v2}, Lcom/sgscq/vpn/handler/w;->m0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Z

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    if-eqz v3, :cond_11

    .line 284
    .line 285
    goto :goto_8

    .line 286
    :cond_11
    const/4 v3, 0x4

    .line 287
    if-eq v1, v3, :cond_14

    .line 288
    .line 289
    invoke-static {v10, v2}, Lcom/sgscq/vpn/handler/w;->p0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    if-eqz v1, :cond_12

    .line 294
    .line 295
    goto :goto_7

    .line 296
    :cond_12
    invoke-virtual {v0, v12, v2, v8, v7}, Lcom/sgscq/vpn/handler/w;->X(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-eqz v1, :cond_13

    .line 301
    .line 302
    goto/16 :goto_1

    .line 303
    .line 304
    :cond_13
    invoke-static {v12, v2, v7}, Lcom/sgscq/vpn/handler/w;->c(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-static {v12, v2, v1}, Lcom/sgscq/vpn/handler/w;->w(ILjava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    goto :goto_a

    .line 313
    :cond_14
    :goto_7
    if-ge v5, v12, :cond_2

    .line 314
    .line 315
    invoke-virtual {v0, v2, v7}, Lcom/sgscq/vpn/handler/w;->e(Ljava/lang/String;Ljava/util/Map;)Ljava/util/HashMap;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-static {v2, v1}, Lcom/sgscq/vpn/handler/w;->z(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/LinkedHashMap;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    add-int/lit8 v5, v5, 0x1

    .line 327
    .line 328
    goto :goto_7

    .line 329
    :cond_15
    :goto_8
    if-ge v5, v12, :cond_2

    .line 330
    .line 331
    invoke-virtual {v0, v2, v7}, Lcom/sgscq/vpn/handler/w;->b(Ljava/lang/String;Ljava/util/Map;)I

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    invoke-static {v2, v1}, Lcom/sgscq/vpn/handler/w;->r(Ljava/lang/String;I)Ljava/util/LinkedHashMap;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    add-int/lit8 v5, v5, 0x1

    .line 343
    .line 344
    goto :goto_8

    .line 345
    :cond_16
    :goto_9
    invoke-static {v12, v2, v7}, Lcom/sgscq/vpn/cloud/m0;->c1(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-static {v12, v2, v1}, Lcom/sgscq/vpn/handler/w;->q(ILjava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    :goto_a
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    goto/16 :goto_1

    .line 357
    .line 358
    :cond_17
    :goto_b
    return-object v8
.end method

.method public final b(Ljava/lang/String;Ljava/util/Map;)I
    .locals 9

    .line 1
    const-string v0, "Equipment"

    invoke-static {v0, p2}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p2}, Lcom/sgscq/vpn/w1;->e2(Ljava/lang/String;Ljava/util/Map;)I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "pk_id"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "equipment_id"

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "equip_id"

    invoke-virtual {v3, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "id"

    invoke-virtual {v3, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "eid"

    invoke-virtual {v3, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "level"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "refine_level"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "refine_exp"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "bore_list"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    if-eqz v6, :cond_0

    iget-object v6, v6, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    invoke-static {v6}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v6

    invoke-virtual {v6, p1, v3}, Lcom/sgscq/vpn/w1;->R(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v6, "general_pk_id"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "general_id"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "user_general_id"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "is_wear"

    const-string v7, "0"

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "wear"

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "get_time"

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "is_new"

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "add"

    const-string v8, "upd"

    filled-new-array {v8, v6, v7, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v6, "del"

    invoke-static {v6, v3, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, p1, v5, p2}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    return v2
.end method

.method public final b0(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    const-string v3, "map.getUserMap"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, v0, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    const-string v5, ""

    const-string v6, "user_map_step"

    const-string v7, "map_id"

    const-string v8, "map_info"

    const-string v9, "msg"

    const-string v10, "result"

    const-string v15, "code"

    const-string v14, "ret"

    const-string v13, "error_code"

    const-string v12, "success"

    if-eqz v3, :cond_6

    .line 1
    invoke-virtual {v4, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/sgscq/vpn/handler/w;->C0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-virtual {v3, v1}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Lcom/sgscq/vpn/handler/w;->Q0(Ljava/lang/String;Ljava/util/Map;)V

    if-eqz v7, :cond_1

    .line 2
    invoke-static {v7}, Lcom/sgscq/vpn/handler/w;->R0(Ljava/util/Map;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-virtual {v11, v1, v7}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    if-eqz v2, :cond_3

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v1, v2}, Lcom/sgscq/vpn/h5;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    goto :goto_2

    .line 4
    :cond_3
    :goto_0
    invoke-virtual {v3}, Lcom/sgscq/vpn/h5;->Z()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    .line 5
    :cond_4
    invoke-virtual {v3, v1}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_5

    invoke-static {v6, v5, v1}, Lcom/sgscq/vpn/h5;->N0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sgscq/vpn/h5;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    move-object v2, v5

    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v1, v5}, Lcom/sgscq/vpn/h5;->o(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    move v2, v5

    .line 6
    :goto_2
    new-instance v3, Lcom/sgscq/vpn/y1;

    invoke-direct {v3}, Lcom/sgscq/vpn/y1;-><init>()V

    invoke-virtual {v3, v13, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v3, v14, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v3, v15, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const/4 v2, 0x1

    invoke-virtual {v3, v10, v2}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    invoke-virtual {v3, v9, v12}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8, v1}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1

    :cond_6
    const-string v3, "chapter.getChapterInfo"

    .line 7
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v11, "chapter_detail"

    move-object/from16 v16, v6

    const-string v6, "chapter_info"

    if-eqz v3, :cond_9

    .line 8
    invoke-virtual {v4, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/sgscq/vpn/handler/w;->C0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-virtual {v3, v1}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/sgscq/vpn/handler/w;->Q0(Ljava/lang/String;Ljava/util/Map;)V

    if-eqz v5, :cond_7

    .line 9
    invoke-static {v5}, Lcom/sgscq/vpn/handler/w;->R0(Ljava/util/Map;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-virtual {v7, v1, v5}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 10
    :cond_7
    invoke-virtual {v3, v1, v2}, Lcom/sgscq/vpn/h5;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_3

    .line 11
    :cond_8
    invoke-virtual {v3, v1}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    :goto_3
    invoke-virtual {v3, v2, v1}, Lcom/sgscq/vpn/h5;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance v2, Lcom/sgscq/vpn/y1;

    invoke-direct {v2}, Lcom/sgscq/vpn/y1;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v13, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v2, v14, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v2, v15, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v10, v3}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    invoke-virtual {v2, v9, v12}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v8, v5}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6, v1}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v11, v1}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1

    :cond_9
    const-string v3, "dungeon.fightBefore"

    .line 13
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v7, "curPower"

    move-object/from16 v17, v11

    const-string v11, "powerCost"

    move-object/from16 v18, v6

    const-string v6, "leftTimes"

    move-object/from16 v19, v8

    const-string v8, "maxTimes"

    move-object/from16 v20, v5

    const-string v5, "dungeonId"

    const-string v1, "fight_before_info"

    move-object/from16 v21, v12

    const-string v12, "\u4f53\u529b\u4e0d\u8db3"

    move-object/from16 v22, v7

    const-string v7, "user_power"

    move-object/from16 v23, v11

    const-string v11, "user_power_date"

    move-object/from16 v24, v6

    const-string v6, "1"

    move-object/from16 v25, v8

    const-string v8, "position"

    move-object/from16 v26, v5

    iget-object v5, v0, Lcom/sgscq/vpn/handler/w;->b:Lcom/sgscq/vpn/handler/x;

    move-object/from16 v27, v1

    const-string v1, "01"

    move-object/from16 v28, v1

    const-string v1, "\\d{6}"

    if-eqz v3, :cond_20

    .line 14
    invoke-virtual {v4, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v29, v1

    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/handler/w;->U(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v8, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v6, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-virtual {v6, v3}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lcom/sgscq/vpn/handler/w;->Q0(Ljava/lang/String;Ljava/util/Map;)V

    if-eqz v6, :cond_a

    invoke-virtual {v4}, Lcom/sgscq/vpn/handler/k0;->d()I

    move-result v0

    invoke-virtual {v4, v0, v7, v6}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v11, v6}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v7

    goto :goto_4

    :cond_a
    const/4 v7, 0x0

    const/4 v0, 0x0

    :goto_4
    move-object/from16 v30, v4

    invoke-virtual {v5, v1, v6}, Lcom/sgscq/vpn/handler/x;->i(Ljava/lang/String;Ljava/util/Map;)I

    move-result v4

    move/from16 v16, v7

    iget-object v7, v5, Lcom/sgscq/vpn/handler/x;->a:Lcom/sgscq/vpn/handler/k0;

    if-nez v6, :cond_f

    move-object/from16 v31, v11

    .line 15
    iget-object v11, v7, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-virtual {v11, v3}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    if-nez v11, :cond_b

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v32, v8

    goto :goto_5

    :cond_b
    move-object/from16 v32, v8

    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Lcom/sgscq/vpn/handler/x;->A(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, v7, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-virtual {v8, v3, v11}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_c
    const-string v3, "dungeon_times"

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v8, v3, Ljava/util/Map;

    if-eqz v8, :cond_d

    check-cast v3, Ljava/util/Map;

    goto :goto_5

    :cond_d
    instance-of v8, v3, Ljava/lang/String;

    if-eqz v8, :cond_e

    :try_start_0
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    :cond_e
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 16
    :goto_5
    invoke-static {v1, v3}, Lcom/sgscq/vpn/handler/x;->x(Ljava/lang/String;Ljava/util/Map;)I

    move-result v3

    sub-int v3, v4, v3

    const/4 v8, 0x0

    .line 17
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_6

    :cond_f
    move-object/from16 v32, v8

    move-object/from16 v31, v11

    invoke-virtual {v5, v1, v6}, Lcom/sgscq/vpn/handler/x;->c(Ljava/lang/String;Ljava/util/Map;)I

    move-result v3

    :goto_6
    if-gez v3, :cond_10

    const/4 v3, 0x0

    :cond_10
    invoke-virtual {v5, v1}, Lcom/sgscq/vpn/handler/x;->j(Ljava/lang/String;)I

    move-result v8

    invoke-static {v1, v6}, Lcom/sgscq/vpn/handler/w;->e0(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v6

    if-gtz v3, :cond_12

    if-eqz v6, :cond_11

    goto :goto_7

    :cond_11
    const/4 v11, 0x0

    goto :goto_8

    :cond_12
    :goto_7
    const/4 v11, 0x1

    :goto_8
    if-lt v0, v8, :cond_13

    if-eqz v11, :cond_13

    const/4 v11, 0x1

    goto :goto_9

    :cond_13
    const/4 v11, 0x0

    :goto_9
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_a
    move-object/from16 v17, v7

    goto :goto_b

    :catch_1
    const/4 v2, 0x1

    goto :goto_a

    :goto_b
    const-string v7, "canFight"

    move/from16 v18, v11

    const-string v11, "buyTimesCost"

    if-ge v0, v8, :cond_15

    new-instance v5, Lcom/sgscq/vpn/y1;

    invoke-direct {v5}, Lcom/sgscq/vpn/y1;-><init>()V

    move-object/from16 p1, v7

    const/4 v7, -0x1

    invoke-virtual {v5, v13, v7}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v5, v14, v7}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v5, v15, v7}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const/4 v7, 0x0

    invoke-virtual {v5, v10, v7}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    invoke-virtual {v5, v9, v12}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v12, v27

    invoke-virtual {v5, v12}, Lcom/sgscq/vpn/y1;->h(Ljava/lang/String;)Lcom/sgscq/vpn/y1;

    move-result-object v9

    move-object/from16 v10, v26

    invoke-virtual {v9, v10, v1}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v32

    invoke-virtual {v9, v1, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    move-object/from16 v1, v25

    invoke-virtual {v9, v1, v4}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v9, v11, v7}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    if-eqz v6, :cond_14

    const/4 v1, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_14
    move-object/from16 v1, v24

    invoke-virtual {v9, v1, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    move-object/from16 v1, v23

    invoke-virtual {v9, v1, v8}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    move-object/from16 v1, v22

    invoke-virtual {v9, v1, v0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    move/from16 v1, v16

    move-object/from16 v0, v31

    invoke-virtual {v9, v0, v1}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v7}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    invoke-virtual {v9}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    goto/16 :goto_11

    :cond_15
    move/from16 p2, v3

    move-object/from16 v35, v7

    move/from16 p1, v8

    move/from16 v34, v16

    move-object/from16 v8, v26

    move-object/from16 v12, v27

    move-object/from16 v33, v31

    move-object/from16 v7, v32

    move/from16 v16, v0

    move-object/from16 v0, v25

    invoke-virtual {v5, v1}, Lcom/sgscq/vpn/handler/x;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v5, v1}, Lcom/sgscq/vpn/handler/x;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v19, v5

    new-instance v5, Lcom/sgscq/vpn/y1;

    invoke-direct {v5}, Lcom/sgscq/vpn/y1;-><init>()V

    move-object/from16 v25, v3

    const/4 v3, 0x0

    invoke-virtual {v5, v13, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v5, v14, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v5, v15, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const/4 v13, 0x1

    invoke-virtual {v5, v10, v13}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    move-object/from16 v10, v21

    invoke-virtual {v5, v9, v10}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Lcom/sgscq/vpn/y1;->h(Ljava/lang/String;)Lcom/sgscq/vpn/y1;

    move-result-object v9

    invoke-virtual {v9, v8, v1}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v7, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v9, v0, v4}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v9, v11, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    move/from16 v3, p2

    if-eqz v6, :cond_16

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_16
    move-object/from16 v4, v24

    invoke-virtual {v9, v4, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    move/from16 v0, p1

    move-object/from16 v3, v23

    invoke-virtual {v9, v3, v0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    move/from16 v2, v16

    move-object/from16 v0, v22

    invoke-virtual {v9, v0, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    move-object/from16 v11, v33

    move/from16 v7, v34

    invoke-virtual {v9, v11, v7}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    move/from16 v11, v18

    move-object/from16 v0, v35

    invoke-virtual {v9, v0, v11}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    invoke-virtual {v9}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_17
    const-string v0, "dungeon_id"

    .line 18
    invoke-static {v0, v1}, Lc/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object/from16 v2, v17

    .line 19
    :try_start_2
    iget-object v3, v2, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v3

    .line 20
    iget-object v4, v3, Lcom/sgscq/vpn/w1;->C:Ljava/util/HashMap;

    if-nez v4, :cond_18

    .line 21
    invoke-virtual {v3}, Lcom/sgscq/vpn/w1;->J1()V

    :cond_18
    if-nez v1, :cond_19

    move-object/from16 v4, v20

    move-object/from16 v7, v28

    move-object/from16 v6, v29

    goto :goto_c

    .line 22
    :cond_19
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v6, v29

    :try_start_3
    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v7, :cond_1a

    move-object/from16 v7, v28

    :try_start_4
    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    :cond_1a
    move-object/from16 v7, v28

    .line 23
    :goto_c
    iget-object v3, v3, Lcom/sgscq/vpn/w1;->C:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v3, :cond_1b

    goto :goto_e

    :catch_2
    move-object/from16 v7, v28

    goto :goto_d

    :catch_3
    move-object/from16 v7, v28

    move-object/from16 v6, v29

    :catch_4
    :cond_1b
    :goto_d
    const/4 v4, 0x0

    :goto_e
    const-string v3, "before_dialog_id"

    .line 24
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :try_start_5
    iget-object v2, v2, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v2

    .line 26
    iget-object v3, v2, Lcom/sgscq/vpn/w1;->C:Ljava/util/HashMap;

    if-nez v3, :cond_1c

    .line 27
    invoke-virtual {v2}, Lcom/sgscq/vpn/w1;->J1()V

    :cond_1c
    iget-object v2, v2, Lcom/sgscq/vpn/w1;->C:Ljava/util/HashMap;

    if-nez v1, :cond_1d

    move-object/from16 v1, v20

    goto :goto_f

    .line 28
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    :cond_1e
    :goto_f
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_10

    :catch_5
    const/4 v1, 0x0

    :goto_10
    const-string v2, "after_dialog_id"

    .line 30
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "before"

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "after"

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "plot_dialog"

    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    :goto_11
    invoke-virtual {v5}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v30

    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_20
    move-object/from16 v39, v1

    move-object v1, v4

    move-object v3, v7

    move-object v7, v8

    move-object/from16 v36, v21

    move-object/from16 v37, v22

    move-object/from16 v0, v25

    move-object/from16 v8, v26

    move-object/from16 v21, v27

    move-object/from16 v38, v28

    const-string v4, "dungeon.fight"

    move-object/from16 v8, v21

    move-object/from16 v0, p1

    .line 31
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 32
    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/handler/w;->U(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v6, v1, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-virtual {v6, v0}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    const/16 v21, -0x1

    move-object/from16 v22, v6

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v2, "SGSCQ_SRV"

    if-nez v7, :cond_21

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Dungeon] fight player not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sgscq/vpn/z2;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v27, "ret"

    const-string v29, "code"

    const-string v31, "result"

    sget-object v32, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v33, "msg"

    const-string v34, "\u73a9\u5bb6\u6570\u636e\u4e0d\u5b58\u5728"

    move-object/from16 v28, v6

    move-object/from16 v30, v6

    filled-new-array/range {v27 .. v34}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v13, v6, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object/from16 v41, v1

    goto/16 :goto_14

    :cond_21
    move-object/from16 v6, p0

    invoke-virtual {v6, v0, v7}, Lcom/sgscq/vpn/handler/w;->Q0(Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 p1, v0

    invoke-virtual {v5, v4, v7}, Lcom/sgscq/vpn/handler/x;->i(Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    .line 33
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/sgscq/vpn/handler/x;->A(Ljava/lang/String;Ljava/util/Map;)Z

    invoke-static {v7}, Lcom/sgscq/vpn/handler/x;->k(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sgscq/vpn/handler/x;->x(Ljava/lang/String;Ljava/util/Map;)I

    move-result v6

    .line 34
    invoke-virtual {v5, v4, v7}, Lcom/sgscq/vpn/handler/x;->c(Ljava/lang/String;Ljava/util/Map;)I

    move-result v21

    move/from16 v27, v6

    invoke-virtual {v5, v4}, Lcom/sgscq/vpn/handler/x;->j(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v34, v5

    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->d()I

    move-result v5

    invoke-virtual {v1, v5, v3, v7}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v5

    move-object/from16 v40, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v11, v7}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v3

    if-ge v5, v6, :cond_22

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v41, v1

    const-string v1, "[Dungeon] fight not enough power: "

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " < "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sgscq/vpn/y1;

    invoke-direct {v1}, Lcom/sgscq/vpn/y1;-><init>()V

    const/4 v2, -0x1

    invoke-virtual {v1, v13, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v1, v14, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v1, v15, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v10, v2}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    invoke-virtual {v1, v9, v12}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lcom/sgscq/vpn/y1;->h(Ljava/lang/String;)Lcom/sgscq/vpn/y1;

    move-result-object v7

    move-object/from16 v8, v26

    invoke-virtual {v7, v8, v4}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v25

    invoke-virtual {v7, v4, v0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    sub-int v0, v0, v27

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move-object/from16 v4, v24

    invoke-virtual {v7, v4, v0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    move-object/from16 v0, v23

    invoke-virtual {v7, v0, v6}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    move-object/from16 v0, v37

    invoke-virtual {v7, v0, v5}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v7, v11, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "canFight"

    invoke-virtual {v7, v0, v2}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    invoke-virtual {v7}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    move-result-object v0

    :goto_12
    move-object/from16 v3, v41

    goto :goto_15

    :cond_22
    move-object/from16 v41, v1

    invoke-static {v4, v7}, Lcom/sgscq/vpn/handler/w;->e0(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v1

    if-gtz v21, :cond_24

    move/from16 v3, v27

    if-lt v3, v0, :cond_23

    if-nez v1, :cond_23

    const/4 v8, 0x1

    goto :goto_13

    :cond_23
    const/4 v8, 0x0

    :goto_13
    if-eqz v8, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[Dungeon] fight max times reached: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " >= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ret"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "code"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "result"

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v8, "msg"

    const-string v9, "\u6311\u6218\u6b21\u6570\u4e0d\u8db3"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v13, v1, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    :goto_14
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :goto_15
    invoke-virtual {v3, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_48

    :cond_24
    move-object/from16 v3, v41

    .line 35
    invoke-static {v4, v7}, Lcom/sgscq/vpn/handler/w;->e0(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 36
    iget-object v8, v3, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    invoke-static {v8}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/sgscq/vpn/w1;->n1(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    move-object/from16 v21, v9

    .line 37
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v12, :cond_29

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_25

    goto :goto_18

    :cond_25
    move-object/from16 v23, v10

    new-instance v10, Ljava/util/LinkedHashSet;

    invoke-direct {v10}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_16
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v25, v12

    move-object/from16 v12, v24

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_28

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_26

    goto :goto_17

    :cond_26
    invoke-interface {v10, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_27

    goto :goto_17

    :cond_27
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    :goto_17
    move-object/from16 v12, v25

    goto :goto_16

    :cond_29
    :goto_18
    move-object/from16 v23, v10

    :cond_2a
    move-object/from16 v10, p0

    .line 38
    invoke-virtual {v10, v4, v9, v7}, Lcom/sgscq/vpn/handler/w;->b1(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)Lcom/sgscq/vpn/handler/s;

    move-result-object v12

    move-object/from16 v24, v15

    iget-object v15, v12, Lcom/sgscq/vpn/handler/s;->a:Ljava/util/Map;

    if-nez v8, :cond_2b

    move-object/from16 v26, v13

    move-object/from16 v25, v14

    goto :goto_19

    :cond_2b
    move-object/from16 v25, v14

    .line 39
    :try_start_6
    new-instance v14, Lcom/sgscq/vpn/h;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6

    move-object/from16 v26, v13

    const/4 v13, 0x0

    :try_start_7
    invoke-direct {v14, v13, v8}, Lcom/sgscq/vpn/h;-><init>(ILandroid/content/Context;)V

    const/4 v13, 0x3

    invoke-virtual {v14, v13}, Lcom/sgscq/vpn/h;->d(I)Z

    move-result v13
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_1a

    :catch_6
    move-object/from16 v26, v13

    :catch_7
    :goto_19
    const/4 v13, 0x0

    :goto_1a
    if-nez v15, :cond_2c

    move-object/from16 v37, v11

    goto :goto_1b

    :cond_2c
    const-string v14, "init"

    .line 40
    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v37, v11

    instance-of v11, v14, Ljava/util/Map;

    if-nez v11, :cond_2d

    goto :goto_1b

    :cond_2d
    check-cast v14, Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v11, "skipRounds"

    invoke-interface {v14, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v15, v13}, Lcom/sgscq/vpn/p5;->h(Ljava/util/Map;Z)V

    .line 41
    :goto_1b
    iget v1, v12, Lcom/sgscq/vpn/handler/s;->b:I

    iget v11, v12, Lcom/sgscq/vpn/handler/s;->e:I

    iget v13, v12, Lcom/sgscq/vpn/handler/s;->f:I

    invoke-static {v11, v13}, Lcom/sgscq/vpn/battle/BattleStarCalculator;->ceilPercent(II)I

    move-result v14

    iget-boolean v15, v12, Lcom/sgscq/vpn/handler/s;->g:Z

    if-nez v15, :cond_2e

    const/4 v13, 0x0

    const/4 v15, 0x1

    goto :goto_1c

    :cond_2e
    const/4 v15, 0x1

    .line 42
    invoke-static {v15, v11, v13}, Lcom/sgscq/vpn/battle/BattleStarCalculator;->calculate(ZII)I

    move-result v13

    :goto_1c
    move/from16 v35, v14

    const-string v14, "user_level"

    .line 43
    invoke-virtual {v3, v15, v14, v7}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v15

    move/from16 v41, v11

    const-string v11, "user_experience"

    move/from16 v42, v1

    const/4 v1, 0x0

    move-object/from16 v43, v9

    invoke-virtual {v3, v1, v11, v7}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v9

    invoke-virtual {v10, v15, v9, v1}, Lcom/sgscq/vpn/handler/w;->h(III)Ll/c;

    move-result-object v9

    move-object/from16 v15, v34

    move/from16 v34, v0

    invoke-virtual {v15, v4}, Lcom/sgscq/vpn/handler/x;->e(Ljava/lang/String;)I

    move-result v0

    .line 44
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 45
    iget-object v1, v3, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v1

    move-object/from16 v44, v2

    iget v2, v9, Ll/c;->a:I

    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/w1;->y0(I)I

    move-result v1

    .line 46
    invoke-static {v1, v6}, Lcom/sgscq/vpn/handler/x;->C(II)I

    move-result v1

    move/from16 v45, v13

    .line 47
    iget-object v13, v15, Lcom/sgscq/vpn/handler/x;->a:Lcom/sgscq/vpn/handler/k0;

    move-object/from16 v46, v15

    iget-object v15, v13, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    invoke-static {v15}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v15

    invoke-static {v15, v4}, Lcom/sgscq/vpn/handler/x;->h(Lcom/sgscq/vpn/w1;Ljava/lang/String;)I

    move-result v15

    move-object/from16 v47, v13

    const/4 v13, 0x0

    .line 48
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 49
    invoke-static {v1, v8}, Lcom/sgscq/vpn/p5;->B0(ILandroid/content/Context;)I

    move-result v1

    .line 50
    invoke-static {v7}, Lcom/sgscq/vpn/cloud/m0;->n2(Ljava/util/Map;)I

    move-result v13

    if-gtz v15, :cond_2f

    const/4 v13, 0x0

    move-object/from16 v48, v14

    goto :goto_1d

    .line 51
    :cond_2f
    invoke-static {v13}, Lcom/sgscq/vpn/cloud/m0;->U0(I)D

    move-result-wide v27

    move-object/from16 v48, v14

    int-to-double v13, v15

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    add-double v27, v27, v29

    mul-double v27, v27, v13

    const-wide v13, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    add-double v27, v27, v13

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    .line 52
    :goto_1d
    invoke-static {v13, v8}, Lcom/sgscq/vpn/p5;->B0(ILandroid/content/Context;)I

    move-result v13

    .line 53
    iget-boolean v14, v12, Lcom/sgscq/vpn/handler/s;->g:Z

    const/4 v15, 0x0

    .line 54
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v14, :cond_30

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1e

    :cond_30
    move v0, v15

    :goto_1e
    if-eqz v14, :cond_31

    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_1f

    :cond_31
    const/4 v13, 0x0

    .line 55
    :goto_1f
    invoke-virtual {v3}, Lcom/sgscq/vpn/handler/k0;->a()I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v3, v14, v15, v7}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    move-result-wide v14

    move-object/from16 v49, v12

    move/from16 v50, v13

    int-to-long v12, v0

    add-long/2addr v14, v12

    iget v9, v9, Ll/c;->b:I

    invoke-virtual {v10, v2, v9, v1}, Lcom/sgscq/vpn/handler/w;->h(III)Ll/c;

    move-result-object v9

    move-wide/from16 v27, v14

    iget v14, v9, Ll/c;->b:I

    iget v9, v9, Ll/c;->a:I

    sub-int/2addr v5, v6

    move/from16 v51, v0

    move v15, v1

    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v0

    move/from16 v52, v6

    if-le v9, v2, :cond_32

    invoke-static {v8}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v6

    invoke-virtual {v6, v2, v9}, Lcom/sgscq/vpn/w1;->u(II)Ljava/util/LinkedHashMap;

    move-result-object v2

    goto :goto_20

    :cond_32
    const/4 v2, 0x0

    :goto_20
    if-eqz v2, :cond_33

    invoke-virtual {v10, v7, v2}, Lcom/sgscq/vpn/handler/w;->m(Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    invoke-virtual {v3}, Lcom/sgscq/vpn/handler/k0;->a()I

    move-result v6

    move-wide/from16 v53, v0

    int-to-long v0, v6

    invoke-virtual {v3, v0, v1, v7}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    move-result-wide v0

    add-long/2addr v0, v12

    goto :goto_21

    :cond_33
    move-wide/from16 v53, v0

    move-wide/from16 v0, v27

    :goto_21
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v12, "user_coin"

    invoke-interface {v7, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v13, v48

    invoke-interface {v7, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v7}, Lcom/sgscq/vpn/handler/w;->d1(Ljava/util/Map;)V

    invoke-static {v7}, Lcom/sgscq/vpn/handler/d1;->K0(Ljava/util/Map;)Z

    move-result v6

    invoke-virtual {v3}, Lcom/sgscq/vpn/handler/k0;->d()I

    move-result v29

    .line 56
    iget-object v13, v3, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    invoke-static {v13}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v13

    move-object/from16 v55, v11

    const-string v11, "RevertPowerSeconds"

    move-object/from16 v56, v2

    const/16 v2, 0x12c

    invoke-virtual {v13, v11, v2}, Lcom/sgscq/vpn/w1;->U0(Ljava/lang/String;I)I

    move-result v30

    move-object/from16 v27, v7

    move/from16 v28, v5

    move-wide/from16 v31, v53

    .line 57
    invoke-static/range {v27 .. v32}, Lcom/sgscq/vpn/p5;->f(Ljava/util/Map;IIIJ)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move/from16 v13, v50

    invoke-virtual {v10, v13, v2, v7}, Lcom/sgscq/vpn/handler/w;->i(ILjava/util/ArrayList;Ljava/util/Map;)V

    move-object/from16 v11, v49

    move/from16 v49, v6

    iget-boolean v6, v11, Lcom/sgscq/vpn/handler/s;->g:Z

    move-object/from16 v50, v12

    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/handler/w;->s0()Ljava/util/ArrayList;

    move-result-object v12

    move/from16 v57, v13

    const/4 v13, 0x1

    invoke-static {v7, v12, v6, v13}, Lcom/sgscq/vpn/handler/w;->k(Ljava/util/Map;Ljava/util/ArrayList;ZI)V

    iget-boolean v6, v11, Lcom/sgscq/vpn/handler/s;->g:Z

    if-eqz v6, :cond_37

    const-string v6, "dungeon_stars"

    .line 58
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Ljava/util/Map;

    if-eqz v13, :cond_34

    check-cast v12, Ljava/util/Map;

    goto :goto_22

    :cond_34
    instance-of v13, v12, Ljava/lang/String;

    if-eqz v13, :cond_35

    :try_start_8
    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v12
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_22

    :catch_8
    :cond_35
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 59
    :goto_22
    invoke-static {v4, v12}, Lcom/sgscq/vpn/handler/x;->x(Ljava/lang/String;Ljava/util/Map;)I

    move-result v13

    move/from16 v58, v15

    move/from16 v15, v45

    if-le v15, v13, :cond_36

    invoke-static {v15, v4, v12}, Lcom/sgscq/vpn/handler/x;->z(ILjava/lang/String;Ljava/util/Map;)V

    invoke-static {v12}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "[DungeonService] dungeon="

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " star "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " -> "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v12, v44

    invoke-static {v12, v6}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :cond_36
    move-object/from16 v12, v44

    goto :goto_23

    :cond_37
    move/from16 v58, v15

    move-object/from16 v12, v44

    move/from16 v15, v45

    .line 60
    :goto_23
    invoke-static {v4, v7}, Lcom/sgscq/vpn/handler/x;->n(Ljava/lang/String;Ljava/util/Map;)V

    iget-boolean v6, v11, Lcom/sgscq/vpn/handler/s;->g:Z

    if-eqz v6, :cond_3e

    const-string v6, " position="

    const-string v13, " map="

    move-wide/from16 v44, v0

    const-string v0, " changed="

    if-eqz v4, :cond_3b

    const-string v1, "105"

    .line 61
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_3b

    move/from16 v59, v5

    .line 62
    invoke-static {v4}, Lcom/sgscq/vpn/handler/w;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3a

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    goto/16 :goto_25

    :cond_38
    invoke-static {v8}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v1

    move/from16 v60, v14

    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v1}, Lcom/sgscq/vpn/w1;->g0()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_24
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_39

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    move/from16 v61, v9

    move-object/from16 v9, v27

    check-cast v9, Ljava/lang/String;

    move/from16 v62, v15

    invoke-virtual {v1, v9, v9}, Lcom/sgscq/vpn/w1;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v14, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v9, v61

    move/from16 v15, v62

    goto :goto_24

    :cond_39
    move/from16 v61, v9

    move/from16 v62, v15

    invoke-virtual {v1}, Lcom/sgscq/vpn/w1;->g0()Ljava/util/ArrayList;

    move-result-object v29

    const-string v31, "user_elite_map_step"

    const-string v32, "user_elite_position_step"

    const/16 v33, 0x1

    move-object/from16 v27, v7

    move-object/from16 v28, v5

    move-object/from16 v30, v14

    invoke-static/range {v27 .. v33}, Lcom/sgscq/vpn/handler/w;->g(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "[Dungeon] advanceEliteMap dungeon="

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/sgscq/vpn/handler/w;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "user_elite_map_step"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "user_elite_position_step"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_27

    :cond_3a
    :goto_25
    move/from16 v61, v9

    move/from16 v60, v14

    move/from16 v62, v15

    goto/16 :goto_27

    :cond_3b
    move/from16 v59, v5

    move/from16 v61, v9

    move/from16 v60, v14

    move/from16 v62, v15

    .line 63
    invoke-static {v4}, Lcom/sgscq/vpn/handler/w;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3f

    const-string v5, "5\\d{5}"

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3c

    goto/16 :goto_27

    :cond_3c
    invoke-static {v8}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v5

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v5}, Lcom/sgscq/vpn/w1;->j0()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_26
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v27, v14

    invoke-virtual {v5, v15}, Lcom/sgscq/vpn/w1;->l0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v9, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v14, v27

    goto :goto_26

    :cond_3d
    invoke-virtual {v5}, Lcom/sgscq/vpn/w1;->j0()Ljava/util/ArrayList;

    move-result-object v29

    const-string v31, "user_map_step"

    const-string v32, "user_position_step"

    const/16 v33, 0x0

    move-object/from16 v27, v7

    move-object/from16 v28, v1

    move-object/from16 v30, v9

    invoke-static/range {v27 .. v33}, Lcom/sgscq/vpn/handler/w;->g(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "[Dungeon] advanceMap dungeon="

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sgscq/vpn/handler/w;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "user_position_step"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    :cond_3e
    move-wide/from16 v44, v0

    move/from16 v59, v5

    goto/16 :goto_25

    .line 64
    :cond_3f
    :goto_27
    iget-boolean v0, v11, Lcom/sgscq/vpn/handler/s;->g:Z

    const/4 v1, 0x1

    invoke-static {v1, v4, v7, v0}, Lcom/sgscq/vpn/handler/w;->P0(ILjava/lang/String;Ljava/util/Map;Z)V

    iget-boolean v0, v11, Lcom/sgscq/vpn/handler/s;->g:Z

    if-eqz v0, :cond_40

    move-object/from16 v0, v46

    .line 65
    invoke-virtual {v0, v4}, Lcom/sgscq/vpn/handler/x;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move/from16 v5, v34

    invoke-virtual {v10, v7, v1, v5}, Lcom/sgscq/vpn/handler/w;->Z(Ljava/util/Map;Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_28

    :cond_40
    move/from16 v5, v34

    move-object/from16 v0, v46

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_28
    iget-boolean v6, v11, Lcom/sgscq/vpn/handler/s;->g:Z

    if-eqz v6, :cond_41

    invoke-virtual {v10, v7}, Lcom/sgscq/vpn/handler/w;->w0(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v6

    if-eqz v6, :cond_41

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    iget-boolean v6, v11, Lcom/sgscq/vpn/handler/s;->g:Z

    const-string v9, "pk_id"

    if-eqz v6, :cond_4e

    .line 67
    new-instance v6, Lcom/sgscq/vpn/handler/v;

    invoke-direct {v6}, Lcom/sgscq/vpn/handler/v;-><init>()V

    if-nez v5, :cond_42

    move-object/from16 v34, v0

    move-object/from16 v46, v1

    move-object/from16 v63, v9

    move-object/from16 v1, v20

    move-object/from16 v20, v3

    goto/16 :goto_32

    .line 68
    :cond_42
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v13

    invoke-virtual {v0, v4}, Lcom/sgscq/vpn/handler/x;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_29
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_44

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    move-object/from16 v16, v14

    const-string v14, "id"

    const-string v10, "item_id"

    move-object/from16 v46, v1

    move-object/from16 v1, v20

    .line 69
    invoke-static {v15, v14, v1, v10}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 70
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_43

    invoke-static {v13, v10}, Lcom/sgscq/vpn/handler/w;->o0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_43

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_43

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_43
    move-object/from16 v10, p0

    move-object/from16 v20, v1

    move-object/from16 v14, v16

    move-object/from16 v1, v46

    goto :goto_29

    :cond_44
    move-object/from16 v46, v1

    move-object/from16 v1, v20

    invoke-static {v4}, Lcom/sgscq/vpn/handler/w;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    .line 71
    invoke-static {v13}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v13

    const-string v14, "GuideChapter_Surrender"

    const-string v15, "503002"

    invoke-virtual {v13, v14, v15}, Lcom/sgscq/vpn/w1;->V0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "GuideChapter_Surrender_GeneralId"

    move-object/from16 v34, v0

    const-string v0, "142022"

    invoke-virtual {v13, v15, v0}, Lcom/sgscq/vpn/w1;->V0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14}, Lcom/sgscq/vpn/handler/w;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_45

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_2a

    :cond_45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 72
    :goto_2a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_46
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_46

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 73
    :cond_47
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    iget-object v10, v6, Lcom/sgscq/vpn/handler/v;->a:Ljava/util/ArrayList;

    if-eqz v5, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 74
    invoke-static {v5, v7}, Lcom/sgscq/vpn/handler/w;->f0(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v13

    if-eqz v13, :cond_48

    goto :goto_2d

    :cond_48
    invoke-static {v8}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v13

    invoke-virtual {v13, v5, v7}, Lcom/sgscq/vpn/w1;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v14

    if-nez v14, :cond_49

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "[StoryGeneral] skip non-surrenderable story reward general_id="

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2d
    move-object/from16 v16, v0

    move-object/from16 v20, v3

    move-object/from16 v63, v9

    goto :goto_30

    :cond_49
    invoke-interface {v14, v9, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v0

    const-string v0, "Skill"

    invoke-static {v0, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v27, v0

    move-object/from16 v0, v20

    check-cast v0, Ljava/util/Map;

    .line 75
    invoke-static {v0, v9, v1, v15}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4a

    goto :goto_2f

    :cond_4a
    move-object/from16 v0, v27

    goto :goto_2e

    :cond_4b
    const/4 v0, 0x0

    :goto_2f
    const-string v15, "general_id"

    move-object/from16 v20, v3

    const/4 v3, 0x0

    .line 76
    invoke-static {v15, v5, v3, v7}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    const-string v15, "skill_id"

    move-object/from16 v63, v9

    invoke-virtual {v13, v5}, Lcom/sgscq/vpn/w1;->T0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9, v3, v7}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    iget-object v3, v6, Lcom/sgscq/vpn/handler/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_4c

    iget-object v3, v6, Lcom/sgscq/vpn/handler/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4c
    invoke-static {v13, v5}, Lcom/sgscq/vpn/handler/w;->u(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[StoryGeneral] owned story reward general_id="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_30
    move-object/from16 v0, v16

    move-object/from16 v3, v20

    move-object/from16 v9, v63

    goto/16 :goto_2c

    :cond_4d
    move-object/from16 v20, v3

    move-object/from16 v63, v9

    .line 77
    invoke-static {v8}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sgscq/vpn/w1;->n1(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 79
    invoke-static {v8}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/sgscq/vpn/handler/w;->u(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "[StoryGeneral] temporary story general show only general_id="

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    :cond_4e
    move-object/from16 v34, v0

    move-object/from16 v46, v1

    move-object/from16 v63, v9

    move-object/from16 v1, v20

    move-object/from16 v20, v3

    .line 80
    new-instance v6, Lcom/sgscq/vpn/handler/v;

    invoke-direct {v6}, Lcom/sgscq/vpn/handler/v;-><init>()V

    :cond_4f
    :goto_32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, "general_id"

    .line 81
    invoke-static {v8, v5}, Lc/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v5

    const-string v29, "exp"

    const/16 v27, 0x0

    const-string v31, "level_before"

    const/16 v32, 0x1

    const-string v33, "level_now"

    move-object/from16 v28, v5

    move/from16 v30, v32

    .line 82
    invoke-static/range {v27 .. v33}, Lc/a;->s(ILjava/util/LinkedHashMap;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 83
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_50
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-boolean v2, v11, Lcom/sgscq/vpn/handler/s;->g:Z

    if-eqz v2, :cond_57

    const-string v2, "step"

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_51

    goto :goto_34

    .line 84
    :cond_51
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9

    const v5, 0xea60

    if-lt v2, v5, :cond_52

    const v5, 0x13880

    if-ge v2, v5, :cond_52

    const/4 v2, 0x1

    goto :goto_35

    :catch_9
    :cond_52
    :goto_34
    const/4 v2, 0x0

    :goto_35
    if-eqz v2, :cond_58

    .line 85
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "newbie_gift_granted"

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v8, "Item"

    invoke-static {v8, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_53
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v13, "id"

    const-string v14, "item_id"

    const-string v15, "720001"

    if-eqz v12, :cond_54

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 86
    invoke-static {v12, v13, v1, v14, v15}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_53

    .line 87
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    :cond_54
    if-eqz v2, :cond_55

    const/4 v12, 0x0

    :goto_36
    move-object/from16 v43, v1

    move-object/from16 v16, v6

    move-object/from16 v6, v63

    goto/16 :goto_38

    :cond_55
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 88
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v10, 0x0

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    move-object/from16 v43, v1

    const-string v1, "0"

    if-eqz v16, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v27, v2

    move-object/from16 v2, v16

    check-cast v2, Ljava/util/Map;

    move-object/from16 v16, v6

    move-object/from16 v6, v63

    :try_start_a
    invoke-interface {v2, v6, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_a

    move v10, v1

    :catch_a
    move-object/from16 v63, v6

    move-object/from16 v6, v16

    move-object/from16 v2, v27

    move-object/from16 v1, v43

    goto :goto_37

    :cond_56
    move-object/from16 v16, v6

    move-object/from16 v6, v63

    const/16 v32, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-interface {v12, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v31, "item_num"

    const-string v33, "num"

    move-object/from16 v27, v12

    move-object/from16 v28, v14

    move-object/from16 v29, v15

    move/from16 v30, v32

    .line 90
    invoke-static/range {v27 .. v33}, Lc/a;->z(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    const-string v2, "effect_time"

    .line 91
    invoke-interface {v12, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "is_new"

    invoke-interface {v12, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "add"

    const-string v10, "upd"

    filled-new-array {v10, v2, v5, v9}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "del"

    invoke-static {v5, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    :cond_57
    move-object/from16 v3, p2

    :cond_58
    move-object/from16 v43, v1

    move-object/from16 v16, v6

    move-object/from16 v6, v63

    const/4 v12, 0x0

    :goto_38
    move-object/from16 v1, v20

    .line 92
    iget-object v2, v1, Lcom/sgscq/vpn/handler/k0;->c:Landroid/content/SharedPreferences;

    move-object/from16 v5, p1

    invoke-static {v5, v7, v3, v2}, Lcom/sgscq/vpn/cloud/m0;->Y1(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Landroid/content/SharedPreferences;)Z

    move-object/from16 v2, v34

    invoke-virtual {v2, v4}, Lcom/sgscq/vpn/handler/x;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v4}, Lcom/sgscq/vpn/handler/x;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v27, "rounds"

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const-string v29, "residue_team_num"

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const-string v31, "residue_team_percent"

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    filled-new-array/range {v27 .. v32}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "star_level"

    invoke-static {v10, v8, v9}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v10, v37

    invoke-virtual {v1, v9, v10, v7}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v30

    move/from16 v27, v61

    move/from16 v28, v60

    move/from16 v29, v59

    move-wide/from16 v31, v44

    move-object/from16 v33, v5

    move-object/from16 v34, v7

    invoke-static/range {v27 .. v34}, Lcom/sgscq/vpn/handler/w;->p(IIIIJLjava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v9

    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    iget-boolean v14, v11, Lcom/sgscq/vpn/handler/s;->g:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v15, v36

    invoke-interface {v13, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    .line 93
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v10, "fight_type"

    invoke-interface {v13, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "star"

    .line 94
    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "star_level"

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "dungeon_starLevel"

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "fight_calculate_info"

    .line 95
    invoke-interface {v13, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "player_info"

    invoke-interface {v13, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "show_general_info"

    invoke-interface {v13, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "add_list"

    move-object/from16 v8, v46

    invoke-interface {v13, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v27, "user_exp"

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const-string v29, "general_exp"

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const-string v31, "add_list"

    move-object/from16 v32, v8

    filled-new-array/range {v27 .. v32}, [Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v10, v50

    invoke-static {v10, v0, v9}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v9, "drop_info"

    invoke-interface {v13, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sgscq/vpn/handler/j;

    invoke-direct {v0}, Lcom/sgscq/vpn/handler/j;-><init>()V

    iget-boolean v9, v11, Lcom/sgscq/vpn/handler/s;->g:Z

    if-eqz v9, :cond_59

    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/handler/w;->s0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/sgscq/vpn/handler/y0;->c(Ljava/util/List;Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/j;->c()Z

    move-result v9

    if-eqz v9, :cond_59

    .line 96
    iget-object v9, v0, Lcom/sgscq/vpn/handler/j;->d:Ljava/lang/Object;

    check-cast v9, Ljava/util/Map;

    .line 97
    invoke-static {v9}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_39

    :cond_59
    move-object/from16 v9, v43

    :goto_39
    iget-boolean v14, v11, Lcom/sgscq/vpn/handler/s;->g:Z

    if-eqz v14, :cond_5a

    move-object/from16 v14, p0

    invoke-virtual {v14, v7}, Lcom/sgscq/vpn/handler/w;->C(Ljava/util/Map;)I

    move-result v31

    move-object/from16 v50, v10

    iget-object v10, v14, Lcom/sgscq/vpn/handler/w;->c:Ljava/util/Random;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lcom/sgscq/vpn/handler/q;

    move-object/from16 p1, v2

    const/4 v2, 0x1

    invoke-direct {v14, v2, v10}, Lcom/sgscq/vpn/handler/q;-><init>(ILjava/util/Random;)V

    move-object/from16 v27, v7

    move/from16 v28, v52

    move-wide/from16 v29, v53

    move-object/from16 v32, v14

    invoke-static/range {v27 .. v32}, Lcom/sgscq/vpn/cloud/m0;->X2(Ljava/util/Map;IJILcom/sgscq/vpn/handler/q;)Lcom/sgscq/vpn/t6;

    move-result-object v2

    goto :goto_3a

    :cond_5a
    move-object/from16 p1, v2

    move-object/from16 v50, v10

    .line 98
    new-instance v2, Lcom/sgscq/vpn/t6;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    invoke-direct {v2, v14, v10}, Lcom/sgscq/vpn/t6;-><init>(ILjava/util/ArrayList;)V

    :goto_3a
    move-object/from16 v10, v22

    .line 99
    invoke-virtual {v10, v5, v7}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v14, v16

    invoke-static {v7, v8, v14}, Lcom/sgscq/vpn/handler/w;->s(Ljava/util/Map;Ljava/util/ArrayList;Lcom/sgscq/vpn/handler/v;)Ljava/util/HashMap;

    move-result-object v8

    if-eqz v12, :cond_5f

    move-object/from16 p2, v3

    const-string v3, "Item"

    move-object/from16 v16, v9

    .line 100
    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v20, v13

    instance-of v13, v9, Ljava/util/Map;

    move-object/from16 v36, v15

    const-string v15, "upd"

    if-eqz v13, :cond_5b

    check-cast v9, Ljava/util/Map;

    move-object/from16 v22, v4

    move-object/from16 v41, v14

    goto :goto_3b

    :cond_5b
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v22, v4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v41, v14

    const-string v14, "add"

    filled-new-array {v15, v13, v14, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v13, "del"

    invoke-static {v13, v9, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3b
    invoke-interface {v9, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_5c

    check-cast v3, Ljava/util/List;

    goto :goto_3c

    .line 101
    :cond_5c
    invoke-static {v9, v15}, Lc/a;->o(Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    :goto_3c
    move-object/from16 v4, v43

    .line 102
    invoke-interface {v12, v6, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    .line 103
    invoke-static {v14, v6, v4, v9}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5d

    goto :goto_3d

    .line 104
    :cond_5e
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_5f
    move-object/from16 p2, v3

    move-object/from16 v22, v4

    move-object/from16 v16, v9

    move-object/from16 v20, v13

    move-object/from16 v41, v14

    move-object/from16 v36, v15

    move-object/from16 v4, v43

    .line 105
    :goto_3d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v8, v3}, Lcom/sgscq/vpn/handler/j;->a(Ljava/util/Map;Ljava/util/AbstractCollection;)V

    iget-boolean v3, v11, Lcom/sgscq/vpn/handler/s;->g:Z

    if-eqz v3, :cond_60

    const/4 v3, 0x1

    .line 106
    invoke-static {v7, v3, v3}, Lcom/sgscq/vpn/handler/m;->o(Ljava/util/Map;II)Lcom/sgscq/vpn/handler/j;

    move-result-object v3

    goto :goto_3e

    .line 107
    :cond_60
    invoke-static {}, Lcom/sgscq/vpn/handler/j;->d()Lcom/sgscq/vpn/handler/j;

    move-result-object v3

    :goto_3e
    iget-object v6, v3, Lcom/sgscq/vpn/handler/j;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .line 108
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_61

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_61
    iget-object v2, v2, Lcom/sgscq/vpn/t6;->b:Ljava/util/List;

    if-eqz v2, :cond_62

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
    :cond_62
    iget-boolean v2, v3, Lcom/sgscq/vpn/handler/j;->b:Z

    if-eqz v2, :cond_63

    .line 110
    invoke-static {v8, v7, v3}, Lcom/sgscq/vpn/handler/w;->a(Ljava/util/HashMap;Ljava/util/Map;Lcom/sgscq/vpn/handler/j;)V

    invoke-virtual {v10, v5, v7}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_63
    move-wide/from16 v12, v53

    long-to-int v2, v12

    const-string v6, "user_gold"

    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->c()I

    move-result v12

    invoke-virtual {v1, v12, v6, v7}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v29

    iget-object v6, v1, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    const-string v12, "user_energy"

    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->b()I

    move-result v13

    invoke-virtual {v1, v13, v12, v7}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v30

    move-object/from16 v27, v6

    move/from16 v28, v2

    move/from16 v31, v59

    move-wide/from16 v32, v44

    move-object/from16 v34, v5

    move-object/from16 v35, v7

    invoke-virtual/range {v27 .. v35}, Lcom/sgscq/vpn/h5;->u(IIIIJLjava/lang/String;Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v6, v41

    iget-object v5, v6, Lcom/sgscq/vpn/handler/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_64

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v10, v7, v0}, Lcom/sgscq/vpn/h5;->m(Ljava/util/Map;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    .line 111
    :cond_64
    iget-boolean v0, v0, Lcom/sgscq/vpn/handler/j;->a:Z

    if-eqz v0, :cond_65

    .line 112
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v27, "General"

    const-string v28, "Skill"

    const-string v29, "TeamGeneral"

    const-string v30, "Item"

    const-string v31, "Equipment"

    const-string v32, "EquipmentPiece"

    const-string v33, "Atlas"

    const-string v34, "GeneralSoul"

    const-string v35, "SkillPiece"

    filled-new-array/range {v27 .. v35}, [Ljava/lang/String;

    move-result-object v2

    move/from16 v5, v49

    invoke-static {v5, v2}, Lcom/sgscq/vpn/handler/w;->e1(Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v8, v0, v2}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    :cond_65
    move/from16 v5, v49

    .line 113
    iget-boolean v0, v3, Lcom/sgscq/vpn/handler/j;->b:Z

    if-eqz v0, :cond_66

    .line 114
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Lcom/sgscq/vpn/handler/w;->D(Lcom/sgscq/vpn/handler/j;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/sgscq/vpn/handler/w;->e1(Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v8, v0, v2}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    :cond_66
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v27, "General"

    const-string v28, "Skill"

    const-string v29, "TeamGeneral"

    const-string v30, "Item"

    const-string v31, "Equipment"

    const-string v32, "EquipmentPiece"

    const-string v33, "Atlas"

    const-string v34, "GeneralSoul"

    const-string v35, "SkillPiece"

    filled-new-array/range {v27 .. v35}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/sgscq/vpn/handler/w;->e1(Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v8, v0, v2}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3f
    move-object/from16 v2, v22

    invoke-virtual {v10, v2, v7}, Lcom/sgscq/vpn/h5;->p(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/sgscq/vpn/handler/w;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5, v7}, Lcom/sgscq/vpn/h5;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v11, Lcom/sgscq/vpn/handler/s;->a:Ljava/util/Map;

    invoke-static {v6}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/sgscq/vpn/y1;

    invoke-direct {v8}, Lcom/sgscq/vpn/y1;-><init>()V

    const/4 v10, 0x0

    move-object/from16 v13, v26

    invoke-virtual {v8, v13, v10}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    move-object/from16 v14, v25

    invoke-virtual {v8, v14, v10}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    move-object/from16 v15, v24

    invoke-virtual {v8, v15, v10}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const/4 v10, 0x1

    move-object/from16 v12, v23

    invoke-virtual {v8, v12, v10}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    move-object/from16 v10, v21

    move-object/from16 v11, v36

    invoke-virtual {v8, v10, v11}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "fight_info"

    invoke-virtual {v8, v10, v6}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "fight_result"

    invoke-static/range {v20 .. v20}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v6, v10}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "cmn"

    invoke-virtual {v8, v6, v0}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0, v3}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v5}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v5}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_67

    const-string v0, "meeting_info"

    invoke-static {v9}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "meeting_list"

    invoke-static {v9}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {v9}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "surrender_info"

    move-object/from16 v9, v16

    invoke-virtual {v8, v0, v9}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    if-eqz v56, :cond_69

    const-string v0, "user_level_up_info"

    invoke-static/range {v56 .. v56}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6a

    goto :goto_41

    :cond_6a
    :goto_40
    move-wide/from16 v2, v44

    move-object/from16 v0, v50

    goto/16 :goto_47

    :cond_6b
    :goto_41
    const-string v0, "dungeon_id"

    .line 115
    invoke-static {v0, v2}, Lc/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object/from16 v3, v47

    .line 116
    :try_start_b
    iget-object v5, v3, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v5

    .line 117
    iget-object v6, v5, Lcom/sgscq/vpn/w1;->C:Ljava/util/HashMap;

    if-nez v6, :cond_6c

    .line 118
    invoke-virtual {v5}, Lcom/sgscq/vpn/w1;->J1()V

    :cond_6c
    if-nez v2, :cond_6d

    move-object v6, v4

    move-object/from16 v10, v38

    move-object/from16 v9, v39

    goto :goto_42

    .line 119
    :cond_6d
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    move-object/from16 v9, v39

    :try_start_c
    invoke-virtual {v6, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    if-eqz v10, :cond_6e

    move-object/from16 v10, v38

    :try_start_d
    invoke-virtual {v6, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_42

    :cond_6e
    move-object/from16 v10, v38

    .line 120
    :goto_42
    iget-object v5, v5, Lcom/sgscq/vpn/w1;->C:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    if-eqz v5, :cond_6f

    goto :goto_44

    :catch_b
    move-object/from16 v10, v38

    goto :goto_43

    :catch_c
    move-object/from16 v10, v38

    move-object/from16 v9, v39

    :catch_d
    :cond_6f
    :goto_43
    const/4 v6, 0x0

    :goto_44
    const-string v5, "before_dialog_id"

    .line 121
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :try_start_e
    iget-object v3, v3, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v3

    .line 123
    iget-object v5, v3, Lcom/sgscq/vpn/w1;->C:Ljava/util/HashMap;

    if-nez v5, :cond_70

    .line 124
    invoke-virtual {v3}, Lcom/sgscq/vpn/w1;->J1()V

    :cond_70
    iget-object v3, v3, Lcom/sgscq/vpn/w1;->C:Ljava/util/HashMap;

    if-nez v2, :cond_71

    move-object v5, v4

    goto :goto_45

    .line 125
    :cond_71
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-virtual {v5, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    :cond_72
    :goto_45
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_46

    :catch_e
    const/4 v2, 0x0

    :goto_46
    const-string v3, "after_dialog_id"

    .line 127
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "before"

    move-object/from16 v3, p2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "after"

    move-object/from16 v3, p1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "plot_dialog"

    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_40

    :goto_47
    invoke-virtual {v8, v2, v3, v0}, Lcom/sgscq/vpn/y1;->d(JLjava/lang/String;)V

    move-object/from16 v0, v55

    move/from16 v2, v60

    invoke-virtual {v8, v0, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    move-object/from16 v0, v48

    move/from16 v2, v61

    invoke-virtual {v8, v0, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "level"

    invoke-virtual {v8, v0, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "roleLevel"

    invoke-virtual {v8, v0, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const-string v0, "role_level"

    invoke-virtual {v8, v0, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    move-object/from16 v0, v40

    move/from16 v5, v59

    invoke-virtual {v8, v0, v5}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    const/4 v0, 0x0

    move-object/from16 v2, v37

    invoke-virtual {v1, v0, v2, v7}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    invoke-virtual {v8, v2, v0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    invoke-virtual {v8}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    move-result-object v0

    :goto_48
    return-object v0

    :cond_73
    move-object v3, v2

    move-object v12, v10

    move-object/from16 v11, v36

    move-object v10, v9

    const/4 v2, 0x0

    const-string v4, "dungeon.multiKill"

    .line 128
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    move-object/from16 v4, p0

    invoke-virtual {v4, v3, v2}, Lcom/sgscq/vpn/handler/w;->c0(Ljava/util/Map;Z)[B

    move-result-object v0

    return-object v0

    :cond_74
    move-object/from16 v4, p0

    const-string v2, "dungeon.multiKillSpecialInfo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 129
    invoke-static {}, Lcom/sgscq/vpn/handler/w;->J0()Ljava/util/ArrayList;

    move-result-object v0

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v5, Lcom/sgscq/vpn/p5;->J:[I

    const/4 v6, 0x0

    :goto_49
    if-ge v6, v3, :cond_75

    aget v7, v5, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    .line 131
    :cond_75
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v16, 0x0

    move-object v5, v11

    move/from16 v11, v16

    move-object v6, v5

    move-object v5, v12

    move-object v12, v3

    move-object v7, v14

    move/from16 v14, v16

    move-object v8, v15

    move-object v15, v7

    move-object/from16 v17, v8

    .line 132
    invoke-static/range {v11 .. v17}, Lc/a;->s(ILjava/util/LinkedHashMap;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 133
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "peach_price_list"

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "challenge_price_list"

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "PeachPriceList"

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ChallengePiceList"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {v3}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_76
    const-string v1, "dungeon.multiKillSpecial"

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    const/4 v0, 0x1

    invoke-virtual {v4, v3, v0}, Lcom/sgscq/vpn/handler/w;->c0(Ljava/util/Map;Z)[B

    move-result-object v0

    return-object v0

    :cond_77
    const-string v1, "dungeon.openBox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-virtual {v4, v3}, Lcom/sgscq/vpn/handler/w;->d0(Ljava/util/Map;)[B

    move-result-object v0

    return-object v0

    :cond_78
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b1(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)Lcom/sgscq/vpn/handler/s;
    .locals 53

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    const-string v0, "/"

    const-string v10, "\u73a9\u5bb6"

    const-string v11, "user_nickname"

    const-string v12, "SGSCQ_SRV"

    iget-object v13, v7, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    new-instance v14, Lcom/sgscq/vpn/handler/s;

    invoke-direct {v14}, Lcom/sgscq/vpn/handler/s;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, v13, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v6

    invoke-static/range {p3 .. p3}, Lcom/sgscq/vpn/handler/w;->P(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/sgscq/vpn/handler/w;->O(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_10

    const-string v4, "112018"

    const-string v5, "general_id"

    if-eqz v3, :cond_1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v4, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v6, v2, v9}, Lcom/sgscq/vpn/handler/w;->l(Lcom/sgscq/vpn/w1;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-virtual/range {p0 .. p1}, Lcom/sgscq/vpn/handler/w;->V(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/k;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10

    iget-object v1, v3, Lcom/sgscq/vpn/cloud/k;->d:Ljava/lang/Object;

    iget-object v15, v3, Lcom/sgscq/vpn/cloud/k;->c:Ljava/lang/Object;

    move-object/from16 v16, v15

    iget-object v15, v3, Lcom/sgscq/vpn/cloud/k;->b:Ljava/lang/Object;

    move-object/from16 v25, v3

    :try_start_2
    invoke-virtual {v7, v9}, Lcom/sgscq/vpn/handler/w;->N0(Ljava/util/Map;)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/sgscq/vpn/w1;->h1(I)I

    move-result v3

    move-object/from16 v17, v15

    const/4 v15, 0x1

    .line 1
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v15, 0x0

    move-object/from16 v26, v0

    goto :goto_1

    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v18, 0x0

    :cond_3
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_3

    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v26, v0

    move/from16 v15, v18

    :goto_1
    const/4 v0, 0x1

    .line 3
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_10

    move-object/from16 v27, v10

    const/4 v10, 0x0

    .line 4
    :try_start_3
    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/2addr v10, v0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    const/4 v15, 0x0

    :goto_2
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v15

    move-object/from16 v15, v18

    check-cast v15, Ljava/lang/String;

    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_5

    goto :goto_3

    :cond_5
    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-virtual {v6, v15}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_f

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v29, 0x0

    move-object/from16 v38, v11

    move-object/from16 v36, v16

    move-object/from16 v37, v17

    move/from16 v11, v19

    move-object/from16 v17, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v6

    move/from16 v18, v20

    move/from16 v19, v21

    move-object/from16 v20, v22

    move/from16 v21, v23

    move/from16 v22, v24

    move/from16 v23, v29

    move/from16 v24, v29

    .line 6
    :try_start_4
    invoke-static/range {v15 .. v24}, Lcom/sgscq/vpn/handler/w;->t0(Ljava/util/Map;Lcom/sgscq/vpn/w1;Ljava/lang/String;IILjava/lang/String;ZZZZ)Lcom/sgscq/vpn/battle/BattleUnit;

    move-result-object v15

    .line 7
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v11, 0x1

    goto :goto_4

    :cond_6
    :goto_3
    move-object/from16 v38, v11

    move-object/from16 v36, v16

    move-object/from16 v37, v17

    move/from16 v11, v19

    move v15, v11

    :goto_4
    move-object/from16 v16, v36

    move-object/from16 v17, v37

    move-object/from16 v11, v38

    goto :goto_2

    :cond_7
    move-object/from16 v38, v11

    move v11, v15

    move-object/from16 v36, v16

    move-object/from16 v37, v17

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_e

    const/16 v16, 0x0

    move-object/from16 v39, v14

    move/from16 v14, v16

    :goto_5
    :try_start_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d

    if-eqz v16, :cond_9

    :try_start_6
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    check-cast v15, Ljava/util/Map;

    if-ge v14, v3, :cond_9

    move-object/from16 v28, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v10, :cond_8

    goto :goto_6

    :cond_8
    const-string v1, "id"

    invoke-interface {v15, v1, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v15, v5, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v18, v5

    const-string v5, "general_name"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-object/from16 v40, v13

    :try_start_7
    invoke-virtual {v6, v1}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v15, v5, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 8
    new-instance v13, Lcom/sgscq/vpn/handler/e;

    const/4 v8, 0x0

    invoke-direct {v13, v1, v8, v4}, Lcom/sgscq/vpn/handler/e;-><init>(Ljava/lang/String;II)V

    .line 9
    iput-object v15, v13, Lcom/sgscq/vpn/handler/e;->d:Ljava/util/Map;

    .line 10
    iput-object v9, v13, Lcom/sgscq/vpn/handler/e;->e:Ljava/util/Map;

    .line 11
    iput-object v6, v13, Lcom/sgscq/vpn/handler/e;->f:Lcom/sgscq/vpn/w1;

    .line 12
    iput-object v5, v13, Lcom/sgscq/vpn/handler/e;->g:Ljava/lang/String;

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, v13, Lcom/sgscq/vpn/handler/e;->j:Z

    const-wide v30, 0x407f400000000000L    # 500.0

    const-wide v32, 0x4072c00000000000L    # 300.0

    const-wide/high16 v34, 0x4069000000000000L    # 200.0

    move-object/from16 v29, v13

    .line 14
    invoke-virtual/range {v29 .. v35}, Lcom/sgscq/vpn/handler/e;->a(DDD)V

    invoke-static {v13}, Lcom/sgscq/vpn/handler/f;->a(Lcom/sgscq/vpn/handler/e;)Lcom/sgscq/vpn/battle/BattleUnit;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, p1

    move-object/from16 v4, v16

    move-object/from16 v15, v17

    move-object/from16 v5, v18

    move-object/from16 v1, v28

    move-object/from16 v13, v40

    goto :goto_5

    :catch_0
    move-exception v0

    move-object/from16 v40, v13

    goto/16 :goto_18

    :cond_9
    move-object/from16 v28, v1

    :goto_6
    move-object/from16 v40, v13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Dungeon] battle allies deployed="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " storyGuests="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " playerLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " totalLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " playerUsed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " storyGuestsUsed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " used="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Lcom/sgscq/vpn/handler/w;->N0(Ljava/util/Map;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v15, v37

    check-cast v15, Ljava/util/List;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v15, v36

    check-cast v15, Ljava/util/List;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c

    const/4 v1, 0x3

    const/4 v2, 0x0

    move-object/from16 v13, p1

    :try_start_8
    invoke-virtual {v13, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit16 v5, v1, -0x1f4

    invoke-virtual/range {p0 .. p1}, Lcom/sgscq/vpn/handler/w;->I(Ljava/lang/String;)I

    move-result v29
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-object/from16 v4, v40

    .line 16
    :try_start_9
    iget-object v1, v4, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/w;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/w1;->l0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v30

    .line 17
    invoke-static {v6}, Lcom/sgscq/vpn/handler/w;->Z0(Lcom/sgscq/vpn/w1;)Lcom/sgscq/vpn/handler/t;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/w;->k0(Ljava/lang/String;)Z

    move-result v31

    .line 18
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/w;->k0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/w;->K(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_7

    :cond_a
    const/4 v1, 0x0

    :goto_7
    move/from16 v32, v1

    const/4 v1, 0x0

    move v2, v1

    .line 19
    :goto_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b

    if-ge v2, v1, :cond_13

    :try_start_a
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v6, v1}, Lcom/sgscq/vpn/handler/w;->W0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    move-object/from16 v16, v28

    check-cast v16, Ljava/util/List;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    move-object/from16 v40, v4

    :try_start_b
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    if-ge v2, v4, :cond_10

    :try_start_c
    move-object/from16 v4, v28

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_e

    .line 20
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v16
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    if-eqz v16, :cond_b

    goto :goto_9

    :cond_b
    move-object/from16 p2, v10

    :try_start_d
    const-string v10, "battle_skills"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const-string v7, "battle_lieutenants"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v7, v10, Ljava/util/List;

    if-eqz v7, :cond_c

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_c
    instance-of v7, v4, Ljava/util/List;

    if-eqz v7, :cond_f

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    :cond_d
    const/4 v4, 0x1

    goto :goto_a

    :cond_e
    :goto_9
    move-object/from16 p2, v10

    :cond_f
    const/4 v4, 0x0

    :goto_a
    if-eqz v4, :cond_11

    .line 21
    move-object/from16 v4, v28

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-static {v15, v4, v6}, Lcom/sgscq/vpn/handler/w;->x0(Ljava/util/Map;Ljava/util/Map;Lcom/sgscq/vpn/w1;)Ljava/util/LinkedHashMap;

    move-result-object v4

    move-object v15, v4

    goto :goto_c

    :goto_b
    move-object/from16 v50, v40

    goto/16 :goto_17

    :cond_10
    move-object/from16 p2, v10

    :cond_11
    :goto_c
    const/16 v18, 0x1

    invoke-virtual {v6, v1}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    if-eqz v15, :cond_12

    const/4 v4, 0x1

    goto :goto_d

    :cond_12
    const/4 v4, 0x0

    :goto_d
    move/from16 v22, v4

    move-object/from16 v16, v6

    move-object/from16 v17, v1

    move/from16 v19, v2

    move/from16 v23, v31

    move/from16 v24, v32

    invoke-static/range {v15 .. v24}, Lcom/sgscq/vpn/handler/w;->t0(Ljava/util/Map;Lcom/sgscq/vpn/w1;Ljava/lang/String;IILjava/lang/String;ZZZZ)Lcom/sgscq/vpn/battle/BattleUnit;

    move-result-object v7

    invoke-static {v7, v13, v5, v3}, Lcom/sgscq/vpn/handler/w;->j(Lcom/sgscq/vpn/battle/BattleUnit;Ljava/lang/String;ILcom/sgscq/vpn/handler/t;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    const/4 v10, 0x1

    move-object/from16 v15, v28

    move-object/from16 v1, p0

    move/from16 v16, v2

    move-object/from16 v2, p1

    move-object/from16 v17, v3

    move-object/from16 v4, v25

    move v3, v5

    move-object/from16 v51, v4

    move-object/from16 v50, v40

    move/from16 v4, v29

    move/from16 v18, v5

    move/from16 v5, v30

    move-object/from16 v52, v6

    move-object/from16 v6, v17

    .line 22
    :try_start_e
    invoke-virtual/range {v1 .. v6}, Lcom/sgscq/vpn/handler/w;->F(Ljava/lang/String;IIILcom/sgscq/vpn/handler/t;)[D

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v42, v1, v2

    aget-wide v44, v1, v10

    const/4 v2, 0x2

    aget-wide v46, v1, v2

    const/4 v2, 0x3

    aget-wide v48, v1, v2

    move-object/from16 v41, v7

    invoke-virtual/range {v41 .. v49}, Lcom/sgscq/vpn/battle/BattleUnit;->scaleStats(DDDD)V

    .line 23
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v16, 0x1

    move-object/from16 v7, p0

    move-object/from16 v10, p2

    move-object/from16 v28, v15

    move-object/from16 v3, v17

    move/from16 v5, v18

    move-object/from16 v4, v50

    move-object/from16 v25, v51

    move-object/from16 v6, v52

    goto/16 :goto_8

    :catch_1
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    goto :goto_b

    :catch_3
    move-exception v0

    move-object/from16 v50, v4

    goto/16 :goto_17

    :cond_13
    move-object/from16 v50, v4

    move-object/from16 v52, v6

    move-object/from16 v51, v25

    move-object/from16 v15, v37

    check-cast v15, Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v15, v36

    check-cast v15, Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {}, Lo/h;->a()Lo/h;

    move-result-object v3

    new-instance v4, Lcom/sgscq/vpn/battle/BattleScenario;

    const/16 v31, 0x0

    invoke-static/range {p3 .. p3}, Lcom/sgscq/vpn/w1;->B(Ljava/util/Map;)I

    move-result v5
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    int-to-double v5, v5

    move-object/from16 v7, v50

    .line 24
    :try_start_f
    iget-object v10, v7, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/w;->T0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    move-object/from16 v40, v7

    :try_start_10
    const-string v7, "govern_value"
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    move-object/from16 v16, v12

    :try_start_11
    const-string v12, "govern"

    move/from16 v17, v14

    const-string v14, "enemy_govern"

    move/from16 p2, v2

    const-string v2, "dungeon_govern"

    filled-new-array {v14, v2, v7, v12}, [Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    :goto_e
    const/4 v12, 0x4

    if-ge v7, v12, :cond_15

    aget-object v12, v2, v7

    const/4 v14, 0x0

    invoke-virtual {v10, v15, v14, v12}, Lcom/sgscq/vpn/w1;->w0(Ljava/lang/String;ILjava/lang/String;)I

    move-result v12

    if-lez v12, :cond_14

    goto :goto_f

    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_15
    const/4 v12, 0x0

    :goto_f
    int-to-double v14, v12

    move-object/from16 v28, v4

    move-object/from16 v29, v0

    move-object/from16 v30, v8

    move-wide/from16 v32, v5

    move-wide/from16 v34, v14

    .line 25
    invoke-direct/range {v28 .. v35}, Lcom/sgscq/vpn/battle/BattleScenario;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;DD)V

    invoke-virtual {v3, v4}, Lo/h;->b(Lcom/sgscq/vpn/battle/BattleScenario;)Lcom/sgscq/vpn/battle/BattleResult;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sgscq/vpn/battle/BattleUnit;

    invoke-virtual {v6}, Lcom/sgscq/vpn/battle/BattleUnit;->isAlive()Z

    move-result v6

    if-nez v6, :cond_16

    goto :goto_11

    :cond_16
    add-int/lit8 v3, v3, 0x1

    if-lt v5, v11, :cond_17

    add-int/lit8 v4, v4, 0x1

    :cond_17
    :goto_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_18
    invoke-virtual {v2}, Lcom/sgscq/vpn/battle/BattleResult;->getFightInfo()Ljava/util/Map;

    move-result-object v5
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    move-object/from16 v6, v39

    :try_start_12
    iput-object v5, v6, Lcom/sgscq/vpn/handler/s;->a:Ljava/util/Map;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    move-object/from16 v7, v27

    move-object/from16 v10, v38

    :try_start_13
    invoke-interface {v9, v10, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, v52

    invoke-static {v12, v13}, Lcom/sgscq/vpn/handler/w;->J(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Lcom/sgscq/vpn/handler/w;->n(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v5, v6, Lcom/sgscq/vpn/handler/s;->a:Ljava/util/Map;

    if-nez v5, :cond_19

    goto :goto_12

    :cond_19
    const-string v11, "init"

    .line 26
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v11, v5, Ljava/util/Map;

    if-nez v11, :cond_1a

    goto :goto_12

    :cond_1a
    check-cast v5, Ljava/util/Map;

    const/4 v11, 0x0

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v12, "cards_size1"

    invoke-interface {v5, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v1, p2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v11, "backups_size1"

    invoke-interface {v5, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :goto_12
    iget-object v1, v6, Lcom/sgscq/vpn/handler/s;->a:Ljava/util/Map;

    .line 28
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/w;->k0(Ljava/lang/String;)Z

    move-result v5
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5

    if-eqz v5, :cond_1b

    move-object/from16 v5, v51

    iget v5, v5, Lcom/sgscq/vpn/cloud/k;->a:I

    goto :goto_13

    :cond_1b
    const/4 v5, -0x1

    .line 29
    :goto_13
    :try_start_14
    invoke-static {v5, v1}, Lcom/sgscq/vpn/handler/w;->v0(ILjava/util/Map;)V

    invoke-virtual {v2}, Lcom/sgscq/vpn/battle/BattleResult;->getRoundCount()I

    move-result v1

    const/4 v5, 0x1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Lcom/sgscq/vpn/handler/s;->b:I

    iput v4, v6, Lcom/sgscq/vpn/handler/s;->c:I

    move/from16 v14, v17

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Lcom/sgscq/vpn/handler/s;->d:I

    iput v3, v6, Lcom/sgscq/vpn/handler/s;->e:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Lcom/sgscq/vpn/handler/s;->f:I

    invoke-virtual {v2}, Lcom/sgscq/vpn/battle/BattleResult;->isSuccess()Z

    move-result v1

    iput-boolean v1, v6, Lcom/sgscq/vpn/handler/s;->g:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Dungeon] battle result dungeon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v6, Lcom/sgscq/vpn/handler/s;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " allies="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " playerAlive="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v6, Lcom/sgscq/vpn/handler/s;->c:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/sgscq/vpn/handler/s;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " allyAlive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/sgscq/vpn/handler/s;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v6, Lcom/sgscq/vpn/handler/s;->f:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " enemiesFront="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v37

    check-cast v15, Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " enemiesBackup="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v36

    check-cast v15, Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " enemiesUsed="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " enemyAlive="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_1c
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sgscq/vpn/battle/BattleUnit;

    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Lcom/sgscq/vpn/battle/BattleUnit;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1c

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 31
    :cond_1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " enemyHp="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/sgscq/vpn/handler/w;->c1(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5

    move-object/from16 v1, v16

    :try_start_15
    invoke-static {v1, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4

    return-object v6

    :catch_4
    move-exception v0

    goto/16 :goto_1a

    :catch_5
    move-exception v0

    move-object/from16 v1, v16

    goto/16 :goto_1a

    :catch_6
    move-exception v0

    move-object/from16 v1, v16

    move-object/from16 v7, v27

    move-object/from16 v10, v38

    goto/16 :goto_1a

    :catch_7
    move-exception v0

    move-object/from16 v1, v16

    :goto_15
    move-object/from16 v7, v27

    move-object/from16 v10, v38

    move-object/from16 v6, v39

    goto/16 :goto_1a

    :catch_8
    move-exception v0

    goto :goto_16

    :catch_9
    move-exception v0

    move-object/from16 v40, v7

    :goto_16
    move-object v1, v12

    goto :goto_15

    :catch_a
    move-exception v0

    :goto_17
    move-object v1, v12

    move-object/from16 v7, v27

    move-object/from16 v10, v38

    move-object/from16 v6, v39

    move-object/from16 v40, v50

    goto :goto_1a

    :catch_b
    move-exception v0

    move-object/from16 v40, v4

    goto :goto_16

    :catch_c
    move-exception v0

    :goto_18
    move-object/from16 v13, p1

    goto :goto_16

    :catch_d
    move-exception v0

    move-object v1, v12

    move-object/from16 v40, v13

    move-object/from16 v7, v27

    move-object/from16 v10, v38

    move-object/from16 v6, v39

    :goto_19
    move-object v13, v8

    goto :goto_1a

    :catch_e
    move-exception v0

    move-object v1, v12

    move-object/from16 v40, v13

    move-object v6, v14

    move-object/from16 v7, v27

    move-object/from16 v10, v38

    goto :goto_19

    :catch_f
    move-exception v0

    move-object v10, v11

    move-object v1, v12

    move-object/from16 v40, v13

    move-object v6, v14

    move-object/from16 v7, v27

    goto :goto_19

    :catch_10
    move-exception v0

    move-object v7, v10

    move-object v10, v11

    move-object v1, v12

    move-object/from16 v40, v13

    move-object v6, v14

    goto :goto_19

    :goto_1a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Dungeon] simulateBattle error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-static {v0, v2, v1}, Lc/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v0, 0x1

    move-object/from16 v1, p0

    .line 33
    invoke-virtual {v1, v0, v13, v9}, Lcom/sgscq/vpn/handler/w;->t(ILjava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v2

    iput-object v2, v6, Lcom/sgscq/vpn/handler/s;->a:Ljava/util/Map;

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v40

    iget-object v4, v4, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v4

    invoke-static {v4, v13}, Lcom/sgscq/vpn/handler/w;->J(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/sgscq/vpn/handler/w;->n(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput v0, v6, Lcom/sgscq/vpn/handler/s;->b:I

    iput v0, v6, Lcom/sgscq/vpn/handler/s;->c:I

    iput v0, v6, Lcom/sgscq/vpn/handler/s;->d:I

    iput v0, v6, Lcom/sgscq/vpn/handler/s;->e:I

    iput v0, v6, Lcom/sgscq/vpn/handler/s;->f:I

    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/sgscq/vpn/handler/s;->g:Z

    return-object v6
.end method

.method public final c0(Ljava/util/Map;Z)[B
    .locals 60

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    .line 8
    .line 9
    invoke-virtual {v3, v1}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v12

    .line 13
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/w;->U(Ljava/util/Map;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v13

    .line 17
    const-string v4, "position"

    .line 18
    .line 19
    const-string v5, "1"

    .line 20
    .line 21
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Ljava/lang/String;

    .line 26
    .line 27
    const/16 v4, 0xa

    .line 28
    .line 29
    invoke-static {v4, v1}, Lcom/sgscq/vpn/handler/w;->Y0(ILjava/util/Map;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const/16 v6, 0x63

    .line 34
    .line 35
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    iget-object v14, v3, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 39
    .line 40
    invoke-virtual {v14, v12}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v15

    .line 44
    const-string v5, "SGSCQ_SRV"

    .line 45
    .line 46
    const/4 v7, -0x1

    .line 47
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    const-string v11, "error_code"

    .line 52
    .line 53
    if-nez v15, :cond_0

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "[Dungeon] multiKill player not found: "

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v5, v1}, Lcom/sgscq/vpn/z2;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v16, "ret"

    .line 73
    .line 74
    const-string v18, "code"

    .line 75
    .line 76
    const-string v20, "result"

    .line 77
    .line 78
    sget-object v21, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 79
    .line 80
    const-string v22, "msg"

    .line 81
    .line 82
    const-string v23, "\u73a9\u5bb6\u6570\u636e\u4e0d\u5b58\u5728"

    .line 83
    .line 84
    move-object/from16 v17, v8

    .line 85
    .line 86
    move-object/from16 v19, v8

    .line 87
    .line 88
    filled-new-array/range {v16 .. v23}, [Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v11, v8, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    :goto_0
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v3, v1}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    return-object v1

    .line 105
    :cond_0
    if-nez v2, :cond_1

    .line 106
    .line 107
    invoke-virtual {v0, v12, v15}, Lcom/sgscq/vpn/handler/w;->Q0(Ljava/lang/String;Ljava/util/Map;)V

    .line 108
    .line 109
    .line 110
    :cond_1
    iget-object v10, v0, Lcom/sgscq/vpn/handler/w;->b:Lcom/sgscq/vpn/handler/x;

    .line 111
    .line 112
    invoke-virtual {v10, v12, v13}, Lcom/sgscq/vpn/handler/x;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    const/4 v7, 0x0

    .line 117
    if-lez v9, :cond_2

    .line 118
    .line 119
    const/4 v9, 0x1

    .line 120
    goto :goto_1

    .line 121
    :cond_2
    move v9, v7

    .line 122
    :goto_1
    if-nez v9, :cond_3

    .line 123
    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v2, "[Dungeon] multiKill dungeon not completed: uid="

    .line 127
    .line 128
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v2, " dungeon="

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {v5, v1}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const/4 v1, -0x3

    .line 150
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    const-string v12, "ret"

    .line 155
    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v13

    .line 160
    const-string v14, "code"

    .line 161
    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v15

    .line 166
    const-string v16, "result"

    .line 167
    .line 168
    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 169
    .line 170
    const-string v18, "msg"

    .line 171
    .line 172
    const-string v19, "\u5173\u5361\u5c1a\u672a\u5b8c\u6210"

    .line 173
    .line 174
    filled-new-array/range {v12 .. v19}, [Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-static {v11, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    goto :goto_0

    .line 183
    :cond_3
    const-string v9, "vip_level"

    .line 184
    .line 185
    invoke-virtual {v3, v7, v9, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 186
    .line 187
    .line 188
    move-result v9

    .line 189
    const-string v4, "vipLevel"

    .line 190
    .line 191
    invoke-virtual {v3, v9, v4, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    const-string v9, "user_vip_level"

    .line 196
    .line 197
    invoke-virtual {v3, v4, v9, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    invoke-virtual {v0, v15}, Lcom/sgscq/vpn/handler/w;->N0(Ljava/util/Map;)I

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    const/16 v6, 0xc

    .line 206
    .line 207
    if-eqz v2, :cond_4

    .line 208
    .line 209
    if-lt v9, v6, :cond_5

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_4
    const/16 v7, 0x10

    .line 213
    .line 214
    if-ge v4, v7, :cond_6

    .line 215
    .line 216
    const/4 v7, 0x2

    .line 217
    if-lt v9, v7, :cond_5

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_5
    const/4 v7, 0x0

    .line 221
    goto :goto_3

    .line 222
    :cond_6
    :goto_2
    const/4 v7, 0x1

    .line 223
    :goto_3
    if-nez v7, :cond_7

    .line 224
    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const-string v6, "[Dungeon] multiKill level too low: uid="

    .line 228
    .line 229
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string v6, " vip="

    .line 236
    .line 237
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v6, " level="

    .line 244
    .line 245
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v4, " special="

    .line 252
    .line 253
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-static {v5, v1}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const/4 v1, -0x4

    .line 267
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    const-string v12, "ret"

    .line 272
    .line 273
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v13

    .line 277
    const-string v14, "code"

    .line 278
    .line 279
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v15

    .line 283
    const-string v16, "result"

    .line 284
    .line 285
    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 286
    .line 287
    const-string v18, "msg"

    .line 288
    .line 289
    const-string v19, "\u7b49\u7ea7\u6216VIP\u7b49\u7ea7\u4e0d\u8db3"

    .line 290
    .line 291
    filled-new-array/range {v12 .. v19}, [Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-static {v11, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    goto/16 :goto_0

    .line 300
    .line 301
    :cond_7
    iget-object v7, v3, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 302
    .line 303
    if-eqz v2, :cond_a

    .line 304
    .line 305
    if-eqz v7, :cond_9

    .line 306
    .line 307
    if-ge v9, v6, :cond_8

    .line 308
    .line 309
    goto :goto_4

    .line 310
    :cond_8
    :try_start_0
    new-instance v6, Lcom/sgscq/vpn/h;

    .line 311
    .line 312
    const/4 v4, 0x0

    .line 313
    invoke-direct {v6, v4, v7}, Lcom/sgscq/vpn/h;-><init>(ILandroid/content/Context;)V

    .line 314
    .line 315
    .line 316
    const/4 v4, 0x5

    .line 317
    invoke-virtual {v6, v4}, Lcom/sgscq/vpn/h;->d(I)Z

    .line 318
    .line 319
    .line 320
    move-result v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    const/16 v4, 0xc

    .line 322
    .line 323
    if-lt v9, v4, :cond_9

    .line 324
    .line 325
    if-eqz v6, :cond_9

    .line 326
    .line 327
    const/4 v4, 0x1

    .line 328
    goto :goto_5

    .line 329
    :catch_0
    :cond_9
    :goto_4
    const/4 v4, 0x0

    .line 330
    :goto_5
    if-nez v4, :cond_a

    .line 331
    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    const-string v2, "[Dungeon] special multiKill requires active Afdian LV5: uid="

    .line 335
    .line 336
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-static {v5, v1}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    const/4 v1, -0x5

    .line 350
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    const-string v12, "ret"

    .line 355
    .line 356
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 357
    .line 358
    .line 359
    move-result-object v13

    .line 360
    const-string v14, "code"

    .line 361
    .line 362
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 363
    .line 364
    .line 365
    move-result-object v15

    .line 366
    const-string v16, "result"

    .line 367
    .line 368
    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 369
    .line 370
    const-string v18, "msg"

    .line 371
    .line 372
    const-string v19, "\u81ea\u52a8\u8fde\u65a9\u4ec5\u9650\u7231\u53d1\u7535 LV5 \u53ca\u4ee5\u4e0a\u4e14\u6e38\u620f VIP12 \u7528\u6237\u4f7f\u7528"

    .line 373
    .line 374
    filled-new-array/range {v12 .. v19}, [Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-static {v11, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    goto/16 :goto_0

    .line 383
    .line 384
    :cond_a
    if-nez v2, :cond_d

    .line 385
    .line 386
    if-eqz v7, :cond_c

    .line 387
    .line 388
    const/16 v4, 0xc

    .line 389
    .line 390
    if-ge v9, v4, :cond_b

    .line 391
    .line 392
    goto :goto_6

    .line 393
    :cond_b
    :try_start_1
    new-instance v6, Lcom/sgscq/vpn/h;

    .line 394
    .line 395
    const/4 v4, 0x0

    .line 396
    invoke-direct {v6, v4, v7}, Lcom/sgscq/vpn/h;-><init>(ILandroid/content/Context;)V

    .line 397
    .line 398
    .line 399
    const/4 v4, 0x5

    .line 400
    invoke-virtual {v6, v4}, Lcom/sgscq/vpn/h;->d(I)Z

    .line 401
    .line 402
    .line 403
    move-result v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 404
    const/16 v6, 0xc

    .line 405
    .line 406
    if-lt v9, v6, :cond_c

    .line 407
    .line 408
    if-eqz v4, :cond_c

    .line 409
    .line 410
    const/4 v4, 0x1

    .line 411
    goto :goto_7

    .line 412
    :catch_1
    :cond_c
    :goto_6
    const/4 v4, 0x0

    .line 413
    :goto_7
    if-eqz v4, :cond_d

    .line 414
    .line 415
    const/4 v4, 0x1

    .line 416
    goto :goto_8

    .line 417
    :cond_d
    const/4 v4, 0x0

    .line 418
    :goto_8
    const/16 v6, 0xc

    .line 419
    .line 420
    if-lt v9, v6, :cond_e

    .line 421
    .line 422
    if-eqz v4, :cond_e

    .line 423
    .line 424
    const/4 v6, 0x1

    .line 425
    goto :goto_9

    .line 426
    :cond_e
    const/4 v6, 0x0

    .line 427
    :goto_9
    if-eqz v6, :cond_f

    .line 428
    .line 429
    const/16 v6, 0x63

    .line 430
    .line 431
    goto :goto_a

    .line 432
    :cond_f
    const/16 v6, 0xa

    .line 433
    .line 434
    :goto_a
    move-object/from16 v21, v14

    .line 435
    .line 436
    if-eqz v2, :cond_10

    .line 437
    .line 438
    const/16 v14, 0xa

    .line 439
    .line 440
    goto :goto_b

    .line 441
    :cond_10
    move v14, v6

    .line 442
    :goto_b
    if-nez v2, :cond_12

    .line 443
    .line 444
    if-eqz v4, :cond_11

    .line 445
    .line 446
    goto :goto_c

    .line 447
    :cond_11
    move/from16 v18, v9

    .line 448
    .line 449
    const/16 v9, 0x63

    .line 450
    .line 451
    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    .line 452
    .line 453
    .line 454
    move-result v6

    .line 455
    move v9, v6

    .line 456
    goto :goto_d

    .line 457
    :cond_12
    :goto_c
    move/from16 v18, v9

    .line 458
    .line 459
    const/16 v9, 0x63

    .line 460
    .line 461
    :goto_d
    invoke-static {v14, v1}, Lcom/sgscq/vpn/handler/w;->Y0(ILjava/util/Map;)I

    .line 462
    .line 463
    .line 464
    move-result v6

    .line 465
    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    .line 466
    .line 467
    .line 468
    move-result v6

    .line 469
    if-eqz v2, :cond_13

    .line 470
    .line 471
    invoke-virtual {v0, v12, v15}, Lcom/sgscq/vpn/handler/w;->Q0(Ljava/lang/String;Ljava/util/Map;)V

    .line 472
    .line 473
    .line 474
    :cond_13
    move-object/from16 v22, v12

    .line 475
    .line 476
    invoke-virtual {v10, v13}, Lcom/sgscq/vpn/handler/x;->j(Ljava/lang/String;)I

    .line 477
    .line 478
    .line 479
    move-result v12

    .line 480
    invoke-virtual {v3}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    move/from16 v23, v9

    .line 485
    .line 486
    const-string v9, "user_power"

    .line 487
    .line 488
    invoke-virtual {v3, v0, v9, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    if-nez v2, :cond_15

    .line 493
    .line 494
    if-eqz v4, :cond_14

    .line 495
    .line 496
    goto :goto_e

    .line 497
    :cond_14
    const/4 v2, 0x0

    .line 498
    goto :goto_f

    .line 499
    :cond_15
    :goto_e
    const/4 v2, 0x1

    .line 500
    :goto_f
    if-nez v2, :cond_16

    .line 501
    .line 502
    if-ge v0, v12, :cond_16

    .line 503
    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    .line 505
    .line 506
    const-string v2, "[Dungeon] multiKill not enough power: "

    .line 507
    .line 508
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    const-string v0, " < "

    .line 515
    .line 516
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-static {v5, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    const-string v16, "ret"

    .line 530
    .line 531
    const-string v18, "code"

    .line 532
    .line 533
    const-string v20, "result"

    .line 534
    .line 535
    sget-object v21, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 536
    .line 537
    const-string v22, "msg"

    .line 538
    .line 539
    const-string v23, "\u4f53\u529b\u4e0d\u8db3"

    .line 540
    .line 541
    move-object/from16 v17, v8

    .line 542
    .line 543
    move-object/from16 v19, v8

    .line 544
    .line 545
    filled-new-array/range {v16 .. v23}, [Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    invoke-static {v11, v8, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    :goto_10
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    :goto_11
    invoke-virtual {v3, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    return-object v0

    .line 562
    :cond_16
    invoke-virtual {v10, v13, v15}, Lcom/sgscq/vpn/handler/x;->c(Ljava/lang/String;Ljava/util/Map;)I

    .line 563
    .line 564
    .line 565
    move-result v4

    .line 566
    const-string v8, "user_gold"

    .line 567
    .line 568
    const/16 v24, -0x2

    .line 569
    .line 570
    if-eqz v2, :cond_2d

    .line 571
    .line 572
    move-object/from16 v25, v9

    .line 573
    .line 574
    invoke-virtual {v10, v13, v15}, Lcom/sgscq/vpn/handler/x;->i(Ljava/lang/String;Ljava/util/Map;)I

    .line 575
    .line 576
    .line 577
    move-result v9

    .line 578
    move-object/from16 v26, v10

    .line 579
    .line 580
    const/16 v10, 0x63

    .line 581
    .line 582
    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    .line 583
    .line 584
    .line 585
    move-result v6

    .line 586
    const/4 v10, 0x0

    .line 587
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    .line 588
    .line 589
    .line 590
    move-result v6

    .line 591
    invoke-static {v15}, Lcom/sgscq/vpn/cloud/m0;->n2(Ljava/util/Map;)I

    .line 592
    .line 593
    .line 594
    move-result v10

    .line 595
    move/from16 p2, v6

    .line 596
    .line 597
    const-string v6, "600028"

    .line 598
    .line 599
    invoke-static {v6, v15}, Lcom/sgscq/vpn/cloud/m0;->b0(Ljava/lang/String;Ljava/util/Map;)I

    .line 600
    .line 601
    .line 602
    move-result v19

    .line 603
    invoke-static {v10, v7, v6}, Lcom/sgscq/vpn/cloud/m0;->i2(ILandroid/content/Context;Ljava/lang/String;)I

    .line 604
    .line 605
    .line 606
    move-result v27

    .line 607
    sub-int v1, v27, v19

    .line 608
    .line 609
    move/from16 v27, v14

    .line 610
    .line 611
    const/4 v14, 0x0

    .line 612
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    .line 613
    .line 614
    .line 615
    move-result v1

    .line 616
    invoke-static {v13}, Lcom/sgscq/vpn/handler/x;->o(Ljava/lang/String;)Z

    .line 617
    .line 618
    .line 619
    move-result v14

    .line 620
    invoke-static {v15, v14}, Lcom/sgscq/vpn/cloud/m0;->a0(Ljava/util/Map;Z)I

    .line 621
    .line 622
    .line 623
    move-result v28

    .line 624
    invoke-static {v10, v7, v14}, Lcom/sgscq/vpn/cloud/m0;->h0(ILandroid/content/Context;Z)I

    .line 625
    .line 626
    .line 627
    move-result v10

    .line 628
    sub-int v10, v10, v28

    .line 629
    .line 630
    move-object/from16 v36, v7

    .line 631
    .line 632
    const/4 v7, 0x0

    .line 633
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    .line 634
    .line 635
    .line 636
    move-result v10

    .line 637
    const/4 v7, 0x1

    .line 638
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    .line 639
    .line 640
    .line 641
    move-result v9

    .line 642
    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v7

    .line 646
    move/from16 v37, v2

    .line 647
    .line 648
    const/4 v2, 0x0

    .line 649
    invoke-static {v7, v2}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 650
    .line 651
    .line 652
    move-result v7

    .line 653
    if-eqz v14, :cond_17

    .line 654
    .line 655
    const-string v20, "600035"

    .line 656
    .line 657
    goto :goto_12

    .line 658
    :cond_17
    const-string v20, "600031"

    .line 659
    .line 660
    :goto_12
    move-object/from16 v38, v20

    .line 661
    .line 662
    move-object/from16 v39, v13

    .line 663
    .line 664
    move/from16 v13, p2

    .line 665
    .line 666
    move-object/from16 p2, v6

    .line 667
    .line 668
    :goto_13
    const/4 v6, 0x1

    .line 669
    if-lt v13, v6, :cond_20

    .line 670
    .line 671
    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    .line 672
    .line 673
    .line 674
    move-result v6

    .line 675
    mul-int/2addr v6, v13

    .line 676
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 677
    .line 678
    .line 679
    move-result v20

    .line 680
    sub-int v6, v6, v20

    .line 681
    .line 682
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 683
    .line 684
    .line 685
    move-result v6

    .line 686
    if-gtz v6, :cond_18

    .line 687
    .line 688
    const/4 v2, 0x0

    .line 689
    goto :goto_14

    .line 690
    :cond_18
    add-int/lit8 v6, v6, 0x28

    .line 691
    .line 692
    const/4 v2, -0x1

    .line 693
    add-int/2addr v6, v2

    .line 694
    div-int/lit8 v2, v6, 0x28

    .line 695
    .line 696
    :goto_14
    const/4 v6, 0x0

    .line 697
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    .line 698
    .line 699
    .line 700
    move-result v20

    .line 701
    move/from16 v40, v12

    .line 702
    .line 703
    sub-int v12, v13, v20

    .line 704
    .line 705
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    .line 706
    .line 707
    .line 708
    move-result v12

    .line 709
    if-gtz v12, :cond_19

    .line 710
    .line 711
    const/4 v6, 0x0

    .line 712
    goto :goto_15

    .line 713
    :cond_19
    add-int/2addr v12, v9

    .line 714
    const/4 v6, -0x1

    .line 715
    add-int/2addr v12, v6

    .line 716
    div-int v6, v12, v9

    .line 717
    .line 718
    :goto_15
    if-gt v2, v1, :cond_1f

    .line 719
    .line 720
    if-le v6, v10, :cond_1a

    .line 721
    .line 722
    goto/16 :goto_19

    .line 723
    .line 724
    :cond_1a
    if-gtz v2, :cond_1b

    .line 725
    .line 726
    move/from16 v28, v1

    .line 727
    .line 728
    move/from16 v41, v4

    .line 729
    .line 730
    move/from16 v30, v10

    .line 731
    .line 732
    const/4 v10, 0x0

    .line 733
    const/16 v16, -0x1

    .line 734
    .line 735
    const/16 v29, 0x0

    .line 736
    .line 737
    goto :goto_17

    .line 738
    :cond_1b
    invoke-static {}, Lcom/sgscq/vpn/handler/w;->J0()Ljava/util/ArrayList;

    .line 739
    .line 740
    .line 741
    move-result-object v12

    .line 742
    move/from16 v28, v1

    .line 743
    .line 744
    const/4 v1, 0x0

    .line 745
    const/16 v29, 0x0

    .line 746
    .line 747
    :goto_16
    if-ge v1, v2, :cond_1c

    .line 748
    .line 749
    move/from16 v30, v10

    .line 750
    .line 751
    add-int v10, v19, v1

    .line 752
    .line 753
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 754
    .line 755
    .line 756
    move-result v31

    .line 757
    move/from16 v41, v4

    .line 758
    .line 759
    const/16 v16, -0x1

    .line 760
    .line 761
    add-int/lit8 v4, v31, -0x1

    .line 762
    .line 763
    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    .line 764
    .line 765
    .line 766
    move-result v4

    .line 767
    const/4 v10, 0x0

    .line 768
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    .line 769
    .line 770
    .line 771
    move-result v4

    .line 772
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 773
    .line 774
    .line 775
    move-result-object v4

    .line 776
    check-cast v4, Ljava/lang/Integer;

    .line 777
    .line 778
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 779
    .line 780
    .line 781
    move-result v4

    .line 782
    add-int v29, v4, v29

    .line 783
    .line 784
    add-int/lit8 v1, v1, 0x1

    .line 785
    .line 786
    move/from16 v10, v30

    .line 787
    .line 788
    move/from16 v4, v41

    .line 789
    .line 790
    goto :goto_16

    .line 791
    :cond_1c
    move/from16 v41, v4

    .line 792
    .line 793
    move/from16 v30, v10

    .line 794
    .line 795
    const/4 v10, 0x0

    .line 796
    const/16 v16, -0x1

    .line 797
    .line 798
    :goto_17
    if-gtz v6, :cond_1d

    .line 799
    .line 800
    move v4, v10

    .line 801
    move-object/from16 v1, v38

    .line 802
    .line 803
    goto :goto_18

    .line 804
    :cond_1d
    move-object/from16 v1, v38

    .line 805
    .line 806
    invoke-static {v6, v10, v1, v15}, Lcom/sgscq/vpn/p5;->v1(IILjava/lang/String;Ljava/util/Map;)I

    .line 807
    .line 808
    .line 809
    move-result v4

    .line 810
    :goto_18
    add-int v4, v29, v4

    .line 811
    .line 812
    if-le v4, v7, :cond_1e

    .line 813
    .line 814
    goto :goto_1a

    .line 815
    :cond_1e
    new-instance v1, Lcom/sgscq/vpn/handler/r;

    .line 816
    .line 817
    mul-int/lit8 v32, v2, 0x28

    .line 818
    .line 819
    mul-int v33, v6, v9

    .line 820
    .line 821
    move-object/from16 v28, v1

    .line 822
    .line 823
    move/from16 v29, v13

    .line 824
    .line 825
    move/from16 v30, v2

    .line 826
    .line 827
    move/from16 v31, v6

    .line 828
    .line 829
    move/from16 v34, v4

    .line 830
    .line 831
    move/from16 v35, v14

    .line 832
    .line 833
    invoke-direct/range {v28 .. v35}, Lcom/sgscq/vpn/handler/r;-><init>(IIIIIIZ)V

    .line 834
    .line 835
    .line 836
    goto :goto_1b

    .line 837
    :cond_1f
    :goto_19
    move/from16 v28, v1

    .line 838
    .line 839
    move/from16 v41, v4

    .line 840
    .line 841
    move/from16 v30, v10

    .line 842
    .line 843
    move-object/from16 v1, v38

    .line 844
    .line 845
    const/16 v16, -0x1

    .line 846
    .line 847
    :goto_1a
    add-int/lit8 v13, v13, -0x1

    .line 848
    .line 849
    move-object/from16 v38, v1

    .line 850
    .line 851
    move/from16 v1, v28

    .line 852
    .line 853
    move/from16 v10, v30

    .line 854
    .line 855
    move/from16 v12, v40

    .line 856
    .line 857
    move/from16 v4, v41

    .line 858
    .line 859
    const/4 v2, 0x0

    .line 860
    goto/16 :goto_13

    .line 861
    .line 862
    :cond_20
    move/from16 v41, v4

    .line 863
    .line 864
    move/from16 v40, v12

    .line 865
    .line 866
    new-instance v1, Lcom/sgscq/vpn/handler/r;

    .line 867
    .line 868
    const/16 v29, 0x0

    .line 869
    .line 870
    const/16 v30, 0x0

    .line 871
    .line 872
    const/16 v31, 0x0

    .line 873
    .line 874
    const/16 v32, 0x0

    .line 875
    .line 876
    const/16 v33, 0x0

    .line 877
    .line 878
    const/16 v34, 0x0

    .line 879
    .line 880
    move-object/from16 v28, v1

    .line 881
    .line 882
    move/from16 v35, v14

    .line 883
    .line 884
    invoke-direct/range {v28 .. v35}, Lcom/sgscq/vpn/handler/r;-><init>(IIIIIIZ)V

    .line 885
    .line 886
    .line 887
    :goto_1b
    iget v2, v1, Lcom/sgscq/vpn/handler/r;->a:I

    .line 888
    .line 889
    if-gtz v2, :cond_21

    .line 890
    .line 891
    const-string v0, "[Dungeon] multiKill auto supply cannot afford any fight"

    .line 892
    .line 893
    invoke-static {v5, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    .line 895
    .line 896
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 897
    .line 898
    .line 899
    move-result-object v0

    .line 900
    const-string v12, "ret"

    .line 901
    .line 902
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 903
    .line 904
    .line 905
    move-result-object v13

    .line 906
    const-string v14, "code"

    .line 907
    .line 908
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 909
    .line 910
    .line 911
    move-result-object v15

    .line 912
    const-string v16, "result"

    .line 913
    .line 914
    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 915
    .line 916
    const-string v18, "msg"

    .line 917
    .line 918
    const-string v19, "\u5143\u5b9d\u6216\u4eca\u65e5\u8d2d\u4e70\u6b21\u6570\u4e0d\u8db3"

    .line 919
    .line 920
    filled-new-array/range {v12 .. v19}, [Ljava/lang/Object;

    .line 921
    .line 922
    .line 923
    move-result-object v1

    .line 924
    invoke-static {v11, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 925
    .line 926
    .line 927
    move-result-object v0

    .line 928
    goto/16 :goto_10

    .line 929
    .line 930
    :cond_21
    iget v4, v1, Lcom/sgscq/vpn/handler/r;->e:I

    .line 931
    .line 932
    if-gtz v2, :cond_22

    .line 933
    .line 934
    goto/16 :goto_21

    .line 935
    .line 936
    :cond_22
    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    .line 938
    .line 939
    move-result-object v6

    .line 940
    const/4 v7, 0x0

    .line 941
    invoke-static {v6, v7}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 942
    .line 943
    .line 944
    move-result v6

    .line 945
    iget v7, v1, Lcom/sgscq/vpn/handler/r;->f:I

    .line 946
    .line 947
    sub-int/2addr v6, v7

    .line 948
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 949
    .line 950
    .line 951
    move-result-object v6

    .line 952
    invoke-interface {v15, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    .line 954
    .line 955
    iget v6, v1, Lcom/sgscq/vpn/handler/r;->b:I

    .line 956
    .line 957
    if-lez v6, :cond_23

    .line 958
    .line 959
    move-object/from16 v7, p2

    .line 960
    .line 961
    invoke-static {v7, v15}, Lcom/sgscq/vpn/cloud/m0;->x2(Ljava/lang/String;Ljava/util/Map;)I

    .line 962
    .line 963
    .line 964
    move-result v9

    .line 965
    add-int/2addr v9, v6

    .line 966
    invoke-static {v9, v7, v15}, Lcom/sgscq/vpn/cloud/m0;->D2(ILjava/lang/String;Ljava/util/Map;)V

    .line 967
    .line 968
    .line 969
    :cond_23
    iget v6, v1, Lcom/sgscq/vpn/handler/r;->c:I

    .line 970
    .line 971
    if-lez v6, :cond_2c

    .line 972
    .line 973
    iget-boolean v7, v1, Lcom/sgscq/vpn/handler/r;->g:Z

    .line 974
    .line 975
    invoke-static {v15, v7}, Lcom/sgscq/vpn/cloud/m0;->w2(Ljava/util/Map;Z)I

    .line 976
    .line 977
    .line 978
    move-result v9

    .line 979
    add-int/2addr v9, v6

    .line 980
    invoke-static {v9, v15, v7}, Lcom/sgscq/vpn/cloud/m0;->C2(ILjava/util/Map;Z)V

    .line 981
    .line 982
    .line 983
    if-gtz v4, :cond_24

    .line 984
    .line 985
    goto :goto_21

    .line 986
    :cond_24
    if-eqz v7, :cond_25

    .line 987
    .line 988
    const-string v6, "elite_dungeon_times_extra"

    .line 989
    .line 990
    goto :goto_1c

    .line 991
    :cond_25
    const-string v6, "dungeon_times_extra"

    .line 992
    .line 993
    :goto_1c
    if-nez v39, :cond_26

    .line 994
    .line 995
    goto :goto_1e

    .line 996
    :cond_26
    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v7

    .line 1000
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 1001
    .line 1002
    .line 1003
    move-result v9

    .line 1004
    if-nez v9, :cond_29

    .line 1005
    .line 1006
    const-string v9, "null"

    .line 1007
    .line 1008
    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1009
    .line 1010
    .line 1011
    move-result v9

    .line 1012
    if-eqz v9, :cond_27

    .line 1013
    .line 1014
    goto :goto_1e

    .line 1015
    :cond_27
    const-string v9, "105"

    .line 1016
    .line 1017
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1018
    .line 1019
    .line 1020
    move-result v9

    .line 1021
    if-eqz v9, :cond_28

    .line 1022
    .line 1023
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 1024
    .line 1025
    .line 1026
    move-result v9

    .line 1027
    const/16 v10, 0x8

    .line 1028
    .line 1029
    if-lt v9, v10, :cond_28

    .line 1030
    .line 1031
    goto :goto_1d

    .line 1032
    :cond_28
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 1033
    .line 1034
    .line 1035
    move-result v9

    .line 1036
    const/4 v10, 0x6

    .line 1037
    if-lt v9, v10, :cond_2a

    .line 1038
    .line 1039
    :goto_1d
    const/4 v9, 0x0

    .line 1040
    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v7

    .line 1044
    goto :goto_1f

    .line 1045
    :cond_29
    :goto_1e
    const-string v7, ""

    .line 1046
    .line 1047
    :cond_2a
    :goto_1f
    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v9

    .line 1051
    instance-of v10, v9, Ljava/util/Map;

    .line 1052
    .line 1053
    if-eqz v10, :cond_2b

    .line 1054
    .line 1055
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 1056
    .line 1057
    check-cast v9, Ljava/util/Map;

    .line 1058
    .line 1059
    invoke-direct {v10, v9}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1060
    .line 1061
    .line 1062
    goto :goto_20

    .line 1063
    :cond_2b
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 1064
    .line 1065
    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1066
    .line 1067
    .line 1068
    :goto_20
    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v9

    .line 1072
    const/4 v12, 0x0

    .line 1073
    invoke-static {v9, v12}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 1074
    .line 1075
    .line 1076
    move-result v9

    .line 1077
    add-int/2addr v9, v4

    .line 1078
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v9

    .line 1082
    invoke-interface {v10, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    .line 1084
    .line 1085
    invoke-interface {v15, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    .line 1087
    .line 1088
    :cond_2c
    :goto_21
    iget v1, v1, Lcom/sgscq/vpn/handler/r;->d:I

    .line 1089
    .line 1090
    add-int/2addr v0, v1

    .line 1091
    add-int v4, v41, v4

    .line 1092
    .line 1093
    goto :goto_22

    .line 1094
    :cond_2d
    move/from16 v37, v2

    .line 1095
    .line 1096
    move/from16 v41, v4

    .line 1097
    .line 1098
    move-object/from16 v36, v7

    .line 1099
    .line 1100
    move-object/from16 v25, v9

    .line 1101
    .line 1102
    move-object/from16 v26, v10

    .line 1103
    .line 1104
    move/from16 v40, v12

    .line 1105
    .line 1106
    move-object/from16 v39, v13

    .line 1107
    .line 1108
    move/from16 v27, v14

    .line 1109
    .line 1110
    move v2, v6

    .line 1111
    :goto_22
    if-gtz v4, :cond_2e

    .line 1112
    .line 1113
    const-string v0, "[Dungeon] multiKill max times reached"

    .line 1114
    .line 1115
    invoke-static {v5, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    .line 1117
    .line 1118
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v0

    .line 1122
    const-string v12, "ret"

    .line 1123
    .line 1124
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v13

    .line 1128
    const-string v14, "code"

    .line 1129
    .line 1130
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v15

    .line 1134
    const-string v16, "result"

    .line 1135
    .line 1136
    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1137
    .line 1138
    const-string v18, "msg"

    .line 1139
    .line 1140
    const-string v19, "\u6311\u6218\u6b21\u6570\u4e0d\u8db3"

    .line 1141
    .line 1142
    filled-new-array/range {v12 .. v19}, [Ljava/lang/Object;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v1

    .line 1146
    invoke-static {v11, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v0

    .line 1150
    goto/16 :goto_10

    .line 1151
    .line 1152
    :cond_2e
    if-nez v37, :cond_30

    .line 1153
    .line 1154
    move-object/from16 v1, p1

    .line 1155
    .line 1156
    move/from16 v6, v27

    .line 1157
    .line 1158
    invoke-static {v6, v1}, Lcom/sgscq/vpn/handler/w;->Y0(ILjava/util/Map;)I

    .line 1159
    .line 1160
    .line 1161
    move-result v2

    .line 1162
    move/from16 v6, v23

    .line 1163
    .line 1164
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    .line 1165
    .line 1166
    .line 1167
    move-result v2

    .line 1168
    if-gtz v40, :cond_2f

    .line 1169
    .line 1170
    move v5, v2

    .line 1171
    goto :goto_23

    .line 1172
    :cond_2f
    div-int v5, v0, v40

    .line 1173
    .line 1174
    :goto_23
    const/4 v6, 0x0

    .line 1175
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    .line 1176
    .line 1177
    .line 1178
    move-result v4

    .line 1179
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 1180
    .line 1181
    .line 1182
    move-result v4

    .line 1183
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 1184
    .line 1185
    .line 1186
    move-result v2

    .line 1187
    const/4 v4, 0x1

    .line 1188
    if-ge v2, v4, :cond_31

    .line 1189
    .line 1190
    move v2, v4

    .line 1191
    goto :goto_24

    .line 1192
    :cond_30
    move-object/from16 v1, p1

    .line 1193
    .line 1194
    const/4 v4, 0x1

    .line 1195
    :cond_31
    :goto_24
    mul-int v12, v40, v2

    .line 1196
    .line 1197
    new-instance v13, Ljava/util/ArrayList;

    .line 1198
    .line 1199
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1200
    .line 1201
    .line 1202
    new-instance v14, Ljava/util/ArrayList;

    .line 1203
    .line 1204
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1205
    .line 1206
    .line 1207
    const-string v10, "user_level"

    .line 1208
    .line 1209
    invoke-virtual {v3, v4, v10, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1210
    .line 1211
    .line 1212
    move-result v5

    .line 1213
    const-string v9, "user_experience"

    .line 1214
    .line 1215
    const/4 v4, 0x0

    .line 1216
    invoke-virtual {v3, v4, v9, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1217
    .line 1218
    .line 1219
    move-result v6

    .line 1220
    move-object/from16 v7, p0

    .line 1221
    .line 1222
    invoke-virtual {v7, v5, v6, v4}, Lcom/sgscq/vpn/handler/w;->h(III)Ll/c;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v5

    .line 1226
    move-object/from16 p2, v10

    .line 1227
    .line 1228
    move-object/from16 v6, v22

    .line 1229
    .line 1230
    move-object/from16 v10, v26

    .line 1231
    .line 1232
    move-object/from16 v4, v39

    .line 1233
    .line 1234
    invoke-virtual {v10, v6, v4}, Lcom/sgscq/vpn/handler/x;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    .line 1236
    .line 1237
    move-result v16

    .line 1238
    iget v6, v5, Ll/c;->a:I

    .line 1239
    .line 1240
    iget v5, v5, Ll/c;->b:I

    .line 1241
    .line 1242
    move v1, v6

    .line 1243
    move-object/from16 v19, v8

    .line 1244
    .line 1245
    move-object/from16 v23, v9

    .line 1246
    .line 1247
    move-object/from16 v24, v11

    .line 1248
    .line 1249
    move/from16 v26, v12

    .line 1250
    .line 1251
    const/4 v6, 0x0

    .line 1252
    const/4 v8, 0x0

    .line 1253
    const/4 v9, 0x0

    .line 1254
    move v11, v5

    .line 1255
    const/4 v5, 0x0

    .line 1256
    :goto_25
    const-string v12, "success"

    .line 1257
    .line 1258
    move-object/from16 v27, v13

    .line 1259
    .line 1260
    const-string v13, "RevertPowerSeconds"

    .line 1261
    .line 1262
    move-object/from16 v29, v12

    .line 1263
    .line 1264
    const-string v12, "user_coin"

    .line 1265
    .line 1266
    if-ge v5, v2, :cond_35

    .line 1267
    .line 1268
    move/from16 v30, v2

    .line 1269
    .line 1270
    invoke-virtual {v10, v4}, Lcom/sgscq/vpn/handler/x;->e(Ljava/lang/String;)I

    .line 1271
    .line 1272
    .line 1273
    move-result v2

    .line 1274
    move-object/from16 v31, v12

    .line 1275
    .line 1276
    const/4 v12, 0x0

    .line 1277
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    .line 1278
    .line 1279
    .line 1280
    move-result v2

    .line 1281
    iget-object v12, v3, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 1282
    .line 1283
    invoke-static {v12}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v12

    .line 1287
    invoke-virtual {v12, v1}, Lcom/sgscq/vpn/w1;->y0(I)I

    .line 1288
    .line 1289
    .line 1290
    move-result v12

    .line 1291
    move-object/from16 v32, v13

    .line 1292
    .line 1293
    move/from16 v13, v40

    .line 1294
    .line 1295
    invoke-static {v12, v13}, Lcom/sgscq/vpn/handler/x;->C(II)I

    .line 1296
    .line 1297
    .line 1298
    move-result v12

    .line 1299
    move/from16 v33, v0

    .line 1300
    .line 1301
    iget-object v0, v10, Lcom/sgscq/vpn/handler/x;->a:Lcom/sgscq/vpn/handler/k0;

    .line 1302
    .line 1303
    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 1304
    .line 1305
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v0

    .line 1309
    invoke-static {v0, v4}, Lcom/sgscq/vpn/handler/x;->h(Lcom/sgscq/vpn/w1;Ljava/lang/String;)I

    .line 1310
    .line 1311
    .line 1312
    move-result v0

    .line 1313
    if-gtz v0, :cond_32

    .line 1314
    .line 1315
    move/from16 v40, v13

    .line 1316
    .line 1317
    move-object/from16 v37, v14

    .line 1318
    .line 1319
    const/4 v0, 0x0

    .line 1320
    goto :goto_26

    .line 1321
    :cond_32
    invoke-static/range {v18 .. v18}, Lcom/sgscq/vpn/cloud/m0;->U0(I)D

    .line 1322
    .line 1323
    .line 1324
    move-result-wide v34

    .line 1325
    move/from16 v40, v13

    .line 1326
    .line 1327
    move-object/from16 v37, v14

    .line 1328
    .line 1329
    int-to-double v13, v0

    .line 1330
    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    .line 1331
    .line 1332
    add-double v34, v34, v38

    .line 1333
    .line 1334
    mul-double v34, v34, v13

    .line 1335
    .line 1336
    const-wide v13, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    add-double v34, v34, v13

    .line 1342
    .line 1343
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->floor(D)D

    .line 1344
    .line 1345
    .line 1346
    move-result-wide v13

    .line 1347
    double-to-int v0, v13

    .line 1348
    :goto_26
    const/4 v13, 0x0

    .line 1349
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    .line 1350
    .line 1351
    .line 1352
    move-result v12

    .line 1353
    move-object/from16 v14, v36

    .line 1354
    .line 1355
    invoke-static {v12, v14}, Lcom/sgscq/vpn/p5;->B0(ILandroid/content/Context;)I

    .line 1356
    .line 1357
    .line 1358
    move-result v12

    .line 1359
    invoke-static {v0, v14}, Lcom/sgscq/vpn/p5;->B0(ILandroid/content/Context;)I

    .line 1360
    .line 1361
    .line 1362
    move-result v0

    .line 1363
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    .line 1364
    .line 1365
    .line 1366
    move-result v12

    .line 1367
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    .line 1368
    .line 1369
    .line 1370
    move-result v2

    .line 1371
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    .line 1372
    .line 1373
    .line 1374
    move-result v0

    .line 1375
    invoke-virtual {v7, v1, v11, v12}, Lcom/sgscq/vpn/handler/w;->h(III)Ll/c;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v1

    .line 1379
    iget v13, v1, Ll/c;->a:I

    .line 1380
    .line 1381
    iget v1, v1, Ll/c;->b:I

    .line 1382
    .line 1383
    add-int v11, v6, v2

    .line 1384
    .line 1385
    add-int v34, v8, v12

    .line 1386
    .line 1387
    add-int v35, v9, v0

    .line 1388
    .line 1389
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v6

    .line 1393
    invoke-static {v6, v15}, Lcom/sgscq/vpn/handler/x;->A(Ljava/lang/String;Ljava/util/Map;)Z

    .line 1394
    .line 1395
    .line 1396
    invoke-static {v15}, Lcom/sgscq/vpn/handler/x;->k(Ljava/util/Map;)Ljava/util/Map;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v6

    .line 1400
    invoke-static {v4, v6}, Lcom/sgscq/vpn/handler/x;->x(Ljava/lang/String;Ljava/util/Map;)I

    .line 1401
    .line 1402
    .line 1403
    invoke-static {v4, v15}, Lcom/sgscq/vpn/handler/w;->e0(Ljava/lang/String;Ljava/util/Map;)Z

    .line 1404
    .line 1405
    .line 1406
    move-result v6

    .line 1407
    const/4 v8, 0x1

    .line 1408
    xor-int/2addr v6, v8

    .line 1409
    new-instance v9, Ljava/util/ArrayList;

    .line 1410
    .line 1411
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1412
    .line 1413
    .line 1414
    invoke-virtual {v10, v4}, Lcom/sgscq/vpn/handler/x;->g(Ljava/lang/String;)Ljava/util/List;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v8

    .line 1418
    invoke-virtual {v7, v15, v8, v6}, Lcom/sgscq/vpn/handler/w;->Z(Ljava/util/Map;Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v6

    .line 1422
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1423
    .line 1424
    .line 1425
    invoke-virtual {v7, v15}, Lcom/sgscq/vpn/handler/w;->w0(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v6

    .line 1429
    if-eqz v6, :cond_33

    .line 1430
    .line 1431
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1432
    .line 1433
    .line 1434
    :cond_33
    invoke-static {v4, v15}, Lcom/sgscq/vpn/handler/x;->n(Ljava/lang/String;Ljava/util/Map;)V

    .line 1435
    .line 1436
    .line 1437
    move-object/from16 v8, v37

    .line 1438
    .line 1439
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1440
    .line 1441
    .line 1442
    invoke-virtual {v3}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 1443
    .line 1444
    .line 1445
    move-result v6

    .line 1446
    int-to-long v6, v6

    .line 1447
    invoke-virtual {v3, v6, v7, v15}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 1448
    .line 1449
    .line 1450
    move-result-wide v6

    .line 1451
    move-object/from16 v36, v9

    .line 1452
    .line 1453
    int-to-long v8, v11

    .line 1454
    add-long/2addr v8, v6

    .line 1455
    add-int/lit8 v38, v5, 0x1

    .line 1456
    .line 1457
    mul-int v5, v40, v38

    .line 1458
    .line 1459
    sub-int v6, v33, v5

    .line 1460
    .line 1461
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v5

    .line 1465
    const-string v41, "rounds"

    .line 1466
    .line 1467
    const/4 v7, 0x0

    .line 1468
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v42

    .line 1472
    const-string v43, "residue_team_num"

    .line 1473
    .line 1474
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v44

    .line 1478
    const-string v45, "residue_team_percent"

    .line 1479
    .line 1480
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v46

    .line 1484
    filled-new-array/range {v41 .. v46}, [Ljava/lang/Object;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v7

    .line 1488
    move/from16 v39, v0

    .line 1489
    .line 1490
    const-string v0, "star_level"

    .line 1491
    .line 1492
    invoke-static {v0, v5, v7}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v7

    .line 1496
    invoke-virtual {v3}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 1497
    .line 1498
    .line 1499
    move-result v5

    .line 1500
    if-ge v6, v5, :cond_34

    .line 1501
    .line 1502
    invoke-static {v14}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v5

    .line 1506
    move-object/from16 v41, v4

    .line 1507
    .line 1508
    move-object/from16 v28, v7

    .line 1509
    .line 1510
    move-object/from16 v7, v32

    .line 1511
    .line 1512
    const/16 v4, 0x12c

    .line 1513
    .line 1514
    invoke-virtual {v5, v7, v4}, Lcom/sgscq/vpn/w1;->U0(Ljava/lang/String;I)I

    .line 1515
    .line 1516
    .line 1517
    move-result v4

    .line 1518
    move v7, v4

    .line 1519
    move-object/from16 v5, v41

    .line 1520
    .line 1521
    goto :goto_27

    .line 1522
    :cond_34
    move-object/from16 v28, v7

    .line 1523
    .line 1524
    move-object v5, v4

    .line 1525
    const/4 v7, 0x0

    .line 1526
    :goto_27
    move v4, v13

    .line 1527
    move/from16 v32, v13

    .line 1528
    .line 1529
    move-object v13, v5

    .line 1530
    move v5, v1

    .line 1531
    move-object/from16 v47, v22

    .line 1532
    .line 1533
    move-object/from16 v17, v14

    .line 1534
    .line 1535
    move-object/from16 v48, v28

    .line 1536
    .line 1537
    const/4 v14, 0x1

    .line 1538
    move-object/from16 v52, v19

    .line 1539
    .line 1540
    move-object/from16 v53, v23

    .line 1541
    .line 1542
    move-object/from16 v51, v25

    .line 1543
    .line 1544
    move-object/from16 v50, v36

    .line 1545
    .line 1546
    move-object/from16 v49, v37

    .line 1547
    .line 1548
    move-object/from16 v54, p2

    .line 1549
    .line 1550
    move-object/from16 v19, v10

    .line 1551
    .line 1552
    move-object/from16 v10, v47

    .line 1553
    .line 1554
    move/from16 v20, v11

    .line 1555
    .line 1556
    move-object/from16 v55, v24

    .line 1557
    .line 1558
    move-object v11, v15

    .line 1559
    invoke-static/range {v4 .. v11}, Lcom/sgscq/vpn/handler/w;->p(IIIIJLjava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1560
    .line 1561
    .line 1562
    move-result-object v4

    .line 1563
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 1564
    .line 1565
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1566
    .line 1567
    .line 1568
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1569
    .line 1570
    move-object/from16 v11, v29

    .line 1571
    .line 1572
    invoke-interface {v5, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    .line 1574
    .line 1575
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v6

    .line 1579
    const-string v7, "fight_type"

    .line 1580
    .line 1581
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    .line 1583
    .line 1584
    const-string v6, "star"

    .line 1585
    .line 1586
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v7

    .line 1590
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    .line 1592
    .line 1593
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1594
    .line 1595
    .line 1596
    move-result-object v6

    .line 1597
    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    .line 1599
    .line 1600
    const-string v0, "dungeon_starLevel"

    .line 1601
    .line 1602
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v6

    .line 1606
    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    .line 1608
    .line 1609
    const-string v0, "fight_calculate_info"

    .line 1610
    .line 1611
    move-object/from16 v6, v48

    .line 1612
    .line 1613
    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    .line 1615
    .line 1616
    const-string v0, "player_info"

    .line 1617
    .line 1618
    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    .line 1620
    .line 1621
    const-string v0, "show_general_info"

    .line 1622
    .line 1623
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v4

    .line 1627
    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    .line 1629
    .line 1630
    const-string v0, "add_list"

    .line 1631
    .line 1632
    move-object/from16 v4, v50

    .line 1633
    .line 1634
    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    .line 1636
    .line 1637
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1638
    .line 1639
    .line 1640
    move-result-object v0

    .line 1641
    const-string v41, "user_exp"

    .line 1642
    .line 1643
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v42

    .line 1647
    const-string v43, "general_exp"

    .line 1648
    .line 1649
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1650
    .line 1651
    .line 1652
    move-result-object v44

    .line 1653
    const-string v45, "add_list"

    .line 1654
    .line 1655
    move-object/from16 v46, v4

    .line 1656
    .line 1657
    filled-new-array/range {v41 .. v46}, [Ljava/lang/Object;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v2

    .line 1661
    move-object/from16 v12, v31

    .line 1662
    .line 1663
    invoke-static {v12, v0, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1664
    .line 1665
    .line 1666
    move-result-object v0

    .line 1667
    const-string v2, "drop_info"

    .line 1668
    .line 1669
    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    .line 1671
    .line 1672
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 1673
    .line 1674
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1675
    .line 1676
    .line 1677
    const/4 v10, 0x0

    .line 1678
    move-object/from16 v2, p0

    .line 1679
    .line 1680
    invoke-virtual {v2, v10, v13, v15}, Lcom/sgscq/vpn/handler/w;->t(ILjava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1681
    .line 1682
    .line 1683
    move-result-object v4

    .line 1684
    const-string v6, "fight_info"

    .line 1685
    .line 1686
    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    .line 1688
    .line 1689
    const-string v4, "fight_result"

    .line 1690
    .line 1691
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    .line 1693
    .line 1694
    move-object/from16 v5, v27

    .line 1695
    .line 1696
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1697
    .line 1698
    .line 1699
    move v11, v1

    .line 1700
    move-object v7, v2

    .line 1701
    move-object v4, v13

    .line 1702
    move-object/from16 v36, v17

    .line 1703
    .line 1704
    move-object/from16 v10, v19

    .line 1705
    .line 1706
    move/from16 v6, v20

    .line 1707
    .line 1708
    move/from16 v2, v30

    .line 1709
    .line 1710
    move/from16 v1, v32

    .line 1711
    .line 1712
    move/from16 v0, v33

    .line 1713
    .line 1714
    move/from16 v8, v34

    .line 1715
    .line 1716
    move/from16 v9, v35

    .line 1717
    .line 1718
    move-object/from16 v22, v47

    .line 1719
    .line 1720
    move-object/from16 v14, v49

    .line 1721
    .line 1722
    move-object/from16 v25, v51

    .line 1723
    .line 1724
    move-object/from16 v19, v52

    .line 1725
    .line 1726
    move-object/from16 v23, v53

    .line 1727
    .line 1728
    move-object/from16 p2, v54

    .line 1729
    .line 1730
    move-object/from16 v24, v55

    .line 1731
    .line 1732
    move-object v13, v5

    .line 1733
    move/from16 v5, v38

    .line 1734
    .line 1735
    goto/16 :goto_25

    .line 1736
    .line 1737
    :cond_35
    move/from16 v33, v0

    .line 1738
    .line 1739
    move/from16 v30, v2

    .line 1740
    .line 1741
    move-object v2, v7

    .line 1742
    move-object v7, v13

    .line 1743
    move-object/from16 v49, v14

    .line 1744
    .line 1745
    move-object/from16 v52, v19

    .line 1746
    .line 1747
    move-object/from16 v47, v22

    .line 1748
    .line 1749
    move-object/from16 v53, v23

    .line 1750
    .line 1751
    move-object/from16 v55, v24

    .line 1752
    .line 1753
    move-object/from16 v51, v25

    .line 1754
    .line 1755
    move-object/from16 v5, v27

    .line 1756
    .line 1757
    move-object/from16 v11, v29

    .line 1758
    .line 1759
    move-object/from16 v17, v36

    .line 1760
    .line 1761
    const/4 v10, 0x0

    .line 1762
    const/4 v14, 0x1

    .line 1763
    move-object/from16 v0, p2

    .line 1764
    .line 1765
    move-object v13, v4

    .line 1766
    invoke-virtual {v3, v14, v0, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1767
    .line 1768
    .line 1769
    move-result v1

    .line 1770
    move-object/from16 v4, v53

    .line 1771
    .line 1772
    invoke-virtual {v3, v10, v4, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1773
    .line 1774
    .line 1775
    move-result v14

    .line 1776
    invoke-virtual {v2, v1, v14, v10}, Lcom/sgscq/vpn/handler/w;->h(III)Ll/c;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v1

    .line 1780
    invoke-virtual {v3}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 1781
    .line 1782
    .line 1783
    move-result v14

    .line 1784
    int-to-long v10, v14

    .line 1785
    invoke-virtual {v3, v10, v11, v15}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 1786
    .line 1787
    .line 1788
    move-result-wide v10

    .line 1789
    int-to-long v5, v6

    .line 1790
    add-long/2addr v10, v5

    .line 1791
    iget v14, v1, Ll/c;->b:I

    .line 1792
    .line 1793
    iget v1, v1, Ll/c;->a:I

    .line 1794
    .line 1795
    invoke-virtual {v2, v1, v14, v8}, Lcom/sgscq/vpn/handler/w;->h(III)Ll/c;

    .line 1796
    .line 1797
    .line 1798
    move-result-object v8

    .line 1799
    sub-int v14, v33, v26

    .line 1800
    .line 1801
    move-wide/from16 v18, v10

    .line 1802
    .line 1803
    const/4 v10, 0x0

    .line 1804
    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    .line 1805
    .line 1806
    .line 1807
    move-result v14

    .line 1808
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 1809
    .line 1810
    .line 1811
    move-result-wide v10

    .line 1812
    move-object/from16 v39, v13

    .line 1813
    .line 1814
    iget v13, v8, Ll/c;->a:I

    .line 1815
    .line 1816
    move/from16 v23, v9

    .line 1817
    .line 1818
    if-le v13, v1, :cond_36

    .line 1819
    .line 1820
    invoke-static/range {v17 .. v17}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 1821
    .line 1822
    .line 1823
    move-result-object v9

    .line 1824
    invoke-virtual {v9, v1, v13}, Lcom/sgscq/vpn/w1;->u(II)Ljava/util/LinkedHashMap;

    .line 1825
    .line 1826
    .line 1827
    move-result-object v1

    .line 1828
    goto :goto_28

    .line 1829
    :cond_36
    const/4 v1, 0x0

    .line 1830
    :goto_28
    if-eqz v1, :cond_37

    .line 1831
    .line 1832
    invoke-virtual {v2, v15, v1}, Lcom/sgscq/vpn/handler/w;->m(Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 1833
    .line 1834
    .line 1835
    invoke-virtual {v3}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 1836
    .line 1837
    .line 1838
    move-result v9

    .line 1839
    move-wide/from16 v24, v10

    .line 1840
    .line 1841
    int-to-long v9, v9

    .line 1842
    invoke-virtual {v3, v9, v10, v15}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 1843
    .line 1844
    .line 1845
    move-result-wide v9

    .line 1846
    add-long v10, v9, v5

    .line 1847
    .line 1848
    move-wide v9, v10

    .line 1849
    goto :goto_29

    .line 1850
    :cond_37
    move-wide/from16 v24, v10

    .line 1851
    .line 1852
    move-wide/from16 v9, v18

    .line 1853
    .line 1854
    :goto_29
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1855
    .line 1856
    .line 1857
    move-result-object v5

    .line 1858
    invoke-interface {v15, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1859
    .line 1860
    .line 1861
    iget v11, v8, Ll/c;->b:I

    .line 1862
    .line 1863
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1864
    .line 1865
    .line 1866
    move-result-object v5

    .line 1867
    invoke-interface {v15, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    .line 1869
    .line 1870
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1871
    .line 1872
    .line 1873
    move-result-object v5

    .line 1874
    invoke-interface {v15, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1875
    .line 1876
    .line 1877
    invoke-virtual {v2, v15}, Lcom/sgscq/vpn/handler/w;->d1(Ljava/util/Map;)V

    .line 1878
    .line 1879
    .line 1880
    invoke-static {v15}, Lcom/sgscq/vpn/handler/d1;->K0(Ljava/util/Map;)Z

    .line 1881
    .line 1882
    .line 1883
    move-result v8

    .line 1884
    invoke-virtual {v3}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 1885
    .line 1886
    .line 1887
    move-result v5

    .line 1888
    invoke-static/range {v17 .. v17}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 1889
    .line 1890
    .line 1891
    move-result-object v6

    .line 1892
    move-object/from16 v53, v4

    .line 1893
    .line 1894
    const/16 v4, 0x12c

    .line 1895
    .line 1896
    invoke-virtual {v6, v7, v4}, Lcom/sgscq/vpn/w1;->U0(Ljava/lang/String;I)I

    .line 1897
    .line 1898
    .line 1899
    move-result v18

    .line 1900
    move-object v7, v15

    .line 1901
    move-object v15, v7

    .line 1902
    move/from16 v16, v14

    .line 1903
    .line 1904
    move/from16 v17, v5

    .line 1905
    .line 1906
    move-wide/from16 v19, v24

    .line 1907
    .line 1908
    invoke-static/range {v15 .. v20}, Lcom/sgscq/vpn/p5;->f(Ljava/util/Map;IIIJ)V

    .line 1909
    .line 1910
    .line 1911
    move/from16 v4, v23

    .line 1912
    .line 1913
    const/4 v5, 0x0

    .line 1914
    invoke-virtual {v2, v4, v5, v7}, Lcom/sgscq/vpn/handler/w;->i(ILjava/util/ArrayList;Ljava/util/Map;)V

    .line 1915
    .line 1916
    .line 1917
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/handler/w;->s0()Ljava/util/ArrayList;

    .line 1918
    .line 1919
    .line 1920
    move-result-object v4

    .line 1921
    move/from16 v6, v30

    .line 1922
    .line 1923
    if-lez v30, :cond_38

    .line 1924
    .line 1925
    const/4 v5, 0x1

    .line 1926
    goto :goto_2a

    .line 1927
    :cond_38
    const/4 v5, 0x0

    .line 1928
    :goto_2a
    invoke-static {v7, v4, v5, v6}, Lcom/sgscq/vpn/handler/w;->k(Ljava/util/Map;Ljava/util/ArrayList;ZI)V

    .line 1929
    .line 1930
    .line 1931
    move-object/from16 v15, v39

    .line 1932
    .line 1933
    if-lez v6, :cond_39

    .line 1934
    .line 1935
    const/4 v5, 0x1

    .line 1936
    goto :goto_2b

    .line 1937
    :cond_39
    const/4 v5, 0x0

    .line 1938
    :goto_2b
    invoke-static {v6, v15, v7, v5}, Lcom/sgscq/vpn/handler/w;->P0(ILjava/lang/String;Ljava/util/Map;Z)V

    .line 1939
    .line 1940
    .line 1941
    invoke-static {v4, v7}, Lcom/sgscq/vpn/handler/y0;->c(Ljava/util/List;Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;

    .line 1942
    .line 1943
    .line 1944
    move-result-object v5

    .line 1945
    iget-object v4, v3, Lcom/sgscq/vpn/handler/k0;->c:Landroid/content/SharedPreferences;

    .line 1946
    .line 1947
    move-object/from16 v23, v5

    .line 1948
    .line 1949
    move/from16 v22, v11

    .line 1950
    .line 1951
    move-object/from16 v11, v47

    .line 1952
    .line 1953
    move-object/from16 v5, p1

    .line 1954
    .line 1955
    invoke-static {v11, v7, v5, v4}, Lcom/sgscq/vpn/cloud/m0;->Y1(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Landroid/content/SharedPreferences;)Z

    .line 1956
    .line 1957
    .line 1958
    const/4 v4, 0x1

    .line 1959
    invoke-static {v7, v4, v6}, Lcom/sgscq/vpn/handler/m;->o(Ljava/util/Map;II)Lcom/sgscq/vpn/handler/j;

    .line 1960
    .line 1961
    .line 1962
    move-result-object v6

    .line 1963
    invoke-virtual {v2, v7}, Lcom/sgscq/vpn/handler/w;->C(Ljava/util/Map;)I

    .line 1964
    .line 1965
    .line 1966
    move-result v19

    .line 1967
    iget-object v4, v2, Lcom/sgscq/vpn/handler/w;->c:Ljava/util/Random;

    .line 1968
    .line 1969
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1970
    .line 1971
    .line 1972
    new-instance v5, Lcom/sgscq/vpn/handler/q;

    .line 1973
    .line 1974
    const/4 v2, 0x0

    .line 1975
    invoke-direct {v5, v2, v4}, Lcom/sgscq/vpn/handler/q;-><init>(ILjava/util/Random;)V

    .line 1976
    .line 1977
    .line 1978
    move-object v4, v15

    .line 1979
    move-object v15, v7

    .line 1980
    move/from16 v16, v26

    .line 1981
    .line 1982
    move-wide/from16 v17, v24

    .line 1983
    .line 1984
    move-object/from16 v20, v5

    .line 1985
    .line 1986
    invoke-static/range {v15 .. v20}, Lcom/sgscq/vpn/cloud/m0;->X2(Ljava/util/Map;IJILcom/sgscq/vpn/handler/q;)Lcom/sgscq/vpn/t6;

    .line 1987
    .line 1988
    .line 1989
    move-result-object v5

    .line 1990
    iget-object v15, v6, Lcom/sgscq/vpn/handler/j;->c:Ljava/lang/Object;

    .line 1991
    .line 1992
    check-cast v15, Ljava/util/List;

    .line 1993
    .line 1994
    new-instance v2, Ljava/util/ArrayList;

    .line 1995
    .line 1996
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1997
    .line 1998
    .line 1999
    if-eqz v15, :cond_3a

    .line 2000
    .line 2001
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2002
    .line 2003
    .line 2004
    :cond_3a
    iget-object v5, v5, Lcom/sgscq/vpn/t6;->b:Ljava/util/List;

    .line 2005
    .line 2006
    if-eqz v5, :cond_3b

    .line 2007
    .line 2008
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2009
    .line 2010
    .line 2011
    :cond_3b
    move-object/from16 v15, v21

    .line 2012
    .line 2013
    invoke-virtual {v15, v11, v7}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 2014
    .line 2015
    .line 2016
    move-object/from16 v39, v4

    .line 2017
    .line 2018
    move-wide/from16 v4, v24

    .line 2019
    .line 2020
    long-to-int v5, v4

    .line 2021
    invoke-virtual {v3}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 2022
    .line 2023
    .line 2024
    move-result v4

    .line 2025
    move-object/from16 p1, v6

    .line 2026
    .line 2027
    move-object/from16 v6, v52

    .line 2028
    .line 2029
    invoke-virtual {v3, v4, v6, v7}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 2030
    .line 2031
    .line 2032
    move-result v6

    .line 2033
    iget-object v4, v3, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2034
    .line 2035
    move/from16 v16, v8

    .line 2036
    .line 2037
    const-string v8, "user_energy"

    .line 2038
    .line 2039
    move-wide/from16 v17, v9

    .line 2040
    .line 2041
    invoke-virtual {v3}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 2042
    .line 2043
    .line 2044
    move-result v9

    .line 2045
    invoke-virtual {v3, v9, v8, v7}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 2046
    .line 2047
    .line 2048
    move-result v8

    .line 2049
    move-object/from16 v9, v39

    .line 2050
    .line 2051
    move-object/from16 v10, v53

    .line 2052
    .line 2053
    move-object/from16 v20, v1

    .line 2054
    .line 2055
    move-object/from16 v1, v23

    .line 2056
    .line 2057
    move-object/from16 v19, v27

    .line 2058
    .line 2059
    move-object/from16 v21, v2

    .line 2060
    .line 2061
    move-object/from16 v2, p1

    .line 2062
    .line 2063
    move-object/from16 p1, v7

    .line 2064
    .line 2065
    move v7, v8

    .line 2066
    move-object/from16 v23, v3

    .line 2067
    .line 2068
    move/from16 v3, v16

    .line 2069
    .line 2070
    move v8, v14

    .line 2071
    move-object/from16 v54, v0

    .line 2072
    .line 2073
    move-object/from16 v56, v10

    .line 2074
    .line 2075
    move/from16 v16, v14

    .line 2076
    .line 2077
    move-wide/from16 v24, v17

    .line 2078
    .line 2079
    const/4 v0, 0x0

    .line 2080
    move-object v14, v9

    .line 2081
    move-wide/from16 v9, v24

    .line 2082
    .line 2083
    move/from16 v57, v22

    .line 2084
    .line 2085
    move-object/from16 v17, v29

    .line 2086
    .line 2087
    move-object/from16 v59, v12

    .line 2088
    .line 2089
    move-object/from16 v58, v17

    .line 2090
    .line 2091
    move-object/from16 v12, p1

    .line 2092
    .line 2093
    invoke-virtual/range {v4 .. v12}, Lcom/sgscq/vpn/h5;->u(IIIIJLjava/lang/String;Ljava/util/Map;)Ljava/util/HashMap;

    .line 2094
    .line 2095
    .line 2096
    move-result-object v4

    .line 2097
    new-instance v5, Lcom/sgscq/vpn/handler/v;

    .line 2098
    .line 2099
    invoke-direct {v5}, Lcom/sgscq/vpn/handler/v;-><init>()V

    .line 2100
    .line 2101
    .line 2102
    move-object/from16 v6, p1

    .line 2103
    .line 2104
    move-object/from16 v7, v49

    .line 2105
    .line 2106
    invoke-static {v6, v7, v5}, Lcom/sgscq/vpn/handler/w;->s(Ljava/util/Map;Ljava/util/ArrayList;Lcom/sgscq/vpn/handler/v;)Ljava/util/HashMap;

    .line 2107
    .line 2108
    .line 2109
    move-result-object v5

    .line 2110
    new-instance v7, Ljava/util/ArrayList;

    .line 2111
    .line 2112
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2113
    .line 2114
    .line 2115
    invoke-virtual {v1, v5, v7}, Lcom/sgscq/vpn/handler/j;->a(Ljava/util/Map;Ljava/util/AbstractCollection;)V

    .line 2116
    .line 2117
    .line 2118
    iget-boolean v7, v2, Lcom/sgscq/vpn/handler/j;->b:Z

    .line 2119
    .line 2120
    if-eqz v7, :cond_3c

    .line 2121
    .line 2122
    invoke-static {v5, v6, v2}, Lcom/sgscq/vpn/handler/w;->a(Ljava/util/HashMap;Ljava/util/Map;Lcom/sgscq/vpn/handler/j;)V

    .line 2123
    .line 2124
    .line 2125
    :cond_3c
    iget-boolean v7, v2, Lcom/sgscq/vpn/handler/j;->b:Z

    .line 2126
    .line 2127
    if-eqz v7, :cond_3d

    .line 2128
    .line 2129
    invoke-static {v2}, Lcom/sgscq/vpn/handler/w;->D(Lcom/sgscq/vpn/handler/j;)[Ljava/lang/String;

    .line 2130
    .line 2131
    .line 2132
    move-result-object v2

    .line 2133
    goto :goto_2c

    .line 2134
    :cond_3d
    const-string v26, "General"

    .line 2135
    .line 2136
    const-string v27, "Skill"

    .line 2137
    .line 2138
    const-string v28, "TeamGeneral"

    .line 2139
    .line 2140
    const-string v29, "Item"

    .line 2141
    .line 2142
    const-string v30, "Equipment"

    .line 2143
    .line 2144
    const-string v31, "EquipmentPiece"

    .line 2145
    .line 2146
    const-string v32, "Atlas"

    .line 2147
    .line 2148
    const-string v33, "GeneralSoul"

    .line 2149
    .line 2150
    const-string v34, "SkillPiece"

    .line 2151
    .line 2152
    filled-new-array/range {v26 .. v34}, [Ljava/lang/String;

    .line 2153
    .line 2154
    .line 2155
    move-result-object v2

    .line 2156
    :goto_2c
    invoke-static {v3, v2}, Lcom/sgscq/vpn/handler/w;->e1(Z[Ljava/lang/String;)[Ljava/lang/String;

    .line 2157
    .line 2158
    .line 2159
    move-result-object v2

    .line 2160
    new-instance v3, Lorg/json/JSONObject;

    .line 2161
    .line 2162
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 2163
    .line 2164
    .line 2165
    invoke-virtual {v15, v5, v3, v2}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 2166
    .line 2167
    .line 2168
    move-result-object v3

    .line 2169
    invoke-virtual {v15, v14, v6}, Lcom/sgscq/vpn/h5;->p(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 2170
    .line 2171
    .line 2172
    move-result-object v4

    .line 2173
    invoke-static {v14}, Lcom/sgscq/vpn/handler/w;->N(Ljava/lang/String;)Ljava/lang/String;

    .line 2174
    .line 2175
    .line 2176
    move-result-object v5

    .line 2177
    invoke-virtual {v15, v5, v6}, Lcom/sgscq/vpn/h5;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 2178
    .line 2179
    .line 2180
    move-result-object v5

    .line 2181
    new-instance v7, Lcom/sgscq/vpn/y1;

    .line 2182
    .line 2183
    invoke-direct {v7}, Lcom/sgscq/vpn/y1;-><init>()V

    .line 2184
    .line 2185
    .line 2186
    move-object/from16 v8, v55

    .line 2187
    .line 2188
    invoke-virtual {v7, v8, v0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 2189
    .line 2190
    .line 2191
    const-string v8, "ret"

    .line 2192
    .line 2193
    invoke-virtual {v7, v8, v0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 2194
    .line 2195
    .line 2196
    const-string v8, "code"

    .line 2197
    .line 2198
    invoke-virtual {v7, v8, v0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 2199
    .line 2200
    .line 2201
    const-string v8, "result"

    .line 2202
    .line 2203
    const/4 v9, 0x1

    .line 2204
    invoke-virtual {v7, v8, v9}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    .line 2205
    .line 2206
    .line 2207
    const-string v8, "msg"

    .line 2208
    .line 2209
    move-object/from16 v10, v58

    .line 2210
    .line 2211
    invoke-virtual {v7, v8, v10}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    .line 2213
    .line 2214
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2215
    .line 2216
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2217
    .line 2218
    .line 2219
    array-length v10, v2

    .line 2220
    if-lez v10, :cond_3e

    .line 2221
    .line 2222
    aget-object v10, v2, v0

    .line 2223
    .line 2224
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2225
    .line 2226
    .line 2227
    :goto_2d
    array-length v10, v2

    .line 2228
    if-ge v9, v10, :cond_3e

    .line 2229
    .line 2230
    const-string v10, ","

    .line 2231
    .line 2232
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2233
    .line 2234
    .line 2235
    aget-object v10, v2, v9

    .line 2236
    .line 2237
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2238
    .line 2239
    .line 2240
    add-int/lit8 v9, v9, 0x1

    .line 2241
    .line 2242
    goto :goto_2d

    .line 2243
    :cond_3e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2244
    .line 2245
    .line 2246
    move-result-object v2

    .line 2247
    const-string v8, "cmn_modules"

    .line 2248
    .line 2249
    invoke-virtual {v7, v8, v2}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    .line 2251
    .line 2252
    const-string v2, "fight_result_all"

    .line 2253
    .line 2254
    invoke-static/range {v19 .. v19}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 2255
    .line 2256
    .line 2257
    move-result-object v8

    .line 2258
    invoke-virtual {v7, v2, v8}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    .line 2260
    .line 2261
    const-string v2, "cmn"

    .line 2262
    .line 2263
    invoke-virtual {v7, v2, v3}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2264
    .line 2265
    .line 2266
    const-string v2, "map_info"

    .line 2267
    .line 2268
    invoke-virtual {v7, v2, v4}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    .line 2270
    .line 2271
    const-string v2, "chapter_info"

    .line 2272
    .line 2273
    invoke-virtual {v7, v2, v5}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    .line 2275
    .line 2276
    const-string v2, "chapter_detail"

    .line 2277
    .line 2278
    invoke-virtual {v7, v2, v5}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
    .line 2280
    .line 2281
    move-wide/from16 v10, v24

    .line 2282
    .line 2283
    move-object/from16 v2, v59

    .line 2284
    .line 2285
    invoke-virtual {v7, v10, v11, v2}, Lcom/sgscq/vpn/y1;->d(JLjava/lang/String;)V

    .line 2286
    .line 2287
    .line 2288
    move-object/from16 v2, v56

    .line 2289
    .line 2290
    move/from16 v3, v57

    .line 2291
    .line 2292
    invoke-virtual {v7, v2, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 2293
    .line 2294
    .line 2295
    move-object/from16 v2, v54

    .line 2296
    .line 2297
    invoke-virtual {v7, v2, v13}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 2298
    .line 2299
    .line 2300
    const-string v2, "level"

    .line 2301
    .line 2302
    invoke-virtual {v7, v2, v13}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 2303
    .line 2304
    .line 2305
    const-string v2, "roleLevel"

    .line 2306
    .line 2307
    invoke-virtual {v7, v2, v13}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 2308
    .line 2309
    .line 2310
    const-string v2, "role_level"

    .line 2311
    .line 2312
    invoke-virtual {v7, v2, v13}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 2313
    .line 2314
    .line 2315
    move/from16 v2, v16

    .line 2316
    .line 2317
    move-object/from16 v3, v51

    .line 2318
    .line 2319
    invoke-virtual {v7, v3, v2}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 2320
    .line 2321
    .line 2322
    const-string v2, "user_power_date"

    .line 2323
    .line 2324
    move-object/from16 v3, v23

    .line 2325
    .line 2326
    invoke-virtual {v3, v0, v2, v6}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 2327
    .line 2328
    .line 2329
    move-result v0

    .line 2330
    invoke-virtual {v7, v2, v0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 2331
    .line 2332
    .line 2333
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2334
    .line 2335
    .line 2336
    move-result v0

    .line 2337
    if-nez v0, :cond_3f

    .line 2338
    .line 2339
    const-string v0, "meeting_info"

    .line 2340
    .line 2341
    invoke-static/range {v21 .. v21}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 2342
    .line 2343
    .line 2344
    move-result-object v2

    .line 2345
    invoke-virtual {v7, v0, v2}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    .line 2347
    .line 2348
    const-string v0, "meeting_list"

    .line 2349
    .line 2350
    invoke-static/range {v21 .. v21}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 2351
    .line 2352
    .line 2353
    move-result-object v2

    .line 2354
    invoke-virtual {v7, v0, v2}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2355
    .line 2356
    .line 2357
    const-string v0, "list"

    .line 2358
    .line 2359
    invoke-static/range {v21 .. v21}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 2360
    .line 2361
    .line 2362
    move-result-object v2

    .line 2363
    invoke-virtual {v7, v0, v2}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    .line 2365
    .line 2366
    :cond_3f
    if-eqz v20, :cond_40

    .line 2367
    .line 2368
    const-string v0, "user_level_up_info"

    .line 2369
    .line 2370
    invoke-static/range {v20 .. v20}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 2371
    .line 2372
    .line 2373
    move-result-object v2

    .line 2374
    invoke-virtual {v7, v0, v2}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    .line 2376
    .line 2377
    :cond_40
    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/j;->c()Z

    .line 2378
    .line 2379
    .line 2380
    move-result v0

    .line 2381
    if-eqz v0, :cond_41

    .line 2382
    .line 2383
    iget-object v0, v1, Lcom/sgscq/vpn/handler/j;->d:Ljava/lang/Object;

    .line 2384
    .line 2385
    check-cast v0, Ljava/util/Map;

    .line 2386
    .line 2387
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 2388
    .line 2389
    .line 2390
    move-result-object v0

    .line 2391
    const-string v1, "surrender_info"

    .line 2392
    .line 2393
    invoke-virtual {v7, v1, v0}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2394
    .line 2395
    .line 2396
    :cond_41
    invoke-virtual {v7}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    .line 2397
    .line 2398
    .line 2399
    move-result-object v0

    .line 2400
    goto/16 :goto_11
.end method

.method public final d0(Ljava/util/Map;)[B
    .locals 48

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v12

    .line 11
    const-string v3, "type"

    .line 12
    .line 13
    const-string v4, "1"

    .line 14
    .line 15
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    check-cast v5, Ljava/lang/String;

    .line 20
    .line 21
    const-string v6, "boxType"

    .line 22
    .line 23
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Ljava/lang/String;

    .line 28
    .line 29
    const-string v6, "box_id"

    .line 30
    .line 31
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    check-cast v6, Ljava/lang/String;

    .line 36
    .line 37
    const-string v7, "boxId"

    .line 38
    .line 39
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    check-cast v7, Ljava/lang/String;

    .line 44
    .line 45
    const-string v8, "dungeon_id"

    .line 46
    .line 47
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    check-cast v8, Ljava/lang/String;

    .line 52
    .line 53
    const-string v9, "dungeonId"

    .line 54
    .line 55
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    check-cast v9, Ljava/lang/String;

    .line 60
    .line 61
    const-string v10, "id"

    .line 62
    .line 63
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Ljava/lang/String;

    .line 68
    .line 69
    filled-new-array {v6, v7, v8, v9, v0}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const/4 v6, 0x0

    .line 74
    :goto_0
    const-string v7, "null"

    .line 75
    .line 76
    const/4 v8, 0x5

    .line 77
    const-string v9, ""

    .line 78
    .line 79
    if-ge v6, v8, :cond_1

    .line 80
    .line 81
    aget-object v8, v0, v6

    .line 82
    .line 83
    if-eqz v8, :cond_0

    .line 84
    .line 85
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v11

    .line 89
    if-nez v11, :cond_0

    .line 90
    .line 91
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    if-nez v11, :cond_0

    .line 96
    .line 97
    move-object v13, v8

    .line 98
    goto :goto_1

    .line 99
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    move-object v13, v9

    .line 103
    :goto_1
    iget-object v14, v2, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 104
    .line 105
    invoke-virtual {v14, v12}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 106
    .line 107
    .line 108
    move-result-object v15

    .line 109
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iget-object v6, v2, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 114
    .line 115
    const-string v8, "item_id"

    .line 116
    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    :cond_2
    :goto_2
    move-object/from16 v18, v2

    .line 120
    .line 121
    move-object/from16 v19, v5

    .line 122
    .line 123
    move-object/from16 v20, v12

    .line 124
    .line 125
    move-object/from16 v27, v14

    .line 126
    .line 127
    goto/16 :goto_a

    .line 128
    .line 129
    :cond_3
    invoke-static {v13}, Lcom/sgscq/vpn/handler/w;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {v6}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 134
    .line 135
    .line 136
    move-result-object v11

    .line 137
    invoke-virtual {v11, v0}, Lcom/sgscq/vpn/w1;->p0(Ljava/lang/String;)Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v16

    .line 141
    invoke-virtual {v11, v0, v0}, Lcom/sgscq/vpn/w1;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result v11

    .line 149
    if-eqz v0, :cond_2

    .line 150
    .line 151
    if-nez v16, :cond_4

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v16

    .line 158
    const/16 v17, 0x0

    .line 159
    .line 160
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v18

    .line 164
    if-eqz v18, :cond_2

    .line 165
    .line 166
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v18

    .line 170
    move-object/from16 v19, v5

    .line 171
    .line 172
    move-object/from16 v5, v18

    .line 173
    .line 174
    check-cast v5, Ljava/util/List;

    .line 175
    .line 176
    move-object/from16 v18, v2

    .line 177
    .line 178
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    move-object/from16 v20, v12

    .line 183
    .line 184
    const/4 v12, 0x2

    .line 185
    if-le v2, v12, :cond_5

    .line 186
    .line 187
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    goto :goto_4

    .line 196
    :cond_5
    move-object v2, v9

    .line 197
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 198
    .line 199
    .line 200
    move-result v12

    .line 201
    move-object/from16 v27, v14

    .line 202
    .line 203
    const/4 v14, 0x3

    .line 204
    if-le v12, v14, :cond_6

    .line 205
    .line 206
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v12

    .line 210
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v12

    .line 214
    goto :goto_5

    .line 215
    :cond_6
    move-object v12, v9

    .line 216
    :goto_5
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 217
    .line 218
    .line 219
    move-result v14

    .line 220
    const-string v1, "600034"

    .line 221
    .line 222
    if-nez v14, :cond_7

    .line 223
    .line 224
    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v14

    .line 228
    if-nez v14, :cond_7

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_7
    const-string v12, "\u5143\u5b9d"

    .line 232
    .line 233
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v12

    .line 237
    if-eqz v12, :cond_8

    .line 238
    .line 239
    move-object v12, v1

    .line 240
    goto :goto_6

    .line 241
    :cond_8
    const-string v12, "\u94f6\u4e24"

    .line 242
    .line 243
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v12

    .line 247
    if-nez v12, :cond_9

    .line 248
    .line 249
    const-string v12, "\u91d1\u5e01"

    .line 250
    .line 251
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v12

    .line 255
    if-nez v12, :cond_9

    .line 256
    .line 257
    const-string v12, "\u94dc\u94b1"

    .line 258
    .line 259
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    :cond_9
    const-string v12, "600026"

    .line 263
    .line 264
    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 265
    .line 266
    .line 267
    move-result v14

    .line 268
    move-object/from16 v21, v7

    .line 269
    .line 270
    const/4 v7, 0x4

    .line 271
    if-le v14, v7, :cond_a

    .line 272
    .line 273
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    const/4 v7, 0x0

    .line 278
    invoke-static {v5, v7}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    goto :goto_7

    .line 283
    :cond_a
    const/4 v5, 0x0

    .line 284
    :goto_7
    if-gtz v5, :cond_b

    .line 285
    .line 286
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    add-int/lit16 v5, v5, -0x1f4

    .line 291
    .line 292
    const/4 v7, 0x1

    .line 293
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    .line 294
    .line 295
    .line 296
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    goto :goto_8

    .line 298
    :catch_0
    const/4 v5, 0x1

    .line 299
    :goto_8
    mul-int/lit8 v5, v5, 0x32

    .line 300
    .line 301
    add-int/lit8 v7, v17, 0x1

    .line 302
    .line 303
    mul-int/2addr v7, v5

    .line 304
    add-int/lit8 v5, v7, 0x64

    .line 305
    .line 306
    :cond_b
    add-int/lit8 v7, v17, 0x1

    .line 307
    .line 308
    add-int v17, v17, v11

    .line 309
    .line 310
    const/4 v14, 0x1

    .line 311
    move/from16 v22, v7

    .line 312
    .line 313
    add-int/lit8 v7, v17, 0x1

    .line 314
    .line 315
    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    .line 316
    .line 317
    .line 318
    move-result v7

    .line 319
    new-instance v14, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    move-object/from16 v17, v0

    .line 328
    .line 329
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 330
    .line 331
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v7

    .line 339
    move/from16 v23, v11

    .line 340
    .line 341
    const-string v11, "%03d"

    .line 342
    .line 343
    invoke-static {v0, v11, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-nez v0, :cond_c

    .line 359
    .line 360
    move-object/from16 v1, p0

    .line 361
    .line 362
    move-object/from16 v0, v17

    .line 363
    .line 364
    move-object/from16 v2, v18

    .line 365
    .line 366
    move-object/from16 v5, v19

    .line 367
    .line 368
    move-object/from16 v12, v20

    .line 369
    .line 370
    move-object/from16 v7, v21

    .line 371
    .line 372
    move/from16 v17, v22

    .line 373
    .line 374
    move/from16 v11, v23

    .line 375
    .line 376
    move-object/from16 v14, v27

    .line 377
    .line 378
    goto/16 :goto_3

    .line 379
    .line 380
    :cond_c
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    if-eqz v0, :cond_d

    .line 385
    .line 386
    const/16 v0, 0x10

    .line 387
    .line 388
    goto :goto_9

    .line 389
    :cond_d
    const/4 v0, 0x5

    .line 390
    :goto_9
    const-string v21, "item_num"

    .line 391
    .line 392
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 393
    .line 394
    .line 395
    move-result-object v22

    .line 396
    const-string v23, "item_type"

    .line 397
    .line 398
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 399
    .line 400
    .line 401
    move-result-object v24

    .line 402
    const-string v25, "name"

    .line 403
    .line 404
    move-object/from16 v26, v2

    .line 405
    .line 406
    filled-new-array/range {v21 .. v26}, [Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-static {v8, v12, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    goto :goto_b

    .line 415
    :goto_a
    const/4 v0, 0x0

    .line 416
    :goto_b
    const-string v1, " rewards="

    .line 417
    .line 418
    const-string v2, " boxId="

    .line 419
    .line 420
    const-string v12, "drop_info"

    .line 421
    .line 422
    const-string v14, "reward_list"

    .line 423
    .line 424
    const-string v11, "add_list"

    .line 425
    .line 426
    const-string v7, "box_rewards"

    .line 427
    .line 428
    const-string v5, "cmn"

    .line 429
    .line 430
    move-object/from16 v16, v1

    .line 431
    .line 432
    const-string v1, "success"

    .line 433
    .line 434
    move-object/from16 v17, v2

    .line 435
    .line 436
    const-string v2, "msg"

    .line 437
    .line 438
    move-object/from16 v21, v12

    .line 439
    .line 440
    const-string v12, "result"

    .line 441
    .line 442
    move-object/from16 v22, v14

    .line 443
    .line 444
    const-string v14, "code"

    .line 445
    .line 446
    move-object/from16 v23, v1

    .line 447
    .line 448
    const-string v1, "ret"

    .line 449
    .line 450
    move-object/from16 v24, v5

    .line 451
    .line 452
    const-string v5, "user_power"

    .line 453
    .line 454
    move-object/from16 v25, v7

    .line 455
    .line 456
    const-string v7, "user_energy"

    .line 457
    .line 458
    move-object/from16 v26, v2

    .line 459
    .line 460
    const-string v2, "user_gold"

    .line 461
    .line 462
    move-object/from16 v28, v12

    .line 463
    .line 464
    const-string v12, "error_code"

    .line 465
    .line 466
    move-object/from16 v29, v14

    .line 467
    .line 468
    const-string v14, "SGSCQ_SRV"

    .line 469
    .line 470
    if-eqz v0, :cond_15

    .line 471
    .line 472
    move-object/from16 v30, v14

    .line 473
    .line 474
    new-instance v14, Ljava/util/ArrayList;

    .line 475
    .line 476
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .line 478
    .line 479
    if-nez v15, :cond_e

    .line 480
    .line 481
    new-instance v15, Ljava/util/HashMap;

    .line 482
    .line 483
    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 484
    .line 485
    .line 486
    :cond_e
    move-object/from16 v31, v1

    .line 487
    .line 488
    const-string v1, "chapter_reward_boxes"

    .line 489
    .line 490
    move-object/from16 v32, v12

    .line 491
    .line 492
    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v12

    .line 496
    move-object/from16 v33, v5

    .line 497
    .line 498
    instance-of v5, v12, Ljava/util/Map;

    .line 499
    .line 500
    if-eqz v5, :cond_f

    .line 501
    .line 502
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 503
    .line 504
    check-cast v12, Ljava/util/Map;

    .line 505
    .line 506
    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v12

    .line 510
    invoke-virtual {v5, v12}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v5

    .line 514
    if-eqz v5, :cond_f

    .line 515
    .line 516
    const/4 v5, 0x1

    .line 517
    goto :goto_c

    .line 518
    :cond_f
    const/4 v5, 0x0

    .line 519
    :goto_c
    if-nez v5, :cond_14

    .line 520
    .line 521
    invoke-static {v6}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 522
    .line 523
    .line 524
    move-result-object v5

    .line 525
    invoke-virtual {v5, v13}, Lcom/sgscq/vpn/w1;->c1(Ljava/lang/String;)Ljava/util/Map;

    .line 526
    .line 527
    .line 528
    move-result-object v5

    .line 529
    if-eqz v5, :cond_12

    .line 530
    .line 531
    const-string v6, "item_type"

    .line 532
    .line 533
    invoke-static {v5, v6, v4}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 534
    .line 535
    .line 536
    move-result v6

    .line 537
    if-eqz v6, :cond_12

    .line 538
    .line 539
    const-string v6, "effect_value"

    .line 540
    .line 541
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v5

    .line 545
    instance-of v6, v5, Ljava/util/Map;

    .line 546
    .line 547
    if-eqz v6, :cond_12

    .line 548
    .line 549
    check-cast v5, Ljava/util/Map;

    .line 550
    .line 551
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v5

    .line 555
    instance-of v6, v5, Ljava/util/List;

    .line 556
    .line 557
    if-eqz v6, :cond_12

    .line 558
    .line 559
    check-cast v5, Ljava/util/List;

    .line 560
    .line 561
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 566
    .line 567
    .line 568
    move-result v5

    .line 569
    if-eqz v5, :cond_11

    .line 570
    .line 571
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v5

    .line 575
    instance-of v6, v5, Ljava/util/Map;

    .line 576
    .line 577
    if-nez v6, :cond_10

    .line 578
    .line 579
    goto :goto_d

    .line 580
    :cond_10
    check-cast v5, Ljava/util/Map;

    .line 581
    .line 582
    invoke-interface {v5, v10, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v6

    .line 586
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v6

    .line 590
    const-string v12, "num"

    .line 591
    .line 592
    invoke-interface {v5, v12, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v12

    .line 596
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v12

    .line 600
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 601
    .line 602
    .line 603
    move-result v12

    .line 604
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v5

    .line 608
    move-object/from16 p1, v0

    .line 609
    .line 610
    const/4 v0, 0x5

    .line 611
    invoke-static {v5, v0}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 612
    .line 613
    .line 614
    move-result v0

    .line 615
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 616
    .line 617
    .line 618
    move-result-object v5

    .line 619
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    const-string v12, "item_num"

    .line 624
    .line 625
    filled-new-array {v12, v5, v3, v0}, [Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    invoke-static {v8, v6, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    move-object/from16 v12, p0

    .line 634
    .line 635
    invoke-virtual {v12, v14, v15, v0}, Lcom/sgscq/vpn/handler/w;->Y(Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 636
    .line 637
    .line 638
    move-object/from16 v0, p1

    .line 639
    .line 640
    goto :goto_d

    .line 641
    :cond_11
    move-object/from16 v12, p0

    .line 642
    .line 643
    goto :goto_e

    .line 644
    :cond_12
    move-object/from16 v12, p0

    .line 645
    .line 646
    invoke-virtual {v12, v14, v15, v0}, Lcom/sgscq/vpn/handler/w;->Y(Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 647
    .line 648
    .line 649
    :goto_e
    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    instance-of v3, v0, Ljava/util/Map;

    .line 654
    .line 655
    if-eqz v3, :cond_13

    .line 656
    .line 657
    check-cast v0, Ljava/util/Map;

    .line 658
    .line 659
    goto :goto_f

    .line 660
    :cond_13
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 661
    .line 662
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 663
    .line 664
    .line 665
    invoke-interface {v15, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    :goto_f
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 669
    .line 670
    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-object/from16 v1, v20

    .line 674
    .line 675
    move-object/from16 v10, v27

    .line 676
    .line 677
    invoke-virtual {v10, v1, v15}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 678
    .line 679
    .line 680
    goto :goto_10

    .line 681
    :cond_14
    move-object/from16 v12, p0

    .line 682
    .line 683
    move-object/from16 v1, v20

    .line 684
    .line 685
    move-object/from16 v10, v27

    .line 686
    .line 687
    :goto_10
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 688
    .line 689
    .line 690
    move-result-wide v3

    .line 691
    long-to-int v4, v3

    .line 692
    move-object/from16 v8, v18

    .line 693
    .line 694
    iget-object v3, v8, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 695
    .line 696
    invoke-virtual {v8}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 697
    .line 698
    .line 699
    move-result v0

    .line 700
    int-to-long v5, v0

    .line 701
    invoke-virtual {v8, v5, v6, v15}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 702
    .line 703
    .line 704
    move-result-wide v18

    .line 705
    invoke-virtual {v8}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 706
    .line 707
    .line 708
    move-result v0

    .line 709
    invoke-virtual {v8, v0, v2, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 710
    .line 711
    .line 712
    move-result v5

    .line 713
    invoke-virtual {v8}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 714
    .line 715
    .line 716
    move-result v0

    .line 717
    invoke-virtual {v8, v0, v7, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 718
    .line 719
    .line 720
    move-result v6

    .line 721
    invoke-virtual {v8}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 722
    .line 723
    .line 724
    move-result v0

    .line 725
    move-object/from16 v2, v33

    .line 726
    .line 727
    invoke-virtual {v8, v0, v2, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 728
    .line 729
    .line 730
    move-result v7

    .line 731
    move-object/from16 v2, v24

    .line 732
    .line 733
    move-object/from16 v9, v25

    .line 734
    .line 735
    move-object/from16 v20, v8

    .line 736
    .line 737
    move-object v12, v9

    .line 738
    move-wide/from16 v8, v18

    .line 739
    .line 740
    move-object/from16 v18, v13

    .line 741
    .line 742
    move-object v13, v10

    .line 743
    move-object v10, v1

    .line 744
    move-object/from16 v24, v1

    .line 745
    .line 746
    move-object v1, v11

    .line 747
    move-object v11, v15

    .line 748
    invoke-virtual/range {v3 .. v11}, Lcom/sgscq/vpn/h5;->u(IIIIJLjava/lang/String;Ljava/util/Map;)Ljava/util/HashMap;

    .line 749
    .line 750
    .line 751
    move-result-object v0

    .line 752
    new-instance v3, Lcom/sgscq/vpn/handler/v;

    .line 753
    .line 754
    invoke-direct {v3}, Lcom/sgscq/vpn/handler/v;-><init>()V

    .line 755
    .line 756
    .line 757
    invoke-static {v15, v14, v3}, Lcom/sgscq/vpn/handler/w;->s(Ljava/util/Map;Ljava/util/ArrayList;Lcom/sgscq/vpn/handler/v;)Ljava/util/HashMap;

    .line 758
    .line 759
    .line 760
    move-result-object v3

    .line 761
    new-instance v4, Lorg/json/JSONObject;

    .line 762
    .line 763
    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 764
    .line 765
    .line 766
    const-string v5, "General"

    .line 767
    .line 768
    const-string v6, "Skill"

    .line 769
    .line 770
    const-string v7, "TeamGeneral"

    .line 771
    .line 772
    const-string v8, "Item"

    .line 773
    .line 774
    const-string v9, "Equipment"

    .line 775
    .line 776
    const-string v10, "EquipmentPiece"

    .line 777
    .line 778
    const-string v11, "Atlas"

    .line 779
    .line 780
    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    invoke-virtual {v13, v3, v4, v0}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v0

    .line 788
    invoke-static {v14}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v3

    .line 792
    new-instance v4, Lcom/sgscq/vpn/y1;

    .line 793
    .line 794
    invoke-direct {v4}, Lcom/sgscq/vpn/y1;-><init>()V

    .line 795
    .line 796
    .line 797
    const/4 v5, 0x0

    .line 798
    move-object/from16 v11, v32

    .line 799
    .line 800
    invoke-virtual {v4, v11, v5}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 801
    .line 802
    .line 803
    move-object/from16 v6, v31

    .line 804
    .line 805
    invoke-virtual {v4, v6, v5}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 806
    .line 807
    .line 808
    move-object/from16 v6, v29

    .line 809
    .line 810
    invoke-virtual {v4, v6, v5}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 811
    .line 812
    .line 813
    const/4 v6, 0x1

    .line 814
    move-object/from16 v7, v28

    .line 815
    .line 816
    invoke-virtual {v4, v7, v6}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    .line 817
    .line 818
    .line 819
    move-object/from16 v6, v23

    .line 820
    .line 821
    move-object/from16 v7, v26

    .line 822
    .line 823
    invoke-virtual {v4, v7, v6}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v4, v2, v0}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    .line 828
    .line 829
    invoke-virtual {v4, v1, v3}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    move-object/from16 v2, v22

    .line 833
    .line 834
    invoke-virtual {v4, v2, v3}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    new-array v0, v5, [Ljava/lang/Object;

    .line 838
    .line 839
    invoke-static {v1, v14, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 844
    .line 845
    .line 846
    move-result-object v0

    .line 847
    move-object/from16 v2, v21

    .line 848
    .line 849
    invoke-virtual {v4, v2, v0}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    .line 851
    .line 852
    new-array v0, v5, [Ljava/lang/Object;

    .line 853
    .line 854
    invoke-static {v1, v14, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 855
    .line 856
    .line 857
    move-result-object v0

    .line 858
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 859
    .line 860
    .line 861
    move-result-object v0

    .line 862
    invoke-virtual {v4, v12, v0}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    invoke-virtual {v4}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    const-string v1, "[Dungeon] chapterRewardBox uid="

    .line 870
    .line 871
    move-object/from16 v3, v16

    .line 872
    .line 873
    move-object/from16 v4, v17

    .line 874
    .line 875
    move-object/from16 v2, v18

    .line 876
    .line 877
    move-object/from16 v5, v24

    .line 878
    .line 879
    invoke-static {v1, v5, v4, v2, v3}, Lc/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    .line 881
    .line 882
    move-result-object v1

    .line 883
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 884
    .line 885
    .line 886
    move-result v2

    .line 887
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v1

    .line 894
    move-object/from16 v14, v30

    .line 895
    .line 896
    invoke-static {v14, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    .line 898
    .line 899
    move-object/from16 v1, v20

    .line 900
    .line 901
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    return-object v0

    .line 906
    :cond_15
    move-object/from16 v31, v1

    .line 907
    .line 908
    move-object v1, v11

    .line 909
    move-object v11, v12

    .line 910
    move-object/from16 v34, v16

    .line 911
    .line 912
    move-object/from16 v35, v17

    .line 913
    .line 914
    move-object/from16 v16, v18

    .line 915
    .line 916
    move-object/from16 v36, v26

    .line 917
    .line 918
    move-object v12, v5

    .line 919
    move-object/from16 v18, v13

    .line 920
    .line 921
    move-object/from16 v5, v20

    .line 922
    .line 923
    move-object/from16 v13, v27

    .line 924
    .line 925
    invoke-static/range {v18 .. v18}, Lcom/sgscq/vpn/handler/w;->r0(Ljava/lang/String;)Z

    .line 926
    .line 927
    .line 928
    move-result v0

    .line 929
    if-nez v0, :cond_16

    .line 930
    .line 931
    move-object/from16 v17, v6

    .line 932
    .line 933
    move-object/from16 v33, v12

    .line 934
    .line 935
    move-object/from16 v6, v18

    .line 936
    .line 937
    move-object/from16 v18, v7

    .line 938
    .line 939
    goto :goto_12

    .line 940
    :cond_16
    :try_start_1
    const-string v0, "gift_box_contents.json"

    .line 941
    .line 942
    invoke-static {v6, v0}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 943
    .line 944
    .line 945
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 946
    move-object/from16 v17, v6

    .line 947
    .line 948
    move-object/from16 v6, v18

    .line 949
    .line 950
    :try_start_2
    invoke-static {v6, v0}, Lcom/sgscq/vpn/handler/w;->a1(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 951
    .line 952
    .line 953
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 954
    move-object/from16 v18, v7

    .line 955
    .line 956
    move-object/from16 v33, v12

    .line 957
    .line 958
    if-eqz v0, :cond_17

    .line 959
    .line 960
    goto :goto_13

    .line 961
    :catch_1
    move-exception v0

    .line 962
    goto :goto_11

    .line 963
    :catch_2
    move-exception v0

    .line 964
    move-object/from16 v17, v6

    .line 965
    .line 966
    move-object/from16 v6, v18

    .line 967
    .line 968
    :goto_11
    move-object/from16 v33, v12

    .line 969
    .line 970
    new-instance v12, Ljava/lang/StringBuilder;

    .line 971
    .line 972
    move-object/from16 v18, v7

    .line 973
    .line 974
    const-string v7, "[Dungeon] tower reward box encrypted config failed: "

    .line 975
    .line 976
    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 977
    .line 978
    .line 979
    invoke-static {v0, v12, v14}, Lc/a;->u(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 980
    .line 981
    .line 982
    :cond_17
    invoke-static {v6}, Lcom/sgscq/vpn/handler/w;->r0(Ljava/lang/String;)Z

    .line 983
    .line 984
    .line 985
    move-result v0

    .line 986
    if-nez v0, :cond_18

    .line 987
    .line 988
    goto :goto_12

    .line 989
    :cond_18
    invoke-static {}, Lcom/sgscq/vpn/handler/w;->S()Ljava/io/File;

    .line 990
    .line 991
    .line 992
    move-result-object v0

    .line 993
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 994
    .line 995
    .line 996
    move-result v7

    .line 997
    if-nez v7, :cond_19

    .line 998
    .line 999
    goto :goto_12

    .line 1000
    :cond_19
    :try_start_3
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->W0(Ljava/io/File;)Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v0

    .line 1004
    invoke-static {v6, v0}, Lcom/sgscq/vpn/handler/w;->a1(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1008
    goto :goto_13

    .line 1009
    :catch_3
    :goto_12
    const/4 v0, 0x0

    .line 1010
    :goto_13
    const/4 v7, -0x1

    .line 1011
    if-eqz v0, :cond_2c

    .line 1012
    .line 1013
    if-nez v15, :cond_1a

    .line 1014
    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1016
    .line 1017
    const-string v1, "[Dungeon] towerRewardBox player not found: "

    .line 1018
    .line 1019
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v0

    .line 1029
    invoke-static {v14, v0}, Lcom/sgscq/vpn/z2;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    .line 1031
    .line 1032
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v0

    .line 1036
    const-string v17, "ret"

    .line 1037
    .line 1038
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v18

    .line 1042
    const-string v19, "code"

    .line 1043
    .line 1044
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v20

    .line 1048
    const-string v21, "result"

    .line 1049
    .line 1050
    sget-object v22, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1051
    .line 1052
    const-string v23, "msg"

    .line 1053
    .line 1054
    const-string v24, "\u73a9\u5bb6\u6570\u636e\u4e0d\u5b58\u5728"

    .line 1055
    .line 1056
    filled-new-array/range {v17 .. v24}, [Ljava/lang/Object;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v1

    .line 1060
    invoke-static {v11, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v0

    .line 1064
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v0

    .line 1068
    move-object/from16 v4, v16

    .line 1069
    .line 1070
    goto/16 :goto_1c

    .line 1071
    .line 1072
    :cond_1a
    new-instance v12, Ljava/util/ArrayList;

    .line 1073
    .line 1074
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 1078
    .line 1079
    .line 1080
    move-result v7

    .line 1081
    if-nez v7, :cond_2b

    .line 1082
    .line 1083
    const-string v7, "tower_claimed_box_ids"

    .line 1084
    .line 1085
    move-object/from16 v32, v11

    .line 1086
    .line 1087
    invoke-interface {v15, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v11

    .line 1091
    move-object/from16 v30, v14

    .line 1092
    .line 1093
    instance-of v14, v11, Ljava/util/List;

    .line 1094
    .line 1095
    if-eqz v14, :cond_1c

    .line 1096
    .line 1097
    check-cast v11, Ljava/util/List;

    .line 1098
    .line 1099
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v4

    .line 1103
    :cond_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1104
    .line 1105
    .line 1106
    move-result v11

    .line 1107
    if-eqz v11, :cond_20

    .line 1108
    .line 1109
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v11

    .line 1113
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v11

    .line 1117
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1118
    .line 1119
    .line 1120
    move-result v11

    .line 1121
    if-eqz v11, :cond_1b

    .line 1122
    .line 1123
    goto :goto_14

    .line 1124
    :cond_1c
    instance-of v14, v11, Ljava/util/Map;

    .line 1125
    .line 1126
    if-eqz v14, :cond_20

    .line 1127
    .line 1128
    check-cast v11, Ljava/util/Map;

    .line 1129
    .line 1130
    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v11

    .line 1134
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1135
    .line 1136
    invoke-virtual {v14, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 1137
    .line 1138
    .line 1139
    move-result v14

    .line 1140
    if-nez v14, :cond_1e

    .line 1141
    .line 1142
    instance-of v14, v11, Ljava/lang/Number;

    .line 1143
    .line 1144
    if-eqz v14, :cond_1d

    .line 1145
    .line 1146
    move-object v14, v11

    .line 1147
    check-cast v14, Ljava/lang/Number;

    .line 1148
    .line 1149
    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    .line 1150
    .line 1151
    .line 1152
    move-result v14

    .line 1153
    if-nez v14, :cond_1e

    .line 1154
    .line 1155
    :cond_1d
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v14

    .line 1159
    move-object/from16 v20, v2

    .line 1160
    .line 1161
    const-string v2, "true"

    .line 1162
    .line 1163
    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1164
    .line 1165
    .line 1166
    move-result v2

    .line 1167
    if-nez v2, :cond_1f

    .line 1168
    .line 1169
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v2

    .line 1173
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1174
    .line 1175
    .line 1176
    move-result v2

    .line 1177
    if-eqz v2, :cond_21

    .line 1178
    .line 1179
    goto :goto_15

    .line 1180
    :cond_1e
    :goto_14
    move-object/from16 v20, v2

    .line 1181
    .line 1182
    :cond_1f
    :goto_15
    const/4 v2, 0x1

    .line 1183
    goto :goto_16

    .line 1184
    :cond_20
    move-object/from16 v20, v2

    .line 1185
    .line 1186
    :cond_21
    const/4 v2, 0x0

    .line 1187
    :goto_16
    if-eqz v2, :cond_22

    .line 1188
    .line 1189
    move-object/from16 v14, p0

    .line 1190
    .line 1191
    move-object/from16 v11, v16

    .line 1192
    .line 1193
    goto/16 :goto_1b

    .line 1194
    .line 1195
    :cond_22
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v0

    .line 1199
    instance-of v2, v0, Ljava/util/List;

    .line 1200
    .line 1201
    if-eqz v2, :cond_27

    .line 1202
    .line 1203
    new-instance v2, Ljava/util/ArrayList;

    .line 1204
    .line 1205
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1206
    .line 1207
    .line 1208
    check-cast v0, Ljava/util/List;

    .line 1209
    .line 1210
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v0

    .line 1214
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1215
    .line 1216
    .line 1217
    move-result v4

    .line 1218
    if-eqz v4, :cond_26

    .line 1219
    .line 1220
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v4

    .line 1224
    instance-of v11, v4, Ljava/util/Map;

    .line 1225
    .line 1226
    if-nez v11, :cond_23

    .line 1227
    .line 1228
    goto :goto_17

    .line 1229
    :cond_23
    check-cast v4, Ljava/util/Map;

    .line 1230
    .line 1231
    invoke-static {v4, v8, v9, v10}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v11

    .line 1235
    const-string v14, "num"

    .line 1236
    .line 1237
    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v14

    .line 1241
    move-object/from16 p1, v0

    .line 1242
    .line 1243
    const-string v0, "item_num"

    .line 1244
    .line 1245
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v0

    .line 1249
    move-object/from16 v26, v8

    .line 1250
    .line 1251
    const/4 v8, 0x1

    .line 1252
    invoke-static {v0, v8}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 1253
    .line 1254
    .line 1255
    move-result v0

    .line 1256
    invoke-static {v14, v0}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 1257
    .line 1258
    .line 1259
    move-result v0

    .line 1260
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v4

    .line 1264
    const/4 v8, 0x5

    .line 1265
    invoke-static {v4, v8}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    .line 1266
    .line 1267
    .line 1268
    move-result v4

    .line 1269
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 1270
    .line 1271
    .line 1272
    move-result v8

    .line 1273
    if-nez v8, :cond_25

    .line 1274
    .line 1275
    if-gtz v0, :cond_24

    .line 1276
    .line 1277
    goto :goto_18

    .line 1278
    :cond_24
    const-string v37, "item_id"

    .line 1279
    .line 1280
    const-string v39, "num"

    .line 1281
    .line 1282
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v40

    .line 1286
    const-string v41, "type"

    .line 1287
    .line 1288
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v42

    .line 1292
    move-object/from16 v38, v11

    .line 1293
    .line 1294
    filled-new-array/range {v37 .. v42}, [Ljava/lang/Object;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v0

    .line 1298
    invoke-static {v10, v11, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v0

    .line 1302
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1303
    .line 1304
    .line 1305
    :cond_25
    :goto_18
    move-object/from16 v0, p1

    .line 1306
    .line 1307
    move-object/from16 v8, v26

    .line 1308
    .line 1309
    goto :goto_17

    .line 1310
    :cond_26
    const/4 v0, 0x1

    .line 1311
    move-object/from16 v14, p0

    .line 1312
    .line 1313
    move-object/from16 v11, v16

    .line 1314
    .line 1315
    invoke-virtual {v14, v15, v2, v0}, Lcom/sgscq/vpn/handler/w;->Z(Ljava/util/Map;Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v0

    .line 1319
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1320
    .line 1321
    .line 1322
    goto :goto_19

    .line 1323
    :cond_27
    move-object/from16 v14, p0

    .line 1324
    .line 1325
    move-object/from16 v11, v16

    .line 1326
    .line 1327
    :goto_19
    invoke-interface {v15, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v0

    .line 1331
    instance-of v2, v0, Ljava/util/List;

    .line 1332
    .line 1333
    if-eqz v2, :cond_28

    .line 1334
    .line 1335
    check-cast v0, Ljava/util/List;

    .line 1336
    .line 1337
    goto :goto_1a

    .line 1338
    :cond_28
    invoke-static {v15, v7}, Lc/a;->o(Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v0

    .line 1342
    :goto_1a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v2

    .line 1346
    :cond_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1347
    .line 1348
    .line 1349
    move-result v3

    .line 1350
    if-eqz v3, :cond_2a

    .line 1351
    .line 1352
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v3

    .line 1356
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v3

    .line 1360
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1361
    .line 1362
    .line 1363
    move-result v3

    .line 1364
    if-eqz v3, :cond_29

    .line 1365
    .line 1366
    goto :goto_1b

    .line 1367
    :cond_2a
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1368
    .line 1369
    .line 1370
    goto :goto_1b

    .line 1371
    :cond_2b
    move-object/from16 v20, v2

    .line 1372
    .line 1373
    move-object/from16 v32, v11

    .line 1374
    .line 1375
    move-object/from16 v30, v14

    .line 1376
    .line 1377
    move-object/from16 v11, v16

    .line 1378
    .line 1379
    move-object/from16 v14, p0

    .line 1380
    .line 1381
    :goto_1b
    invoke-virtual {v13, v5, v15}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 1382
    .line 1383
    .line 1384
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 1385
    .line 1386
    .line 1387
    move-result-wide v2

    .line 1388
    long-to-int v4, v2

    .line 1389
    iget-object v3, v11, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1390
    .line 1391
    invoke-virtual {v11}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 1392
    .line 1393
    .line 1394
    move-result v0

    .line 1395
    int-to-long v7, v0

    .line 1396
    invoke-virtual {v11, v7, v8, v15}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 1397
    .line 1398
    .line 1399
    move-result-wide v8

    .line 1400
    invoke-virtual {v11}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 1401
    .line 1402
    .line 1403
    move-result v0

    .line 1404
    move-object/from16 v2, v20

    .line 1405
    .line 1406
    invoke-virtual {v11, v0, v2, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1407
    .line 1408
    .line 1409
    move-result v0

    .line 1410
    invoke-virtual {v11}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 1411
    .line 1412
    .line 1413
    move-result v2

    .line 1414
    move-object/from16 v10, v18

    .line 1415
    .line 1416
    invoke-virtual {v11, v2, v10, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1417
    .line 1418
    .line 1419
    move-result v2

    .line 1420
    invoke-virtual {v11}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 1421
    .line 1422
    .line 1423
    move-result v7

    .line 1424
    move-object/from16 v10, v33

    .line 1425
    .line 1426
    invoke-virtual {v11, v7, v10, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1427
    .line 1428
    .line 1429
    move-result v7

    .line 1430
    move-object/from16 v20, v5

    .line 1431
    .line 1432
    move v5, v0

    .line 1433
    move-object v10, v6

    .line 1434
    move v6, v2

    .line 1435
    move-object v2, v10

    .line 1436
    move-object/from16 v10, v20

    .line 1437
    .line 1438
    move-object/from16 v18, v11

    .line 1439
    .line 1440
    move-object/from16 v14, v32

    .line 1441
    .line 1442
    move-object v11, v15

    .line 1443
    invoke-virtual/range {v3 .. v11}, Lcom/sgscq/vpn/h5;->u(IIIIJLjava/lang/String;Ljava/util/Map;)Ljava/util/HashMap;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v0

    .line 1447
    new-instance v3, Lcom/sgscq/vpn/handler/v;

    .line 1448
    .line 1449
    invoke-direct {v3}, Lcom/sgscq/vpn/handler/v;-><init>()V

    .line 1450
    .line 1451
    .line 1452
    invoke-static {v15, v12, v3}, Lcom/sgscq/vpn/handler/w;->s(Ljava/util/Map;Ljava/util/ArrayList;Lcom/sgscq/vpn/handler/v;)Ljava/util/HashMap;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v3

    .line 1456
    new-instance v4, Lorg/json/JSONObject;

    .line 1457
    .line 1458
    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1459
    .line 1460
    .line 1461
    const-string v5, "General"

    .line 1462
    .line 1463
    const-string v6, "Skill"

    .line 1464
    .line 1465
    const-string v7, "TeamGeneral"

    .line 1466
    .line 1467
    const-string v8, "Item"

    .line 1468
    .line 1469
    const-string v9, "Equipment"

    .line 1470
    .line 1471
    const-string v10, "EquipmentPiece"

    .line 1472
    .line 1473
    const-string v11, "Atlas"

    .line 1474
    .line 1475
    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v0

    .line 1479
    invoke-virtual {v13, v3, v4, v0}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v0

    .line 1483
    invoke-static {v12}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v3

    .line 1487
    new-instance v4, Lcom/sgscq/vpn/y1;

    .line 1488
    .line 1489
    invoke-direct {v4}, Lcom/sgscq/vpn/y1;-><init>()V

    .line 1490
    .line 1491
    .line 1492
    const/4 v5, 0x0

    .line 1493
    invoke-virtual {v4, v14, v5}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 1494
    .line 1495
    .line 1496
    move-object/from16 v11, v31

    .line 1497
    .line 1498
    invoke-virtual {v4, v11, v5}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 1499
    .line 1500
    .line 1501
    move-object/from16 v8, v29

    .line 1502
    .line 1503
    invoke-virtual {v4, v8, v5}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 1504
    .line 1505
    .line 1506
    const/4 v6, 0x1

    .line 1507
    move-object/from16 v9, v28

    .line 1508
    .line 1509
    invoke-virtual {v4, v9, v6}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    .line 1510
    .line 1511
    .line 1512
    move-object/from16 v6, v23

    .line 1513
    .line 1514
    move-object/from16 v7, v36

    .line 1515
    .line 1516
    invoke-virtual {v4, v7, v6}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    .line 1518
    .line 1519
    move-object/from16 v6, v24

    .line 1520
    .line 1521
    invoke-virtual {v4, v6, v0}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    .line 1523
    .line 1524
    invoke-virtual {v4, v1, v3}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    .line 1526
    .line 1527
    move-object/from16 v6, v22

    .line 1528
    .line 1529
    invoke-virtual {v4, v6, v3}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    .line 1531
    .line 1532
    new-array v0, v5, [Ljava/lang/Object;

    .line 1533
    .line 1534
    invoke-static {v1, v12, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v0

    .line 1538
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v0

    .line 1542
    move-object/from16 v3, v21

    .line 1543
    .line 1544
    invoke-virtual {v4, v3, v0}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    .line 1546
    .line 1547
    new-array v0, v5, [Ljava/lang/Object;

    .line 1548
    .line 1549
    invoke-static {v1, v12, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v0

    .line 1553
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v0

    .line 1557
    move-object/from16 v1, v25

    .line 1558
    .line 1559
    invoke-virtual {v4, v1, v0}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    .line 1561
    .line 1562
    invoke-virtual {v4}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v0

    .line 1566
    const-string v1, "[Dungeon] towerRewardBox uid="

    .line 1567
    .line 1568
    move-object/from16 v5, v20

    .line 1569
    .line 1570
    move-object/from16 v3, v34

    .line 1571
    .line 1572
    move-object/from16 v4, v35

    .line 1573
    .line 1574
    invoke-static {v1, v5, v4, v2, v3}, Lc/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v1

    .line 1578
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 1579
    .line 1580
    .line 1581
    move-result v2

    .line 1582
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1583
    .line 1584
    .line 1585
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v1

    .line 1589
    move-object/from16 v3, v30

    .line 1590
    .line 1591
    invoke-static {v3, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    .line 1593
    .line 1594
    move-object/from16 v4, v18

    .line 1595
    .line 1596
    :goto_1c
    invoke-virtual {v4, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 1597
    .line 1598
    .line 1599
    move-result-object v0

    .line 1600
    return-object v0

    .line 1601
    :cond_2c
    move-object v3, v14

    .line 1602
    move-object/from16 v4, v16

    .line 1603
    .line 1604
    move-object/from16 v10, v18

    .line 1605
    .line 1606
    move-object/from16 v6, v23

    .line 1607
    .line 1608
    move-object/from16 v12, v24

    .line 1609
    .line 1610
    move-object/from16 v1, v25

    .line 1611
    .line 1612
    move-object/from16 v9, v28

    .line 1613
    .line 1614
    move-object/from16 v8, v29

    .line 1615
    .line 1616
    move-object/from16 v44, v33

    .line 1617
    .line 1618
    move-object/from16 v43, v36

    .line 1619
    .line 1620
    move-object v14, v11

    .line 1621
    move-object/from16 v11, v31

    .line 1622
    .line 1623
    if-nez v15, :cond_2d

    .line 1624
    .line 1625
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1626
    .line 1627
    const-string v1, "[Dungeon] openBox player not found: "

    .line 1628
    .line 1629
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1630
    .line 1631
    .line 1632
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    .line 1634
    .line 1635
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1636
    .line 1637
    .line 1638
    move-result-object v0

    .line 1639
    invoke-static {v3, v0}, Lcom/sgscq/vpn/z2;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    .line 1641
    .line 1642
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1643
    .line 1644
    .line 1645
    move-result-object v0

    .line 1646
    const-string v15, "ret"

    .line 1647
    .line 1648
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v16

    .line 1652
    const-string v17, "code"

    .line 1653
    .line 1654
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1655
    .line 1656
    .line 1657
    move-result-object v18

    .line 1658
    const-string v19, "result"

    .line 1659
    .line 1660
    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1661
    .line 1662
    const-string v21, "msg"

    .line 1663
    .line 1664
    const-string v22, "\u73a9\u5bb6\u6570\u636e\u4e0d\u5b58\u5728"

    .line 1665
    .line 1666
    filled-new-array/range {v15 .. v22}, [Ljava/lang/Object;

    .line 1667
    .line 1668
    .line 1669
    move-result-object v1

    .line 1670
    invoke-static {v14, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1671
    .line 1672
    .line 1673
    move-result-object v0

    .line 1674
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1675
    .line 1676
    .line 1677
    move-result-object v0

    .line 1678
    move-object v1, v4

    .line 1679
    goto/16 :goto_23

    .line 1680
    .line 1681
    :cond_2d
    :try_start_4
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1682
    .line 1683
    .line 1684
    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1685
    goto :goto_1d

    .line 1686
    :catch_4
    const/4 v0, 0x1

    .line 1687
    :goto_1d
    move-object/from16 v7, p0

    .line 1688
    .line 1689
    iget-object v3, v7, Lcom/sgscq/vpn/handler/w;->c:Ljava/util/Random;

    .line 1690
    .line 1691
    move-object/from16 v23, v6

    .line 1692
    .line 1693
    const/4 v6, 0x2

    .line 1694
    if-eq v0, v6, :cond_2f

    .line 1695
    .line 1696
    const/4 v6, 0x3

    .line 1697
    if-eq v0, v6, :cond_2e

    .line 1698
    .line 1699
    const/16 v0, 0xc8

    .line 1700
    .line 1701
    invoke-virtual {v3, v0}, Ljava/util/Random;->nextInt(I)I

    .line 1702
    .line 1703
    .line 1704
    move-result v6

    .line 1705
    add-int/2addr v6, v0

    .line 1706
    const/16 v0, 0x1e

    .line 1707
    .line 1708
    invoke-virtual {v3, v0}, Ljava/util/Random;->nextInt(I)I

    .line 1709
    .line 1710
    .line 1711
    move-result v0

    .line 1712
    add-int/lit8 v0, v0, 0x1e

    .line 1713
    .line 1714
    goto :goto_1f

    .line 1715
    :cond_2e
    const/16 v0, 0x1f4

    .line 1716
    .line 1717
    invoke-virtual {v3, v0}, Ljava/util/Random;->nextInt(I)I

    .line 1718
    .line 1719
    .line 1720
    move-result v0

    .line 1721
    add-int/lit16 v0, v0, 0x1f4

    .line 1722
    .line 1723
    const/16 v6, 0x64

    .line 1724
    .line 1725
    goto :goto_1e

    .line 1726
    :cond_2f
    const/16 v0, 0x12c

    .line 1727
    .line 1728
    invoke-virtual {v3, v0}, Ljava/util/Random;->nextInt(I)I

    .line 1729
    .line 1730
    .line 1731
    move-result v6

    .line 1732
    add-int/2addr v6, v0

    .line 1733
    const/16 v0, 0x32

    .line 1734
    .line 1735
    move/from16 v47, v6

    .line 1736
    .line 1737
    move v6, v0

    .line 1738
    move/from16 v0, v47

    .line 1739
    .line 1740
    :goto_1e
    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    .line 1741
    .line 1742
    .line 1743
    move-result v3

    .line 1744
    add-int/2addr v3, v6

    .line 1745
    move v6, v0

    .line 1746
    move v0, v3

    .line 1747
    :goto_1f
    const-string v3, "user_level"

    .line 1748
    .line 1749
    move-object/from16 v29, v8

    .line 1750
    .line 1751
    const/4 v8, 0x1

    .line 1752
    invoke-virtual {v4, v8, v3, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1753
    .line 1754
    .line 1755
    move-result v8

    .line 1756
    move-object/from16 v25, v1

    .line 1757
    .line 1758
    const-string v1, "user_experience"

    .line 1759
    .line 1760
    move-object/from16 v28, v9

    .line 1761
    .line 1762
    const/4 v9, 0x0

    .line 1763
    move-object/from16 v31, v11

    .line 1764
    .line 1765
    invoke-virtual {v4, v9, v1, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1766
    .line 1767
    .line 1768
    move-result v11

    .line 1769
    invoke-virtual {v7, v8, v11, v9}, Lcom/sgscq/vpn/handler/w;->h(III)Ll/c;

    .line 1770
    .line 1771
    .line 1772
    move-result-object v8

    .line 1773
    invoke-virtual {v4}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 1774
    .line 1775
    .line 1776
    move-result v9

    .line 1777
    move-object/from16 v24, v12

    .line 1778
    .line 1779
    int-to-long v11, v9

    .line 1780
    invoke-virtual {v4, v11, v12, v15}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 1781
    .line 1782
    .line 1783
    move-result-wide v11

    .line 1784
    move-object/from16 v18, v10

    .line 1785
    .line 1786
    int-to-long v9, v6

    .line 1787
    add-long/2addr v11, v9

    .line 1788
    iget v9, v8, Ll/c;->b:I

    .line 1789
    .line 1790
    iget v8, v8, Ll/c;->a:I

    .line 1791
    .line 1792
    invoke-virtual {v7, v8, v9, v0}, Lcom/sgscq/vpn/handler/w;->h(III)Ll/c;

    .line 1793
    .line 1794
    .line 1795
    move-result-object v9

    .line 1796
    iget v10, v9, Ll/c;->a:I

    .line 1797
    .line 1798
    move/from16 v16, v6

    .line 1799
    .line 1800
    if-le v10, v8, :cond_30

    .line 1801
    .line 1802
    invoke-static/range {v17 .. v17}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 1803
    .line 1804
    .line 1805
    move-result-object v6

    .line 1806
    invoke-virtual {v6, v8, v10}, Lcom/sgscq/vpn/w1;->u(II)Ljava/util/LinkedHashMap;

    .line 1807
    .line 1808
    .line 1809
    move-result-object v6

    .line 1810
    move-object v8, v6

    .line 1811
    goto :goto_20

    .line 1812
    :cond_30
    const/4 v8, 0x0

    .line 1813
    :goto_20
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1814
    .line 1815
    .line 1816
    move-result-object v6

    .line 1817
    move-wide/from16 v19, v11

    .line 1818
    .line 1819
    const-string v12, "user_coin"

    .line 1820
    .line 1821
    invoke-interface {v15, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    .line 1823
    .line 1824
    iget v11, v9, Ll/c;->b:I

    .line 1825
    .line 1826
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1827
    .line 1828
    .line 1829
    move-result-object v6

    .line 1830
    invoke-interface {v15, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1831
    .line 1832
    .line 1833
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1834
    .line 1835
    .line 1836
    move-result-object v6

    .line 1837
    invoke-interface {v15, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1838
    .line 1839
    .line 1840
    invoke-virtual {v7, v15}, Lcom/sgscq/vpn/handler/w;->d1(Ljava/util/Map;)V

    .line 1841
    .line 1842
    .line 1843
    invoke-static {v15}, Lcom/sgscq/vpn/handler/d1;->K0(Ljava/util/Map;)Z

    .line 1844
    .line 1845
    .line 1846
    move-result v17

    .line 1847
    if-eqz v8, :cond_31

    .line 1848
    .line 1849
    invoke-virtual {v7, v15, v8}, Lcom/sgscq/vpn/handler/w;->m(Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 1850
    .line 1851
    .line 1852
    invoke-virtual {v4}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 1853
    .line 1854
    .line 1855
    move-result v6

    .line 1856
    int-to-long v6, v6

    .line 1857
    invoke-virtual {v4, v6, v7, v15}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 1858
    .line 1859
    .line 1860
    move-result-wide v6

    .line 1861
    goto :goto_21

    .line 1862
    :cond_31
    move-wide/from16 v6, v19

    .line 1863
    .line 1864
    :goto_21
    invoke-virtual {v13, v5, v15}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 1865
    .line 1866
    .line 1867
    move-object/from16 v20, v5

    .line 1868
    .line 1869
    move-wide/from16 v21, v6

    .line 1870
    .line 1871
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 1872
    .line 1873
    .line 1874
    move-result-wide v5

    .line 1875
    long-to-int v5, v5

    .line 1876
    iget-object v6, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1877
    .line 1878
    invoke-virtual {v4}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 1879
    .line 1880
    .line 1881
    move-result v7

    .line 1882
    invoke-virtual {v4, v7, v2, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1883
    .line 1884
    .line 1885
    move-result v2

    .line 1886
    invoke-virtual {v4}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 1887
    .line 1888
    .line 1889
    move-result v7

    .line 1890
    move-object/from16 v9, v18

    .line 1891
    .line 1892
    invoke-virtual {v4, v7, v9, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1893
    .line 1894
    .line 1895
    move-result v7

    .line 1896
    invoke-virtual {v4}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 1897
    .line 1898
    .line 1899
    move-result v9

    .line 1900
    move-object/from16 p1, v3

    .line 1901
    .line 1902
    move-object/from16 v3, v44

    .line 1903
    .line 1904
    invoke-virtual {v4, v9, v3, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1905
    .line 1906
    .line 1907
    move-result v9

    .line 1908
    move/from16 v18, v0

    .line 1909
    .line 1910
    move-object/from16 v0, p1

    .line 1911
    .line 1912
    move-object v3, v6

    .line 1913
    move-object v6, v4

    .line 1914
    move v4, v5

    .line 1915
    move-object/from16 v19, v20

    .line 1916
    .line 1917
    move v5, v2

    .line 1918
    move-object/from16 v20, v6

    .line 1919
    .line 1920
    move/from16 v45, v16

    .line 1921
    .line 1922
    move-object/from16 v2, v23

    .line 1923
    .line 1924
    move v6, v7

    .line 1925
    move v7, v9

    .line 1926
    move-object/from16 p1, v1

    .line 1927
    .line 1928
    move-object/from16 v23, v8

    .line 1929
    .line 1930
    move-object/from16 v16, v12

    .line 1931
    .line 1932
    move-object/from16 v1, v28

    .line 1933
    .line 1934
    move-object/from16 v12, v29

    .line 1935
    .line 1936
    move-wide/from16 v8, v21

    .line 1937
    .line 1938
    move/from16 v46, v10

    .line 1939
    .line 1940
    move-object/from16 v10, v19

    .line 1941
    .line 1942
    move-object/from16 v26, v0

    .line 1943
    .line 1944
    move-object/from16 v19, v2

    .line 1945
    .line 1946
    move v0, v11

    .line 1947
    move-object/from16 v2, v31

    .line 1948
    .line 1949
    move-object v11, v15

    .line 1950
    invoke-virtual/range {v3 .. v11}, Lcom/sgscq/vpn/h5;->u(IIIIJLjava/lang/String;Ljava/util/Map;)Ljava/util/HashMap;

    .line 1951
    .line 1952
    .line 1953
    move-result-object v3

    .line 1954
    new-instance v4, Lorg/json/JSONObject;

    .line 1955
    .line 1956
    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1957
    .line 1958
    .line 1959
    if-eqz v17, :cond_32

    .line 1960
    .line 1961
    const-string v3, "Combat"

    .line 1962
    .line 1963
    filled-new-array {v3}, [Ljava/lang/String;

    .line 1964
    .line 1965
    .line 1966
    move-result-object v3

    .line 1967
    invoke-virtual {v13, v15, v4, v3}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 1968
    .line 1969
    .line 1970
    move-result-object v3

    .line 1971
    const/4 v4, 0x0

    .line 1972
    goto :goto_22

    .line 1973
    :cond_32
    const/4 v3, 0x0

    .line 1974
    new-array v5, v3, [Ljava/lang/String;

    .line 1975
    .line 1976
    invoke-virtual {v13, v15, v4, v5}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 1977
    .line 1978
    .line 1979
    move-result-object v4

    .line 1980
    move-object/from16 v47, v4

    .line 1981
    .line 1982
    move v4, v3

    .line 1983
    move-object/from16 v3, v47

    .line 1984
    .line 1985
    :goto_22
    new-instance v5, Lcom/sgscq/vpn/y1;

    .line 1986
    .line 1987
    invoke-direct {v5}, Lcom/sgscq/vpn/y1;-><init>()V

    .line 1988
    .line 1989
    .line 1990
    invoke-virtual {v5, v14, v4}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 1991
    .line 1992
    .line 1993
    invoke-virtual {v5, v2, v4}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 1994
    .line 1995
    .line 1996
    invoke-virtual {v5, v12, v4}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 1997
    .line 1998
    .line 1999
    const/4 v2, 0x1

    .line 2000
    invoke-virtual {v5, v1, v2}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    .line 2001
    .line 2002
    .line 2003
    move-object/from16 v1, v19

    .line 2004
    .line 2005
    move-object/from16 v2, v43

    .line 2006
    .line 2007
    invoke-virtual {v5, v2, v1}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    .line 2009
    .line 2010
    move-object/from16 v1, v24

    .line 2011
    .line 2012
    invoke-virtual {v5, v1, v3}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    .line 2014
    .line 2015
    move-object/from16 v1, v16

    .line 2016
    .line 2017
    move-wide/from16 v6, v21

    .line 2018
    .line 2019
    invoke-virtual {v5, v6, v7, v1}, Lcom/sgscq/vpn/y1;->d(JLjava/lang/String;)V

    .line 2020
    .line 2021
    .line 2022
    move-object/from16 v1, p1

    .line 2023
    .line 2024
    invoke-virtual {v5, v1, v0}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 2025
    .line 2026
    .line 2027
    move-object/from16 v0, v26

    .line 2028
    .line 2029
    move/from16 v1, v46

    .line 2030
    .line 2031
    invoke-virtual {v5, v0, v1}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 2032
    .line 2033
    .line 2034
    const-string v0, "level"

    .line 2035
    .line 2036
    invoke-virtual {v5, v0, v1}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 2037
    .line 2038
    .line 2039
    const-string v0, "roleLevel"

    .line 2040
    .line 2041
    invoke-virtual {v5, v0, v1}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 2042
    .line 2043
    .line 2044
    const-string v0, "role_level"

    .line 2045
    .line 2046
    invoke-virtual {v5, v0, v1}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 2047
    .line 2048
    .line 2049
    if-eqz v23, :cond_33

    .line 2050
    .line 2051
    const-string v0, "user_level_up_info"

    .line 2052
    .line 2053
    invoke-static/range {v23 .. v23}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 2054
    .line 2055
    .line 2056
    move-result-object v1

    .line 2057
    invoke-virtual {v5, v0, v1}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    .line 2059
    .line 2060
    :cond_33
    move-object/from16 v1, v25

    .line 2061
    .line 2062
    invoke-virtual {v5, v1}, Lcom/sgscq/vpn/y1;->h(Ljava/lang/String;)Lcom/sgscq/vpn/y1;

    .line 2063
    .line 2064
    .line 2065
    move-result-object v0

    .line 2066
    const-string v1, "coin"

    .line 2067
    .line 2068
    move/from16 v6, v45

    .line 2069
    .line 2070
    invoke-virtual {v0, v1, v6}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 2071
    .line 2072
    .line 2073
    const-string v1, "exp"

    .line 2074
    .line 2075
    move/from16 v3, v18

    .line 2076
    .line 2077
    invoke-virtual {v0, v1, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 2078
    .line 2079
    .line 2080
    invoke-virtual {v0}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    .line 2081
    .line 2082
    .line 2083
    invoke-virtual {v5}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    .line 2084
    .line 2085
    .line 2086
    move-result-object v0

    .line 2087
    move-object/from16 v1, v20

    .line 2088
    .line 2089
    :goto_23
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 2090
    .line 2091
    .line 2092
    move-result-object v0

    .line 2093
    return-object v0
.end method

.method public final d1(Ljava/util/Map;)V
    .locals 11

    .line 1
    const-string v0, "1050100101"

    .line 2
    .line 3
    const-string v1, "10501"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "EliteMap_Unlock_Level"

    .line 14
    .line 15
    const/16 v4, 0x9

    .line 16
    .line 17
    invoke-virtual {v2, v3, v4}, Lcom/sgscq/vpn/w1;->U0(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x0

    .line 22
    :try_start_0
    invoke-virtual {v2}, Lcom/sgscq/vpn/w1;->g0()Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-nez v6, :cond_0

    .line 31
    .line 32
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    :cond_0
    move-object v5, v1

    .line 40
    :goto_0
    :try_start_1
    invoke-virtual {v2, v5, v5}, Lcom/sgscq/vpn/w1;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-nez v6, :cond_1

    .line 51
    .line 52
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_1
    :cond_1
    move-object v2, v0

    .line 60
    :goto_1
    const/4 v6, 0x1

    .line 61
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    const-string v8, "user_level"

    .line 66
    .line 67
    invoke-interface {p1, v8, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-static {v7, v6}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    const-string v9, "user_elite_position_step"

    .line 80
    .line 81
    const-string v10, "user_elite_map_step"

    .line 82
    .line 83
    if-ge v7, v3, :cond_2

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_2
    if-eqz v5, :cond_4

    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_3

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    move-object v1, v5

    .line 96
    :cond_4
    :goto_2
    if-eqz v2, :cond_6

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_5

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_5
    move-object v0, v2

    .line 106
    :cond_6
    :goto_3
    const-string v2, "0"

    .line 107
    .line 108
    invoke-interface {p1, v10, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    const-string v5, "105"

    .line 121
    .line 122
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-nez v3, :cond_7

    .line 127
    .line 128
    invoke-interface {p1, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move v4, v6

    .line 132
    :cond_7
    invoke-interface {p1, v9, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-nez v1, :cond_8

    .line 149
    .line 150
    invoke-interface {p1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move v4, v6

    .line 154
    :cond_8
    :goto_4
    if-eqz v4, :cond_9

    .line 155
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v1, "[Dungeon] unlock elite chapter level="

    .line 159
    .line 160
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v1, " map="

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v1, " position="

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    const-string v0, "SGSCQ_SRV"

    .line 199
    .line 200
    invoke-static {v0, p1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :cond_9
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/util/Map;)Ljava/util/HashMap;
    .locals 9

    .line 1
    const-string v0, "Skill"

    invoke-static {v0, p2}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p2}, Lcom/sgscq/vpn/w1;->e2(Ljava/lang/String;Ljava/util/Map;)I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "pk_id"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "general_pk_id"

    const-string v4, "0"

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "skill_id"

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "id"

    invoke-virtual {v3, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "skill_code"

    invoke-virtual {v3, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "card_type"

    const-string v6, "4"

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "level"

    const-string v6, "1"

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "skill_level"

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "position"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "pos"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "skill_position"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "get_time"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "is_natural"

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "exp"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "extra_level"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "advanced_level"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    if-eqz v5, :cond_0

    iget-object v5, v5, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    invoke-static {v5}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v5

    invoke-virtual {v5, p1, v3}, Lcom/sgscq/vpn/w1;->S(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "add"

    const-string v8, "upd"

    filled-new-array {v8, v6, v7, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v6, "del"

    invoke-static {v6, v5, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, p1, v4, p2}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    return-object v3
.end method

.method public final h(III)Ll/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sgscq/vpn/w1;->m(III)Ll/c;

    move-result-object p1

    return-object p1
.end method

.method public final i(ILjava/util/ArrayList;Ljava/util/Map;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    if-gtz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v5, "TeamGeneral"

    .line 18
    .line 19
    invoke-static {v5, v3}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    const-string v8, "general_pk_id"

    .line 32
    .line 33
    const-string v9, "pk_id"

    .line 34
    .line 35
    const-string v10, ""

    .line 36
    .line 37
    if-eqz v7, :cond_2

    .line 38
    .line 39
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    check-cast v7, Ljava/util/Map;

    .line 44
    .line 45
    invoke-static {v7, v9, v10, v8}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-nez v9, :cond_1

    .line 54
    .line 55
    const-string v9, "0"

    .line 56
    .line 57
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    if-nez v9, :cond_1

    .line 62
    .line 63
    const-string v9, "null"

    .line 64
    .line 65
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    if-nez v8, :cond_1

    .line 70
    .line 71
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_3

    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    new-instance v6, Lcom/sgscq/vpn/battle/c;

    .line 83
    .line 84
    const/4 v7, 0x1

    .line 85
    invoke-direct {v6, v0, v7}, Lcom/sgscq/vpn/battle/c;-><init>(Ljava/lang/Object;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 89
    .line 90
    .line 91
    new-instance v6, Ljava/util/HashMap;

    .line 92
    .line 93
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v7, "General"

    .line 97
    .line 98
    invoke-static {v7, v3}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v11

    .line 110
    if-eqz v11, :cond_4

    .line 111
    .line 112
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    check-cast v11, Ljava/util/Map;

    .line 117
    .line 118
    invoke-interface {v11, v9, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v12

    .line 122
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    invoke-virtual {v6, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    new-instance v7, Ljava/util/HashMap;

    .line 131
    .line 132
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 133
    .line 134
    .line 135
    iget-object v11, v0, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    .line 136
    .line 137
    iget-object v12, v11, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 138
    .line 139
    invoke-static {v12}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 140
    .line 141
    .line 142
    move-result-object v12

    .line 143
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v13

    .line 151
    const-string v14, "level"

    .line 152
    .line 153
    const-string v15, "general_level"

    .line 154
    .line 155
    if-eqz v13, :cond_10

    .line 156
    .line 157
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v13

    .line 161
    check-cast v13, Ljava/util/Map;

    .line 162
    .line 163
    invoke-static {v13, v9, v10, v8}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v13

    .line 167
    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v16

    .line 171
    move-object/from16 v17, v4

    .line 172
    .line 173
    move-object/from16 v4, v16

    .line 174
    .line 175
    check-cast v4, Ljava/util/Map;

    .line 176
    .line 177
    if-nez v4, :cond_5

    .line 178
    .line 179
    move-object/from16 v4, v17

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_5
    move-object/from16 v16, v6

    .line 183
    .line 184
    const-string v6, "general_exp"

    .line 185
    .line 186
    move-object/from16 v18, v5

    .line 187
    .line 188
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    move-object/from16 v19, v8

    .line 193
    .line 194
    const-string v8, "general_experience"

    .line 195
    .line 196
    move-object/from16 v20, v9

    .line 197
    .line 198
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    move-object/from16 v21, v7

    .line 203
    .line 204
    move-object/from16 v22, v8

    .line 205
    .line 206
    const-wide/16 v7, 0x0

    .line 207
    .line 208
    invoke-static {v9, v7, v8}, Lcom/sgscq/vpn/handler/w;->H0(Ljava/lang/Object;J)J

    .line 209
    .line 210
    .line 211
    move-result-wide v7

    .line 212
    invoke-static {v5, v7, v8}, Lcom/sgscq/vpn/handler/w;->H0(Ljava/lang/Object;J)J

    .line 213
    .line 214
    .line 215
    move-result-wide v7

    .line 216
    const/4 v5, 0x1

    .line 217
    invoke-virtual {v11, v5, v14, v4}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 218
    .line 219
    .line 220
    move-result v9

    .line 221
    invoke-virtual {v11, v9, v15, v4}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 222
    .line 223
    .line 224
    move-result v9

    .line 225
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    const-string v9, "id"

    .line 230
    .line 231
    move-object/from16 v23, v11

    .line 232
    .line 233
    const-string v11, "general_id"

    .line 234
    .line 235
    invoke-static {v4, v9, v10, v11}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    if-eqz v12, :cond_7

    .line 240
    .line 241
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 242
    .line 243
    .line 244
    move-result v24

    .line 245
    if-eqz v24, :cond_6

    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_6
    move-object/from16 v24, v9

    .line 249
    .line 250
    const/4 v9, 0x1

    .line 251
    move-object/from16 v25, v10

    .line 252
    .line 253
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    .line 254
    .line 255
    .line 256
    move-result v10

    .line 257
    invoke-virtual {v12, v2, v10}, Lcom/sgscq/vpn/w1;->c0(Ljava/lang/String;I)J

    .line 258
    .line 259
    .line 260
    move-result-wide v26

    .line 261
    const-wide/16 v28, 0x0

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_7
    :goto_3
    move-object/from16 v24, v9

    .line 265
    .line 266
    move-object/from16 v25, v10

    .line 267
    .line 268
    const/4 v9, 0x1

    .line 269
    const-wide/16 v28, 0x0

    .line 270
    .line 271
    const-wide/16 v26, 0x0

    .line 272
    .line 273
    :goto_4
    cmp-long v10, v26, v28

    .line 274
    .line 275
    const-wide/16 v28, 0x3e8

    .line 276
    .line 277
    if-gtz v10, :cond_8

    .line 278
    .line 279
    if-le v5, v9, :cond_8

    .line 280
    .line 281
    add-int/lit8 v9, v5, -0x1

    .line 282
    .line 283
    int-to-long v9, v9

    .line 284
    mul-long v26, v9, v28

    .line 285
    .line 286
    :cond_8
    move-wide/from16 v9, v26

    .line 287
    .line 288
    move-object/from16 v27, v13

    .line 289
    .line 290
    move-object/from16 v26, v14

    .line 291
    .line 292
    const-wide/16 v13, 0x0

    .line 293
    .line 294
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 295
    .line 296
    .line 297
    move-result-wide v7

    .line 298
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 299
    .line 300
    .line 301
    move-result-wide v7

    .line 302
    const/4 v9, 0x0

    .line 303
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    .line 304
    .line 305
    .line 306
    move-result v9

    .line 307
    int-to-long v9, v9

    .line 308
    add-long/2addr v7, v9

    .line 309
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 310
    .line 311
    .line 312
    move-result-wide v7

    .line 313
    invoke-virtual {v0, v3}, Lcom/sgscq/vpn/handler/w;->N0(Ljava/util/Map;)I

    .line 314
    .line 315
    .line 316
    move-result v9

    .line 317
    mul-int/lit8 v9, v9, 0x4

    .line 318
    .line 319
    const/4 v10, 0x1

    .line 320
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    .line 321
    .line 322
    .line 323
    move-result v10

    .line 324
    if-eqz v12, :cond_a

    .line 325
    .line 326
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 327
    .line 328
    .line 329
    move-result v13

    .line 330
    if-eqz v13, :cond_9

    .line 331
    .line 332
    goto :goto_5

    .line 333
    :cond_9
    const-wide/16 v13, 0x0

    .line 334
    .line 335
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 336
    .line 337
    .line 338
    move-result-wide v13

    .line 339
    invoke-virtual {v12, v9, v2, v13, v14}, Lcom/sgscq/vpn/w1;->P0(ILjava/lang/String;J)I

    .line 340
    .line 341
    .line 342
    move-result v9

    .line 343
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    .line 344
    .line 345
    .line 346
    move-result v10

    .line 347
    :cond_a
    :goto_5
    if-eqz v12, :cond_b

    .line 348
    .line 349
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 350
    .line 351
    .line 352
    move-result v9

    .line 353
    if-nez v9, :cond_b

    .line 354
    .line 355
    const/4 v9, 0x1

    .line 356
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    .line 357
    .line 358
    .line 359
    move-result v9

    .line 360
    invoke-virtual {v12, v2, v9}, Lcom/sgscq/vpn/w1;->c0(Ljava/lang/String;I)J

    .line 361
    .line 362
    .line 363
    move-result-wide v13

    .line 364
    const-wide/16 v30, 0x0

    .line 365
    .line 366
    goto :goto_6

    .line 367
    :cond_b
    const-wide/16 v30, 0x0

    .line 368
    .line 369
    const-wide/16 v13, 0x0

    .line 370
    .line 371
    :goto_6
    move-wide/from16 v0, v30

    .line 372
    .line 373
    cmp-long v2, v13, v0

    .line 374
    .line 375
    if-gtz v2, :cond_c

    .line 376
    .line 377
    const/4 v2, 0x1

    .line 378
    if-le v10, v2, :cond_c

    .line 379
    .line 380
    add-int/lit8 v2, v10, -0x1

    .line 381
    .line 382
    int-to-long v13, v2

    .line 383
    mul-long v13, v13, v28

    .line 384
    .line 385
    :cond_c
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 386
    .line 387
    .line 388
    move-result-wide v28

    .line 389
    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->max(JJ)J

    .line 390
    .line 391
    .line 392
    move-result-wide v13

    .line 393
    sub-long v13, v28, v13

    .line 394
    .line 395
    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->max(JJ)J

    .line 396
    .line 397
    .line 398
    move-result-wide v0

    .line 399
    const-wide/32 v13, 0x7fffffff

    .line 400
    .line 401
    .line 402
    cmp-long v2, v0, v13

    .line 403
    .line 404
    if-lez v2, :cond_d

    .line 405
    .line 406
    const v0, 0x7fffffff

    .line 407
    .line 408
    .line 409
    goto :goto_7

    .line 410
    :cond_d
    long-to-int v0, v0

    .line 411
    :goto_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    const-string v1, "exp"

    .line 416
    .line 417
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    invoke-static {v7, v8}, Lcom/sgscq/vpn/handler/w;->B(J)Ljava/lang/Number;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    invoke-static {v7, v8}, Lcom/sgscq/vpn/handler/w;->B(J)Ljava/lang/Number;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    move-object/from16 v2, v22

    .line 432
    .line 433
    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    move-object/from16 v9, v26

    .line 448
    .line 449
    invoke-interface {v4, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v12, v5, v10, v4}, Lcom/sgscq/vpn/w1;->g(IILjava/util/Map;)V

    .line 453
    .line 454
    .line 455
    move-object/from16 v0, v27

    .line 456
    .line 457
    invoke-virtual {v12, v0, v3}, Lcom/sgscq/vpn/w1;->F2(Ljava/lang/String;Ljava/util/Map;)Z

    .line 458
    .line 459
    .line 460
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 461
    .line 462
    .line 463
    move-result-object v13

    .line 464
    move-object/from16 v14, v21

    .line 465
    .line 466
    invoke-virtual {v14, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-object/from16 v13, p2

    .line 470
    .line 471
    if-eqz v13, :cond_f

    .line 472
    .line 473
    move-object/from16 v21, v14

    .line 474
    .line 475
    move-object/from16 v3, v24

    .line 476
    .line 477
    move-object/from16 v14, v25

    .line 478
    .line 479
    invoke-static {v4, v3, v14, v11}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v4

    .line 483
    move-object/from16 v14, v19

    .line 484
    .line 485
    move-object/from16 v13, v20

    .line 486
    .line 487
    invoke-static {v13, v0, v14, v0}, Lc/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move/from16 v3, p1

    .line 495
    .line 496
    invoke-static {v0, v11, v4, v3, v1}, Lcom/sgscq/vpn/handler/l;->b(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 497
    .line 498
    .line 499
    invoke-static {v7, v8}, Lcom/sgscq/vpn/handler/w;->B(J)Ljava/lang/Number;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    invoke-static {v7, v8}, Lcom/sgscq/vpn/handler/w;->B(J)Ljava/lang/Number;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    const-string v1, "level_before"

    .line 514
    .line 515
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    const-string v1, "level_now"

    .line 523
    .line 524
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 546
    .line 547
    .line 548
    move-result v1

    .line 549
    if-nez v1, :cond_e

    .line 550
    .line 551
    invoke-virtual {v12, v4}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    const-string v2, "general_name"

    .line 560
    .line 561
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    const-string v1, "resource_id"

    .line 565
    .line 566
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    const-string v1, "general_painting_id"

    .line 570
    .line 571
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    :cond_e
    move-object/from16 v1, p2

    .line 575
    .line 576
    move-object v2, v13

    .line 577
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    goto :goto_8

    .line 581
    :cond_f
    move/from16 v3, p1

    .line 582
    .line 583
    move-object v1, v13

    .line 584
    move-object/from16 v21, v14

    .line 585
    .line 586
    move-object/from16 v14, v19

    .line 587
    .line 588
    move-object/from16 v2, v20

    .line 589
    .line 590
    :goto_8
    move-object/from16 v0, p0

    .line 591
    .line 592
    move-object v9, v2

    .line 593
    move-object v8, v14

    .line 594
    move-object/from16 v6, v16

    .line 595
    .line 596
    move-object/from16 v4, v17

    .line 597
    .line 598
    move-object/from16 v5, v18

    .line 599
    .line 600
    move-object/from16 v7, v21

    .line 601
    .line 602
    move-object/from16 v11, v23

    .line 603
    .line 604
    move-object/from16 v10, v25

    .line 605
    .line 606
    move-object v2, v1

    .line 607
    move v1, v3

    .line 608
    move-object/from16 v3, p3

    .line 609
    .line 610
    goto/16 :goto_2

    .line 611
    .line 612
    :cond_10
    move-object v0, v3

    .line 613
    move-object v4, v5

    .line 614
    move-object/from16 v21, v7

    .line 615
    .line 616
    move-object v2, v9

    .line 617
    move-object/from16 v25, v10

    .line 618
    .line 619
    move-object v9, v14

    .line 620
    move-object v14, v8

    .line 621
    invoke-static {v4, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 630
    .line 631
    .line 632
    move-result v1

    .line 633
    if-eqz v1, :cond_12

    .line 634
    .line 635
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    check-cast v1, Ljava/util/Map;

    .line 640
    .line 641
    move-object/from16 v3, v25

    .line 642
    .line 643
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v4

    .line 647
    invoke-interface {v1, v14, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v4

    .line 651
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v4

    .line 655
    move-object/from16 v5, v21

    .line 656
    .line 657
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v4

    .line 661
    check-cast v4, Ljava/lang/Integer;

    .line 662
    .line 663
    if-nez v4, :cond_11

    .line 664
    .line 665
    goto :goto_a

    .line 666
    :cond_11
    invoke-interface {v1, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    invoke-interface {v1, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    :goto_a
    move-object/from16 v25, v3

    .line 673
    .line 674
    move-object/from16 v21, v5

    .line 675
    .line 676
    goto :goto_9

    .line 677
    :cond_12
    return-void
.end method

.method public final m(Ljava/util/Map;Ljava/util/LinkedHashMap;)V
    .locals 6

    .line 1
    const-string v0, "add_list"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p2, Ljava/util/Map;

    const-string v0, "coin"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    move-result v0

    const-string v2, "gold"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/sgscq/vpn/handler/w;->G0(Ljava/lang/Object;I)I

    move-result p2

    iget-object v1, p0, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    if-lez v0, :cond_1

    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->a()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "user_coin"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-lez p2, :cond_2

    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->c()I

    move-result v0

    const-string v2, "user_gold"

    invoke-virtual {v1, v0, v2, p1}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final q0(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    const-string v1, "1\\d{5}"

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const-string v1, "164"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    return v0

    .line 22
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iget-object v1, v1, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 27
    .line 28
    const-string v2, "generals.json"

    .line 29
    .line 30
    invoke-static {v1, v2}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const-string v1, "docs/game_data_json/generals.json"

    .line 36
    .line 37
    invoke-static {v1}, Lcom/sgscq/vpn/handler/w;->O0(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :goto_0
    invoke-static {p1, v1}, Lcom/sgscq/vpn/handler/w;->h0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    return p1

    .line 46
    :catch_0
    :cond_3
    :goto_1
    return v0
.end method

.method public final s0()Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

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

.method public final t(ILjava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 21

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    iget-object v1, v7, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    .line 8
    .line 9
    :try_start_0
    iget-object v2, v1, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 12
    .line 13
    .line 14
    move-result-object v9

    .line 15
    invoke-static/range {p3 .. p3}, Lcom/sgscq/vpn/handler/w;->P(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-static/range {p3 .. p3}, Lcom/sgscq/vpn/handler/w;->O(Ljava/util/Map;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    const/4 v4, 0x0

    .line 39
    const-string v5, "112018"

    .line 40
    .line 41
    const-string v6, "general_id"

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    :try_start_1
    new-array v3, v4, [Ljava/lang/Object;

    .line 46
    .line 47
    invoke-static {v6, v5, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    move-object/from16 v3, p3

    .line 55
    .line 56
    invoke-static {v9, v2, v3}, Lcom/sgscq/vpn/handler/w;->l(Lcom/sgscq/vpn/w1;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, v8}, Lcom/sgscq/vpn/handler/w;->V(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/k;

    .line 60
    .line 61
    .line 62
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    iget-object v10, v3, Lcom/sgscq/vpn/cloud/k;->c:Ljava/lang/Object;

    .line 64
    .line 65
    iget-object v11, v3, Lcom/sgscq/vpn/cloud/k;->b:Ljava/lang/Object;

    .line 66
    .line 67
    :try_start_2
    move-object v4, v11

    .line 68
    check-cast v4, Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result v12

    .line 74
    move-object v4, v10

    .line 75
    check-cast v4, Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    new-instance v14, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    new-instance v15, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_2

    .line 100
    .line 101
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    check-cast v4, Ljava/util/Map;

    .line 106
    .line 107
    move-object/from16 p3, v2

    .line 108
    .line 109
    const-string v2, "id"

    .line 110
    .line 111
    invoke-interface {v4, v2, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-interface {v4, v6, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    move-object/from16 v16, v5

    .line 124
    .line 125
    invoke-static {v9, v2, v4}, Lcom/sgscq/vpn/handler/w;->M0(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/util/Map;)I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    move-object/from16 v17, v6

    .line 130
    .line 131
    const-string v6, "general_name"

    .line 132
    .line 133
    move/from16 v18, v13

    .line 134
    .line 135
    invoke-virtual {v9, v2}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v13

    .line 139
    invoke-interface {v4, v6, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    invoke-static {v2, v5, v4}, Lcom/sgscq/vpn/handler/w;->u0(Ljava/lang/String;ILjava/lang/String;)Ljava/util/LinkedHashMap;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-object/from16 v2, p3

    .line 162
    .line 163
    move-object/from16 v5, v16

    .line 164
    .line 165
    move-object/from16 v6, v17

    .line 166
    .line 167
    move/from16 v13, v18

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_2
    move/from16 v18, v13

    .line 171
    .line 172
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    const/4 v4, 0x1

    .line 177
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 178
    .line 179
    .line 180
    move-result v13

    .line 181
    const/4 v6, 0x3

    .line 182
    const/4 v2, 0x0

    .line 183
    invoke-virtual {v8, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    add-int/lit16 v5, v2, -0x1f4

    .line 192
    .line 193
    invoke-virtual {v7, v8}, Lcom/sgscq/vpn/handler/w;->I(Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result v16

    .line 197
    iget-object v1, v1, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 198
    .line 199
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/handler/w;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/w1;->l0(Ljava/lang/String;)Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 216
    .line 217
    .line 218
    move-result v17

    .line 219
    invoke-static {v9}, Lcom/sgscq/vpn/handler/w;->Z0(Lcom/sgscq/vpn/w1;)Lcom/sgscq/vpn/handler/t;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    iget v1, v3, Lcom/sgscq/vpn/cloud/k;->a:I

    .line 224
    .line 225
    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/handler/w;->k0(Ljava/lang/String;)Z

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    if-eqz v2, :cond_3

    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_3
    const/4 v1, -0x1

    .line 233
    :goto_1
    move v3, v1

    .line 234
    move-object/from16 v1, p0

    .line 235
    .line 236
    move-object/from16 v2, p2

    .line 237
    .line 238
    move v7, v3

    .line 239
    move v3, v5

    .line 240
    move-object/from16 p3, v4

    .line 241
    .line 242
    move/from16 v4, v16

    .line 243
    .line 244
    move v8, v5

    .line 245
    move/from16 v5, v17

    .line 246
    .line 247
    move/from16 v16, v6

    .line 248
    .line 249
    move-object/from16 v6, p3

    .line 250
    .line 251
    invoke-virtual/range {v1 .. v6}, Lcom/sgscq/vpn/handler/w;->F(Ljava/lang/String;IIILcom/sgscq/vpn/handler/t;)[D

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    const/4 v2, 0x0

    .line 256
    :goto_2
    move-object v3, v11

    .line 257
    check-cast v3, Ljava/util/List;

    .line 258
    .line 259
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 260
    .line 261
    .line 262
    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 263
    move-object/from16 v4, p3

    .line 264
    .line 265
    iget v5, v4, Lcom/sgscq/vpn/handler/t;->a:I

    .line 266
    .line 267
    if-ge v2, v3, :cond_9

    .line 268
    .line 269
    :try_start_3
    move-object v3, v11

    .line 270
    check-cast v3, Ljava/util/List;

    .line 271
    .line 272
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    check-cast v3, Ljava/lang/String;

    .line 277
    .line 278
    const/4 v6, 0x0

    .line 279
    invoke-static {v9, v3, v6}, Lcom/sgscq/vpn/handler/w;->M0(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/util/Map;)I

    .line 280
    .line 281
    .line 282
    move-result v6

    .line 283
    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/handler/w;->k0(Ljava/lang/String;)Z

    .line 284
    .line 285
    .line 286
    move-result v17

    .line 287
    if-eqz v17, :cond_4

    .line 288
    .line 289
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    move-object/from16 p3, v4

    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_4
    move-object/from16 p3, v4

    .line 297
    .line 298
    const/4 v4, 0x1

    .line 299
    if-lt v8, v4, :cond_5

    .line 300
    .line 301
    const/4 v4, 0x1

    .line 302
    goto :goto_3

    .line 303
    :cond_5
    const/4 v4, 0x0

    .line 304
    :goto_3
    if-nez v4, :cond_6

    .line 305
    .line 306
    goto :goto_4

    .line 307
    :cond_6
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 308
    .line 309
    .line 310
    move-result v6

    .line 311
    :goto_4
    move v5, v6

    .line 312
    :goto_5
    int-to-double v4, v5

    .line 313
    const/4 v6, 0x0

    .line 314
    aget-wide v19, v1, v6

    .line 315
    .line 316
    mul-double v4, v4, v19

    .line 317
    .line 318
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 319
    .line 320
    .line 321
    move-result-wide v4

    .line 322
    long-to-int v4, v4

    .line 323
    invoke-virtual {v9, v3}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    invoke-static {v3, v4, v5}, Lcom/sgscq/vpn/handler/w;->u0(Ljava/lang/String;ILjava/lang/String;)Ljava/util/LinkedHashMap;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    if-ltz v7, :cond_7

    .line 332
    .line 333
    if-ne v2, v7, :cond_7

    .line 334
    .line 335
    const/4 v4, 0x1

    .line 336
    goto :goto_6

    .line 337
    :cond_7
    const/4 v4, 0x0

    .line 338
    :goto_6
    if-eqz v4, :cond_8

    .line 339
    .line 340
    const-string v4, "isBoss"

    .line 341
    .line 342
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 343
    .line 344
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    :cond_8
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    add-int/lit8 v2, v2, 0x1

    .line 351
    .line 352
    goto :goto_2

    .line 353
    :cond_9
    check-cast v10, Ljava/util/List;

    .line 354
    .line 355
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    if-eqz v3, :cond_d

    .line 364
    .line 365
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    check-cast v3, Ljava/lang/String;

    .line 370
    .line 371
    const/4 v4, 0x0

    .line 372
    invoke-static {v9, v3, v4}, Lcom/sgscq/vpn/handler/w;->M0(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/util/Map;)I

    .line 373
    .line 374
    .line 375
    move-result v4

    .line 376
    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/handler/w;->k0(Ljava/lang/String;)Z

    .line 377
    .line 378
    .line 379
    move-result v6

    .line 380
    if-eqz v6, :cond_a

    .line 381
    .line 382
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 383
    .line 384
    .line 385
    move-result v4

    .line 386
    goto :goto_9

    .line 387
    :cond_a
    const/4 v6, 0x1

    .line 388
    if-lt v8, v6, :cond_b

    .line 389
    .line 390
    const/4 v6, 0x1

    .line 391
    goto :goto_8

    .line 392
    :cond_b
    const/4 v6, 0x0

    .line 393
    :goto_8
    if-nez v6, :cond_c

    .line 394
    .line 395
    goto :goto_9

    .line 396
    :cond_c
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 397
    .line 398
    .line 399
    move-result v4

    .line 400
    :goto_9
    int-to-double v6, v4

    .line 401
    const/4 v4, 0x0

    .line 402
    aget-wide v19, v1, v4

    .line 403
    .line 404
    mul-double v6, v6, v19

    .line 405
    .line 406
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    .line 407
    .line 408
    .line 409
    move-result-wide v6

    .line 410
    long-to-int v4, v6

    .line 411
    invoke-virtual {v9, v3}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v6

    .line 415
    invoke-static {v3, v4, v6}, Lcom/sgscq/vpn/handler/w;->u0(Ljava/lang/String;ILjava/lang/String;)Ljava/util/LinkedHashMap;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    goto :goto_7

    .line 423
    :cond_d
    if-gtz v0, :cond_e

    .line 424
    .line 425
    new-instance v0, Ljava/util/ArrayList;

    .line 426
    .line 427
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .line 429
    .line 430
    goto :goto_a

    .line 431
    :cond_e
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    check-cast v11, Ljava/util/List;

    .line 436
    .line 437
    invoke-static {v15, v11, v9, v0}, Lcom/sgscq/vpn/handler/w;->x(Ljava/util/ArrayList;Ljava/util/List;Lcom/sgscq/vpn/w1;I)Ljava/util/ArrayList;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    :goto_a
    const-string v1, "first"

    .line 442
    .line 443
    const/4 v2, 0x0

    .line 444
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 445
    .line 446
    .line 447
    move-result-object v3

    .line 448
    const/16 v4, 0x12

    .line 449
    .line 450
    new-array v4, v4, [Ljava/lang/Object;

    .line 451
    .line 452
    const-string v5, "roundMax"

    .line 453
    .line 454
    aput-object v5, v4, v2

    .line 455
    .line 456
    const/16 v2, 0xf

    .line 457
    .line 458
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 459
    .line 460
    .line 461
    move-result-object v5

    .line 462
    const/4 v6, 0x1

    .line 463
    aput-object v5, v4, v6

    .line 464
    .line 465
    const-string v5, "cards_size0"

    .line 466
    .line 467
    const/4 v6, 0x2

    .line 468
    aput-object v5, v4, v6

    .line 469
    .line 470
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 471
    .line 472
    .line 473
    move-result-object v5

    .line 474
    aput-object v5, v4, v16

    .line 475
    .line 476
    const-string v5, "cards_size1"

    .line 477
    .line 478
    const/4 v7, 0x4

    .line 479
    aput-object v5, v4, v7

    .line 480
    .line 481
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 482
    .line 483
    .line 484
    move-result-object v5

    .line 485
    const/4 v7, 0x5

    .line 486
    aput-object v5, v4, v7

    .line 487
    .line 488
    const-string v5, "backups_size0"

    .line 489
    .line 490
    const/4 v7, 0x6

    .line 491
    aput-object v5, v4, v7

    .line 492
    .line 493
    const/4 v5, 0x0

    .line 494
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 495
    .line 496
    .line 497
    move-result-object v5

    .line 498
    const/4 v7, 0x7

    .line 499
    aput-object v5, v4, v7

    .line 500
    .line 501
    const-string v5, "backups_size1"

    .line 502
    .line 503
    const/16 v7, 0x8

    .line 504
    .line 505
    aput-object v5, v4, v7

    .line 506
    .line 507
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 508
    .line 509
    .line 510
    move-result-object v5

    .line 511
    const/16 v7, 0x9

    .line 512
    .line 513
    aput-object v5, v4, v7

    .line 514
    .line 515
    const-string v5, "info"

    .line 516
    .line 517
    const/16 v7, 0xa

    .line 518
    .line 519
    aput-object v5, v4, v7

    .line 520
    .line 521
    new-array v5, v6, [Ljava/util/ArrayList;

    .line 522
    .line 523
    new-instance v7, Ljava/util/ArrayList;

    .line 524
    .line 525
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .line 527
    .line 528
    const/4 v8, 0x0

    .line 529
    aput-object v7, v5, v8

    .line 530
    .line 531
    new-instance v7, Ljava/util/ArrayList;

    .line 532
    .line 533
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .line 535
    .line 536
    const/4 v8, 0x1

    .line 537
    aput-object v7, v5, v8

    .line 538
    .line 539
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 540
    .line 541
    .line 542
    move-result-object v5

    .line 543
    const/16 v7, 0xb

    .line 544
    .line 545
    aput-object v5, v4, v7

    .line 546
    .line 547
    const-string v5, "cards"

    .line 548
    .line 549
    const/16 v7, 0xc

    .line 550
    .line 551
    aput-object v5, v4, v7

    .line 552
    .line 553
    const/16 v5, 0xd

    .line 554
    .line 555
    aput-object v14, v4, v5

    .line 556
    .line 557
    const-string v5, "roundCur"

    .line 558
    .line 559
    const/16 v7, 0xe

    .line 560
    .line 561
    aput-object v5, v4, v7

    .line 562
    .line 563
    const/4 v5, 0x1

    .line 564
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 565
    .line 566
    .line 567
    move-result-object v5

    .line 568
    aput-object v5, v4, v2

    .line 569
    .line 570
    const-string v2, "skipRounds"

    .line 571
    .line 572
    const/16 v5, 0x10

    .line 573
    .line 574
    aput-object v2, v4, v5

    .line 575
    .line 576
    const/4 v2, 0x0

    .line 577
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    const/16 v5, 0x11

    .line 582
    .line 583
    aput-object v2, v4, v5

    .line 584
    .line 585
    invoke-static {v1, v3, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    const-string v2, "init"

    .line 590
    .line 591
    new-array v3, v6, [Ljava/lang/Object;

    .line 592
    .line 593
    const-string v4, "rounds"

    .line 594
    .line 595
    const/4 v5, 0x0

    .line 596
    aput-object v4, v3, v5

    .line 597
    .line 598
    const/4 v4, 0x1

    .line 599
    aput-object v0, v3, v4

    .line 600
    .line 601
    invoke-static {v2, v1, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 602
    .line 603
    .line 604
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 605
    return-object v0

    .line 606
    :catch_0
    move-exception v0

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    .line 608
    .line 609
    const-string v2, "[Dungeon] buildFightInfo error: "

    .line 610
    .line 611
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    const-string v2, "SGSCQ_SRV"

    .line 615
    .line 616
    invoke-static {v0, v1, v2}, Lc/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    const/4 v0, 0x0

    .line 620
    return-object v0
.end method

.method public final w0(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/handler/w;->c:Ljava/util/Random;

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0xf

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-lt v1, v2, :cond_0

    .line 13
    .line 14
    return-object v3

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/sgscq/vpn/handler/w;->a:Lcom/sgscq/vpn/handler/k0;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, v1, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-object v1, v3

    .line 23
    :goto_0
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_2
    invoke-virtual {v1}, Lcom/sgscq/vpn/w1;->k0()Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_a

    .line 49
    .line 50
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1, v5}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    if-eqz v6, :cond_9

    .line 61
    .line 62
    if-nez v5, :cond_4

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-nez v8, :cond_9

    .line 74
    .line 75
    const-string v8, "300000"

    .line 76
    .line 77
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-nez v8, :cond_9

    .line 82
    .line 83
    const-string v8, "400"

    .line 84
    .line 85
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-eqz v8, :cond_5

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_5
    const-string v8, "skill_code"

    .line 93
    .line 94
    const-string v9, ""

    .line 95
    .line 96
    invoke-interface {v6, v8, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    if-nez v10, :cond_9

    .line 113
    .line 114
    const-string v10, "null"

    .line 115
    .line 116
    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    if-eqz v10, :cond_6

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_6
    const-string v10, "shenmijineng"

    .line 124
    .line 125
    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v10

    .line 129
    if-nez v10, :cond_9

    .line 130
    .line 131
    const-string v10, "\u795e\u79d8"

    .line 132
    .line 133
    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    if-eqz v8, :cond_7

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_7
    sget-object v8, Lcom/sgscq/vpn/handler/w;->h:Ljava/util/HashSet;

    .line 141
    .line 142
    const-string v10, "grade"

    .line 143
    .line 144
    invoke-interface {v6, v10, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-virtual {v8, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    if-nez v6, :cond_8

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_8
    invoke-static {v7}, Lcom/sgscq/vpn/handler/h1;->D(Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    goto :goto_3

    .line 168
    :cond_9
    :goto_2
    const/4 v6, 0x0

    .line 169
    :goto_3
    if-eqz v6, :cond_3

    .line 170
    .line 171
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    goto/16 :goto_1

    .line 175
    .line 176
    :cond_a
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 177
    .line 178
    .line 179
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_b

    .line 184
    .line 185
    return-object v3

    .line 186
    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    check-cast v0, Ljava/lang/String;

    .line 199
    .line 200
    const/4 v1, 0x1

    .line 201
    invoke-static {v1, v0, p1}, Lcom/sgscq/vpn/handler/w;->a0(ILjava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    return-object p1
.end method
