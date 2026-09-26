package com.sgscq.vpn.config;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class LimitedShopConfigParser$RawPricing {

    @b.b("equipment_tiers")
    Map<String, LimitedShopConfigParser$RawPriceTier> equipmentTiers;

    @b.b("fate_skill_gift")
    LimitedShopConfigParser$RawFateSkillGift fateSkillGift;

    @b.b("mount_tiers")
    Map<String, LimitedShopConfigParser$RawPriceTier> mountTiers;

    @b.b("purchase_limits")
    LimitedShopConfigParser$RawPurchaseLimits purchaseLimits;

    @b.b("whole_item_rule")
    LimitedShopConfigParser$RawWholeItemRule wholeItemRule;

    private LimitedShopConfigParser$RawPricing() {
    }
}
