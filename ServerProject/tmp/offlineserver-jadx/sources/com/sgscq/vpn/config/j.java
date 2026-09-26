package com.sgscq.vpn.config;

import a.o;
import a.u;
import com.sgscq.vpn.cloud.e0;
import com.sgscq.vpn.cloud.q;
import com.sgscq.vpn.t;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashSet f585b = new HashSet(Arrays.asList("regular", "special"));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final HashSet f586c = new HashSet(Arrays.asList("equipment", "mount"));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final HashSet f587d = new HashSet(Arrays.asList("base", "evolution"));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final HashSet f588e = new HashSet(Arrays.asList("special_soul_30", "fate_equipment_box", "fate_equipment_whole", "fate_skill_gift"));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final o f589a = new o();

    public static q a(LimitedShopConfigParser$RawPlannedRotation limitedShopConfigParser$RawPlannedRotation, m.e eVar, String str, int i2, boolean z, String str2) {
        LimitedShopConfigParser$RawPlannedRotation limitedShopConfigParser$RawPlannedRotation2 = limitedShopConfigParser$RawPlannedRotation;
        Set set = null;
        if (limitedShopConfigParser$RawPlannedRotation2 == null) {
            return null;
        }
        Date dateF = f(limitedShopConfigParser$RawPlannedRotation2.startAt, str2.concat(".start_at"));
        List<List<String>> list = limitedShopConfigParser$RawPlannedRotation2.rounds;
        g(str2.concat(".rounds"), "must not be empty", (list == null || list.isEmpty()) ? false : true);
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        int i3 = 0;
        while (i3 < limitedShopConfigParser$RawPlannedRotation2.rounds.size()) {
            List<String> list2 = limitedShopConfigParser$RawPlannedRotation2.rounds.get(i3);
            String str3 = str2 + ".rounds[" + i3 + "]";
            g(str3, "must contain exactly " + i2 + " general_ids", list2 != null && list2.size() == i2);
            ArrayList arrayList2 = new ArrayList();
            HashSet<String> hashSet2 = new HashSet();
            for (String str4 : list2) {
                i(str4, str3 + ".general_id");
                g(str3, "duplicate general_id " + str4, hashSet2.add(str4));
                c cVar = (c) ((Map) eVar.f1807d).get(str4);
                g(str3, "general_id must be enabled " + str + ": " + str4, cVar != null && cVar.f555d && str.equals(cVar.f554c));
                arrayList2.add(str4);
            }
            g(str3, "duplicate round order", hashSet.add(arrayList2));
            if (z && set != null) {
                for (String str5 : hashSet2) {
                    g(str3, "general_id repeats previous round: " + str5, !set.contains(str5));
                }
            }
            arrayList.add(arrayList2);
            i3++;
            limitedShopConfigParser$RawPlannedRotation2 = limitedShopConfigParser$RawPlannedRotation;
            set = hashSet2;
        }
        return new q(1, dateF.getTime(), arrayList);
    }

    public static f b(LimitedShopConfigParser$RawRandomization limitedShopConfigParser$RawRandomization, String str) {
        g(str, "missing object", limitedShopConfigParser$RawRandomization != null);
        g(str.concat(".mode"), "must be deterministic_shuffle", "deterministic_shuffle".equals(limitedShopConfigParser$RawRandomization.mode));
        i(limitedShopConfigParser$RawRandomization.seedNamespace, str.concat(".seed_namespace"));
        return new f(limitedShopConfigParser$RawRandomization.mode, limitedShopConfigParser$RawRandomization.seedNamespace, limitedShopConfigParser$RawRandomization.recentLookback, limitedShopConfigParser$RawRandomization.avoidPreviousWeek);
    }

    public static LinkedHashMap c(Map map, h hVar, String str) {
        g(str, "must not be empty", (map == null || map.isEmpty()) ? false : true);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        HashSet hashSet = new HashSet();
        for (Map.Entry entry : map.entrySet()) {
            i((String) entry.getKey(), str.concat(".key"));
            LimitedShopConfigParser$RawPriceTier limitedShopConfigParser$RawPriceTier = (LimitedShopConfigParser$RawPriceTier) entry.getValue();
            g(str + "." + ((String) entry.getKey()), "missing object", limitedShopConfigParser$RawPriceTier != null);
            int i2 = limitedShopConfigParser$RawPriceTier.qualityOrder;
            g(str + "." + ((String) entry.getKey()) + ".quality_order", "must be positive and unique", i2 > 0 && hashSet.add(Integer.valueOf(i2)));
            g(str + "." + ((String) entry.getKey()) + ".box_price", "must be positive", limitedShopConfigParser$RawPriceTier.boxPrice > 0);
            g(str + "." + ((String) entry.getKey()) + ".whole_price", "whole_price must match configured formula", limitedShopConfigParser$RawPriceTier.wholePrice == BigDecimal.valueOf((long) limitedShopConfigParser$RawPriceTier.boxPrice).multiply(BigDecimal.valueOf((long) hVar.f578c)).multiply(BigDecimal.valueOf((long) hVar.f579d)).divide(BigDecimal.valueOf(100L), 0, RoundingMode.HALF_UP).intValueExact());
            linkedHashMap.put((String) entry.getKey(), new d(limitedShopConfigParser$RawPriceTier.boxPrice, limitedShopConfigParser$RawPriceTier.wholePrice));
        }
        return linkedHashMap;
    }

    public static IllegalArgumentException d(String str, String str2) {
        return new IllegalArgumentException(str + ": " + str2);
    }

    public static Date f(String str, String str2) {
        i(str, str2);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssXXX", Locale.US);
        simpleDateFormat.setLenient(false);
        try {
            return simpleDateFormat.parse(str);
        } catch (ParseException unused) {
            throw d(str2, "invalid timestamp");
        }
    }

    public static void g(String str, String str2, boolean z) {
        if (!z) {
            throw d(str, str2);
        }
    }

    public static void h(String str, int i2) {
        g(str, "must be positive", i2 > 0);
    }

    public static void i(String str, String str2) {
        g(str2, "must not be empty", (str == null || str.trim().isEmpty()) ? false : true);
    }

    /* JADX WARN: Code duplicated, block: B:249:0x0765  */
    /* JADX WARN: Code duplicated, block: B:253:0x078b A[LOOP:7: B:251:0x0785->B:253:0x078b, LOOP_END] */
    /* JADX WARN: Instruction removed from duplicated block: B:253:0x078b, please report this as an issue */
    public final i e(String str) {
        boolean z;
        String str2;
        boolean z2;
        HashSet hashSet;
        g gVar;
        if (str.trim().isEmpty()) {
            throw d("root", "empty JSON");
        }
        try {
            LimitedShopConfigParser$RawConfig limitedShopConfigParser$RawConfig = (LimitedShopConfigParser$RawConfig) this.f589a.d(str, LimitedShopConfigParser$RawConfig.class);
            String str3 = "missing object";
            g("root", "missing object", limitedShopConfigParser$RawConfig != null);
            g("schema_version", "must be 2", limitedShopConfigParser$RawConfig.schemaVersion == 2);
            i(limitedShopConfigParser$RawConfig.configId, "config_id");
            String str4 = limitedShopConfigParser$RawConfig.timezone;
            i(str4, "timezone");
            String[] availableIDs = TimeZone.getAvailableIDs();
            int length = availableIDs.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    z = false;
                    break;
                }
                if (availableIDs[i2].equals(str4)) {
                    z = true;
                    break;
                }
                i2++;
            }
            g("timezone", "unknown timezone", z);
            g("currency", "missing object", limitedShopConfigParser$RawConfig.currency != null);
            i(limitedShopConfigParser$RawConfig.currency.type, "currency.type");
            i(limitedShopConfigParser$RawConfig.currency.name, "currency.name");
            LimitedShopConfigParser$RawPricing limitedShopConfigParser$RawPricing = limitedShopConfigParser$RawConfig.pricing;
            g("pricing", "missing object", limitedShopConfigParser$RawPricing != null);
            g("pricing.fate_skill_gift", "missing object", limitedShopConfigParser$RawPricing.fateSkillGift != null);
            String str5 = "must be positive";
            g("pricing.fate_skill_gift.original_price", "must be positive", limitedShopConfigParser$RawPricing.fateSkillGift.originalPrice > 0);
            g("pricing.whole_item_rule", "missing object", limitedShopConfigParser$RawPricing.wholeItemRule != null);
            g("pricing.whole_item_rule.equivalent_box_count", "must be positive", limitedShopConfigParser$RawPricing.wholeItemRule.equivalentBoxCount > 0);
            int i3 = limitedShopConfigParser$RawPricing.wholeItemRule.pricePercent;
            g("pricing.whole_item_rule.price_percent", "must be within 1..100", i3 > 0 && i3 <= 100);
            String str6 = "half_up";
            g("pricing.whole_item_rule.rounding", "must be half_up", "half_up".equals(limitedShopConfigParser$RawPricing.wholeItemRule.rounding));
            LimitedShopConfigParser$RawWholeItemRule limitedShopConfigParser$RawWholeItemRule = limitedShopConfigParser$RawPricing.wholeItemRule;
            h hVar = new h(limitedShopConfigParser$RawWholeItemRule.equivalentBoxCount, limitedShopConfigParser$RawWholeItemRule.pricePercent, limitedShopConfigParser$RawWholeItemRule.rounding);
            LinkedHashMap linkedHashMapC = c(limitedShopConfigParser$RawPricing.equipmentTiers, hVar, "pricing.equipment_tiers");
            LinkedHashMap linkedHashMapC2 = c(limitedShopConfigParser$RawPricing.mountTiers, hVar, "pricing.mount_tiers");
            g("pricing.purchase_limits", "missing object", limitedShopConfigParser$RawPricing.purchaseLimits != null);
            h("pricing.purchase_limits.regular_fate_box_per_rotation", limitedShopConfigParser$RawPricing.purchaseLimits.regularFateBoxPerRotation);
            h("pricing.purchase_limits.regular_fate_skill_per_rotation", limitedShopConfigParser$RawPricing.purchaseLimits.regularFateSkillPerRotation);
            h("pricing.purchase_limits.special_soul_per_window", limitedShopConfigParser$RawPricing.purchaseLimits.specialSoulPerWindow);
            h("pricing.purchase_limits.special_fate_box_per_window", limitedShopConfigParser$RawPricing.purchaseLimits.specialFateBoxPerWindow);
            h("pricing.purchase_limits.special_whole_equipment_per_window", limitedShopConfigParser$RawPricing.purchaseLimits.specialWholeEquipmentPerWindow);
            h("pricing.purchase_limits.special_fate_skill_per_window", limitedShopConfigParser$RawPricing.purchaseLimits.specialFateSkillPerWindow);
            LimitedShopConfigParser$RawPurchaseLimits limitedShopConfigParser$RawPurchaseLimits = limitedShopConfigParser$RawPricing.purchaseLimits;
            t tVar = new t(new e0(limitedShopConfigParser$RawPricing.fateSkillGift.originalPrice), hVar, linkedHashMapC, linkedHashMapC2, new e(limitedShopConfigParser$RawPurchaseLimits.regularFateBoxPerRotation, limitedShopConfigParser$RawPurchaseLimits.regularFateSkillPerRotation, limitedShopConfigParser$RawPurchaseLimits.specialSoulPerWindow, limitedShopConfigParser$RawPurchaseLimits.specialFateBoxPerWindow, limitedShopConfigParser$RawPurchaseLimits.specialWholeEquipmentPerWindow, limitedShopConfigParser$RawPurchaseLimits.specialFateSkillPerWindow, 0));
            LimitedShopConfigParser$RawGeneralCatalog limitedShopConfigParser$RawGeneralCatalog = limitedShopConfigParser$RawConfig.generalCatalog;
            g("general_catalog", "missing object", limitedShopConfigParser$RawGeneralCatalog != null);
            g("general_catalog.override_mode", "must be replace_if_valid", "replace_if_valid".equals(limitedShopConfigParser$RawGeneralCatalog.overrideMode));
            List<LimitedShopConfigParser$RawGeneral> list = limitedShopConfigParser$RawGeneralCatalog.generals;
            String str7 = "general_catalog.generals";
            g("general_catalog.generals", "must not be empty", (list == null || list.isEmpty()) ? false : true);
            HashSet hashSet2 = new HashSet();
            HashSet hashSet3 = new HashSet();
            ArrayList arrayList = new ArrayList();
            Iterator<LimitedShopConfigParser$RawGeneral> it = limitedShopConfigParser$RawGeneralCatalog.generals.iterator();
            while (it.hasNext()) {
                LimitedShopConfigParser$RawGeneral next = it.next();
                g(str7, "contains null", next != null);
                String str8 = str7;
                String str9 = "general " + next.generalId;
                String str10 = next.generalId;
                Iterator<LimitedShopConfigParser$RawGeneral> it2 = it;
                StringBuilder sb = new StringBuilder();
                sb.append(str9);
                String str11 = str6;
                sb.append(".general_id");
                i(str10, sb.toString());
                c.a.w(str9, ".general_id", "duplicate general_id", hashSet2.add(next.generalId));
                int i4 = next.order;
                HashSet hashSet4 = hashSet2;
                c.a.w(str9, ".order", "must be positive and unique", i4 > 0 && hashSet3.add(Integer.valueOf(i4)));
                i(next.generalName, str9 + ".general_name");
                HashSet hashSet5 = hashSet3;
                c.a.w(str9, ".category", "unsupported category", f585b.contains(next.category));
                c.a.w(str9, ".min_vip", "must not be negative", next.minVip >= 0);
                Integer num = next.soul30Price;
                int iIntValue = num == null ? 0 : num.intValue();
                LimitedShopConfigParser$RawSoulProduct limitedShopConfigParser$RawSoulProduct = next.soulProduct;
                if (limitedShopConfigParser$RawSoulProduct != null) {
                    i(limitedShopConfigParser$RawSoulProduct.displayItemId, str9 + ".soul_product.display_item_id");
                    c.a.w(str9, ".soul_product.reward_type", "must be general_soul", "general_soul".equals(limitedShopConfigParser$RawSoulProduct.rewardType));
                    c.a.w(str9, ".soul_product.reward_id", "reward_id must match general_id", next.generalId.equals(limitedShopConfigParser$RawSoulProduct.rewardId));
                    g(str9 + ".soul_product.reward_count", "must be 30", limitedShopConfigParser$RawSoulProduct.rewardCount == 30);
                    gVar = new g(limitedShopConfigParser$RawSoulProduct.rewardCount, limitedShopConfigParser$RawSoulProduct.displayItemId, limitedShopConfigParser$RawSoulProduct.rewardId);
                } else {
                    gVar = null;
                }
                g gVar2 = gVar;
                if ("special".equals(next.category) && next.enabled) {
                    c.a.w(str9, ".soul_30_price", str5, iIntValue > 0);
                    c.a.w(str9, ".soul_product", str3, gVar2 != null);
                } else {
                    c.a.w(str9, ".soul_30_price", "must not be negative", iIntValue >= 0);
                }
                ArrayList arrayList2 = new ArrayList();
                if (next.fateEquipment != null) {
                    HashSet hashSet6 = new HashSet();
                    Iterator<LimitedShopConfigParser$RawFateEquipment> it3 = next.fateEquipment.iterator();
                    while (it3.hasNext()) {
                        Iterator<LimitedShopConfigParser$RawFateEquipment> it4 = it3;
                        LimitedShopConfigParser$RawFateEquipment next2 = it3.next();
                        String str12 = str3;
                        c.a.w(str9, ".fate_equipment", "contains null", next2 != null);
                        String str13 = next2.equipmentId;
                        ArrayList arrayList3 = arrayList;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(str9);
                        String str14 = str5;
                        sb2.append(".fate_equipment.equipment_id");
                        i(str13, sb2.toString());
                        c.a.w(str9, ".fate_equipment.equipment_id", "duplicate equipment_id", hashSet6.add(next2.equipmentId));
                        i(next2.equipmentName, str9 + ".fate_equipment.equipment_name");
                        c.a.w(str9, ".fate_equipment.category", "unsupported category", f586c.contains(next2.category));
                        i(next2.priceTier, str9 + ".fate_equipment.price_tier");
                        c.a.w(str9, ".fate_equipment.price_tier", "unknown price_tier", ((Map) ("mount".equals(next2.category) ? tVar.f1374d : tVar.f1373c)).containsKey(next2.priceTier));
                        i(next2.displayBoxItemId, str9 + ".fate_equipment.display_box_item_id");
                        arrayList2.add(new b(next2.equipmentId, next2.equipmentName, next2.category, next2.priceTier));
                        hashSet6 = hashSet6;
                        it3 = it4;
                        str3 = str12;
                        arrayList = arrayList3;
                        str5 = str14;
                    }
                }
                String str15 = str3;
                String str16 = str5;
                ArrayList arrayList4 = arrayList;
                if ("special".equals(next.category) && next.enabled && next.fateGiftsEnabled) {
                    c.a.w(str9, ".fate_equipment", "must not be empty", !arrayList2.isEmpty());
                }
                ArrayList arrayList5 = new ArrayList();
                if (next.surrenderSoulRewards != null) {
                    HashSet hashSet7 = new HashSet();
                    for (int i5 = 0; i5 < next.surrenderSoulRewards.size(); i5++) {
                        LimitedShopConfigParser$RawSurrenderSoulReward limitedShopConfigParser$RawSurrenderSoulReward = next.surrenderSoulRewards.get(i5);
                        String str17 = str9 + ".surrender_soul_rewards[" + i5 + "]";
                        g(str17, "contains null", limitedShopConfigParser$RawSurrenderSoulReward != null);
                        c.a.w(str17, ".stage", "must be base or evolution", f587d.contains(limitedShopConfigParser$RawSurrenderSoulReward.stage));
                        c.a.w(str17, ".stage", "duplicate stage", hashSet7.add(limitedShopConfigParser$RawSurrenderSoulReward.stage));
                        i(limitedShopConfigParser$RawSurrenderSoulReward.generalId, str17 + ".general_id");
                        i(limitedShopConfigParser$RawSurrenderSoulReward.generalName, str17 + ".general_name");
                        g(str17 + ".count", str16, limitedShopConfigParser$RawSurrenderSoulReward.count > 0);
                        arrayList5.add(new g(limitedShopConfigParser$RawSurrenderSoulReward.count, limitedShopConfigParser$RawSurrenderSoulReward.stage, limitedShopConfigParser$RawSurrenderSoulReward.generalName));
                    }
                }
                arrayList4.add(new c(next.generalId, next.generalName, next.category, next.enabled, next.minVip, next.fateGiftsEnabled, iIntValue, gVar2, arrayList2, arrayList5));
                str7 = str8;
                str5 = str16;
                it = it2;
                str6 = str11;
                hashSet2 = hashSet4;
                hashSet3 = hashSet5;
                limitedShopConfigParser$RawConfig = limitedShopConfigParser$RawConfig;
                str3 = str15;
                arrayList = arrayList4;
                limitedShopConfigParser$RawGeneralCatalog = limitedShopConfigParser$RawGeneralCatalog;
            }
            LimitedShopConfigParser$RawGeneralCatalog limitedShopConfigParser$RawGeneralCatalog2 = limitedShopConfigParser$RawGeneralCatalog;
            LimitedShopConfigParser$RawConfig limitedShopConfigParser$RawConfig2 = limitedShopConfigParser$RawConfig;
            String str18 = str3;
            String str19 = str6;
            ArrayList arrayList6 = arrayList;
            String str20 = str5;
            m.e eVar = new m.e(limitedShopConfigParser$RawGeneralCatalog2.overrideMode, arrayList6);
            LimitedShopConfigParser$RawRegularSchedule limitedShopConfigParser$RawRegularSchedule = limitedShopConfigParser$RawConfig2.regularSchedule;
            g("regular_schedule", str18, limitedShopConfigParser$RawRegularSchedule != null);
            g("regular_schedule.interval_seconds", str20, limitedShopConfigParser$RawRegularSchedule.intervalSeconds > 0);
            g("regular_schedule.randomization.recent_lookback", "must not be negative", b(limitedShopConfigParser$RawRegularSchedule.randomization, "regular_schedule.randomization").f572d >= 0);
            ArrayList arrayList7 = new ArrayList();
            for (c cVar : (List) eVar.f1805b) {
                if (cVar.f555d && "regular".equals(cVar.f554c)) {
                    arrayList7.add(cVar);
                }
            }
            q qVarA = a(limitedShopConfigParser$RawRegularSchedule.plannedRotation, eVar, "regular", Collections.unmodifiableList(arrayList7).size(), false, "regular_schedule.planned_rotation");
            if (qVarA != null) {
                g("regular_schedule.planned_rotation.start_at", "must align with interval_seconds", Math.floorMod(qVarA.f459a / 1000, limitedShopConfigParser$RawRegularSchedule.intervalSeconds) == 0);
            }
            LimitedShopConfigParser$RawSpecialSchedule limitedShopConfigParser$RawSpecialSchedule = limitedShopConfigParser$RawConfig2.specialSchedule;
            String str21 = limitedShopConfigParser$RawConfig2.timezone;
            g("special_schedule", str18, limitedShopConfigParser$RawSpecialSchedule != null);
            List<Integer> list2 = limitedShopConfigParser$RawSpecialSchedule.daysOfWeek;
            g("special_schedule.days_of_week", "must not be empty", (list2 == null || list2.isEmpty()) ? false : true);
            HashSet hashSet8 = new HashSet();
            Iterator<Integer> it5 = limitedShopConfigParser$RawSpecialSchedule.daysOfWeek.iterator();
            while (it5.hasNext()) {
                Integer next3 = it5.next();
                g("special_schedule.days_of_week", "days_of_week must be within 1..7", next3 != null && next3.intValue() >= 1 && next3.intValue() <= 7);
                g("special_schedule.days_of_week", "duplicate day", hashSet8.add(next3));
            }
            g("special_schedule.selections_per_week", "must equal days_of_week count", limitedShopConfigParser$RawSpecialSchedule.selectionsPerWeek == limitedShopConfigParser$RawSpecialSchedule.daysOfWeek.size());
            g("special_schedule.window_seconds", str20, limitedShopConfigParser$RawSpecialSchedule.windowSeconds > 0);
            String str22 = limitedShopConfigParser$RawSpecialSchedule.windowStart;
            g("special_schedule.window_start", "must be HH:mm:ss", str22 != null && str22.matches("(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d"));
            q qVarA2 = a(limitedShopConfigParser$RawSpecialSchedule.plannedRotation, eVar, "special", limitedShopConfigParser$RawSpecialSchedule.selectionsPerWeek, b(limitedShopConfigParser$RawSpecialSchedule.randomization, "special_schedule.randomization").f569a, "special_schedule.planned_rotation");
            if (qVarA2 != null) {
                Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone(str21));
                calendar.setTimeInMillis(qVarA2.f459a);
                g("special_schedule.planned_rotation.start_at", "must be Monday 00:00:00 in configured timezone", calendar.get(7) == 2 && calendar.get(11) == 0 && calendar.get(12) == 0 && calendar.get(13) == 0);
            }
            i.a(limitedShopConfigParser$RawSpecialSchedule.daysOfWeek);
            List<LimitedShopConfigParser$RawDiscountCampaign> list3 = limitedShopConfigParser$RawConfig2.discountCampaigns;
            ArrayList arrayList8 = new ArrayList();
            if (list3 != null) {
                HashSet hashSet9 = new HashSet();
                Iterator<LimitedShopConfigParser$RawDiscountCampaign> it6 = list3.iterator();
                while (it6.hasNext()) {
                    LimitedShopConfigParser$RawDiscountCampaign next4 = it6.next();
                    g("discount_campaigns", "contains null", next4 != null);
                    String str23 = "discount_campaign " + next4.campaignId;
                    i(next4.campaignId, str23 + ".campaign_id");
                    c.a.w(str23, ".campaign_id", "duplicate campaign_id", hashSet9.add(next4.campaignId));
                    c.a.w(str23, ".end_at", "end_at must be after start_at", f(next4.endAt, str23 + ".end_at").after(f(next4.startAt, str23 + ".start_at")));
                    int i6 = next4.discountPercent;
                    c.a.w(str23, ".discount_percent", "discount_percent must be within 1..100", i6 >= 1 && i6 <= 100);
                    if ("floor".equals(next4.priceRounding)) {
                        str2 = str19;
                    } else {
                        str2 = str19;
                        if (!str2.equals(next4.priceRounding)) {
                            z2 = false;
                        }
                        c.a.w(str23, ".price_rounding", "unsupported rounding", z2);
                        c.a.w(str23, ".after_end", "must be restore_original_price", "restore_original_price".equals(next4.afterEnd));
                        List<String> list4 = next4.scopes;
                        g(str23 + ".scopes", "must not be empty", list4 == null && !list4.isEmpty());
                        hashSet = new HashSet();
                        for (String str24 : next4.scopes) {
                            g(str23 + ".scopes", "unsupported scope", f588e.contains(str24));
                            c.a.w(str23, ".scopes", "duplicate scope", hashSet.add(str24));
                            it6 = it6;
                        }
                        arrayList8.add(new a(next4.enabled, next4.startAt, next4.endAt, next4.discountPercent, next4.priceRounding, next4.scopes));
                        str19 = str2;
                        it6 = it6;
                    }
                    z2 = true;
                    c.a.w(str23, ".price_rounding", "unsupported rounding", z2);
                    c.a.w(str23, ".after_end", "must be restore_original_price", "restore_original_price".equals(next4.afterEnd));
                    List<String> list5 = next4.scopes;
                    if (list5 == null) {
                    }
                    g(str23 + ".scopes", "must not be empty", list5 == null && !list5.isEmpty());
                    hashSet = new HashSet();
                    while (r8.hasNext()) {
                        g(str23 + ".scopes", "unsupported scope", f588e.contains(str24));
                        c.a.w(str23, ".scopes", "duplicate scope", hashSet.add(str24));
                        it6 = it6;
                    }
                    arrayList8.add(new a(next4.enabled, next4.startAt, next4.endAt, next4.discountPercent, next4.priceRounding, next4.scopes));
                    str19 = str2;
                    it6 = it6;
                }
            }
            int i7 = limitedShopConfigParser$RawConfig2.schemaVersion;
            String str25 = limitedShopConfigParser$RawConfig2.configId;
            String str26 = limitedShopConfigParser$RawConfig2.currency.type;
            return new i(i7, str25, eVar, tVar, arrayList8);
        } catch (u unused) {
            throw d("root", "invalid JSON");
        }
    }
}
