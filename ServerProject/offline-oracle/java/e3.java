package com.sgscq.vpn;

import android.content.SharedPreferences;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e3 implements b7, p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f648a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f649b;

    public /* synthetic */ e3(MainActivity mainActivity, int i2) {
        this.f648a = i2;
        this.f649b = mainActivity;
    }

    @Override // com.sgscq.vpn.p
    public final void a(n nVar) throws IOException {
        String strI;
        LinkedHashMap linkedHashMapL;
        int i2 = this.f648a;
        MainActivity mainActivity = this.f649b;
        switch (i2) {
            case 3:
                int i3 = MainActivity.F;
                int i4 = 0;
                SharedPreferences sharedPreferences = mainActivity.getSharedPreferences("sgscq_player_v5", 0);
                ArrayList arrayList = new ArrayList();
                for (String str : sharedPreferences.getAll().keySet()) {
                    if (!y5.q(str).isEmpty()) {
                        arrayList.add(str);
                    }
                }
                Collections.sort(arrayList);
                h.b bVar = new h.b(new OutputStreamWriter(nVar, StandardCharsets.UTF_8));
                bVar.f1735d = "  ";
                bVar.f1736e = ": ";
                bVar.e();
                bVar.i("exported_at");
                bVar.o(System.currentTimeMillis());
                bVar.i("preference_name");
                bVar.r("sgscq_player_v5");
                bVar.i("players");
                bVar.e();
                a.o oVar = new a.o();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    String strQ = y5.q((String) it.next());
                    if (!strQ.isEmpty() && (linkedHashMapL = y5.l(mainActivity, sharedPreferences, strQ)) != null && !linkedHashMapL.isEmpty()) {
                        bVar.i(strQ);
                        oVar.k(linkedHashMapL, Map.class, bVar);
                        i4++;
                    }
                }
                bVar.h();
                bVar.i("player_count");
                bVar.o(i4);
                bVar.h();
                bVar.flush();
                break;
            default:
                int i5 = MainActivity.F;
                mainActivity.getClass();
                ArrayList<String> arrayListT = n0.t(mainActivity);
                if (arrayListT.isEmpty()) {
                    strI = "";
                } else {
                    StringBuilder sb = new StringBuilder("崩溃记录 ");
                    sb.append(arrayListT.size());
                    sb.append(" 条（新→旧）\n");
                    for (String str2 : arrayListT) {
                        sb.append('\n');
                        sb.append(str2);
                    }
                    strI = n0.i(sb.toString(), 73728);
                }
                nVar.write(strI.getBytes(StandardCharsets.UTF_8));
                break;
        }
    }

    @Override // com.sgscq.vpn.b7
    public final void b(boolean z) {
        int i2 = MainActivity.F;
        MainActivity mainActivity = this.f649b;
        mainActivity.getClass();
        mainActivity.runOnUiThread(new f3(mainActivity, 14));
    }

    public final void c(int i2) {
        int i3 = MainActivity.F;
        MainActivity mainActivity = this.f649b;
        mainActivity.getClass();
        if (i2 == 5) {
            o.j jVar = o.j.f1841j;
            if ((jVar == null ? 1 : jVar.f1849g) == 5 && o.j.f1840i.compareAndSet(false, true)) {
                mainActivity.runOnUiThread(new f3(mainActivity, 8));
            }
        }
    }
}
