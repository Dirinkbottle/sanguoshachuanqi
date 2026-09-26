.class final Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawDiscountCampaign;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field afterEnd:Ljava/lang/String;
    .annotation runtime Lb/b;
        value = "after_end"
    .end annotation
.end field

.field campaignId:Ljava/lang/String;
    .annotation runtime Lb/b;
        value = "campaign_id"
    .end annotation
.end field

.field discountPercent:I
    .annotation runtime Lb/b;
        value = "discount_percent"
    .end annotation
.end field

.field enabled:Z

.field endAt:Ljava/lang/String;
    .annotation runtime Lb/b;
        value = "end_at"
    .end annotation
.end field

.field priceRounding:Ljava/lang/String;
    .annotation runtime Lb/b;
        value = "price_rounding"
    .end annotation
.end field

.field scopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field startAt:Ljava/lang/String;
    .annotation runtime Lb/b;
        value = "start_at"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
