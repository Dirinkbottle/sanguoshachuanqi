package m;

import a.o;
import a.t;
import android.content.Context;
import android.content.SharedPreferences;
import com.sgscq.vpn.c7;
import com.sgscq.vpn.cloud.CloudSessionStore$SessionData;
import com.sgscq.vpn.cloud.a0;
import com.sgscq.vpn.cloud.b0;
import com.sgscq.vpn.cloud.g;
import com.sgscq.vpn.cloud.j;
import com.sgscq.vpn.cloud.k;
import com.sgscq.vpn.cloud.m;
import com.sgscq.vpn.cloud.n;
import com.sgscq.vpn.cloud.p;
import com.sgscq.vpn.cloud.q;
import com.sgscq.vpn.cloud.y;
import com.sgscq.vpn.cloud.z;
import com.sgscq.vpn.config.i;
import com.sgscq.vpn.d2;
import com.sgscq.vpn.h5;
import com.sgscq.vpn.handler.l;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.v5;
import com.sgscq.vpn.w4;
import com.sgscq.vpn.y5;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class e implements w4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1804a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f1805b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f1806c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f1807d;

    public e(int i2, Context context) {
        this.f1804a = i2;
        if (i2 == 5) {
            this.f1807d = new o();
            Context applicationContext = context.getApplicationContext();
            this.f1805b = applicationContext;
            this.f1806c = applicationContext.getSharedPreferences("sgscq_cloud_session_v1", 0);
            return;
        }
        if (i2 != 6) {
            this.f1805b = context;
            this.f1806c = new File(new File(context.getFilesDir(), "limited_shop_config"), "limited_shop_config.bin");
            this.f1807d = context.getSharedPreferences("sgscq_limited_shop_config_v1", 0);
        } else {
            this.f1805b = new z(context);
            this.f1806c = new e(5, context);
            this.f1807d = new b0(1, context);
        }
    }

    public static LinkedHashMap I(j jVar) {
        String strM = m(jVar.f366b);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("pk_id", "cloud_friend_message_" + jVar.f365a);
        linkedHashMap.put("email_id", linkedHashMap.get("pk_id"));
        linkedHashMap.put("mail_id", linkedHashMap.get("pk_id"));
        linkedHashMap.put("email_type", "friend");
        linkedHashMap.put("mail_type", "friend");
        linkedHashMap.put("origin_mail_type", "normalUser");
        linkedHashMap.put("email_title", "好友留言");
        linkedHashMap.put("title", "好友留言");
        String str = jVar.f368d;
        linkedHashMap.put("email_content", str);
        linkedHashMap.put("content", str);
        linkedHashMap.put("email_sender", strM);
        String str2 = jVar.f367c;
        linkedHashMap.put("email_sender_nickname", str2);
        linkedHashMap.put("sender", str2);
        linkedHashMap.put("from_user", strM);
        long jG = c7.g();
        long j2 = jVar.f369e;
        linkedHashMap.put("email_time_offset", Long.valueOf(Math.max(0L, jG - j2)));
        linkedHashMap.put("is_attach_get", "1");
        linkedHashMap.put("is_accepted", Boolean.TRUE);
        linkedHashMap.put("status", 1);
        linkedHashMap.put("send_time", Long.valueOf(j2));
        linkedHashMap.put("create_time", Long.valueOf(j2));
        linkedHashMap.put("time", Long.valueOf(j2));
        linkedHashMap.put("expire_time", Long.valueOf(j2 + 2592000));
        return linkedHashMap;
    }

    public static LinkedHashMap J(m mVar) {
        return mVar == null ? p5.z0("union_id", 0, "union_name", "", "union_level", 0, "leader_nickname", "", "level_union_exp", 0, "level_up_exp", 0, "rank", 0, "user_num", 0, "user_limit", 50, "notice", "", "union_sign", "", "union_fightPoint", 0, "apply_state", 1) : p5.z0("union_id", Integer.valueOf(mVar.f400a), "union_name", mVar.f401b, "union_level", Integer.valueOf(mVar.f402c), "leader_nickname", mVar.f403d, "level_union_exp", Integer.valueOf(mVar.f404e), "level_up_exp", Integer.valueOf(mVar.f405f), "rank", Integer.valueOf(mVar.f406g), "user_num", Integer.valueOf(mVar.f407h), "user_limit", Integer.valueOf(mVar.f408i), "notice", mVar.f409j, "union_sign", mVar.f410k, "union_fightPoint", Integer.valueOf(mVar.f411l), "apply_state", Integer.valueOf(mVar.f412m));
    }

    public static ArrayList K(q qVar) {
        ArrayList arrayList = new ArrayList();
        for (p pVar : qVar.f460b) {
            arrayList.add(p5.z0("user_id", m(pVar.f447a), "user_nickname", pVar.f448b, "general_id", pVar.f449c, "fight_point", Integer.valueOf((int) Math.round(pVar.f450d)), "battle_id", Integer.valueOf(pVar.f451e), "pos", Integer.valueOf(pVar.f452f)));
        }
        return arrayList;
    }

    public static ArrayList L(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(J((m) it.next()));
        }
        return arrayList2;
    }

    public static LinkedHashMap M(y yVar) {
        String strM = m(yVar.f529a);
        Object[] objArr = new Object[28];
        objArr[0] = "user_id";
        objArr[1] = strM;
        objArr[2] = "name";
        String str = yVar.f530b;
        objArr[3] = str;
        objArr[4] = "user_name";
        objArr[5] = str;
        objArr[6] = "user_nickname";
        objArr[7] = str;
        objArr[8] = "level";
        int i2 = yVar.f531c;
        objArr[9] = Integer.valueOf(i2);
        objArr[10] = "user_level";
        objArr[11] = Integer.valueOf(i2);
        objArr[12] = "user_vip_level";
        objArr[13] = Integer.valueOf(yVar.f532d);
        objArr[14] = "fighting";
        double d2 = yVar.f533e;
        objArr[15] = Double.valueOf(d2);
        objArr[16] = "fightPoint";
        objArr[17] = Double.valueOf(d2);
        objArr[18] = "ladder_rank";
        objArr[19] = Integer.valueOf(yVar.f534f);
        objArr[20] = "general_id";
        String str2 = yVar.f535g;
        objArr[21] = str2;
        objArr[22] = "general_skin";
        objArr[23] = str2;
        objArr[24] = "isInvited";
        objArr[25] = Boolean.valueOf(yVar.f536h);
        objArr[26] = "type";
        objArr[27] = 0;
        return p5.z0("id", strM, objArr);
    }

    public static ArrayList N(List list) {
        ArrayList arrayList = new ArrayList();
        if (list == null) {
            return arrayList;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(M((y) it.next()));
        }
        return arrayList;
    }

    public static String P(Object obj) {
        return obj == null ? "" : String.valueOf(obj).trim();
    }

    public static e e() {
        return new e(Collections.emptySet(), Collections.emptySet(), Collections.emptySet());
    }

    public static String m(String str) {
        String strTrim = str == null ? "" : str.trim();
        return strTrim.startsWith("cloud_") ? strTrim : "cloud_".concat(strTrim);
    }

    public static Set v(Set set) {
        return Collections.unmodifiableSet(new LinkedHashSet(set));
    }

    public static LinkedHashSet z(t tVar, String str) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        a.q qVarM = tVar.m(str);
        if (qVarM != null && (qVarM instanceof a.p)) {
            for (a.q qVar : qVarM.e()) {
                qVar.getClass();
                if (qVar instanceof t) {
                    t tVarF = qVar.f();
                    if (tVarF.o("hidden") && tVarF.m("hidden").b() && tVarF.o("id")) {
                        String strTrim = tVarF.m("id").i().trim();
                        if (!strTrim.isEmpty()) {
                            linkedHashSet.add(strTrim);
                        }
                    }
                }
            }
        }
        return linkedHashSet;
    }

    public final ArrayList A(String str) throws a0 {
        E(str);
        z zVar = (z) this.f1805b;
        zVar.getClass();
        return N((List) z.N(zVar.a("GET", "/social/recommendations?limit=20", null, "application/json", Collections.emptyMap()).a(), "users").f1b);
    }

    public final void B(String str, String str2) throws a0 {
        E(str);
        z zVar = (z) this.f1805b;
        zVar.getClass();
        zVar.a("DELETE", "/social/guild/members/" + z.w(str2), null, "application/json", Collections.emptyMap());
    }

    public final void C(String str, String str2, boolean z) throws a0 {
        E(str);
        z zVar = (z) this.f1805b;
        zVar.getClass();
        String str3 = "/social/friend-requests/" + z.w(str2) + "/reply";
        Boolean boolValueOf = Boolean.valueOf(z);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("accept", boolValueOf);
        zVar.Z(str3, z.f537c.i(linkedHashMap));
    }

    public final void D(String str, String str2, boolean z) throws a0 {
        E(str);
        z zVar = (z) this.f1805b;
        zVar.getClass();
        String str3 = "/social/guild/applications/" + z.w(str2) + "/reply";
        Boolean boolValueOf = Boolean.valueOf(z);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("accept", boolValueOf);
        zVar.Z(str3, z.f537c.i(linkedHashMap));
    }

    public final void E(String str) throws a0 {
        if (!w(str)) {
            throw new a0(403, 0, "cloud_character_required", "只有当前云端角色可以使用好友和公会功能");
        }
    }

    public final synchronized void F(CloudSessionStore$SessionData cloudSessionStore$SessionData) {
        Context context = (Context) this.f1805b;
        if (!((SharedPreferences) this.f1806c).edit().putString("session_encrypted", y5.i(context.getApplicationContext(), ((o) this.f1807d).i(cloudSessionStore$SessionData), y5.f1570c)).commit()) {
            throw new IllegalStateException("云会话保存失败");
        }
    }

    public final ArrayList G(String str, String str2) throws a0 {
        E(str);
        z zVar = (z) this.f1805b;
        zVar.getClass();
        return N((List) z.N(zVar.a("GET", l.a("/social/search?q=", URLEncoder.encode(str2 == null ? "" : str2.trim(), "UTF-8"), "&limit=50"), null, "application/json", Collections.emptyMap()).a(), "users").f1b);
    }

    public final LinkedHashMap H(String str, String str2, String str3) throws a0 {
        E(str);
        z zVar = (z) this.f1805b;
        zVar.getClass();
        return I(z.A(z.g(z.x(zVar.c("POST", "/social/friends/" + z.w(str2) + "/messages", Collections.singletonMap("content", str3)).a()), "message")));
    }

    public final void O(String str, String str2, String str3) throws a0 {
        E(str);
        z zVar = (z) this.f1805b;
        zVar.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (str2 != null) {
            linkedHashMap.put("notice", str2);
        }
        if (str3 != null) {
            linkedHashMap.put("sign", str3);
        }
        z.D(z.g(z.x(zVar.c("PATCH", "/social/guild", linkedHashMap).a()), "guild"));
    }

    public final void Q(byte[] bArr) throws IOException {
        File file = (File) this.f1806c;
        File parentFile = file.getParentFile();
        if (!parentFile.isDirectory() && !parentFile.mkdirs()) {
            throw new IllegalStateException("cannot create config cache directory");
        }
        File file2 = new File(parentFile, file.getName() + ".tmp");
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        try {
            fileOutputStream.write(bArr);
            fileOutputStream.flush();
            fileOutputStream.getFD().sync();
            fileOutputStream.close();
            if (file2.renameTo(file)) {
                return;
            }
            if (file.exists() && !file.delete()) {
                throw new IllegalStateException("cannot replace config cache");
            }
            if (!file2.renameTo(file)) {
                throw new IllegalStateException("cannot install config cache");
            }
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final synchronized void a() {
        ((SharedPreferences) this.f1806c).edit().remove("session_encrypted").commit();
    }

    public final g b(String str, String str2, String str3, String str4) throws a0 {
        E(str);
        z zVar = (z) this.f1805b;
        zVar.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("name", str2 == null ? "" : str2.trim());
        linkedHashMap.put("sign", str3 == null ? "" : str3.trim());
        linkedHashMap.put("notice", str4 != null ? str4.trim() : "");
        return z.E(zVar.c("POST", "/social/guilds", linkedHashMap).a());
    }

    public final void c(String str, String str2) throws a0 {
        E(str);
        z zVar = (z) this.f1805b;
        zVar.getClass();
        zVar.a("DELETE", "/social/friends/" + z.w(str2), null, "application/json", Collections.emptyMap());
    }

    public final synchronized String d() {
        String string = ((SharedPreferences) this.f1806c).getString("device_id", "");
        if (!string.isEmpty()) {
            return string;
        }
        String string2 = UUID.randomUUID().toString();
        ((SharedPreferences) this.f1806c).edit().putString("device_id", string2).commit();
        return string2;
    }

    public final k f(int i2, int i3, String str) throws a0 {
        E(str);
        z zVar = (z) this.f1805b;
        zVar.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("goods_id", Integer.valueOf(i2));
        linkedHashMap.put("count", Integer.valueOf(Math.max(1, i3)));
        String strA = zVar.c("POST", "/social/guild/exchanges", linkedHashMap).a();
        t tVarX = z.x(strA);
        g gVarE = z.E(strA);
        com.sgscq.vpn.cloud.o oVar = (com.sgscq.vpn.cloud.o) gVarE.f338d;
        com.sgscq.vpn.battle.a aVarC = z.C(tVarX, oVar == null ? 0 : oVar.f437b);
        String strTrim = z.a0(tVarX, "reward_item_id", "").trim();
        if (strTrim.isEmpty()) {
            throw new IllegalArgumentException("云公会兑换响应缺少奖励");
        }
        return new k(gVarE, aVarC, strTrim, z.t(tVarX, "reward_item_num", 1));
    }

    public final v5 g(String str, String str2) throws a0 {
        E(str);
        z zVar = (z) this.f1805b;
        zVar.getClass();
        return v5.h(z.B(zVar.a("GET", "/social/friends/" + z.w(str2) + "/profile", null, "application/json", Collections.emptyMap()).a()));
    }

    @Override // com.sgscq.vpn.w4
    public final Map h(String str) {
        return y5.l((Context) this.f1805b, (SharedPreferences) this.f1806c, str);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x003f  */
    public final ArrayList i(String str) throws a0 {
        a.p<a.q> pVarN;
        E(str);
        ArrayList arrayList = new ArrayList();
        z zVar = (z) this.f1805b;
        zVar.getClass();
        t tVarX = z.x(zVar.a("GET", "/social/friend-messages?limit=50", null, "application/json", Collections.emptyMap()).a());
        if (tVarX.o("messages")) {
            a.q qVarM = tVarX.m("messages");
            qVarM.getClass();
            if (qVarM instanceof a.p) {
                pVarN = tVarX.n("messages");
            } else {
                pVarN = null;
            }
        } else {
            pVarN = null;
        }
        if (pVarN == null) {
            throw new IllegalArgumentException("云好友留言响应不完整");
        }
        ArrayList arrayList2 = new ArrayList();
        for (a.q qVar : pVarN) {
            qVar.getClass();
            if (qVar instanceof t) {
                arrayList2.add(z.A(qVar.f()));
            }
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList.add(I((j) it.next()));
        }
        return arrayList;
    }

    @Override // com.sgscq.vpn.w4
    public final void j(String str, Map map) {
        y5.p((Context) this.f1805b, (SharedPreferences) this.f1806c, str, map);
    }

    public final ArrayList k(String str) throws a0 {
        E(str);
        ArrayList arrayList = new ArrayList();
        long jG = c7.g();
        z zVar = (z) this.f1805b;
        zVar.getClass();
        for (y yVar : (List) z.N(zVar.a("GET", "/social/friend-requests", null, "application/json", Collections.emptyMap()).a(), "requests").f1b) {
            String strM = m(yVar.f529a);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("pk_id", "cloud_friend_" + yVar.f529a);
            linkedHashMap.put("email_type", "friendApply");
            linkedHashMap.put("email_title", "好友申请");
            StringBuilder sb = new StringBuilder();
            String str2 = yVar.f530b;
            sb.append(str2);
            sb.append(" 请求添加你为好友");
            linkedHashMap.put("email_content", sb.toString());
            linkedHashMap.put("email_sender", strM);
            l.b(linkedHashMap, "email_sender_nickname", str2, 0, "email_time_offset");
            linkedHashMap.put("is_friend_request", Boolean.TRUE);
            linkedHashMap.put("is_attach_get", "1");
            linkedHashMap.put("send_time", Long.valueOf(jG));
            linkedHashMap.put("create_time", Long.valueOf(jG));
            linkedHashMap.put("expire_time", Long.valueOf(2592000 + jG));
            arrayList.add(linkedHashMap);
        }
        return arrayList;
    }

    public final ArrayList l(String str) throws a0 {
        E(str);
        z zVar = (z) this.f1805b;
        zVar.getClass();
        return N((List) z.N(zVar.a("GET", "/social/friends", null, "application/json", Collections.emptyMap()).a(), "friends").f1b);
    }

    public final int n(l.d dVar) {
        int i2 = 0;
        for (d dVar2 : (List) this.f1805b) {
            l.b bVar = dVar2.f1799a;
            int iA = bVar.a(dVar) + 4;
            int iOrdinal = bVar.ordinal();
            int i3 = dVar2.f1802d;
            if (iOrdinal == 1) {
                int i4 = ((i3 / 3) * 10) + iA;
                int i5 = i3 % 3;
                iA = i4 + (i5 != 1 ? i5 == 2 ? 7 : 0 : 4);
            } else if (iOrdinal == 2) {
                iA = ((i3 / 2) * 11) + iA + (i3 % 2 != 1 ? 0 : 6);
            } else if (iOrdinal == 4) {
                iA += dVar2.a() * 8;
            } else if (iOrdinal == 5) {
                iA += 8;
            } else if (iOrdinal == 6) {
                iA += i3 * 13;
            }
            i2 += iA;
        }
        return i2;
    }

    public final ArrayList o(String str) throws a0 {
        E(str);
        z zVar = (z) this.f1805b;
        zVar.getClass();
        return N((List) z.N(zVar.a("GET", "/social/guild/applications", null, "application/json", Collections.emptyMap()).a(), "applications").f1b);
    }

    public final com.sgscq.vpn.battle.a p(String str) throws a0 {
        E(str);
        z zVar = (z) this.f1805b;
        zVar.getClass();
        return z.C(z.x(zVar.a("GET", "/social/guild/goods", null, "application/json", Collections.emptyMap()).a()), -1);
    }

    public final v5 q(String str, String str2) throws a0 {
        E(str);
        z zVar = (z) this.f1805b;
        zVar.getClass();
        return v5.h(z.B(zVar.a("GET", "/social/guild/members/" + z.w(str2) + "/profile", null, "application/json", Collections.emptyMap()).a()));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x003f  */
    public final ArrayList r(String str) throws a0 {
        a.p<a.q> pVarN;
        E(str);
        ArrayList arrayList = new ArrayList();
        z zVar = (z) this.f1805b;
        zVar.getClass();
        t tVarX = z.x(zVar.a("GET", "/social/guild/members", null, "application/json", Collections.emptyMap()).a());
        if (tVarX.o("members")) {
            a.q qVarM = tVarX.m("members");
            qVarM.getClass();
            if (qVarM instanceof a.p) {
                pVarN = tVarX.n("members");
            } else {
                pVarN = null;
            }
        } else {
            pVarN = null;
        }
        if (pVarN == null) {
            throw new IllegalArgumentException("云公会成员响应不完整");
        }
        ArrayList<n> arrayList2 = new ArrayList();
        for (a.q qVar : pVarN) {
            qVar.getClass();
            if (qVar instanceof t) {
                t tVarF = qVar.f();
                arrayList2.add(new n(z.M(tVarF), z.G(tVarF)));
            }
        }
        for (n nVar : arrayList2) {
            boolean z = false;
            LinkedHashMap linkedHashMapM = M(nVar.f430a);
            com.sgscq.vpn.cloud.o oVar = nVar.f431b;
            linkedHashMapM.put("user_role", Integer.valueOf(oVar.f436a));
            linkedHashMapM.put("user_donate", Integer.valueOf(oVar.f437b));
            int i2 = oVar.f438c;
            if (i2 > 0) {
                z = true;
            }
            linkedHashMapM.put("donationState", Boolean.valueOf(z));
            linkedHashMapM.put("today_donate_num", Integer.valueOf(i2));
            linkedHashMapM.put("today_donate_type", Integer.valueOf(oVar.f439d));
            linkedHashMapM.put("user_last_login_time", Long.valueOf(oVar.f440e));
            linkedHashMapM.put("union_war_sign_up", Boolean.FALSE);
            linkedHashMapM.put("active", 0);
            linkedHashMapM.put("uw_join_times", 0);
            arrayList.add(linkedHashMapM);
        }
        return arrayList;
    }

    public final g s(String str) throws a0 {
        E(str);
        z zVar = (z) this.f1805b;
        zVar.getClass();
        return z.E(zVar.a("GET", "/social/guild", null, "application/json", Collections.emptyMap()).a());
    }

    public final ArrayList t(String str) throws a0 {
        E(str);
        z zVar = (z) this.f1805b;
        zVar.getClass();
        return K(z.F(zVar.a("GET", "/social/guild/war/roster", null, "application/json", Collections.emptyMap()).a()));
    }

    public final String toString() {
        switch (this.f1804a) {
            case 0:
                StringBuilder sb = new StringBuilder();
                d dVar = null;
                for (d dVar2 : (List) this.f1805b) {
                    if (dVar != null) {
                        sb.append(",");
                    }
                    sb.append(dVar2.toString());
                    dVar = dVar2;
                }
                return sb.toString();
            default:
                return super.toString();
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x005f  */
    public final ArrayList u(String str, String str2) throws a0 {
        a.p<a.q> pVarN;
        E(str);
        z zVar = (z) this.f1805b;
        zVar.getClass();
        String strTrim = str2 == null ? "" : str2.trim();
        t tVarX = z.x(zVar.a("GET", strTrim.isEmpty() ? "/social/guilds?limit=50" : "/social/guilds?limit=50&q=" + URLEncoder.encode(strTrim, "UTF-8"), null, "application/json", Collections.emptyMap()).a());
        if (tVarX.o("guilds")) {
            a.q qVarM = tVarX.m("guilds");
            qVarM.getClass();
            if (qVarM instanceof a.p) {
                pVarN = tVarX.n("guilds");
            } else {
                pVarN = null;
            }
        } else {
            pVarN = null;
        }
        if (pVarN == null) {
            throw new IllegalArgumentException("云公会列表响应不完整");
        }
        ArrayList arrayList = new ArrayList();
        for (a.q qVar : pVarN) {
            qVar.getClass();
            if (qVar instanceof t) {
                arrayList.add(z.D(qVar.f()));
            }
        }
        return arrayList;
    }

    public final boolean w(String str) {
        CloudSessionStore$SessionData cloudSessionStore$SessionDataY = ((e) this.f1806c).y();
        return cloudSessionStore$SessionDataY.isLoggedIn() && ((b0) this.f1807d).f(cloudSessionStore$SessionDataY.afdianUserId).a(cloudSessionStore$SessionDataY.afdianUserId, str);
    }

    public final boolean x(LinkedHashMap linkedHashMap) {
        Object obj;
        String str = "skill_id";
        if (linkedHashMap.containsKey("skill_id")) {
            obj = this.f1806c;
        } else {
            str = "equipment_id";
            if (linkedHashMap.containsKey("equipment_id")) {
                obj = this.f1807d;
            } else {
                str = "general_id";
                if (!linkedHashMap.containsKey("general_id")) {
                    return false;
                }
                obj = this.f1805b;
            }
        }
        return ((Set) obj).contains(P(linkedHashMap.get(str)));
    }

    public final synchronized CloudSessionStore$SessionData y() {
        String string = ((SharedPreferences) this.f1806c).getString("session_encrypted", "");
        if (string.isEmpty()) {
            return new CloudSessionStore$SessionData();
        }
        try {
            CloudSessionStore$SessionData cloudSessionStore$SessionData = (CloudSessionStore$SessionData) ((o) this.f1807d).d(y5.c(((Context) this.f1805b).getApplicationContext(), string, y5.f1570c), CloudSessionStore$SessionData.class);
            if (cloudSessionStore$SessionData == null) {
                return new CloudSessionStore$SessionData();
            }
            String str = cloudSessionStore$SessionData.environment;
            String str2 = "release";
            if (str == null) {
                str = "";
            }
            if (!str.equals("release")) {
                str2 = str.isEmpty() ? "release" : "";
            }
            if (str2.isEmpty()) {
                a();
                return new CloudSessionStore$SessionData();
            }
            if (!str2.equals(cloudSessionStore$SessionData.environment)) {
                cloudSessionStore$SessionData.environment = str2;
                F(cloudSessionStore$SessionData);
            }
            return cloudSessionStore$SessionData;
        } catch (Exception unused) {
            ((SharedPreferences) this.f1806c).edit().remove("session_encrypted").commit();
            return new CloudSessionStore$SessionData();
        }
    }

    public e(d2 d2Var, i iVar, byte[] bArr) {
        this.f1804a = 1;
        this.f1805b = d2Var;
        this.f1806c = iVar;
        this.f1807d = (byte[]) bArr.clone();
    }

    public e(h5 h5Var, Context context, SharedPreferences sharedPreferences) {
        this.f1804a = 3;
        this.f1807d = h5Var;
        this.f1805b = context;
        this.f1806c = sharedPreferences;
    }

    public e(String str, ArrayList arrayList) {
        this.f1804a = 7;
        this.f1806c = str;
        this.f1805b = i.a(arrayList);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            com.sgscq.vpn.config.c cVar = (com.sgscq.vpn.config.c) it.next();
            linkedHashMap.put(cVar.f552a, cVar);
        }
        this.f1807d = Collections.unmodifiableMap(linkedHashMap);
    }

    public e(String str, byte[] bArr, byte[] bArr2) {
        this.f1804a = 4;
        this.f1805b = (byte[]) bArr.clone();
        this.f1806c = (byte[]) bArr2.clone();
        this.f1807d = str == null ? "" : str;
    }

    public e(Set set, Set set2, Set set3) {
        this.f1804a = 8;
        this.f1805b = v(set);
        this.f1806c = v(set2);
        this.f1807d = v(set3);
    }

    public e(f fVar, l.d dVar, c cVar) {
        l.b bVar;
        Object obj;
        int i2;
        Serializable serializable;
        int i3;
        this.f1804a = 0;
        this.f1807d = fVar;
        this.f1805b = new ArrayList();
        c cVar2 = cVar;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            bVar = l.b.ECI;
            obj = this.f1805b;
            i2 = 1;
            if (cVar2 == null) {
                break;
            }
            int i6 = i4 + cVar2.f1796d;
            l.b bVar2 = cVar2.f1793a;
            l.b bVar3 = l.b.BYTE;
            int i7 = cVar2.f1795c;
            c cVar3 = cVar2.f1797e;
            boolean z = (bVar2 == bVar3 && cVar3 == null && i7 != 0) || !(cVar3 == null || i7 == cVar3.f1795c);
            i2 = z ? 1 : i5;
            if (cVar3 == null || cVar3.f1793a != bVar2 || z) {
                ((List) obj).add(0, new d(this, bVar2, cVar2.f1794b, i7, i6));
                i3 = 0;
            } else {
                i3 = i6;
            }
            if (z) {
                ((List) obj).add(0, new d(this, bVar, cVar2.f1794b, cVar2.f1795c, 0));
            }
            i5 = i2;
            i4 = i3;
            cVar2 = cVar3;
        }
        if (fVar.f1808a) {
            List list = (List) obj;
            d dVar2 = (d) list.get(0);
            if (dVar2 != null && dVar2.f1799a != bVar && i5 != 0) {
                list.add(0, new d(this, bVar, 0, 0, 0));
            }
            list.add(((d) list.get(0)).f1799a == bVar ? 1 : 0, new d(this, l.b.FNC1_FIRST_POSITION, 0, 0, 0));
        }
        int i8 = dVar.f1786a;
        int i9 = 26;
        int iC = a.b0.c(i8 <= 9 ? 1 : i8 <= 26 ? 2 : 3);
        if (iC == 0) {
            i9 = 9;
        } else if (iC != 1) {
            i2 = 27;
            i9 = 40;
        } else {
            i2 = 10;
        }
        int iN = n(dVar);
        while (true) {
            serializable = fVar.f1811d;
            if (i8 >= i9 || b.c(iN, l.d.b(i8), (l.a) serializable)) {
                break;
            } else {
                i8++;
            }
        }
        while (i8 > i2) {
            int i10 = i8 - 1;
            if (!b.c(iN, l.d.b(i10), (l.a) serializable)) {
                break;
            } else {
                i8 = i10;
            }
        }
        this.f1806c = l.d.b(i8);
    }

    public e(p.a aVar, p.a aVar2) {
        this.f1804a = 9;
        ArrayList arrayList = new ArrayList(2);
        if (aVar != null) {
            arrayList.add(aVar);
        }
        if (aVar2 != null) {
            arrayList.add(aVar2);
        }
        this(aVar, aVar2, arrayList);
    }

    public e(p.a aVar, p.a aVar2, ArrayList arrayList) {
        this.f1804a = 9;
        this.f1806c = aVar;
        this.f1807d = aVar2;
        this.f1805b = Collections.unmodifiableList(new ArrayList(arrayList));
    }
}
