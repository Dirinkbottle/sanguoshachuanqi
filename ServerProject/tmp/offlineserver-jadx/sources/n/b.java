package n;

import com.sgscq.battle.api.BattleCanonicalJson;
import com.sgscq.vpn.cloud.m0;
import com.sgscq.vpn.handler.l0;
import com.sgscq.vpn.handler.x0;
import com.sgscq.vpn.handler.z0;
import com.sgscq.vpn.i5;
import com.sgscq.vpn.k4;
import com.sgscq.vpn.k5;
import com.sgscq.vpn.p7;
import com.sgscq.vpn.t5;
import com.sgscq.vpn.v5;
import com.sgscq.vpn.w1;
import com.sgscq.vpn.y2;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1813a;

    public /* synthetic */ b(int i2) {
        this.f1813a = i2;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f1813a) {
            case 0:
                return BattleCanonicalJson.lambda$write$1(obj, obj2);
            case 1:
                return Integer.compare(y2.H0((Map) obj2), y2.H0((Map) obj));
            case 2:
                return Long.compare(((k4) obj2).f1109d, ((k4) obj).f1109d);
            case 3:
                return ((i5) obj).f1058a.compareTo(((i5) obj2).f1058a);
            case 4:
                k5 k5Var = (k5) obj;
                k5 k5Var2 = (k5) obj2;
                int iCompare = Double.compare(k5Var2.f1114c, k5Var.f1114c);
                if (iCompare != 0) {
                    return iCompare;
                }
                int iCompare2 = Integer.compare(k5Var2.f1113b.size(), k5Var.f1113b.size());
                return iCompare2 != 0 ? iCompare2 : k5Var.f1112a.compareTo(k5Var2.f1112a);
            case 5:
                v5 v5Var = (v5) obj;
                v5 v5Var2 = (v5) obj2;
                String[] strArr = t5.f1401k;
                int iCompare3 = Integer.compare(v5Var2.f1462d, v5Var.f1462d);
                return iCompare3 != 0 ? iCompare3 : v5Var.f1459a.compareTo(v5Var2.f1459a);
            case 6:
                Map map = (Map) obj;
                Map map2 = (Map) obj2;
                ConcurrentHashMap concurrentHashMap = v5.x;
                return Integer.compare(v5.l(map.get("position"), v5.l(map.get("general_position"), 999)), v5.l(map2.get("position"), v5.l(map2.get("general_position"), 999)));
            case 7:
                ConcurrentHashMap concurrentHashMap2 = v5.x;
                return Integer.compare(v5.l(((Map) obj).get("position"), 999), v5.l(((Map) obj2).get("position"), 999));
            case 8:
                HashMap map3 = p7.t;
                return Integer.compare(((v5) obj2).f1462d, ((v5) obj).f1462d);
            case 9:
                return c.a.e((Map) obj, "position", 0) - w1.l2(String.valueOf(((Map) obj2).get("position")), 0);
            case 10:
                Map map4 = (Map) obj;
                Map map5 = (Map) obj2;
                return Integer.compare(m0.l1(m0.l1(0, "pos", map4), "position", map4), m0.l1(m0.l1(0, "pos", map5), "position", map5));
            case 11:
                Map map6 = (Map) obj;
                Map map7 = (Map) obj2;
                return Integer.compare(m0.n1(m0.n1(0, "pos", map6), "position", map6), m0.n1(m0.n1(0, "pos", map7), "position", map7));
            case 12:
                return l0.h((Map) obj) - l0.h((Map) obj2);
            case 13:
                List list = x0.f1028c;
                return ((Integer) ((Map.Entry) obj2).getValue()).intValue() - ((Integer) ((Map.Entry) obj).getValue()).intValue();
            case 14:
                Map map8 = (Map) obj;
                Map map9 = (Map) obj2;
                return Integer.compare(z0.y(map8.getOrDefault("position", map8.get("pos"))), z0.y(map9.getOrDefault("position", map9.get("pos"))));
            case 15:
                Map map10 = (Map) obj;
                Map map11 = (Map) obj2;
                int iCompare4 = Integer.compare(z0.y(z0.i(map10)), z0.y(z0.i(map11)));
                return iCompare4 != 0 ? iCompare4 : z0.B(map10.get("pk_id")).compareTo(z0.B(map11.get("pk_id")));
            default:
                return Integer.compare(z0.y(((Map) obj).get("position")), z0.y(((Map) obj2).get("position")));
        }
    }
}
