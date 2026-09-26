.class final Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field category:Ljava/lang/String;

.field enabled:Z

.field fateEquipment:Ljava/util/List;
    .annotation runtime Lb/b;
        value = "fate_equipment"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawFateEquipment;",
            ">;"
        }
    .end annotation
.end field

.field fateGiftsEnabled:Z
    .annotation runtime Lb/b;
        value = "fate_gifts_enabled"
    .end annotation
.end field

.field generalId:Ljava/lang/String;
    .annotation runtime Lb/b;
        value = "general_id"
    .end annotation
.end field

.field generalName:Ljava/lang/String;
    .annotation runtime Lb/b;
        value = "general_name"
    .end annotation
.end field

.field minVip:I
    .annotation runtime Lb/b;
        value = "min_vip"
    .end annotation
.end field

.field order:I

.field soul30Price:Ljava/lang/Integer;
    .annotation runtime Lb/b;
        value = "soul_30_price"
    .end annotation
.end field

.field soulProduct:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSoulProduct;
    .annotation runtime Lb/b;
        value = "soul_product"
    .end annotation
.end field

.field surrenderSoulRewards:Ljava/util/List;
    .annotation runtime Lb/b;
        value = "surrender_soul_rewards"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSurrenderSoulReward;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
