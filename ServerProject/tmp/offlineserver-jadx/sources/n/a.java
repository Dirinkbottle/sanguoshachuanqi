package n;

import com.sgscq.battle.api.BattleCanonicalJson;
import com.sgscq.vpn.a5;
import com.sgscq.vpn.handler.d0;
import com.sgscq.vpn.m1;
import com.sgscq.vpn.o1;
import com.sgscq.vpn.p1;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.p7;
import com.sgscq.vpn.v5;
import com.sgscq.vpn.w1;
import com.sgscq.vpn.y2;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Function {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1812a;

    public /* synthetic */ a(int i2) {
        this.f1812a = i2;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f1812a) {
            case 0:
                return BattleCanonicalJson.lambda$write$0((Map.Entry) obj);
            case 1:
                int[] iArr = m1.f1169a;
                return new ArrayList();
            case 2:
                return ((p1) obj).f1263a;
            case 3:
                return ((o1) obj).f1239a;
            case 4:
                HashSet hashSet = w1.U;
                return new ArrayList();
            case 5:
                HashSet hashSet2 = w1.U;
                return new ArrayList();
            case 6:
                HashSet hashSet3 = w1.U;
                return new ArrayList();
            case 7:
                String[] strArr = y2.X;
                return new ArrayList();
            case 8:
                String[] strArr2 = y2.X;
                return new ArrayList();
            case 9:
                return new Object();
            case 10:
                ConcurrentHashMap concurrentHashMap = a5.f185a;
                return new Object();
            case 11:
                return new ArrayList();
            case 12:
                return p5.T((Map) obj, "pk_id");
            case 13:
                return new ArrayList();
            case 14:
                return new Object();
            case 15:
                String str = (String) obj;
                HashMap map = p7.t;
                return str;
            case 16:
                String str2 = (String) obj;
                HashMap map2 = p7.t;
                return str2;
            case 17:
                String str3 = (String) obj;
                HashMap map3 = p7.t;
                return str3;
            case 18:
                return ((v5) obj).f1459a;
            case 19:
                return ((v5) obj).f1459a;
            case 20:
                String str4 = (String) obj;
                HashMap map4 = p7.t;
                return str4;
            case 21:
                Map map5 = d0.f798c;
                return new ArrayList();
            case 22:
                Map map6 = d0.f798c;
                return new ArrayList();
            case 23:
                return String.valueOf(((Map) obj).getOrDefault("pk_id", ""));
            default:
                return ((v5) obj).f1459a;
        }
    }
}
