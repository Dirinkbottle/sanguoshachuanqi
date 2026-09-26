.class public final enum Lcom/sgscq/vpn/battle/BattleEffectTarget;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sgscq/vpn/battle/BattleEffectTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field public static final enum ACTIVE_ENEMY_AND_BACKUP:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field public static final enum ACTIVE_ENEMY_AND_TWO_BACKUPS:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field public static final enum ALL_ACTIVE_ALLIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field public static final enum ALL_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field public static final enum ATTACKER:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field public static final enum ENEMY_BACKUPS:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field public static final enum FIRST_TWO_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field public static final enum FIRST_TWO_ACTIVE_MALE_ENEMIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field public static final enum HIGHEST_ALL_STATS_ACTIVE_ALLY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field public static final enum HIGHEST_ATTACK_ACTIVE_ALLY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field public static final enum HIGHEST_ATTACK_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field public static final enum HIGHEST_DEFENSE_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field public static final enum HIGHEST_HP_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field public static final enum HIGHEST_WISDOM_ACTIVE_ALLY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field public static final enum LOWEST_DEFENSE_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field public static final enum LOWEST_HP_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field public static final enum LOWEST_HP_RATE_ALLY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field public static final enum MIXED_TARGETS:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field public static final enum NORMAL_COUNTERPART:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field public static final enum OTHER_TWO_ACTIVE_ALLIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field public static final enum RANDOM_ACTIVE_ENEMIES_BY_BACKUP_COUNT:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field public static final enum RANDOM_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field public static final enum RANDOM_TWO_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field public static final enum SELF:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field public static final enum UNKNOWN:Lcom/sgscq/vpn/battle/BattleEffectTarget;


# direct methods
.method private static synthetic $values()[Lcom/sgscq/vpn/battle/BattleEffectTarget;
    .locals 25

    sget-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->SELF:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    sget-object v1, Lcom/sgscq/vpn/battle/BattleEffectTarget;->NORMAL_COUNTERPART:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    sget-object v2, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ALL_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    sget-object v3, Lcom/sgscq/vpn/battle/BattleEffectTarget;->RANDOM_TWO_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    sget-object v4, Lcom/sgscq/vpn/battle/BattleEffectTarget;->FIRST_TWO_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    sget-object v5, Lcom/sgscq/vpn/battle/BattleEffectTarget;->FIRST_TWO_ACTIVE_MALE_ENEMIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    sget-object v6, Lcom/sgscq/vpn/battle/BattleEffectTarget;->LOWEST_HP_RATE_ALLY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    sget-object v7, Lcom/sgscq/vpn/battle/BattleEffectTarget;->LOWEST_HP_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    sget-object v8, Lcom/sgscq/vpn/battle/BattleEffectTarget;->HIGHEST_HP_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    sget-object v9, Lcom/sgscq/vpn/battle/BattleEffectTarget;->LOWEST_DEFENSE_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    sget-object v10, Lcom/sgscq/vpn/battle/BattleEffectTarget;->HIGHEST_DEFENSE_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    sget-object v11, Lcom/sgscq/vpn/battle/BattleEffectTarget;->HIGHEST_ATTACK_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    sget-object v12, Lcom/sgscq/vpn/battle/BattleEffectTarget;->HIGHEST_WISDOM_ACTIVE_ALLY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    sget-object v13, Lcom/sgscq/vpn/battle/BattleEffectTarget;->HIGHEST_ATTACK_ACTIVE_ALLY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    sget-object v14, Lcom/sgscq/vpn/battle/BattleEffectTarget;->HIGHEST_ALL_STATS_ACTIVE_ALLY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    sget-object v15, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ACTIVE_ENEMY_AND_BACKUP:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    sget-object v16, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ACTIVE_ENEMY_AND_TWO_BACKUPS:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    sget-object v17, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ENEMY_BACKUPS:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    sget-object v18, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ALL_ACTIVE_ALLIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    sget-object v19, Lcom/sgscq/vpn/battle/BattleEffectTarget;->OTHER_TWO_ACTIVE_ALLIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    sget-object v20, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ATTACKER:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    sget-object v21, Lcom/sgscq/vpn/battle/BattleEffectTarget;->RANDOM_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    sget-object v22, Lcom/sgscq/vpn/battle/BattleEffectTarget;->RANDOM_ACTIVE_ENEMIES_BY_BACKUP_COUNT:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    sget-object v23, Lcom/sgscq/vpn/battle/BattleEffectTarget;->MIXED_TARGETS:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    sget-object v24, Lcom/sgscq/vpn/battle/BattleEffectTarget;->UNKNOWN:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    filled-new-array/range {v0 .. v24}, [Lcom/sgscq/vpn/battle/BattleEffectTarget;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const-string v1, "SELF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->SELF:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const-string v1, "NORMAL_COUNTERPART"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->NORMAL_COUNTERPART:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const-string v1, "ALL_ACTIVE_ENEMIES"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ALL_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const-string v1, "RANDOM_TWO_ACTIVE_ENEMIES"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->RANDOM_TWO_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const-string v1, "FIRST_TWO_ACTIVE_ENEMIES"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->FIRST_TWO_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const-string v1, "FIRST_TWO_ACTIVE_MALE_ENEMIES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->FIRST_TWO_ACTIVE_MALE_ENEMIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const-string v1, "LOWEST_HP_RATE_ALLY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->LOWEST_HP_RATE_ALLY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const-string v1, "LOWEST_HP_ACTIVE_ENEMY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->LOWEST_HP_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const-string v1, "HIGHEST_HP_ACTIVE_ENEMY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->HIGHEST_HP_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const-string v1, "LOWEST_DEFENSE_ACTIVE_ENEMY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->LOWEST_DEFENSE_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const-string v1, "HIGHEST_DEFENSE_ACTIVE_ENEMY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->HIGHEST_DEFENSE_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const-string v1, "HIGHEST_ATTACK_ACTIVE_ENEMY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->HIGHEST_ATTACK_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const-string v1, "HIGHEST_WISDOM_ACTIVE_ALLY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->HIGHEST_WISDOM_ACTIVE_ALLY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const-string v1, "HIGHEST_ATTACK_ACTIVE_ALLY"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->HIGHEST_ATTACK_ACTIVE_ALLY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const-string v1, "HIGHEST_ALL_STATS_ACTIVE_ALLY"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->HIGHEST_ALL_STATS_ACTIVE_ALLY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const-string v1, "ACTIVE_ENEMY_AND_BACKUP"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ACTIVE_ENEMY_AND_BACKUP:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const-string v1, "ACTIVE_ENEMY_AND_TWO_BACKUPS"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ACTIVE_ENEMY_AND_TWO_BACKUPS:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const-string v1, "ENEMY_BACKUPS"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ENEMY_BACKUPS:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const-string v1, "ALL_ACTIVE_ALLIES"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ALL_ACTIVE_ALLIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const-string v1, "OTHER_TWO_ACTIVE_ALLIES"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->OTHER_TWO_ACTIVE_ALLIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const-string v1, "ATTACKER"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ATTACKER:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const-string v1, "RANDOM_ACTIVE_ENEMY"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->RANDOM_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const-string v1, "RANDOM_ACTIVE_ENEMIES_BY_BACKUP_COUNT"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->RANDOM_ACTIVE_ENEMIES_BY_BACKUP_COUNT:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const-string v1, "MIXED_TARGETS"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->MIXED_TARGETS:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    new-instance v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleEffectTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->UNKNOWN:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    invoke-static {}, Lcom/sgscq/vpn/battle/BattleEffectTarget;->$values()[Lcom/sgscq/vpn/battle/BattleEffectTarget;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->$VALUES:[Lcom/sgscq/vpn/battle/BattleEffectTarget;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleEffectTarget;
    .locals 1

    const-class v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0
.end method

.method public static values()[Lcom/sgscq/vpn/battle/BattleEffectTarget;
    .locals 1

    sget-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->$VALUES:[Lcom/sgscq/vpn/battle/BattleEffectTarget;

    invoke-virtual {v0}, [Lcom/sgscq/vpn/battle/BattleEffectTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object v0
.end method
