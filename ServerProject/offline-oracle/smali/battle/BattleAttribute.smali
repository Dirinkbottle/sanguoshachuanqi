.class public final enum Lcom/sgscq/vpn/battle/BattleAttribute;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sgscq/vpn/battle/BattleAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sgscq/vpn/battle/BattleAttribute;

.field public static final enum ATTACK:Lcom/sgscq/vpn/battle/BattleAttribute;

.field public static final enum DEFENSE:Lcom/sgscq/vpn/battle/BattleAttribute;

.field public static final enum HP:Lcom/sgscq/vpn/battle/BattleAttribute;

.field public static final enum WISDOM:Lcom/sgscq/vpn/battle/BattleAttribute;


# direct methods
.method private static synthetic $values()[Lcom/sgscq/vpn/battle/BattleAttribute;
    .locals 4

    sget-object v0, Lcom/sgscq/vpn/battle/BattleAttribute;->HP:Lcom/sgscq/vpn/battle/BattleAttribute;

    sget-object v1, Lcom/sgscq/vpn/battle/BattleAttribute;->ATTACK:Lcom/sgscq/vpn/battle/BattleAttribute;

    sget-object v2, Lcom/sgscq/vpn/battle/BattleAttribute;->DEFENSE:Lcom/sgscq/vpn/battle/BattleAttribute;

    sget-object v3, Lcom/sgscq/vpn/battle/BattleAttribute;->WISDOM:Lcom/sgscq/vpn/battle/BattleAttribute;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sgscq/vpn/battle/BattleAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sgscq/vpn/battle/BattleAttribute;

    const-string v1, "HP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleAttribute;->HP:Lcom/sgscq/vpn/battle/BattleAttribute;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleAttribute;

    const-string v1, "ATTACK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleAttribute;->ATTACK:Lcom/sgscq/vpn/battle/BattleAttribute;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleAttribute;

    const-string v1, "DEFENSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleAttribute;->DEFENSE:Lcom/sgscq/vpn/battle/BattleAttribute;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleAttribute;

    const-string v1, "WISDOM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleAttribute;->WISDOM:Lcom/sgscq/vpn/battle/BattleAttribute;

    invoke-static {}, Lcom/sgscq/vpn/battle/BattleAttribute;->$values()[Lcom/sgscq/vpn/battle/BattleAttribute;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/battle/BattleAttribute;->$VALUES:[Lcom/sgscq/vpn/battle/BattleAttribute;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleAttribute;
    .locals 1

    const-class v0, Lcom/sgscq/vpn/battle/BattleAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sgscq/vpn/battle/BattleAttribute;

    return-object p0
.end method

.method public static values()[Lcom/sgscq/vpn/battle/BattleAttribute;
    .locals 1

    sget-object v0, Lcom/sgscq/vpn/battle/BattleAttribute;->$VALUES:[Lcom/sgscq/vpn/battle/BattleAttribute;

    invoke-virtual {v0}, [Lcom/sgscq/vpn/battle/BattleAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sgscq/vpn/battle/BattleAttribute;

    return-object v0
.end method
