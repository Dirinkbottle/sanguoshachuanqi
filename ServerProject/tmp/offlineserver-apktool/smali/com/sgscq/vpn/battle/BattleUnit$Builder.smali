.class public Lcom/sgscq/vpn/battle/BattleUnit$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sgscq/vpn/battle/BattleUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private attack:D

.field private attackPercentBonus:D

.field private defense:D

.field private defensePercentBonus:D

.field private evolutionImageStatus:Z

.field private generalSex:I

.field private hp:D

.field private hpPercentBonus:D

.field private final id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private normalAttackSkill:Ljava/lang/String;

.field private orbit:D

.field private side:I

.field private final skills:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sgscq/vpn/battle/BattleSkill;",
            ">;"
        }
    .end annotation
.end field

.field private slot:I

.field private storyGuest:Z

.field private wisdom:D

.field private wisdomPercentBonus:D


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->generalSex:I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->hp:D

    iput-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->attack:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->defense:D

    iput-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->wisdom:D

    iput-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->orbit:D

    const-string v0, "Attack_Knife"

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->normalAttackSkill:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->skills:Ljava/util/List;

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->name:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/sgscq/vpn/battle/BattleUnit$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->attackPercentBonus:D

    return-wide v0
.end method

.method public static synthetic access$1100(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->defense:D

    return-wide v0
.end method

.method public static synthetic access$1200(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->defensePercentBonus:D

    return-wide v0
.end method

.method public static synthetic access$1300(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->wisdom:D

    return-wide v0
.end method

.method public static synthetic access$1400(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->wisdomPercentBonus:D

    return-wide v0
.end method

.method public static synthetic access$1500(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->orbit:D

    return-wide v0
.end method

.method public static synthetic access$1600(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->normalAttackSkill:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->skills:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->side:I

    return p0
.end method

.method public static synthetic access$300(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->slot:I

    return p0
.end method

.method public static synthetic access$400(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->storyGuest:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->generalSex:I

    return p0
.end method

.method public static synthetic access$600(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->evolutionImageStatus:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->hp:D

    return-wide v0
.end method

.method public static synthetic access$800(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->hpPercentBonus:D

    return-wide v0
.end method

.method public static synthetic access$900(Lcom/sgscq/vpn/battle/BattleUnit$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->attack:D

    return-wide v0
.end method


# virtual methods
.method public attack(D)Lcom/sgscq/vpn/battle/BattleUnit$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->attack:D

    return-object p0
.end method

.method public attackPercentBonus(D)Lcom/sgscq/vpn/battle/BattleUnit$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->attackPercentBonus:D

    return-object p0
.end method

.method public build()Lcom/sgscq/vpn/battle/BattleUnit;
    .locals 2

    new-instance v0, Lcom/sgscq/vpn/battle/BattleUnit;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sgscq/vpn/battle/BattleUnit;-><init>(Lcom/sgscq/vpn/battle/BattleUnit$Builder;Lcom/sgscq/vpn/battle/BattleUnit$1;)V

    return-object v0
.end method

.method public defense(D)Lcom/sgscq/vpn/battle/BattleUnit$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->defense:D

    return-object p0
.end method

.method public defensePercentBonus(D)Lcom/sgscq/vpn/battle/BattleUnit$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->defensePercentBonus:D

    return-object p0
.end method

.method public evolutionImageStatus(Z)Lcom/sgscq/vpn/battle/BattleUnit$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->evolutionImageStatus:Z

    return-object p0
.end method

.method public generalSex(I)Lcom/sgscq/vpn/battle/BattleUnit$Builder;
    .locals 0

    iput p1, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->generalSex:I

    return-object p0
.end method

.method public hp(D)Lcom/sgscq/vpn/battle/BattleUnit$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->hp:D

    return-object p0
.end method

.method public hpPercentBonus(D)Lcom/sgscq/vpn/battle/BattleUnit$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->hpPercentBonus:D

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleUnit$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public normalAttackSkill(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleUnit$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->normalAttackSkill:Ljava/lang/String;

    return-object p0
.end method

.method public orbit(D)Lcom/sgscq/vpn/battle/BattleUnit$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->orbit:D

    return-object p0
.end method

.method public side(I)Lcom/sgscq/vpn/battle/BattleUnit$Builder;
    .locals 0

    iput p1, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->side:I

    return-object p0
.end method

.method public skill(Lcom/sgscq/vpn/battle/BattleSkill;)Lcom/sgscq/vpn/battle/BattleUnit$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->skills:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public skills(Ljava/util/List;)Lcom/sgscq/vpn/battle/BattleUnit$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sgscq/vpn/battle/BattleSkill;",
            ">;)",
            "Lcom/sgscq/vpn/battle/BattleUnit$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sgscq/vpn/battle/BattleSkill;

    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->skill(Lcom/sgscq/vpn/battle/BattleSkill;)Lcom/sgscq/vpn/battle/BattleUnit$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public slot(I)Lcom/sgscq/vpn/battle/BattleUnit$Builder;
    .locals 0

    iput p1, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->slot:I

    return-object p0
.end method

.method public storyGuest(Z)Lcom/sgscq/vpn/battle/BattleUnit$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->storyGuest:Z

    return-object p0
.end method

.method public wisdom(D)Lcom/sgscq/vpn/battle/BattleUnit$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->wisdom:D

    return-object p0
.end method

.method public wisdomPercentBonus(D)Lcom/sgscq/vpn/battle/BattleUnit$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->wisdomPercentBonus:D

    return-object p0
.end method
