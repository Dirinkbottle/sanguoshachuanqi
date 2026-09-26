package com.sgscq.vpn.config;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class LimitedShopConfigParser$RawSpecialSchedule {

    @b.b("days_of_week")
    List<Integer> daysOfWeek;
    boolean enabled;

    @b.b("planned_rotation")
    LimitedShopConfigParser$RawPlannedRotation plannedRotation;
    LimitedShopConfigParser$RawRandomization randomization;

    @b.b("selections_per_week")
    int selectionsPerWeek;

    @b.b("window_seconds")
    long windowSeconds;

    @b.b("window_start")
    String windowStart;

    private LimitedShopConfigParser$RawSpecialSchedule() {
    }
}
