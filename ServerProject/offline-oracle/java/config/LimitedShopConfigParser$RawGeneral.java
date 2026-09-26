package com.sgscq.vpn.config;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class LimitedShopConfigParser$RawGeneral {
    String category;
    boolean enabled;

    @b.b("fate_equipment")
    List<LimitedShopConfigParser$RawFateEquipment> fateEquipment;

    @b.b("fate_gifts_enabled")
    boolean fateGiftsEnabled;

    @b.b("general_id")
    String generalId;

    @b.b("general_name")
    String generalName;

    @b.b("min_vip")
    int minVip;
    int order;

    @b.b("soul_30_price")
    Integer soul30Price;

    @b.b("soul_product")
    LimitedShopConfigParser$RawSoulProduct soulProduct;

    @b.b("surrender_soul_rewards")
    List<LimitedShopConfigParser$RawSurrenderSoulReward> surrenderSoulRewards;

    private LimitedShopConfigParser$RawGeneral() {
    }
}
