.class public Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sgscq/vpn/battle/BattleSkillEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private paramIndex:I

.field private sourceAttribute:Lcom/sgscq/vpn/battle/BattleAttribute;

.field private final target:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field private final type:Lcom/sgscq/vpn/battle/BattleEffectType;


# direct methods
.method private constructor <init>(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;->type:Lcom/sgscq/vpn/battle/BattleEffectType;

    iput-object p2, p0, Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;->target:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;Lcom/sgscq/vpn/battle/BattleSkillEffect$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;-><init>(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;)Lcom/sgscq/vpn/battle/BattleEffectType;
    .locals 0

    iget-object p0, p0, Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;->type:Lcom/sgscq/vpn/battle/BattleEffectType;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;)Lcom/sgscq/vpn/battle/BattleEffectTarget;
    .locals 0

    iget-object p0, p0, Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;->target:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;)Lcom/sgscq/vpn/battle/BattleAttribute;
    .locals 0

    iget-object p0, p0, Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;->sourceAttribute:Lcom/sgscq/vpn/battle/BattleAttribute;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;->paramIndex:I

    return p0
.end method


# virtual methods
.method public build()Lcom/sgscq/vpn/battle/BattleSkillEffect;
    .locals 2

    new-instance v0, Lcom/sgscq/vpn/battle/BattleSkillEffect;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sgscq/vpn/battle/BattleSkillEffect;-><init>(Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;Lcom/sgscq/vpn/battle/BattleSkillEffect$1;)V

    return-object v0
.end method

.method public paramIndex(I)Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;
    .locals 0

    iput p1, p0, Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;->paramIndex:I

    return-object p0
.end method

.method public sourceAttribute(Lcom/sgscq/vpn/battle/BattleAttribute;)Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;->sourceAttribute:Lcom/sgscq/vpn/battle/BattleAttribute;

    return-object p0
.end method
