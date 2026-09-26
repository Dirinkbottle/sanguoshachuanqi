.class final enum Lcom/sgscq/vpn/battle/BattleAction$Kind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sgscq/vpn/battle/BattleAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sgscq/vpn/battle/BattleAction$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sgscq/vpn/battle/BattleAction$Kind;

.field public static final enum NORMAL_ATTACK:Lcom/sgscq/vpn/battle/BattleAction$Kind;

.field public static final enum SKILL:Lcom/sgscq/vpn/battle/BattleAction$Kind;


# direct methods
.method private static synthetic $values()[Lcom/sgscq/vpn/battle/BattleAction$Kind;
    .locals 2

    sget-object v0, Lcom/sgscq/vpn/battle/BattleAction$Kind;->NORMAL_ATTACK:Lcom/sgscq/vpn/battle/BattleAction$Kind;

    sget-object v1, Lcom/sgscq/vpn/battle/BattleAction$Kind;->SKILL:Lcom/sgscq/vpn/battle/BattleAction$Kind;

    filled-new-array {v0, v1}, [Lcom/sgscq/vpn/battle/BattleAction$Kind;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sgscq/vpn/battle/BattleAction$Kind;

    const-string v1, "NORMAL_ATTACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleAction$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleAction$Kind;->NORMAL_ATTACK:Lcom/sgscq/vpn/battle/BattleAction$Kind;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleAction$Kind;

    const-string v1, "SKILL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleAction$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleAction$Kind;->SKILL:Lcom/sgscq/vpn/battle/BattleAction$Kind;

    invoke-static {}, Lcom/sgscq/vpn/battle/BattleAction$Kind;->$values()[Lcom/sgscq/vpn/battle/BattleAction$Kind;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/battle/BattleAction$Kind;->$VALUES:[Lcom/sgscq/vpn/battle/BattleAction$Kind;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleAction$Kind;
    .locals 1

    const-class v0, Lcom/sgscq/vpn/battle/BattleAction$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sgscq/vpn/battle/BattleAction$Kind;

    return-object p0
.end method

.method public static values()[Lcom/sgscq/vpn/battle/BattleAction$Kind;
    .locals 1

    sget-object v0, Lcom/sgscq/vpn/battle/BattleAction$Kind;->$VALUES:[Lcom/sgscq/vpn/battle/BattleAction$Kind;

    invoke-virtual {v0}, [Lcom/sgscq/vpn/battle/BattleAction$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sgscq/vpn/battle/BattleAction$Kind;

    return-object v0
.end method
