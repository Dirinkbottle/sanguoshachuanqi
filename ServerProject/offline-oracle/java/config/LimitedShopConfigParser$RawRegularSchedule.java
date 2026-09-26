package com.sgscq.vpn.config;

/* JADX INFO: loaded from: classes.dex */
final class LimitedShopConfigParser$RawRegularSchedule {
    boolean enabled;

    @b.b("interval_seconds")
    long intervalSeconds;

    @b.b("planned_rotation")
    LimitedShopConfigParser$RawPlannedRotation plannedRotation;
    LimitedShopConfigParser$RawRandomization randomization;

    private LimitedShopConfigParser$RawRegularSchedule() {
    }
}
