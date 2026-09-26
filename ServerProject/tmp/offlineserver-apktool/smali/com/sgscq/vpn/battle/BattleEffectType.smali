.class public final enum Lcom/sgscq/vpn/battle/BattleEffectType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sgscq/vpn/battle/BattleEffectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sgscq/vpn/battle/BattleEffectType;

.field public static final enum ATTRIBUTE_DAMAGE:Lcom/sgscq/vpn/battle/BattleEffectType;

.field public static final enum ATTRIBUTE_GAIN:Lcom/sgscq/vpn/battle/BattleEffectType;

.field public static final enum ATTRIBUTE_STEAL:Lcom/sgscq/vpn/battle/BattleEffectType;

.field public static final enum COPY_SKILL:Lcom/sgscq/vpn/battle/BattleEffectType;

.field public static final enum COUNTER_DAMAGE:Lcom/sgscq/vpn/battle/BattleEffectType;

.field public static final enum EXTRA_NORMAL_ATTACK:Lcom/sgscq/vpn/battle/BattleEffectType;

.field public static final enum HEAL:Lcom/sgscq/vpn/battle/BattleEffectType;

.field public static final enum HEAL_REDUCTION:Lcom/sgscq/vpn/battle/BattleEffectType;

.field public static final enum IMMEDIATE_ACTION:Lcom/sgscq/vpn/battle/BattleEffectType;

.field public static final enum IMMUNE_DAMAGE:Lcom/sgscq/vpn/battle/BattleEffectType;

.field public static final enum MARK:Lcom/sgscq/vpn/battle/BattleEffectType;

.field public static final enum NEEDS_MANUAL_IMPLEMENTATION:Lcom/sgscq/vpn/battle/BattleEffectType;

.field public static final enum NEXT_DAMAGE_BONUS:Lcom/sgscq/vpn/battle/BattleEffectType;

.field public static final enum NEXT_DAMAGE_DEALT_REDUCTION:Lcom/sgscq/vpn/battle/BattleEffectType;

.field public static final enum NEXT_DAMAGE_TAKEN_BONUS:Lcom/sgscq/vpn/battle/BattleEffectType;

.field public static final enum NEXT_DAMAGE_TAKEN_REDUCTION:Lcom/sgscq/vpn/battle/BattleEffectType;

.field public static final enum REVIVE:Lcom/sgscq/vpn/battle/BattleEffectType;

.field public static final enum SEAL:Lcom/sgscq/vpn/battle/BattleEffectType;

.field public static final enum STUN:Lcom/sgscq/vpn/battle/BattleEffectType;


# direct methods
.method private static synthetic $values()[Lcom/sgscq/vpn/battle/BattleEffectType;
    .locals 19

    sget-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->ATTRIBUTE_DAMAGE:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v1, Lcom/sgscq/vpn/battle/BattleEffectType;->HEAL:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v2, Lcom/sgscq/vpn/battle/BattleEffectType;->NEXT_DAMAGE_BONUS:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v3, Lcom/sgscq/vpn/battle/BattleEffectType;->NEXT_DAMAGE_DEALT_REDUCTION:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v4, Lcom/sgscq/vpn/battle/BattleEffectType;->NEXT_DAMAGE_TAKEN_BONUS:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v5, Lcom/sgscq/vpn/battle/BattleEffectType;->NEXT_DAMAGE_TAKEN_REDUCTION:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v6, Lcom/sgscq/vpn/battle/BattleEffectType;->SEAL:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v7, Lcom/sgscq/vpn/battle/BattleEffectType;->STUN:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v8, Lcom/sgscq/vpn/battle/BattleEffectType;->HEAL_REDUCTION:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v9, Lcom/sgscq/vpn/battle/BattleEffectType;->ATTRIBUTE_GAIN:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v10, Lcom/sgscq/vpn/battle/BattleEffectType;->ATTRIBUTE_STEAL:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v11, Lcom/sgscq/vpn/battle/BattleEffectType;->REVIVE:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v12, Lcom/sgscq/vpn/battle/BattleEffectType;->IMMUNE_DAMAGE:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v13, Lcom/sgscq/vpn/battle/BattleEffectType;->COUNTER_DAMAGE:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v14, Lcom/sgscq/vpn/battle/BattleEffectType;->IMMEDIATE_ACTION:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v15, Lcom/sgscq/vpn/battle/BattleEffectType;->EXTRA_NORMAL_ATTACK:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v16, Lcom/sgscq/vpn/battle/BattleEffectType;->MARK:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v17, Lcom/sgscq/vpn/battle/BattleEffectType;->COPY_SKILL:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v18, Lcom/sgscq/vpn/battle/BattleEffectType;->NEEDS_MANUAL_IMPLEMENTATION:Lcom/sgscq/vpn/battle/BattleEffectType;

    filled-new-array/range {v0 .. v18}, [Lcom/sgscq/vpn/battle/BattleEffectType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectType;

    const-string v1, "ATTRIBUTE_DAMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->ATTRIBUTE_DAMAGE:Lcom/sgscq/vpn/battle/BattleEffectType;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectType;

    const-string v1, "HEAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->HEAL:Lcom/sgscq/vpn/battle/BattleEffectType;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectType;

    const-string v1, "NEXT_DAMAGE_BONUS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->NEXT_DAMAGE_BONUS:Lcom/sgscq/vpn/battle/BattleEffectType;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectType;

    const-string v1, "NEXT_DAMAGE_DEALT_REDUCTION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->NEXT_DAMAGE_DEALT_REDUCTION:Lcom/sgscq/vpn/battle/BattleEffectType;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectType;

    const-string v1, "NEXT_DAMAGE_TAKEN_BONUS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->NEXT_DAMAGE_TAKEN_BONUS:Lcom/sgscq/vpn/battle/BattleEffectType;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectType;

    const-string v1, "NEXT_DAMAGE_TAKEN_REDUCTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->NEXT_DAMAGE_TAKEN_REDUCTION:Lcom/sgscq/vpn/battle/BattleEffectType;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectType;

    const-string v1, "SEAL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->SEAL:Lcom/sgscq/vpn/battle/BattleEffectType;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectType;

    const-string v1, "STUN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->STUN:Lcom/sgscq/vpn/battle/BattleEffectType;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectType;

    const-string v1, "HEAL_REDUCTION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->HEAL_REDUCTION:Lcom/sgscq/vpn/battle/BattleEffectType;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectType;

    const-string v1, "ATTRIBUTE_GAIN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->ATTRIBUTE_GAIN:Lcom/sgscq/vpn/battle/BattleEffectType;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectType;

    const-string v1, "ATTRIBUTE_STEAL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->ATTRIBUTE_STEAL:Lcom/sgscq/vpn/battle/BattleEffectType;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectType;

    const-string v1, "REVIVE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->REVIVE:Lcom/sgscq/vpn/battle/BattleEffectType;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectType;

    const-string v1, "IMMUNE_DAMAGE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->IMMUNE_DAMAGE:Lcom/sgscq/vpn/battle/BattleEffectType;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectType;

    const-string v1, "COUNTER_DAMAGE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->COUNTER_DAMAGE:Lcom/sgscq/vpn/battle/BattleEffectType;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectType;

    const-string v1, "IMMEDIATE_ACTION"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->IMMEDIATE_ACTION:Lcom/sgscq/vpn/battle/BattleEffectType;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectType;

    const-string v1, "EXTRA_NORMAL_ATTACK"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->EXTRA_NORMAL_ATTACK:Lcom/sgscq/vpn/battle/BattleEffectType;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectType;

    const-string v1, "MARK"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->MARK:Lcom/sgscq/vpn/battle/BattleEffectType;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectType;

    const-string v1, "COPY_SKILL"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->COPY_SKILL:Lcom/sgscq/vpn/battle/BattleEffectType;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectType;

    const-string v1, "NEEDS_MANUAL_IMPLEMENTATION"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->NEEDS_MANUAL_IMPLEMENTATION:Lcom/sgscq/vpn/battle/BattleEffectType;

    invoke-static {}, Lcom/sgscq/vpn/battle/BattleEffectType;->$values()[Lcom/sgscq/vpn/battle/BattleEffectType;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->$VALUES:[Lcom/sgscq/vpn/battle/BattleEffectType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleEffectType;
    .locals 1

    const-class v0, Lcom/sgscq/vpn/battle/BattleEffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sgscq/vpn/battle/BattleEffectType;

    return-object p0
.end method

.method public static values()[Lcom/sgscq/vpn/battle/BattleEffectType;
    .locals 1

    sget-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->$VALUES:[Lcom/sgscq/vpn/battle/BattleEffectType;

    invoke-virtual {v0}, [Lcom/sgscq/vpn/battle/BattleEffectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sgscq/vpn/battle/BattleEffectType;

    return-object v0
.end method
