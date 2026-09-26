.class public final enum Lcom/sgscq/battle/api/BattleRuntimeStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sgscq/battle/api/BattleRuntimeStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sgscq/battle/api/BattleRuntimeStatus;

.field public static final enum AUTH_NETWORK_ERROR:Lcom/sgscq/battle/api/BattleRuntimeStatus;

.field public static final enum AUTH_REQUIRED:Lcom/sgscq/battle/api/BattleRuntimeStatus;

.field public static final enum INTEGRITY_REJECTED:Lcom/sgscq/battle/api/BattleRuntimeStatus;

.field public static final enum MODULE_DECRYPT_FAILED:Lcom/sgscq/battle/api/BattleRuntimeStatus;

.field public static final enum MODULE_LOAD_FAILED:Lcom/sgscq/battle/api/BattleRuntimeStatus;

.field public static final enum READY:Lcom/sgscq/battle/api/BattleRuntimeStatus;

.field public static final enum UNSUPPORTED_ANDROID:Lcom/sgscq/battle/api/BattleRuntimeStatus;

.field public static final enum VERSION_REVOKED:Lcom/sgscq/battle/api/BattleRuntimeStatus;


# direct methods
.method private static synthetic $values()[Lcom/sgscq/battle/api/BattleRuntimeStatus;
    .locals 8

    sget-object v0, Lcom/sgscq/battle/api/BattleRuntimeStatus;->READY:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    sget-object v1, Lcom/sgscq/battle/api/BattleRuntimeStatus;->AUTH_REQUIRED:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    sget-object v2, Lcom/sgscq/battle/api/BattleRuntimeStatus;->UNSUPPORTED_ANDROID:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    sget-object v3, Lcom/sgscq/battle/api/BattleRuntimeStatus;->AUTH_NETWORK_ERROR:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    sget-object v4, Lcom/sgscq/battle/api/BattleRuntimeStatus;->INTEGRITY_REJECTED:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    sget-object v5, Lcom/sgscq/battle/api/BattleRuntimeStatus;->MODULE_DECRYPT_FAILED:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    sget-object v6, Lcom/sgscq/battle/api/BattleRuntimeStatus;->MODULE_LOAD_FAILED:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    sget-object v7, Lcom/sgscq/battle/api/BattleRuntimeStatus;->VERSION_REVOKED:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    filled-new-array/range {v0 .. v7}, [Lcom/sgscq/battle/api/BattleRuntimeStatus;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sgscq/battle/api/BattleRuntimeStatus;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sgscq/battle/api/BattleRuntimeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/battle/api/BattleRuntimeStatus;->READY:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    new-instance v0, Lcom/sgscq/battle/api/BattleRuntimeStatus;

    const-string v1, "AUTH_REQUIRED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sgscq/battle/api/BattleRuntimeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/battle/api/BattleRuntimeStatus;->AUTH_REQUIRED:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    new-instance v0, Lcom/sgscq/battle/api/BattleRuntimeStatus;

    const-string v1, "UNSUPPORTED_ANDROID"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sgscq/battle/api/BattleRuntimeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/battle/api/BattleRuntimeStatus;->UNSUPPORTED_ANDROID:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    new-instance v0, Lcom/sgscq/battle/api/BattleRuntimeStatus;

    const-string v1, "AUTH_NETWORK_ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sgscq/battle/api/BattleRuntimeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/battle/api/BattleRuntimeStatus;->AUTH_NETWORK_ERROR:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    new-instance v0, Lcom/sgscq/battle/api/BattleRuntimeStatus;

    const-string v1, "INTEGRITY_REJECTED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sgscq/battle/api/BattleRuntimeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/battle/api/BattleRuntimeStatus;->INTEGRITY_REJECTED:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    new-instance v0, Lcom/sgscq/battle/api/BattleRuntimeStatus;

    const-string v1, "MODULE_DECRYPT_FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sgscq/battle/api/BattleRuntimeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/battle/api/BattleRuntimeStatus;->MODULE_DECRYPT_FAILED:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    new-instance v0, Lcom/sgscq/battle/api/BattleRuntimeStatus;

    const-string v1, "MODULE_LOAD_FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sgscq/battle/api/BattleRuntimeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/battle/api/BattleRuntimeStatus;->MODULE_LOAD_FAILED:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    new-instance v0, Lcom/sgscq/battle/api/BattleRuntimeStatus;

    const-string v1, "VERSION_REVOKED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sgscq/battle/api/BattleRuntimeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sgscq/battle/api/BattleRuntimeStatus;->VERSION_REVOKED:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    invoke-static {}, Lcom/sgscq/battle/api/BattleRuntimeStatus;->$values()[Lcom/sgscq/battle/api/BattleRuntimeStatus;

    move-result-object v0

    sput-object v0, Lcom/sgscq/battle/api/BattleRuntimeStatus;->$VALUES:[Lcom/sgscq/battle/api/BattleRuntimeStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sgscq/battle/api/BattleRuntimeStatus;
    .locals 1

    const-class v0, Lcom/sgscq/battle/api/BattleRuntimeStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sgscq/battle/api/BattleRuntimeStatus;

    return-object p0
.end method

.method public static values()[Lcom/sgscq/battle/api/BattleRuntimeStatus;
    .locals 1

    sget-object v0, Lcom/sgscq/battle/api/BattleRuntimeStatus;->$VALUES:[Lcom/sgscq/battle/api/BattleRuntimeStatus;

    invoke-virtual {v0}, [Lcom/sgscq/battle/api/BattleRuntimeStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sgscq/battle/api/BattleRuntimeStatus;

    return-object v0
.end method
