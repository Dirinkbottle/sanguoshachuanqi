.class synthetic Lcom/sgscq/vpn/battle/BattleUnit$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sgscq/vpn/battle/BattleUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sgscq$vpn$battle$BattleAttribute:[I

.field static final synthetic $SwitchMap$com$sgscq$vpn$battle$BattleState:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/sgscq/vpn/battle/BattleState;->values()[Lcom/sgscq/vpn/battle/BattleState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sgscq/vpn/battle/BattleUnit$1;->$SwitchMap$com$sgscq$vpn$battle$BattleState:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sgscq/vpn/battle/BattleState;->NEXT_ATTACK_BONUS:Lcom/sgscq/vpn/battle/BattleState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/sgscq/vpn/battle/BattleUnit$1;->$SwitchMap$com$sgscq$vpn$battle$BattleState:[I

    sget-object v3, Lcom/sgscq/vpn/battle/BattleState;->NEXT_DEFENSE_BONUS:Lcom/sgscq/vpn/battle/BattleState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/sgscq/vpn/battle/BattleUnit$1;->$SwitchMap$com$sgscq$vpn$battle$BattleState:[I

    sget-object v4, Lcom/sgscq/vpn/battle/BattleState;->NEXT_DEFENSE_REDUCTION:Lcom/sgscq/vpn/battle/BattleState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/sgscq/vpn/battle/BattleUnit$1;->$SwitchMap$com$sgscq$vpn$battle$BattleState:[I

    sget-object v5, Lcom/sgscq/vpn/battle/BattleState;->TAUNT_DAMAGE_TAKEN_REDUCTION:Lcom/sgscq/vpn/battle/BattleState;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lcom/sgscq/vpn/battle/BattleAttribute;->values()[Lcom/sgscq/vpn/battle/BattleAttribute;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sgscq/vpn/battle/BattleUnit$1;->$SwitchMap$com$sgscq$vpn$battle$BattleAttribute:[I

    :try_start_4
    sget-object v5, Lcom/sgscq/vpn/battle/BattleAttribute;->HP:Lcom/sgscq/vpn/battle/BattleAttribute;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/sgscq/vpn/battle/BattleUnit$1;->$SwitchMap$com$sgscq$vpn$battle$BattleAttribute:[I

    sget-object v4, Lcom/sgscq/vpn/battle/BattleAttribute;->ATTACK:Lcom/sgscq/vpn/battle/BattleAttribute;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/sgscq/vpn/battle/BattleUnit$1;->$SwitchMap$com$sgscq$vpn$battle$BattleAttribute:[I

    sget-object v1, Lcom/sgscq/vpn/battle/BattleAttribute;->DEFENSE:Lcom/sgscq/vpn/battle/BattleAttribute;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/sgscq/vpn/battle/BattleUnit$1;->$SwitchMap$com$sgscq$vpn$battle$BattleAttribute:[I

    sget-object v1, Lcom/sgscq/vpn/battle/BattleAttribute;->WISDOM:Lcom/sgscq/vpn/battle/BattleAttribute;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
