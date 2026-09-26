.class public final enum Lcom/sgscq/vpn/battle/BattleSkillType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sgscq/vpn/battle/BattleSkillType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sgscq/vpn/battle/BattleSkillType;

.field public static final enum ATTACK:Lcom/sgscq/vpn/battle/BattleSkillType;

.field public static final enum BLOOD:Lcom/sgscq/vpn/battle/BattleSkillType;

.field public static final enum CONTROL:Lcom/sgscq/vpn/battle/BattleSkillType;

.field public static final enum NONE:Lcom/sgscq/vpn/battle/BattleSkillType;

.field public static final enum PASSIVE:Lcom/sgscq/vpn/battle/BattleSkillType;


# direct methods
.method private static synthetic $values()[Lcom/sgscq/vpn/battle/BattleSkillType;
    .locals 5

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillType;->ATTACK:Lcom/sgscq/vpn/battle/BattleSkillType;

    sget-object v1, Lcom/sgscq/vpn/battle/BattleSkillType;->CONTROL:Lcom/sgscq/vpn/battle/BattleSkillType;

    sget-object v2, Lcom/sgscq/vpn/battle/BattleSkillType;->BLOOD:Lcom/sgscq/vpn/battle/BattleSkillType;

    sget-object v3, Lcom/sgscq/vpn/battle/BattleSkillType;->PASSIVE:Lcom/sgscq/vpn/battle/BattleSkillType;

    sget-object v4, Lcom/sgscq/vpn/battle/BattleSkillType;->NONE:Lcom/sgscq/vpn/battle/BattleSkillType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sgscq/vpn/battle/BattleSkillType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sgscq/vpn/battle/BattleSkillType;

    const-string v1, "ATTACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleSkillType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleSkillType;->ATTACK:Lcom/sgscq/vpn/battle/BattleSkillType;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleSkillType;

    const-string v1, "CONTROL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleSkillType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleSkillType;->CONTROL:Lcom/sgscq/vpn/battle/BattleSkillType;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleSkillType;

    const-string v1, "BLOOD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleSkillType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleSkillType;->BLOOD:Lcom/sgscq/vpn/battle/BattleSkillType;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleSkillType;

    const-string v1, "PASSIVE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleSkillType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleSkillType;->PASSIVE:Lcom/sgscq/vpn/battle/BattleSkillType;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleSkillType;

    const-string v1, "NONE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleSkillType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleSkillType;->NONE:Lcom/sgscq/vpn/battle/BattleSkillType;

    invoke-static {}, Lcom/sgscq/vpn/battle/BattleSkillType;->$values()[Lcom/sgscq/vpn/battle/BattleSkillType;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/battle/BattleSkillType;->$VALUES:[Lcom/sgscq/vpn/battle/BattleSkillType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillType;
    .locals 1

    const-class v0, Lcom/sgscq/vpn/battle/BattleSkillType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sgscq/vpn/battle/BattleSkillType;

    return-object p0
.end method

.method public static values()[Lcom/sgscq/vpn/battle/BattleSkillType;
    .locals 1

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillType;->$VALUES:[Lcom/sgscq/vpn/battle/BattleSkillType;

    invoke-virtual {v0}, [Lcom/sgscq/vpn/battle/BattleSkillType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sgscq/vpn/battle/BattleSkillType;

    return-object v0
.end method
