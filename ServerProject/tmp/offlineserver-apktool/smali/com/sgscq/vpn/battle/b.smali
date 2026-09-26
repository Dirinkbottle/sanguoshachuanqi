.class public final Lcom/sgscq/vpn/battle/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:[Lcom/sgscq/vpn/battle/BattleUnit;

.field public final c:I

.field public final d:I

.field public e:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    new-array v1, v0, [Lcom/sgscq/vpn/battle/BattleUnit;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/sgscq/vpn/battle/b;->b:[Lcom/sgscq/vpn/battle/BattleUnit;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/sgscq/vpn/battle/b;->a:Ljava/util/List;

    .line 16
    .line 17
    iput p2, p0, Lcom/sgscq/vpn/battle/b;->c:I

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput p1, p0, Lcom/sgscq/vpn/battle/b;->d:I

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    :goto_0
    iget p2, p0, Lcom/sgscq/vpn/battle/b;->d:I

    .line 31
    .line 32
    if-ge p1, p2, :cond_1

    .line 33
    .line 34
    iget-object p2, p0, Lcom/sgscq/vpn/battle/b;->b:[Lcom/sgscq/vpn/battle/BattleUnit;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/sgscq/vpn/battle/b;->a:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/sgscq/vpn/battle/BattleUnit;

    .line 43
    .line 44
    aput-object v0, p2, p1

    .line 45
    .line 46
    add-int/lit8 p1, p1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iput p2, p0, Lcom/sgscq/vpn/battle/b;->e:I

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/battle/b;->b(I)Lcom/sgscq/vpn/battle/BattleUnit;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final b(I)Lcom/sgscq/vpn/battle/BattleUnit;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/battle/b;->b:[Lcom/sgscq/vpn/battle/BattleUnit;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ltz p1, :cond_0

    .line 5
    .line 6
    array-length v2, v0

    .line 7
    if-ge p1, v2, :cond_0

    .line 8
    .line 9
    aget-object p1, v0, p1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object p1, v1

    .line 13
    :goto_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/sgscq/vpn/battle/BattleUnit;->isAlive()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_1
    array-length p1, v0

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_1
    if-ge v2, p1, :cond_3

    .line 25
    .line 26
    aget-object v3, v0, v2

    .line 27
    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/sgscq/vpn/battle/BattleUnit;->isAlive()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    return-object v3

    .line 37
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    return-object v1
.end method
