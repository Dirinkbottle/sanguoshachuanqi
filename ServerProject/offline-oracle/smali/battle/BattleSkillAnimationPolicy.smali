.class public final enum Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

.field public static final enum COUNTER_DAMAGE_ONLY:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

.field public static final enum EMIT_SKILL_ROUND:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

.field public static final enum NORMAL_ATTACK_FALLBACK:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

.field public static final enum SILENT_STATE_CHANGE:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

.field public static final enum SPLIT_IMMUNE_COUNTER:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;


# direct methods
.method private static synthetic $values()[Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;
    .locals 5

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;->EMIT_SKILL_ROUND:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    sget-object v1, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;->SILENT_STATE_CHANGE:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    sget-object v2, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;->SPLIT_IMMUNE_COUNTER:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    sget-object v3, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;->COUNTER_DAMAGE_ONLY:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    sget-object v4, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;->NORMAL_ATTACK_FALLBACK:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    const-string v1, "EMIT_SKILL_ROUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;->EMIT_SKILL_ROUND:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    const-string v1, "SILENT_STATE_CHANGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;->SILENT_STATE_CHANGE:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    const-string v1, "SPLIT_IMMUNE_COUNTER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;->SPLIT_IMMUNE_COUNTER:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    const-string v1, "COUNTER_DAMAGE_ONLY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;->COUNTER_DAMAGE_ONLY:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    const-string v1, "NORMAL_ATTACK_FALLBACK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;->NORMAL_ATTACK_FALLBACK:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    invoke-static {}, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;->$values()[Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;->$VALUES:[Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;
    .locals 1

    const-class v0, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    return-object p0
.end method

.method public static values()[Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;
    .locals 1

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;->$VALUES:[Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    invoke-virtual {v0}, [Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    return-object v0
.end method
