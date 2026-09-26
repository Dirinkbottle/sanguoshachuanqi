.class public final enum Lcom/sgscq/vpn/battle/BattleTriggerPhase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sgscq/vpn/battle/BattleTriggerPhase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sgscq/vpn/battle/BattleTriggerPhase;

.field public static final enum AFTER_ACTION:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

.field public static final enum AFTER_DEATH:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

.field public static final enum AFTER_KILL:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

.field public static final enum AFTER_NORMAL_DAMAGE_TAKEN:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

.field public static final enum AFTER_SKILL_DAMAGE_TAKEN:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

.field public static final enum BEFORE_ACTION:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

.field public static final enum BEFORE_NORMAL_DAMAGE_TAKEN:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

.field public static final enum MATCHING_PHASE:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

.field public static final enum ON_ACTION:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

.field public static final enum ON_DEATH:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

.field public static final enum ON_NORMAL_ATTACK:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

.field public static final enum PASSIVE:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

.field public static final enum UNKNOWN:Lcom/sgscq/vpn/battle/BattleTriggerPhase;


# direct methods
.method private static synthetic $values()[Lcom/sgscq/vpn/battle/BattleTriggerPhase;
    .locals 13

    sget-object v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->BEFORE_ACTION:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    sget-object v1, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->ON_ACTION:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    sget-object v2, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->AFTER_ACTION:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    sget-object v3, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->ON_NORMAL_ATTACK:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    sget-object v4, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->BEFORE_NORMAL_DAMAGE_TAKEN:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    sget-object v5, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->AFTER_NORMAL_DAMAGE_TAKEN:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    sget-object v6, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->AFTER_SKILL_DAMAGE_TAKEN:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    sget-object v7, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->ON_DEATH:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    sget-object v8, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->AFTER_DEATH:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    sget-object v9, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->AFTER_KILL:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    sget-object v10, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->PASSIVE:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    sget-object v11, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->MATCHING_PHASE:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    sget-object v12, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->UNKNOWN:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    filled-new-array/range {v0 .. v12}, [Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    const-string v1, "BEFORE_ACTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleTriggerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->BEFORE_ACTION:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    const-string v1, "ON_ACTION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleTriggerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->ON_ACTION:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    const-string v1, "AFTER_ACTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleTriggerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->AFTER_ACTION:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    const-string v1, "ON_NORMAL_ATTACK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleTriggerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->ON_NORMAL_ATTACK:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    const-string v1, "BEFORE_NORMAL_DAMAGE_TAKEN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleTriggerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->BEFORE_NORMAL_DAMAGE_TAKEN:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    const-string v1, "AFTER_NORMAL_DAMAGE_TAKEN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleTriggerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->AFTER_NORMAL_DAMAGE_TAKEN:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    const-string v1, "AFTER_SKILL_DAMAGE_TAKEN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleTriggerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->AFTER_SKILL_DAMAGE_TAKEN:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    const-string v1, "ON_DEATH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleTriggerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->ON_DEATH:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    const-string v1, "AFTER_DEATH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleTriggerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->AFTER_DEATH:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    const-string v1, "AFTER_KILL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleTriggerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->AFTER_KILL:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    const-string v1, "PASSIVE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleTriggerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->PASSIVE:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    const-string v1, "MATCHING_PHASE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleTriggerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->MATCHING_PHASE:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleTriggerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->UNKNOWN:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    invoke-static {}, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->$values()[Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->$VALUES:[Lcom/sgscq/vpn/battle/BattleTriggerPhase;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleTriggerPhase;
    .locals 1

    const-class v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    return-object p0
.end method

.method public static values()[Lcom/sgscq/vpn/battle/BattleTriggerPhase;
    .locals 1

    sget-object v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->$VALUES:[Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    invoke-virtual {v0}, [Lcom/sgscq/vpn/battle/BattleTriggerPhase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    return-object v0
.end method
