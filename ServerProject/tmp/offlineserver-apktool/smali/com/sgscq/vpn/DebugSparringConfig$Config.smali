.class public final Lcom/sgscq/vpn/DebugSparringConfig$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public lordLevel:I
    .annotation runtime Lb/b;
        value = "lord_level"
    .end annotation
.end field

.field public slots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sgscq/vpn/DebugSparringConfig$Slot;",
            ">;"
        }
    .end annotation
.end field

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sgscq/vpn/DebugSparringConfig$Config;->version:I

    const/16 v0, 0x78

    iput v0, p0, Lcom/sgscq/vpn/DebugSparringConfig$Config;->lordLevel:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/DebugSparringConfig$Config;->slots:Ljava/util/List;

    return-void
.end method

.method public static clearRuntimeForTest()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/sgscq/vpn/p0;->b:Lcom/sgscq/vpn/DebugSparringConfig$Config;

    .line 3
    .line 4
    return-void
.end method

.method public static defaults()Lcom/sgscq/vpn/DebugSparringConfig$Config;
    .locals 4

    new-instance v0, Lcom/sgscq/vpn/DebugSparringConfig$Config;

    invoke-direct {v0}, Lcom/sgscq/vpn/DebugSparringConfig$Config;-><init>()V

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0xb

    if-gt v1, v2, :cond_0

    iget-object v2, v0, Lcom/sgscq/vpn/DebugSparringConfig$Config;->slots:Ljava/util/List;

    invoke-static {v1}, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->empty(I)Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private findSlot(I)Lcom/sgscq/vpn/DebugSparringConfig$Slot;
    .locals 4

    iget-object v0, p0, Lcom/sgscq/vpn/DebugSparringConfig$Config;->slots:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    if-eqz v2, :cond_1

    iget v3, v2, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->position:I

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/sgscq/vpn/DebugSparringConfig$Config;
    .locals 0

    invoke-static {p0}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->fromJsonOrNull(Ljava/lang/String;)Lcom/sgscq/vpn/DebugSparringConfig$Config;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->defaults()Lcom/sgscq/vpn/DebugSparringConfig$Config;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static fromJsonOrNull(Ljava/lang/String;)Lcom/sgscq/vpn/DebugSparringConfig$Config;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    :try_start_0
    sget-object v1, Lcom/sgscq/vpn/p0;->a:La/o;

    .line 16
    .line 17
    const-class v2, Lcom/sgscq/vpn/DebugSparringConfig$Config;

    .line 18
    .line 19
    invoke-virtual {v1, p0, v2}, La/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/sgscq/vpn/DebugSparringConfig$Config;

    .line 24
    .line 25
    if-nez p0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->normalized()Lcom/sgscq/vpn/DebugSparringConfig$Config;

    .line 29
    .line 30
    .line 31
    move-result-object v0
    :try_end_0
    .catch La/u; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static load(Landroid/content/SharedPreferences;)Lcom/sgscq/vpn/DebugSparringConfig$Config;
    .locals 2

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->defaults()Lcom/sgscq/vpn/DebugSparringConfig$Config;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "debug_sparring_config"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->fromJson(Ljava/lang/String;)Lcom/sgscq/vpn/DebugSparringConfig$Config;

    move-result-object p0

    return-object p0
.end method

.method public static loadLatest(Landroid/content/SharedPreferences;)Lcom/sgscq/vpn/DebugSparringConfig$Config;
    .locals 1

    invoke-static {}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->runtimeSnapshot()Lcom/sgscq/vpn/DebugSparringConfig$Config;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->load(Landroid/content/SharedPreferences;)Lcom/sgscq/vpn/DebugSparringConfig$Config;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static loadLatestOrNull(Landroid/content/SharedPreferences;)Lcom/sgscq/vpn/DebugSparringConfig$Config;
    .locals 1

    invoke-static {}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->runtimeSnapshot()Lcom/sgscq/vpn/DebugSparringConfig$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz p0, :cond_2

    const-string v0, "debug_sparring_config"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->load(Landroid/content/SharedPreferences;)Lcom/sgscq/vpn/DebugSparringConfig$Config;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->publishRuntime(Lcom/sgscq/vpn/DebugSparringConfig$Config;)V

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static publishRuntime(Lcom/sgscq/vpn/DebugSparringConfig$Config;)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->normalized()Lcom/sgscq/vpn/DebugSparringConfig$Config;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :goto_0
    sput-object p0, Lcom/sgscq/vpn/p0;->b:Lcom/sgscq/vpn/DebugSparringConfig$Config;

    .line 10
    .line 11
    return-void
.end method

.method private static registerGeneral(Ljava/util/List;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": duplicate general "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " (already used by "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static registerSkillType(Ljava/util/List;Ljava/util/Map;Lcom/sgscq/vpn/DebugSparringConfig$SkillTypeResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sgscq/vpn/DebugSparringConfig$SkillTypeResolver;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p3}, Lcom/sgscq/vpn/DebugSparringConfig$SkillTypeResolver;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": duplicate skill type "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (already used by "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public static runtimeSnapshot()Lcom/sgscq/vpn/DebugSparringConfig$Config;
    .locals 1

    .line 1
    sget-object v0, Lcom/sgscq/vpn/p0;->b:Lcom/sgscq/vpn/DebugSparringConfig$Config;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->normalized()Lcom/sgscq/vpn/DebugSparringConfig$Config;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    return-object v0
.end method


# virtual methods
.method public normalized()Lcom/sgscq/vpn/DebugSparringConfig$Config;
    .locals 4

    new-instance v0, Lcom/sgscq/vpn/DebugSparringConfig$Config;

    invoke-direct {v0}, Lcom/sgscq/vpn/DebugSparringConfig$Config;-><init>()V

    iget v1, p0, Lcom/sgscq/vpn/DebugSparringConfig$Config;->version:I

    const/4 v2, 0x1

    if-gtz v1, :cond_0

    move v1, v2

    :cond_0
    iput v1, v0, Lcom/sgscq/vpn/DebugSparringConfig$Config;->version:I

    iget v1, p0, Lcom/sgscq/vpn/DebugSparringConfig$Config;->lordLevel:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/sgscq/vpn/DebugSparringConfig$Config;->lordLevel:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sgscq/vpn/DebugSparringConfig$Config;->slots:Ljava/util/List;

    :goto_0
    const/16 v1, 0xb

    if-gt v2, v1, :cond_2

    invoke-direct {p0, v2}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->findSlot(I)Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    move-result-object v1

    iget-object v3, v0, Lcom/sgscq/vpn/DebugSparringConfig$Config;->slots:Ljava/util/List;

    if-nez v1, :cond_1

    invoke-static {v2}, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->empty(I)Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->normalized(I)Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    move-result-object v1

    :goto_1
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public save(Landroid/content/SharedPreferences;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->normalized()Lcom/sgscq/vpn/DebugSparringConfig$Config;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->publishRuntime(Lcom/sgscq/vpn/DebugSparringConfig$Config;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "debug_sparring_config"

    invoke-virtual {v0}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public slot(I)Lcom/sgscq/vpn/DebugSparringConfig$Slot;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/16 v0, 0xb

    if-le p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->findSlot(I)Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->empty(I)Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->normalized(I)Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->empty(I)Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    move-result-object p1

    return-object p1
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/sgscq/vpn/p0;->a:La/o;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->normalized()Lcom/sgscq/vpn/DebugSparringConfig$Config;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, La/o;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public validate()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->validate(Lcom/sgscq/vpn/DebugSparringConfig$SkillTypeResolver;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lcom/sgscq/vpn/DebugSparringConfig$SkillTypeResolver;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sgscq/vpn/DebugSparringConfig$SkillTypeResolver;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->normalized()Lcom/sgscq/vpn/DebugSparringConfig$Config;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, v1, Lcom/sgscq/vpn/DebugSparringConfig$Config;->slots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    iget-object v6, v5, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->generalId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v7, v5, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->generalId:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "slot "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v5, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->position:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " main"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3, v4, v7, v8}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->registerGeneral(Ljava/util/List;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, ""

    if-nez v0, :cond_2

    move-object v8, v7

    goto :goto_1

    :cond_2
    iget-object v8, v5, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->generalId:Ljava/lang/String;

    invoke-interface {v0, v8}, Lcom/sgscq/vpn/DebugSparringConfig$SkillTypeResolver;->resolveNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v5, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->position:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " native"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v6, v0, v8, v10}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->registerSkillType(Ljava/util/List;Ljava/util/Map;Lcom/sgscq/vpn/DebugSparringConfig$SkillTypeResolver;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v5, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->skillId:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v5, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->position:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " skill"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v6, v0, v8, v10}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->registerSkillType(Ljava/util/List;Ljava/util/Map;Lcom/sgscq/vpn/DebugSparringConfig$SkillTypeResolver;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const/4 v10, 0x0

    :goto_2
    iget-object v12, v5, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->deputyGeneralIds:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_0

    iget-object v12, v5, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->deputyGeneralIds:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    goto/16 :goto_5

    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v5, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->position:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " deputy"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v10, 0x1

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v3, v4, v12, v13}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->registerGeneral(Ljava/util/List;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_4

    move-object/from16 v16, v1

    move-object v13, v7

    goto :goto_3

    :cond_4
    invoke-interface {v0, v12}, Lcom/sgscq/vpn/DebugSparringConfig$SkillTypeResolver;->resolveNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v1

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v3

    iget v3, v5, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->position:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v6, v0, v13, v1}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->registerSkillType(Ljava/util/List;Ljava/util/Map;Lcom/sgscq/vpn/DebugSparringConfig$SkillTypeResolver;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v5, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->generalId:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v5, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->position:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": deputy equals general"

    :goto_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    invoke-virtual {v8, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v5, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->position:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": duplicate deputy"

    goto :goto_4

    :cond_6
    :goto_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    goto/16 :goto_2

    :cond_7
    return-object v2
.end method
