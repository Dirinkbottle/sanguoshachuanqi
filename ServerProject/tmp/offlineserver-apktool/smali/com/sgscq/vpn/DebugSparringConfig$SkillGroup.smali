.class public final Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public attack:Ljava/lang/String;

.field public blood:Ljava/lang/String;

.field public control:Ljava/lang/String;

.field public passive:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;->attack:Ljava/lang/String;

    iput-object v0, p0, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;->passive:Ljava/lang/String;

    iput-object v0, p0, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;->control:Ljava/lang/String;

    iput-object v0, p0, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;->blood:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public firstSkillId()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/sgscq/vpn/p0;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_1
    const-string v0, ""

    .line 31
    .line 32
    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "attack"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;->attack:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/sgscq/vpn/p0;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    const-string v0, "passive"

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;->passive:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/sgscq/vpn/p0;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_1
    const-string v0, "control"

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;->control:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/sgscq/vpn/p0;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :cond_2
    const-string v0, "blood"

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    iget-object p1, p0, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;->blood:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/sgscq/vpn/p0;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_3
    const-string p1, ""

    .line 62
    .line 63
    return-object p1
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/sgscq/vpn/p0;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    return v0

    .line 31
    :cond_1
    const/4 v0, 0x1

    .line 32
    return v0
.end method

.method public normalized()Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;
    .locals 2

    .line 1
    new-instance v0, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;->attack:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/sgscq/vpn/p0;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, v0, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;->attack:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;->passive:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/sgscq/vpn/p0;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, v0, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;->passive:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;->control:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/sgscq/vpn/p0;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, v0, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;->control:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;->blood:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/sgscq/vpn/p0;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v0, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;->blood:Ljava/lang/String;

    .line 37
    .line 38
    return-object v0
.end method
