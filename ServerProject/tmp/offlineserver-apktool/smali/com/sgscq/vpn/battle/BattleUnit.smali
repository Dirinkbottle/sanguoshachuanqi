.class public Lcom/sgscq/vpn/battle/BattleUnit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sgscq/vpn/battle/BattleUnit$Builder;
    }
.end annotation


# static fields
.field private static final CURRENT_BUFF_PHASE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private attack:D

.field private defense:D

.field private final evolutionImageStatus:Z

.field private final generalSex:I

.field private hpCur:D

.field private hpMax:D

.field private final id:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final normalAttackSkill:Ljava/lang/String;

.field private final oneShotBuffPhase:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sgscq/vpn/battle/BattleState;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final orbit:D

.field private final side:I

.field private final skill:Lcom/sgscq/vpn/battle/BattleSkill;

.field private final skills:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sgscq/vpn/battle/BattleSkill;",
            ">;"
        }
    .end annotation
.end field

.field private final slot:I

.field private final stateAttributeDeltas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sgscq/vpn/battle/BattleState;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final states:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sgscq/vpn/battle/BattleState;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final storyGuest:Z

.field private wisdom:D


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sgscq/vpn/battle/g;

    invoke-direct {v0}, Lcom/sgscq/vpn/battle/g;-><init>()V

    new-instance v1, Lcom/sgscq/vpn/battle/h;

    invoke-direct {v1, v0}, Lcom/sgscq/vpn/battle/h;-><init>(Lcom/sgscq/vpn/battle/g;)V

    sput-object v1, Lcom/sgscq/vpn/battle/BattleUnit;->CURRENT_BUFF_PHASE:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sgscq/vpn/battle/BattleState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->states:Ljava/util/Map;

    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->stateAttributeDeltas:Ljava/util/Map;

    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->oneShotBuffPhase:Ljava/util/Map;

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->access$000(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->id:Ljava/lang/String;

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->access$100(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->access$200(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->side:I

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->access$300(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->slot:I

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->access$400(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->storyGuest:Z

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->access$500(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->generalSex:I

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->access$600(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->evolutionImageStatus:Z

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->access$700(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->access$800(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sgscq/vpn/battle/BattleUnit;->applyPercentBonus(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->hpMax:D

    iput-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->hpCur:D

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->access$900(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->access$1000(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sgscq/vpn/battle/BattleUnit;->applyPercentBonus(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->attack:D

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->access$1100(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->access$1200(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sgscq/vpn/battle/BattleUnit;->applyPercentBonus(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->defense:D

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->access$1300(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->access$1400(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sgscq/vpn/battle/BattleUnit;->applyPercentBonus(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->wisdom:D

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->access$1500(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->orbit:D

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->access$1600(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->normalAttackSkill:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->access$1700(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleUnit;->skills:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sgscq/vpn/battle/BattleSkill;

    :goto_0
    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleUnit;->skill:Lcom/sgscq/vpn/battle/BattleSkill;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sgscq/vpn/battle/BattleUnit$Builder;Lcom/sgscq/vpn/battle/BattleUnit$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sgscq/vpn/battle/BattleUnit;-><init>(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)V

    return-void
.end method

.method public static synthetic a()Ljava/lang/Long;
    .locals 1

    .line 1
    invoke-static {}, Lcom/sgscq/vpn/battle/BattleUnit;->lambda$static$0()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private addAttributeAndReturnDelta(Lcom/sgscq/vpn/battle/BattleAttribute;D)D
    .locals 8

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_5

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/battle/BattleUnit;->getAttribute(Lcom/sgscq/vpn/battle/BattleAttribute;)D

    move-result-wide v2

    sget-object v4, Lcom/sgscq/vpn/battle/BattleUnit$1;->$SwitchMap$com$sgscq$vpn$battle$BattleAttribute:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/sgscq/vpn/battle/BattleUnit;->wisdom:D

    add-double/2addr v4, p2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    iput-wide p2, p0, Lcom/sgscq/vpn/battle/BattleUnit;->wisdom:D

    goto :goto_0

    :cond_2
    iget-wide v4, p0, Lcom/sgscq/vpn/battle/BattleUnit;->defense:D

    add-double/2addr v4, p2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    iput-wide p2, p0, Lcom/sgscq/vpn/battle/BattleUnit;->defense:D

    goto :goto_0

    :cond_3
    iget-wide v4, p0, Lcom/sgscq/vpn/battle/BattleUnit;->attack:D

    add-double/2addr v4, p2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    iput-wide p2, p0, Lcom/sgscq/vpn/battle/BattleUnit;->attack:D

    goto :goto_0

    :cond_4
    iget-wide v4, p0, Lcom/sgscq/vpn/battle/BattleUnit;->hpMax:D

    add-double/2addr v4, p2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sgscq/vpn/battle/BattleUnit;->hpMax:D

    iget-wide v6, p0, Lcom/sgscq/vpn/battle/BattleUnit;->hpCur:D

    add-double/2addr v6, p2

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p2

    iput-wide p2, p0, Lcom/sgscq/vpn/battle/BattleUnit;->hpCur:D

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/battle/BattleUnit;->getAttribute(Lcom/sgscq/vpn/battle/BattleAttribute;)D

    move-result-wide p1

    sub-double/2addr p1, v2

    return-wide p1

    :cond_5
    :goto_1
    return-wide v0
.end method

.method private static applyPercentBonus(DD)D
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_0

    return-wide p0

    :cond_0
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    add-double/2addr p2, v0

    mul-double/2addr p2, p0

    div-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private applyStateAttributeDelta(Lcom/sgscq/vpn/battle/BattleState;D)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/sgscq/vpn/battle/BattleUnit;->stateAttribute(Lcom/sgscq/vpn/battle/BattleState;)Lcom/sgscq/vpn/battle/BattleAttribute;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lcom/sgscq/vpn/battle/BattleUnit;->stateAttributeDelta(Lcom/sgscq/vpn/battle/BattleState;D)D

    move-result-wide p2

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    cmpl-double v3, p2, v1

    if-eqz v3, :cond_1

    invoke-direct {p0, v0, p2, p3}, Lcom/sgscq/vpn/battle/BattleUnit;->addAttributeAndReturnDelta(Lcom/sgscq/vpn/battle/BattleAttribute;D)D

    move-result-wide p2

    cmpl-double v0, p2, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->stateAttributeDeltas:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iget-object v3, p0, Lcom/sgscq/vpn/battle/BattleUnit;->stateAttributeDeltas:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_0
    add-double/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static beginBuffPhase()V
    .locals 5

    sget-object v0, Lcom/sgscq/vpn/battle/BattleUnit;->CURRENT_BUFF_PHASE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static builder(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleUnit$Builder;
    .locals 2

    new-instance v0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;-><init>(Ljava/lang/String;Lcom/sgscq/vpn/battle/BattleUnit$1;)V

    return-object v0
.end method

.method private clearState(Lcom/sgscq/vpn/battle/BattleState;)V
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->states:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->states:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/sgscq/vpn/battle/BattleUnit;->rollbackStateAttribute(Lcom/sgscq/vpn/battle/BattleState;)V

    return-void
.end method

.method private static synthetic lambda$static$0()Ljava/lang/Long;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private rollbackStateAttribute(Lcom/sgscq/vpn/battle/BattleState;)V
    .locals 5

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->stateAttributeDeltas:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-direct {p0, p1}, Lcom/sgscq/vpn/battle/BattleUnit;->stateAttribute(Lcom/sgscq/vpn/battle/BattleState;)Lcom/sgscq/vpn/battle/BattleAttribute;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    neg-double v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sgscq/vpn/battle/BattleUnit;->addAttributeAndReturnDelta(Lcom/sgscq/vpn/battle/BattleAttribute;D)D

    :cond_0
    return-void
.end method

.method private stateAttribute(Lcom/sgscq/vpn/battle/BattleState;)Lcom/sgscq/vpn/battle/BattleAttribute;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/sgscq/vpn/battle/BattleUnit$1;->$SwitchMap$com$sgscq$vpn$battle$BattleState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    return-object v0

    :cond_1
    sget-object p1, Lcom/sgscq/vpn/battle/BattleAttribute;->DEFENSE:Lcom/sgscq/vpn/battle/BattleAttribute;

    return-object p1

    :cond_2
    sget-object p1, Lcom/sgscq/vpn/battle/BattleAttribute;->ATTACK:Lcom/sgscq/vpn/battle/BattleAttribute;

    return-object p1
.end method

.method private stateAttributeDelta(Lcom/sgscq/vpn/battle/BattleState;D)D
    .locals 3

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_3

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/sgscq/vpn/battle/BattleUnit$1;->$SwitchMap$com$sgscq$vpn$battle$BattleState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    return-wide v0

    :cond_1
    neg-double p1, p2

    return-wide p1

    :cond_2
    return-wide p2

    :cond_3
    :goto_0
    return-wide v0
.end method


# virtual methods
.method public addAllAttributesPercent(D)V
    .locals 5

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sgscq/vpn/battle/BattleAttribute;->HP:Lcom/sgscq/vpn/battle/BattleAttribute;

    iget-wide v1, p0, Lcom/sgscq/vpn/battle/BattleUnit;->hpMax:D

    mul-double/2addr v1, p1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleUnit;->addAttribute(Lcom/sgscq/vpn/battle/BattleAttribute;D)V

    sget-object v0, Lcom/sgscq/vpn/battle/BattleAttribute;->ATTACK:Lcom/sgscq/vpn/battle/BattleAttribute;

    iget-wide v1, p0, Lcom/sgscq/vpn/battle/BattleUnit;->attack:D

    mul-double/2addr v1, p1

    div-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleUnit;->addAttribute(Lcom/sgscq/vpn/battle/BattleAttribute;D)V

    sget-object v0, Lcom/sgscq/vpn/battle/BattleAttribute;->DEFENSE:Lcom/sgscq/vpn/battle/BattleAttribute;

    iget-wide v1, p0, Lcom/sgscq/vpn/battle/BattleUnit;->defense:D

    mul-double/2addr v1, p1

    div-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleUnit;->addAttribute(Lcom/sgscq/vpn/battle/BattleAttribute;D)V

    sget-object v0, Lcom/sgscq/vpn/battle/BattleAttribute;->WISDOM:Lcom/sgscq/vpn/battle/BattleAttribute;

    iget-wide v1, p0, Lcom/sgscq/vpn/battle/BattleUnit;->wisdom:D

    mul-double/2addr v1, p1

    div-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleUnit;->addAttribute(Lcom/sgscq/vpn/battle/BattleAttribute;D)V

    return-void
.end method

.method public addAttribute(Lcom/sgscq/vpn/battle/BattleAttribute;D)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sgscq/vpn/battle/BattleUnit;->addAttributeAndReturnDelta(Lcom/sgscq/vpn/battle/BattleAttribute;D)D

    return-void
.end method

.method public addState(Lcom/sgscq/vpn/battle/BattleState;D)V
    .locals 4

    invoke-virtual {p1}, Lcom/sgscq/vpn/battle/BattleState;->isOneShotBuff()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sgscq/vpn/battle/BattleUnit;->CURRENT_BUFF_PHASE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sgscq/vpn/battle/BattleUnit;->oneShotBuffPhase:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/sgscq/vpn/battle/BattleUnit;->clearState(Lcom/sgscq/vpn/battle/BattleState;)V

    iget-object v2, p0, Lcom/sgscq/vpn/battle/BattleUnit;->oneShotBuffPhase:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->states:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/battle/BattleUnit;->getStateValue(Lcom/sgscq/vpn/battle/BattleState;)D

    move-result-wide v1

    add-double/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/sgscq/vpn/battle/BattleUnit;->applyStateAttributeDelta(Lcom/sgscq/vpn/battle/BattleState;D)V

    return-void
.end method

.method public consumeState(Lcom/sgscq/vpn/battle/BattleState;)Z
    .locals 6

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/battle/BattleUnit;->getStateValue(Lcom/sgscq/vpn/battle/BattleState;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v4

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->states:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/sgscq/vpn/battle/BattleUnit;->rollbackStateAttribute(Lcom/sgscq/vpn/battle/BattleState;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sgscq/vpn/battle/BattleUnit;->states:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public consumeStateValue(Lcom/sgscq/vpn/battle/BattleState;)D
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/battle/BattleUnit;->getStateValue(Lcom/sgscq/vpn/battle/BattleState;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sgscq/vpn/battle/BattleUnit;->states:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, p1}, Lcom/sgscq/vpn/battle/BattleUnit;->rollbackStateAttribute(Lcom/sgscq/vpn/battle/BattleState;)V

    return-wide v0
.end method

.method public consumeStateValue(Lcom/sgscq/vpn/battle/BattleState;D)D
    .locals 5

    .line 2
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/battle/BattleUnit;->getStateValue(Lcom/sgscq/vpn/battle/BattleState;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_3

    cmpg-double v4, p2, v2

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p2

    sub-double/2addr v0, p2

    invoke-direct {p0, p1}, Lcom/sgscq/vpn/battle/BattleUnit;->stateAttribute(Lcom/sgscq/vpn/battle/BattleState;)Lcom/sgscq/vpn/battle/BattleAttribute;

    move-result-object v2

    const-wide v3, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v3, v0, v3

    if-gtz v3, :cond_1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->states:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/sgscq/vpn/battle/BattleUnit;->rollbackStateAttribute(Lcom/sgscq/vpn/battle/BattleState;)V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sgscq/vpn/battle/BattleUnit;->states:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/sgscq/vpn/battle/BattleUnit;->rollbackStateAttribute(Lcom/sgscq/vpn/battle/BattleState;)V

    iget-object v2, p0, Lcom/sgscq/vpn/battle/BattleUnit;->states:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sgscq/vpn/battle/BattleUnit;->addState(Lcom/sgscq/vpn/battle/BattleState;D)V

    :goto_0
    return-wide p2

    :cond_3
    :goto_1
    return-wide v2
.end method

.method public damage(D)V
    .locals 4

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleUnit;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/sgscq/vpn/battle/BattleUnit;->hpCur:D

    sub-double/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/sgscq/vpn/battle/BattleUnit;->hpCur:D

    :cond_1
    :goto_0
    return-void
.end method

.method public getAttack()D
    .locals 2

    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->attack:D

    return-wide v0
.end method

.method public getAttribute(Lcom/sgscq/vpn/battle/BattleAttribute;)D
    .locals 2

    sget-object v0, Lcom/sgscq/vpn/battle/BattleUnit$1;->$SwitchMap$com$sgscq$vpn$battle$BattleAttribute:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->attack:D

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->wisdom:D

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->defense:D

    return-wide v0

    :cond_2
    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->attack:D

    return-wide v0

    :cond_3
    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->hpMax:D

    return-wide v0
.end method

.method public getDefense()D
    .locals 2

    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->defense:D

    return-wide v0
.end method

.method public getGeneralSex()I
    .locals 1

    iget v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->generalSex:I

    return v0
.end method

.method public getHpCur()D
    .locals 2

    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->hpCur:D

    return-wide v0
.end method

.method public getHpMax()D
    .locals 2

    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->hpMax:D

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNormalAttackSkill()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->normalAttackSkill:Ljava/lang/String;

    return-object v0
.end method

.method public getOrbit()D
    .locals 2

    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->orbit:D

    return-wide v0
.end method

.method public getSide()I
    .locals 1

    iget v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->side:I

    return v0
.end method

.method public getSkill()Lcom/sgscq/vpn/battle/BattleSkill;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->skill:Lcom/sgscq/vpn/battle/BattleSkill;

    return-object v0
.end method

.method public getSkills()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sgscq/vpn/battle/BattleSkill;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->skills:Ljava/util/List;

    return-object v0
.end method

.method public getSlot()I
    .locals 1

    iget v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->slot:I

    return v0
.end method

.method public getStateValue(Lcom/sgscq/vpn/battle/BattleState;)D
    .locals 2

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->states:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getWisdom()D
    .locals 2

    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->wisdom:D

    return-wide v0
.end method

.method public hasEvolutionImage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->evolutionImageStatus:Z

    return v0
.end method

.method public hasState(Lcom/sgscq/vpn/battle/BattleState;)Z
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->states:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public heal(D)V
    .locals 4

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleUnit;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->hpMax:D

    iget-wide v2, p0, Lcom/sgscq/vpn/battle/BattleUnit;->hpCur:D

    add-double/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/sgscq/vpn/battle/BattleUnit;->hpCur:D

    :cond_1
    :goto_0
    return-void
.end method

.method public isAlive()Z
    .locals 4

    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->hpCur:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMale()Z
    .locals 2

    iget v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->generalSex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStoryGuest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->storyGuest:Z

    return v0
.end method

.method public isWounded()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleUnit;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->hpCur:D

    iget-wide v2, p0, Lcom/sgscq/vpn/battle/BattleUnit;->hpMax:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public revive(D)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->hpMax:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/sgscq/vpn/battle/BattleUnit;->hpCur:D

    return-void
.end method

.method public scaleStats(DDDD)V
    .locals 2

    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit;->hpMax:D

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    iput-wide p1, p0, Lcom/sgscq/vpn/battle/BattleUnit;->hpMax:D

    iput-wide p1, p0, Lcom/sgscq/vpn/battle/BattleUnit;->hpCur:D

    iget-wide p1, p0, Lcom/sgscq/vpn/battle/BattleUnit;->attack:D

    mul-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    iput-wide p1, p0, Lcom/sgscq/vpn/battle/BattleUnit;->attack:D

    iget-wide p1, p0, Lcom/sgscq/vpn/battle/BattleUnit;->defense:D

    mul-double/2addr p1, p5

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    iput-wide p1, p0, Lcom/sgscq/vpn/battle/BattleUnit;->defense:D

    iget-wide p1, p0, Lcom/sgscq/vpn/battle/BattleUnit;->wisdom:D

    mul-double/2addr p1, p7

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    iput-wide p1, p0, Lcom/sgscq/vpn/battle/BattleUnit;->wisdom:D

    return-void
.end method
