.class final Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPricing;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field equipmentTiers:Ljava/util/Map;
    .annotation runtime Lb/b;
        value = "equipment_tiers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPriceTier;",
            ">;"
        }
    .end annotation
.end field

.field fateSkillGift:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawFateSkillGift;
    .annotation runtime Lb/b;
        value = "fate_skill_gift"
    .end annotation
.end field

.field mountTiers:Ljava/util/Map;
    .annotation runtime Lb/b;
        value = "mount_tiers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPriceTier;",
            ">;"
        }
    .end annotation
.end field

.field purchaseLimits:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPurchaseLimits;
    .annotation runtime Lb/b;
        value = "purchase_limits"
    .end annotation
.end field

.field wholeItemRule:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawWholeItemRule;
    .annotation runtime Lb/b;
        value = "whole_item_rule"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
