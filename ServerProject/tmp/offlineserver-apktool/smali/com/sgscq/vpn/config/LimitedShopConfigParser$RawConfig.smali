.class final Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field configId:Ljava/lang/String;
    .annotation runtime Lb/b;
        value = "config_id"
    .end annotation
.end field

.field currency:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawCurrency;

.field discountCampaigns:Ljava/util/List;
    .annotation runtime Lb/b;
        value = "discount_campaigns"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawDiscountCampaign;",
            ">;"
        }
    .end annotation
.end field

.field generalCatalog:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneralCatalog;
    .annotation runtime Lb/b;
        value = "general_catalog"
    .end annotation
.end field

.field pricing:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPricing;

.field regularSchedule:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawRegularSchedule;
    .annotation runtime Lb/b;
        value = "regular_schedule"
    .end annotation
.end field

.field schemaVersion:I
    .annotation runtime Lb/b;
        value = "schema_version"
    .end annotation
.end field

.field specialSchedule:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSpecialSchedule;
    .annotation runtime Lb/b;
        value = "special_schedule"
    .end annotation
.end field

.field timezone:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
