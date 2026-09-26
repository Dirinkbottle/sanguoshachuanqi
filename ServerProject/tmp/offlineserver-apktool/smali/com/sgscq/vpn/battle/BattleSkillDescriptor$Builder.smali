.class public Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sgscq/vpn/battle/BattleSkillDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final code:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private majorProperty:Ljava/lang/String;

.field private phase:Ljava/lang/String;

.field private range:Ljava/lang/String;

.field private skillType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;->code:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/sgscq/vpn/battle/BattleSkillDescriptor$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;->code:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;->skillType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;->majorProperty:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;->phase:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;->range:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;->description:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/sgscq/vpn/battle/BattleSkillDescriptor;
    .locals 2

    new-instance v0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;-><init>(Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;Lcom/sgscq/vpn/battle/BattleSkillDescriptor$1;)V

    return-object v0
.end method

.method public description(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public majorProperty(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;->majorProperty:Ljava/lang/String;

    return-object p0
.end method

.method public phase(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;->phase:Ljava/lang/String;

    return-object p0
.end method

.method public range(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;->range:Ljava/lang/String;

    return-object p0
.end method

.method public skillType(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;->skillType:Ljava/lang/String;

    return-object p0
.end method
