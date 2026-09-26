package com.sgscq.vpn;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class DebugSparringConfig$Slot {
    public boolean extreme;
    public int position;

    @b.b("general_id")
    public String generalId = "";

    @b.b("cultivate_attr")
    public String cultivateAttr = "none";

    @b.b(alternate = {"equipped_skill_id", "skill"}, value = "skill_id")
    public String skillId = "";

    @b.b(alternate = {"skillGroup"}, value = "skills")
    public DebugSparringConfig$SkillGroup skillGroup = new DebugSparringConfig$SkillGroup();

    @b.b("deputy_general_ids")
    public List<String> deputyGeneralIds = new ArrayList(Arrays.asList("", ""));

    public static DebugSparringConfig$Slot empty(int i2) {
        DebugSparringConfig$Slot debugSparringConfig$Slot = new DebugSparringConfig$Slot();
        debugSparringConfig$Slot.position = i2;
        return debugSparringConfig$Slot;
    }

    public List<String> boundDeputyIds() {
        return Collections.unmodifiableList(this.deputyGeneralIds);
    }

    public DebugSparringConfig$Slot normalized(int i2) {
        DebugSparringConfig$Slot debugSparringConfig$Slot = new DebugSparringConfig$Slot();
        debugSparringConfig$Slot.position = i2;
        debugSparringConfig$Slot.generalId = p0.a(this.generalId);
        String lowerCase = p0.a(this.cultivateAttr).toLowerCase();
        if (!"attack".equals(lowerCase) && !"defense".equals(lowerCase) && !"hp".equals(lowerCase) && !"wisdom".equals(lowerCase)) {
            lowerCase = "none";
        }
        debugSparringConfig$Slot.cultivateAttr = lowerCase;
        debugSparringConfig$Slot.extreme = lowerCase.equals("none") ? false : this.extreme;
        DebugSparringConfig$SkillGroup debugSparringConfig$SkillGroup = this.skillGroup;
        debugSparringConfig$Slot.skillGroup = debugSparringConfig$SkillGroup == null ? new DebugSparringConfig$SkillGroup() : debugSparringConfig$SkillGroup.normalized();
        String strA = p0.a(this.skillId);
        debugSparringConfig$Slot.skillId = strA;
        if (strA.isEmpty()) {
            debugSparringConfig$Slot.skillId = debugSparringConfig$Slot.skillGroup.firstSkillId();
        }
        debugSparringConfig$Slot.deputyGeneralIds = new ArrayList(Arrays.asList("", ""));
        if (debugSparringConfig$Slot.generalId.isEmpty() || this.deputyGeneralIds == null) {
            debugSparringConfig$Slot.skillGroup = new DebugSparringConfig$SkillGroup();
            debugSparringConfig$Slot.skillId = "";
            debugSparringConfig$Slot.cultivateAttr = "none";
            debugSparringConfig$Slot.extreme = false;
        } else {
            for (int i3 = 0; i3 < Math.min(2, this.deputyGeneralIds.size()); i3++) {
                debugSparringConfig$Slot.deputyGeneralIds.set(i3, p0.a(this.deputyGeneralIds.get(i3)));
            }
        }
        return debugSparringConfig$Slot;
    }
}
