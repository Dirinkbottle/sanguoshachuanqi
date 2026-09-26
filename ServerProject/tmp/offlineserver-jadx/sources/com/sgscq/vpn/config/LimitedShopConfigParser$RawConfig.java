package com.sgscq.vpn.config;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class LimitedShopConfigParser$RawConfig {

    @b.b("config_id")
    String configId;
    LimitedShopConfigParser$RawCurrency currency;

    @b.b("discount_campaigns")
    List<LimitedShopConfigParser$RawDiscountCampaign> discountCampaigns;

    @b.b("general_catalog")
    LimitedShopConfigParser$RawGeneralCatalog generalCatalog;
    LimitedShopConfigParser$RawPricing pricing;

    @b.b("regular_schedule")
    LimitedShopConfigParser$RawRegularSchedule regularSchedule;

    @b.b("schema_version")
    int schemaVersion;

    @b.b("special_schedule")
    LimitedShopConfigParser$RawSpecialSchedule specialSchedule;
    String timezone;

    private LimitedShopConfigParser$RawConfig() {
    }
}
