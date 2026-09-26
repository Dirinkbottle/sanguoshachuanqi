.class public final enum Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

.field public static final enum ALLOW_ALLY_FALLBACK:Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

.field public static final enum NOT_REQUIRED:Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

.field public static final enum REQUIRE_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;


# direct methods
.method private static synthetic $values()[Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;
    .locals 3

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;->NOT_REQUIRED:Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    sget-object v1, Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;->ALLOW_ALLY_FALLBACK:Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    sget-object v2, Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;->REQUIRE_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    filled-new-array {v0, v1, v2}, [Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    const-string v1, "NOT_REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;->NOT_REQUIRED:Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    const-string v1, "ALLOW_ALLY_FALLBACK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;->ALLOW_ALLY_FALLBACK:Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    const-string v1, "REQUIRE_ACTIVE_ENEMY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;->REQUIRE_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    invoke-static {}, Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;->$values()[Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;->$VALUES:[Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;
    .locals 1

    const-class v0, Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    return-object p0
.end method

.method public static values()[Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;
    .locals 1

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;->$VALUES:[Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    invoke-virtual {v0}, [Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    return-object v0
.end method
