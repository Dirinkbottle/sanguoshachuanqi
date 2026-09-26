package c;

import com.sgscq.vpn.f5;
import com.sgscq.vpn.handler.b1;
import com.sgscq.vpn.handler.c1;
import com.sgscq.vpn.handler.h1;
import com.sgscq.vpn.handler.p0;
import com.sgscq.vpn.handler.v0;
import com.sgscq.vpn.y2;
import java.util.Comparator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class n implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f61a;

    public final int a(Map map, Map map2) {
        switch (this.f61a) {
            case 1:
                int iCompare = Integer.compare(y2.C3(map2.get("record_data"), 0), y2.C3(map.get("record_data"), 0));
                return iCompare != 0 ? iCompare : String.valueOf(map.get("user_id")).compareTo(String.valueOf(map2.get("user_id")));
            case 2:
            default:
                return Integer.compare(h1.W(map), h1.W(map2));
            case 3:
                return Integer.compare(p0.l0(map), p0.l0(map2));
            case 4:
                return Integer.compare(p0.l0(map), p0.l0(map2));
            case 5:
                return Integer.compare(v0.y(map), v0.y(map2));
            case 6:
                return b1.q(map, map2);
            case 7:
                return Integer.compare(b1.n0(map), b1.n0(map2));
            case 8:
                return Integer.compare(b1.n0(map), b1.n0(map2));
            case 9:
                return Integer.compare(c1.f(map.get("order"), 0), c1.f(map2.get("order"), 0));
            case 10:
                return Integer.compare(h1.W(map), h1.W(map2));
            case 11:
                return Integer.compare(h1.W(map), h1.W(map2));
        }
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f61a) {
            case 0:
                return ((Comparable) obj).compareTo((Comparable) obj2);
            case 1:
                return a((Map) obj, (Map) obj2);
            case 2:
                f5 f5Var = (f5) obj;
                f5 f5Var2 = (f5) obj2;
                int iCompare = Integer.compare(f5Var.f690a, f5Var2.f690a);
                return iCompare != 0 ? iCompare : Integer.compare(f5Var.f691b, f5Var2.f691b);
            case 3:
                return a((Map) obj, (Map) obj2);
            case 4:
                return a((Map) obj, (Map) obj2);
            case 5:
                return a((Map) obj, (Map) obj2);
            case 6:
                return a((Map) obj, (Map) obj2);
            case 7:
                return a((Map) obj, (Map) obj2);
            case 8:
                return a((Map) obj, (Map) obj2);
            case 9:
                return a((Map) obj, (Map) obj2);
            case 10:
                return a((Map) obj, (Map) obj2);
            case 11:
                return a((Map) obj, (Map) obj2);
            default:
                return a((Map) obj, (Map) obj2);
        }
    }
}
