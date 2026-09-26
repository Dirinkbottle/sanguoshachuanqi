package com.sgscq.vpn.cloud;

import android.content.Context;
import com.google.gson.reflect.TypeToken;
import com.sgscq.vpn.d3;
import com.sgscq.vpn.p5;
import java.io.ByteArrayOutputStream;
import java.io.RandomAccessFile;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class z {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a.o f537c = new a.o();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Object f538d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile String f539e = "";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f540a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m.e f541b;

    public z(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f540a = applicationContext;
        this.f541b = new m.e(5, applicationContext);
    }

    public static j A(a.t tVar) {
        return new j(u(tVar, "id", 0L), a0(tVar, "sender_id", ""), a0(tVar, "sender_nickname", "玩家"), a0(tVar, "content", ""), u(tVar, "created_at", 0L));
    }

    public static r B(String str) {
        a.t tVarG = g(x(str), "profile");
        if (a0(tVarG, "cloud_character_id", "").trim().isEmpty()) {
            throw new IllegalArgumentException("好友阵容响应不完整");
        }
        return J(tVarG);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public static com.sgscq.vpn.battle.a C(a.t tVar, int i2) {
        a.p<a.q> pVarN;
        if (tVar.o("goods_list")) {
            a.q qVarM = tVar.m("goods_list");
            qVarM.getClass();
            if (qVarM instanceof a.p) {
                pVarN = tVar.n("goods_list");
            } else {
                pVarN = null;
            }
        } else {
            pVarN = null;
        }
        if (pVarN == null) {
            throw new IllegalArgumentException("云公会商品响应不完整");
        }
        ArrayList arrayList = new ArrayList();
        for (a.q qVar : pVarN) {
            qVar.getClass();
            if (qVar instanceof a.t) {
                a.t tVarF = qVar.f();
                String strTrim = a0(tVarF, "item_id", "").trim();
                if (!strTrim.isEmpty()) {
                    arrayList.add(new l(t(tVarF, "pk_id", 0), strTrim, t(tVarF, "item_num", 1), t(tVarF, "donate", 0), t(tVarF, "exchange_num", 0), t(tVarF, "exchanged_num", 0), d(tVarF, "can_exchange")));
                }
            }
        }
        return new com.sgscq.vpn.battle.a(t(tVar, "user_donate", Math.max(0, i2)), a0(tVar, "catalog_day", ""), arrayList);
    }

    public static m D(a.t tVar) {
        return new m(t(tVar, "union_id", 0), a0(tVar, "union_name", ""), t(tVar, "union_level", 0), a0(tVar, "leader_nickname", ""), t(tVar, "level_union_exp", 0), t(tVar, "level_up_exp", 0), t(tVar, "rank", 0), t(tVar, "user_num", 0), t(tVar, "user_limit", 50), a0(tVar, "notice", ""), a0(tVar, "union_sign", ""), t(tVar, "union_fightPoint", 0), t(tVar, "apply_state", 1));
    }

    public static g E(String str) {
        a.t tVarX = x(str);
        a.q qVarM = tVarX.m("guild");
        o oVarG = null;
        m mVarD = (qVarM == null || !(qVarM instanceof a.t)) ? null : D(qVarM.f());
        a.q qVarM2 = tVarX.m("membership");
        if (qVarM2 != null && (qVarM2 instanceof a.t)) {
            oVarG = G(qVarM2.f());
        }
        return new g(mVarD, oVarG, t(tVarX, "pending_application_count", 0), u(tVarX, "latest_application_id", 0L));
    }

    /* JADX WARN: Code duplicated, block: B:20:0x005f  */
    /* JADX WARN: Code duplicated, block: B:7:0x001c  */
    public static q F(String str) {
        a.p<a.q> pVarN;
        a.t tVar;
        a.t tVarX = x(str);
        if (tVarX.o("roster")) {
            a.q qVarM = tVarX.m("roster");
            qVarM.getClass();
            if (qVarM instanceof a.p) {
                pVarN = tVarX.n("roster");
            } else {
                pVarN = null;
            }
        } else {
            pVarN = null;
        }
        if (pVarN == null) {
            throw new IllegalArgumentException("云公会战阵容响应不完整");
        }
        ArrayList arrayList = new ArrayList();
        for (a.q qVar : pVarN) {
            qVar.getClass();
            if (qVar instanceof a.t) {
                a.t tVarF = qVar.f();
                if (tVarF.o("profile")) {
                    a.q qVarM2 = tVarF.m("profile");
                    qVarM2.getClass();
                    if (qVarM2 instanceof a.t) {
                        tVar = (a.t) tVarF.f27a.get("profile");
                    } else {
                        tVar = new a.t();
                    }
                } else {
                    tVar = new a.t();
                }
                String strTrim = a0(tVarF, "cloud_character_id", "").trim();
                if (!strTrim.isEmpty()) {
                    if (!tVar.o("cloud_character_id")) {
                        tVar.l("cloud_character_id", strTrim);
                    }
                    String strTrim2 = a0(tVarF, "nickname", "玩家").trim();
                    t(tVarF, "level", 1);
                    t(tVarF, "vip_level", 0);
                    String strA0 = a0(tVarF, "general_id", "131001");
                    double dM = m(tVarF);
                    int iT = t(tVarF, "battle_id", 1);
                    int iT2 = t(tVarF, "pos", 1);
                    t(tVarF, "source_revision", 0);
                    J(tVar);
                    arrayList.add(new p(strTrim, strTrim2, strA0, dM, iT, iT2));
                }
            }
        }
        a0(tVarX, "battle_day", "");
        return new q(0, u(tVarX, "snapshot_at_ms", 0L), arrayList);
    }

    public static o G(a.t tVar) {
        a0(tVar, "role", "member");
        return new o(t(tVar, "user_role", 3), t(tVar, "user_donate", 0), t(tVar, "today_donate_num", 0), t(tVar, "today_donate_type", 0), u(tVar, "user_last_login_time", 0L));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    public static d3 H(String str) {
        a.p pVarN;
        a.t tVarX = x(str);
        a.p<a.q> pVarN2 = null;
        if (tVarX.o("upserts")) {
            a.q qVarM = tVarX.m("upserts");
            qVarM.getClass();
            if (qVarM instanceof a.p) {
                pVarN = tVarX.n("upserts");
            } else {
                pVarN = null;
            }
        } else {
            pVarN = null;
        }
        if (tVarX.o("deleted_ids")) {
            a.q qVarM2 = tVarX.m("deleted_ids");
            qVarM2.getClass();
            if (qVarM2 instanceof a.p) {
                pVarN2 = tVarX.n("deleted_ids");
            }
        }
        if (pVarN == null || pVarN2 == null) {
            throw new IllegalArgumentException("云端对手增量响应不完整");
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        for (a.q qVar : pVarN2) {
            qVar.getClass();
            if (!(qVar instanceof a.x)) {
                throw new IllegalArgumentException("云端对手删除 ID 格式错误");
            }
            String strTrim = qVar.i().trim();
            if (strTrim.isEmpty() || !hashSet.add(strTrim)) {
                throw new IllegalArgumentException("云端对手删除 ID 无效");
            }
            arrayList.add(strTrim);
        }
        ArrayList arrayListK = K(pVarN);
        Iterator it = arrayListK.iterator();
        while (it.hasNext()) {
            if (!hashSet.add(((r) it.next()).f472a)) {
                throw new IllegalArgumentException("云端对手增量 ID 冲突");
            }
        }
        return new d3(arrayListK, arrayList, a0(tVarX, "next_cursor", "").trim(), t(tVarX, "total_count", arrayList.size() + arrayListK.size()), u(tVarX, "target_generation", 0L));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001c  */
    public static g I(String str) {
        a.p pVarN;
        a.t tVarX = x(str);
        if (tVarX.o("opponents")) {
            a.q qVarM = tVarX.m("opponents");
            qVarM.getClass();
            if (qVarM instanceof a.p) {
                pVarN = tVarX.n("opponents");
            } else {
                pVarN = null;
            }
        } else {
            pVarN = null;
        }
        if (pVarN == null) {
            throw new IllegalArgumentException("云端对手响应不完整");
        }
        ArrayList arrayListK = K(pVarN);
        return new g(t(tVarX, "total_count", arrayListK.size()), u(tVarX, "catalog_generation", 0L), a0(tVarX, "next_cursor", "").trim(), arrayListK);
    }

    public static r J(a.t tVar) {
        String strTrim = a0(tVar, "cloud_character_id", "").trim();
        String strTrim2 = a0(tVar, "nickname", "玩家").trim();
        int iT = t(tVar, "level", 1);
        int iT2 = t(tVar, "vip_level", 0);
        double dM = m(tVar);
        int iT3 = t(tVar, "ladder_rank", 1001);
        if (iT3 < 1 || iT3 > 9999) {
            iT3 = 1001;
        }
        long jU = u(tVar, "ladder_rank_verified_until_ms", 0L);
        int iT4 = t(tVar, "govern", 0);
        t(tVar, "revision", 0);
        return new r(strTrim, strTrim2, iT, iT2, dM, iT3, jU, iT4, v(tVar, "team_general"), v(tVar, "buddy_general"), v(tVar, "generals"), v(tVar, "skills"), v(tVar, "equipment"));
    }

    public static ArrayList K(a.p pVar) {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        Iterator it = pVar.iterator();
        while (it.hasNext()) {
            a.q qVar = (a.q) it.next();
            qVar.getClass();
            if (!(qVar instanceof a.t)) {
                throw new IllegalArgumentException("云端对手格式错误");
            }
            a.t tVarF = qVar.f();
            String strTrim = a0(tVarF, "cloud_character_id", "").trim();
            if (strTrim.isEmpty()) {
                throw new IllegalArgumentException("云端对手 ID 缺失");
            }
            if (!hashSet.add(strTrim)) {
                throw new IllegalArgumentException("云端对手 ID 重复");
            }
            arrayList.add(J(tVarF));
        }
        return arrayList;
    }

    public static x L(a.t tVar) {
        long jU = u(tVar, "last_transfer_at", 0L);
        int iT = t(tVar, "retry_after", 0);
        String strA0 = a0(tVar, "cloud_character_id", "");
        String strA1 = a0(tVar, "passport_uid", "");
        int iT2 = t(tVar, "revision", 0);
        String strA2 = a0(tVar, "nickname", "");
        int iT3 = t(tVar, "level", 0);
        double dM = m(tVar);
        long jU2 = tVar.o("last_upload_at") ? u(tVar, "last_upload_at", 0L) : jU;
        if (tVar.o("last_download_at")) {
            jU = u(tVar, "last_download_at", 0L);
        }
        int iT4 = tVar.o("upload_retry_after") ? t(tVar, "upload_retry_after", 0) : iT;
        if (tVar.o("download_retry_after")) {
            iT = t(tVar, "download_retry_after", 0);
        }
        return new x(strA0, strA1, iT2, strA2, iT3, dM, jU2, jU, iT4, iT, d(tVar, "cooldown_exempt"), d(tVar, "server_merged"));
    }

    public static y M(a.t tVar) {
        String strTrim = a0(tVar, "cloud_character_id", "").trim();
        String strTrim2 = a0(tVar, "nickname", "玩家").trim();
        int iT = t(tVar, "level", 1);
        int iT2 = t(tVar, "vip_level", 0);
        double dM = m(tVar);
        int i2 = 1001;
        int iT3 = t(tVar, "ladder_rank", 1001);
        if (iT3 >= 1 && iT3 <= 9999) {
            i2 = iT3;
        }
        return new y(strTrim, strTrim2, iT, iT2, dM, i2, a0(tVar, "general_id", "131001"), d(tVar, "is_invited"));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    public static a.a N(String str, String str2) {
        a.p<a.q> pVarN;
        a.t tVarX = x(str);
        if (tVarX.o(str2)) {
            a.q qVarM = tVarX.m(str2);
            qVarM.getClass();
            if (qVarM instanceof a.p) {
                pVarN = tVarX.n(str2);
            } else {
                pVarN = null;
            }
        } else {
            pVarN = null;
        }
        if (pVarN == null) {
            throw new IllegalArgumentException("云社交列表响应不完整");
        }
        ArrayList arrayList = new ArrayList();
        for (a.q qVar : pVarN) {
            qVar.getClass();
            if (qVar instanceof a.t) {
                y yVarM = M(qVar.f());
                if (!yVarM.f529a.isEmpty()) {
                    arrayList.add(yVarM);
                }
            }
        }
        return new a.a(arrayList);
    }

    public static e U() {
        a.t tVarX = x(p("POST", "/auth/integrity/challenge", "", "application/json", "", Collections.emptyMap(), f537c.i(c.a.q("environment", "release")).getBytes(StandardCharsets.UTF_8)).a());
        String strA0 = a0(tVarX, "challenge_id", "");
        if (strA0.isEmpty()) {
            return null;
        }
        return new e(strA0, u(tVarX, "offset", -1L), t(tVarX, "length", 0));
    }

    public static void W(CloudSessionStore$SessionData cloudSessionStore$SessionData, String str) throws a0 {
        if (str != null && !str.isEmpty() && !str.equals(cloudSessionStore$SessionData.afdianUserId)) {
            throw new a0(409, 0, "cloud_binding_changed", "云账号已切换，已取消旧角色消息同步");
        }
    }

    public static boolean X(CloudSessionStore$SessionData cloudSessionStore$SessionData, CloudSessionStore$SessionData cloudSessionStore$SessionData2) {
        return cloudSessionStore$SessionData.environment.equals(cloudSessionStore$SessionData2.environment) && cloudSessionStore$SessionData.afdianUserId.equals(cloudSessionStore$SessionData2.afdianUserId);
    }

    public static String a0(a.t tVar, String str, String str2) {
        try {
            a.q qVarM = tVar.m(str);
            if (qVarM != null && !(qVarM instanceof a.s)) {
                return qVarM.i();
            }
            return str2;
        } catch (Exception unused) {
            return str2;
        }
    }

    public static boolean d(a.t tVar, String str) {
        try {
            a.q qVarM = tVar.m(str);
            if (qVarM != null && !(qVarM instanceof a.s)) {
                return qVarM.b();
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static String e(String str) {
        String strTrim = str == null ? "" : str.trim();
        if (!strTrim.isEmpty() && !strTrim.matches("[0-9]+")) {
            throw new IllegalArgumentException("云端对手游标无效");
        }
        StringBuilder sb = new StringBuilder("/opponents?limit=20");
        sb.append(strTrim.isEmpty() ? "" : "&cursor=".concat(strTrim));
        return sb.toString();
    }

    public static a.t g(a.t tVar, String str) {
        a.q qVarM = tVar.m(str);
        return (qVarM == null || !(qVarM instanceof a.t)) ? new a.t() : qVarM.f();
    }

    public static byte[] k(String str) {
        char cCharAt;
        int i2;
        if (str == null || str.trim().isEmpty() || str.length() > 256) {
            throw new IllegalArgumentException("存档密钥编码无效");
        }
        String strReplace = str.trim().replace('-', '+').replace('_', '/');
        int length = strReplace.length() % 4;
        if (length == 1) {
            throw new IllegalArgumentException("存档密钥编码无效");
        }
        StringBuilder sb = new StringBuilder(strReplace);
        while (length > 0 && length < 4) {
            sb.append('=');
            length++;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < sb.length() && (cCharAt = sb.charAt(i5)) != '='; i5++) {
            if (cCharAt >= 'A' && cCharAt <= 'Z') {
                i2 = cCharAt - 'A';
            } else if (cCharAt >= 'a' && cCharAt <= 'z') {
                i2 = (cCharAt - 'a') + 26;
            } else if (cCharAt >= '0' && cCharAt <= '9') {
                i2 = (cCharAt - '0') + 52;
            } else if (cCharAt == '+' || cCharAt == '-') {
                i2 = 62;
            } else {
                i2 = (cCharAt == '/' || cCharAt == '_') ? 63 : -1;
            }
            if (i2 < 0) {
                throw new IllegalArgumentException("存档密钥编码无效");
            }
            i3 = (i3 << 6) | i2;
            i4 += 6;
            if (i4 >= 8) {
                i4 -= 8;
                byteArrayOutputStream.write((i3 >> i4) & 255);
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] l(String str) {
        if (str == null || str.isEmpty()) {
            return new byte[0];
        }
        try {
            return Base64.getDecoder().decode(str);
        } catch (IllegalArgumentException unused) {
            return new byte[0];
        }
    }

    public static double m(a.t tVar) {
        try {
            a.q qVarM = tVar.m("fighting");
            if (qVarM != null && !(qVarM instanceof a.s)) {
                return qVarM.c();
            }
        } catch (Exception unused) {
        }
        return 0.0d;
    }

    public static String o(String str, int i2) {
        if ("unsupported_schema_version".equals(str)) {
            return "云存档协议版本不兼容，请更新云服务或客户端";
        }
        if ("cloud_owner_mismatch".equals(str) || "cloud_owner_token_mismatch".equals(str) || "invalid_cloud_owner_token".equals(str)) {
            return "云存档账号归属校验失败";
        }
        if ("save_too_large".equals(str) || "compressed_save_too_large".equals(str)) {
            return "云存档过大，服务端拒绝接收（请反馈给作者）";
        }
        if ("save_structure_too_large".equals(str) || "save_structure_too_deep".equals(str) || "save_string_too_large".equals(str) || "invalid_save_key".equals(str)) {
            return "云存档结构过大，服务端拒绝接收（请反馈给作者）";
        }
        if ("idempotency_key_required".equals(str)) {
            return "云存档请求缺少幂等标识，请重试";
        }
        if ("transfer_cooldown".equals(str)) {
            return "上传或下载仍在冷却中";
        }
        if ("revision_conflict".equals(str)) {
            return "云端版本已更新";
        }
        if ("cloud_slot_already_bound".equals(str)) {
            return "该账号已经绑定云端角色";
        }
        if ("cloud_character_required".equals(str) || "cloud_slot_not_found".equals(str)) {
            return "当前账号没有云端角色";
        }
        if ("cloud_character_mismatch".equals(str)) {
            return "云角色与本地角色不一致";
        }
        if ("cloud_character_must_be_empty".equals(str)) {
            return "本地存档仍带旧云角色标识，请刷新后重试";
        }
        if ("opponent_sync_in_progress".equals(str)) {
            return "其他玩家阵容正在同步，请等待当前同步完成";
        }
        if ("opponent_catalog_changed".equals(str)) {
            return "云玩家目录持续更新，请稍后重试";
        }
        if ("chat_rate_limited".equals(str)) {
            return "每 10 秒最多发送一条消息";
        }
        if ("export_cooldown".equals(str)) {
            return "存档导出仍在冷却中";
        }
        if ("chat_muted".equals(str)) {
            return "当前账号已被禁言";
        }
        if ("invalid_chat_message".equals(str)) {
            return "聊天内容为空或过长";
        }
        if ("session_replaced".equals(str)) {
            return "帐号已在其他设备登录，当前登录已下线";
        }
        if ("cloud_role_hidden".equals(str)) {
            return "公开云角色已被屏蔽，登录和个人云存档仍可使用";
        }
        if ("account_blocked".equals(str)) {
            return "当前爱发电账号已被封禁";
        }
        if ("client_update_required".equals(str)) {
            return "当前客户端版本已停用，请更新后继续使用云功能";
        }
        if ("invalid_refresh_token".equals(str)) {
            return "云会话已过期，请重新登录爱发电";
        }
        if ("invalid_environment".equals(str) || "cloud_environment_mismatch".equals(str)) {
            return "云服务版本环境不匹配";
        }
        if ("guild_membership_required".equals(str)) {
            return "未加入公会";
        }
        if ("invalid_guild_goods".equals(str)) {
            return "公会商品不存在";
        }
        if ("guild_goods_already_exchanged_today".equals(str)) {
            return "该商品今日已兑换";
        }
        if ("guild_contribution_insufficient".equals(str)) {
            return "公会贡献不足";
        }
        if (i2 == 409) {
            return "云服务状态已变化，请刷新后重试";
        }
        StringBuilder sb = new StringBuilder("云服务请求失败（HTTP ");
        sb.append(i2);
        sb.append((str == null || str.isEmpty()) ? "" : ", ".concat(str));
        sb.append("）");
        return sb.toString();
    }

    public static t p(String str, String str2, String str3, String str4, String str5, Map map, byte[] bArr) {
        boolean z;
        if (!"GET".equals(str) && !"HEAD".equals(str) && !"DELETE".equals(str)) {
            if (!map.containsKey("Idempotency-Key")) {
                z = false;
            }
            return (t) p5.O(new c(str, str2, str3, bArr, str4, str5, map, z));
        }
        z = true;
        return (t) p5.O(new c(str, str2, str3, bArr, str4, str5, map, z));
    }

    public static int t(a.t tVar, String str, int i2) {
        try {
            a.q qVarM = tVar.m(str);
            if (qVarM != null && !(qVarM instanceof a.s)) {
                return qVarM.d();
            }
            return i2;
        } catch (Exception unused) {
            return i2;
        }
    }

    public static long u(a.t tVar, String str, long j2) {
        try {
            a.q qVarM = tVar.m(str);
            if (qVarM != null && !(qVarM instanceof a.s)) {
                return qVarM.h();
            }
            return j2;
        } catch (Exception unused) {
            return j2;
        }
    }

    public static List v(a.t tVar, String str) {
        a.q qVarM = tVar.m(str);
        if (qVarM == null || !(qVarM instanceof a.p)) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (a.q qVar : qVarM.e()) {
            qVar.getClass();
            if (!(qVar instanceof a.t)) {
                throw new IllegalArgumentException("云端对手条目格式错误");
            }
            a.o oVar = f537c;
            oVar.getClass();
            Map map = (Map) p5.A1(Map.class).cast(oVar.b(new d.i(qVar), TypeToken.get(Map.class)));
            if (map == null) {
                throw new IllegalArgumentException("云端对手条目格式错误");
            }
            arrayList.add(Collections.unmodifiableMap(new LinkedHashMap(map)));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static String w(String str) {
        String strTrim = str == null ? "" : str.trim();
        return strTrim.startsWith("cloud_") ? strTrim.substring(6) : strTrim;
    }

    public static a.t x(String str) {
        if (str == null) {
            str = "{}";
        }
        a.q qVarR = a.w.r(str);
        if (qVarR instanceof a.t) {
            return qVarR.f();
        }
        throw new IllegalArgumentException("JSON 对象格式错误");
    }

    public static h y(a.t tVar) {
        return new h(u(tVar, "id", 0L), a0(tVar, "user_id", "0"), t(tVar, "channel", 1), t(tVar, "vip_level", 0), a0(tVar, "nickname", "玩家"), a0(tVar, "message", ""), u(tVar, "time", 0L));
    }

    public static a0 z(String str, int i2) {
        try {
            a.t tVarX = x(str);
            String strA0 = a0(tVarX, "error", "cloud_http_" + i2);
            int iT = t(tVarX, "retry_after", 0);
            if (iT <= 0) {
                iT = (int) Math.min(2147483647L, Math.max(0L, (u(tVarX, "retry_after_ms", 0L) + 999) / 1000));
            }
            return new a0(i2, iT, u(tVarX, "current_generation", 0L), strA0, o(strA0, i2));
        } catch (Exception unused) {
            return new a0(i2, 0, a.b0.a("cloud_http_", i2), "云服务请求失败（HTTP " + i2 + "）");
        }
    }

    public final int O(String str, String str2, ArrayList arrayList) {
        if (arrayList.isEmpty() || arrayList.size() > 20) {
            throw new IllegalArgumentException("稀有奖励事件数量无效");
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            d dVar = (d) it.next();
            if (dVar != null) {
                String str3 = dVar.f306a;
                if (!str3.isEmpty()) {
                    String str4 = dVar.f307b;
                    if (!str4.isEmpty()) {
                        LinkedHashMap linkedHashMapR = c.a.r("kind", str3, "object_id", str4);
                        linkedHashMapR.put("quantity", Integer.valueOf(dVar.f308c));
                        arrayList2.add(linkedHashMapR);
                    }
                }
            }
        }
        if (arrayList2.isEmpty()) {
            throw new IllegalArgumentException("稀有奖励事件为空");
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("events", arrayList2);
        return t(x(b("POST", "/chat/acquisitions", "application/json", "", str2, c.a.q("Idempotency-Key", str), f537c.i(linkedHashMap).getBytes(StandardCharsets.UTF_8)).a()), "accepted", 0);
    }

    public final String P(long j2, int i2) {
        if (j2 < 0 || i2 <= 0 || i2 > 4096) {
            throw new IllegalArgumentException("完整性抽查参数无效");
        }
        Context context = this.f540a;
        String str = (context == null || context.getApplicationInfo() == null) ? null : context.getApplicationInfo().sourceDir;
        if (str == null || str.isEmpty()) {
            throw new IllegalStateException("无法定位安装包文件");
        }
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
        try {
            byte[] bArr = new byte[i2];
            randomAccessFile.seek(j2);
            int i3 = 0;
            while (i3 < i2) {
                int i4 = randomAccessFile.read(bArr, i3, i2 - i3);
                if (i4 < 0) {
                    throw new IllegalStateException("安装包区间越界");
                }
                i3 += i4;
            }
            String strEncodeToString = android.util.Base64.encodeToString(bArr, 2);
            randomAccessFile.close();
            return strEncodeToString;
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final CloudSessionStore$SessionData Q(CloudSessionStore$SessionData cloudSessionStore$SessionData, String str) {
        synchronized (f538d) {
            CloudSessionStore$SessionData cloudSessionStore$SessionDataY = this.f541b.y();
            W(cloudSessionStore$SessionDataY, str);
            boolean z = false;
            if (!X(cloudSessionStore$SessionData, cloudSessionStore$SessionDataY)) {
                throw new a0(409, 0, "cloud_binding_changed", "云账号已切换，已取消旧角色消息同步");
            }
            if (X(cloudSessionStore$SessionData, cloudSessionStore$SessionDataY) && cloudSessionStore$SessionDataY.isLoggedIn() && !cloudSessionStore$SessionDataY.refreshToken.equals(cloudSessionStore$SessionData.refreshToken)) {
                z = true;
            }
            if (z) {
                return cloudSessionStore$SessionDataY;
            }
            return R(cloudSessionStore$SessionDataY, str);
        }
    }

    public final CloudSessionStore$SessionData R(CloudSessionStore$SessionData cloudSessionStore$SessionData, String str) throws a0 {
        W(cloudSessionStore$SessionData, str);
        boolean z = false;
        if (cloudSessionStore$SessionData.refreshToken.isEmpty() || cloudSessionStore$SessionData.refreshExpiresAt <= System.currentTimeMillis()) {
            i(cloudSessionStore$SessionData);
            throw new a0(401, 0, "cloud_session_expired", "云会话已过期，请重新登录爱发电");
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("refresh_token", cloudSessionStore$SessionData.refreshToken);
        m.e eVar = this.f541b;
        linkedHashMap.put("device_id", eVar.d());
        try {
            a.t tVarX = x(p("POST", "/auth/refresh", "", "application/json", "", Collections.emptyMap(), f537c.i(linkedHashMap).getBytes(StandardCharsets.UTF_8)).a());
            String strA0 = a0(tVarX, "environment", "");
            if (!"release".equals(strA0)) {
                eVar.a();
                throw new a0(409, 0, "cloud_environment_mismatch", "云服务版本环境不匹配，请重新登录爱发电");
            }
            String strA1 = a0(tVarX, "access_token", "");
            long jU = u(tVarX, "access_expires_at", 0L);
            String strA2 = a0(tVarX, "refresh_token", "");
            long jU2 = u(tVarX, "refresh_expires_at", 0L);
            if (strA1.isEmpty() || strA2.isEmpty()) {
                throw new a0(502, 0, "invalid_refresh_response", "云会话刷新响应不完整");
            }
            CloudSessionStore$SessionData cloudSessionStore$SessionDataY = eVar.y();
            W(cloudSessionStore$SessionDataY, str);
            if (!X(cloudSessionStore$SessionData, cloudSessionStore$SessionDataY)) {
                throw new a0(409, 0, "cloud_binding_changed", "云账号已切换，已取消旧角色消息同步");
            }
            if (X(cloudSessionStore$SessionData, cloudSessionStore$SessionDataY) && cloudSessionStore$SessionDataY.isLoggedIn() && !cloudSessionStore$SessionDataY.refreshToken.equals(cloudSessionStore$SessionData.refreshToken)) {
                z = true;
            }
            if (z) {
                return cloudSessionStore$SessionDataY;
            }
            cloudSessionStore$SessionData.environment = strA0;
            cloudSessionStore$SessionData.accessToken = strA1;
            cloudSessionStore$SessionData.accessExpiresAt = jU;
            cloudSessionStore$SessionData.refreshToken = strA2;
            cloudSessionStore$SessionData.refreshExpiresAt = jU2;
            eVar.F(cloudSessionStore$SessionData);
            return cloudSessionStore$SessionData;
        } catch (a0 e2) {
            if (e2.f267a == 401) {
                i(cloudSessionStore$SessionData);
            }
            throw e2;
        }
    }

    public final e S() {
        a.t tVarX = x(c("POST", "/battle-runtime/integrity-challenge", Collections.emptyMap()).a());
        String strA0 = a0(tVarX, "challenge_id", "");
        if (strA0.isEmpty()) {
            return null;
        }
        return new e(strA0, u(tVarX, "offset", -1L), t(tVarX, "length", 0));
    }

    public final e T() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("environment", "release");
        a.t tVarX = x(c("POST", "/battle-runtime/challenge", linkedHashMap).a());
        int iT = t(tVarX, "challenge_id", 0);
        String strA0 = a0(tVarX, "nonce", "");
        long jU = u(tVarX, "expires_at", 0L);
        if (iT <= 0 || strA0.isEmpty() || jU <= 0) {
            throw new IllegalArgumentException("战斗 challenge 响应不完整");
        }
        return new e(iT, strA0, jU);
    }

    public final v V(String str) {
        String strTrim = str.trim();
        if (!"export".equals(strTrim) && !"import".equals(strTrim)) {
            throw new IllegalArgumentException("存档操作无效");
        }
        if (!"export".equals(strTrim) && !"import".equals(strTrim)) {
            throw new IllegalArgumentException("存档操作无效");
        }
        a.t tVarX = x(a("POST", "/save-archive/key", f537c.i(c.a.q("operation", strTrim)).getBytes(StandardCharsets.UTF_8), "application/json", Collections.emptyMap()).a());
        int iT = t(tVarX, "schema_version", 0);
        int iT2 = t(tVarX, "kdf_version", 0);
        byte[] bArrK = k(a0(tVarX, "key_material", ""));
        byte[] bArrK2 = k(a0(tVarX, "account_tag", ""));
        String strA0 = a0(tVarX, "environment", "");
        if (iT == 1 && iT2 == 1 && bArrK.length == 32 && bArrK2.length == 16 && ("debug".equals(strA0) || "release".equals(strA0))) {
            return new v(bArrK, bArrK2, strA0, u(tVarX, "cooldown_until_ms", 0L));
        }
        throw new IllegalArgumentException("存档密钥响应不完整");
    }

    public final h Y(String str, int i2, String str2) {
        LinkedHashMap linkedHashMapQ = c.a.q("message", str);
        linkedHashMapQ.put("nickname", str2.trim());
        linkedHashMapQ.put("channel", Integer.valueOf(i2 != 2 ? 1 : 2));
        String strI = f537c.i(linkedHashMapQ);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("Idempotency-Key", UUID.randomUUID().toString());
        return y(g(x(a("POST", "/chat/messages", strI.getBytes(StandardCharsets.UTF_8), "application/json", linkedHashMap).a()), "message"));
    }

    public final String Z(String str, String str2) {
        return a0(x(c("POST", str, (Map) f537c.d(str2, Map.class)).a()), "status", "success");
    }

    public final t a(String str, String str2, byte[] bArr, String str3, Map map) {
        return b(str, str2, str3, "", "", map, bArr);
    }

    public final t b(String str, String str2, String str3, String str4, String str5, Map map, byte[] bArr) throws a0 {
        CloudSessionStore$SessionData cloudSessionStore$SessionDataY = this.f541b.y();
        if (!cloudSessionStore$SessionDataY.isLoggedIn()) {
            throw new a0(401, 0, "afdian_login_required", "请先登录爱发电");
        }
        W(cloudSessionStore$SessionDataY, str5);
        if (cloudSessionStore$SessionDataY.accessToken.isEmpty() || cloudSessionStore$SessionDataY.accessExpiresAt <= System.currentTimeMillis() + 5000) {
            cloudSessionStore$SessionDataY = Q(cloudSessionStore$SessionDataY, str5);
        }
        CloudSessionStore$SessionData cloudSessionStore$SessionData = cloudSessionStore$SessionDataY;
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        try {
            return p(str, str2, cloudSessionStore$SessionData.accessToken, str3, str4, linkedHashMap, bArr);
        } catch (a0 e2) {
            if (e2.f267a != 401) {
                throw e2;
            }
            if (!"session_replaced".equals(e2.f268b)) {
                return p(str, str2, Q(cloudSessionStore$SessionData, str5).accessToken, str3, str4, linkedHashMap, bArr);
            }
            i(cloudSessionStore$SessionData);
            throw e2;
        }
    }

    public final x b0(String str, String str2, byte[] bArr, String str3, boolean z, boolean z2, String str4) {
        LinkedHashMap linkedHashMapQ = c.a.q("Idempotency-Key", str3);
        if (z) {
            linkedHashMapQ.put("X-Force-Overwrite", "true");
        }
        if (z2) {
            linkedHashMapQ.put("X-Conflict-Resolution", "use-local");
        }
        return L(x(b(str, str2, "application/octet-stream", "gzip", str4, linkedHashMapQ, bArr).a()));
    }

    public final t c(String str, String str2, Map map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("Idempotency-Key", UUID.randomUUID().toString());
        return a(str, str2, f537c.i(map).getBytes(StandardCharsets.UTF_8), "application/json", linkedHashMap);
    }

    public final i f(String str, String str2) {
        a.t tVarX = x(a("POST", "/identity/follower/check", f537c.i(c.a.r("provider", str, "external_id", str2)).getBytes(StandardCharsets.UTF_8), "application/json", Collections.emptyMap()).a());
        a0(tVarX, "provider", "");
        String strA0 = a0(tVarX, "status", "unknown");
        boolean zD = d(tVarX, "eligible");
        u(tVarX, "snapshot_at", 0L);
        u(tVarX, "valid_until", 0L);
        return new i(strA0, zD);
    }

    public final void h(List list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (list == null) {
            list = Collections.emptyList();
        }
        linkedHashMap.put("mail_ids", list);
        a.o oVar = f537c;
        c("POST", "/reward-mails/claims", (Map) oVar.d(oVar.i(linkedHashMap), Map.class));
    }

    public final void i(CloudSessionStore$SessionData cloudSessionStore$SessionData) {
        m.e eVar = this.f541b;
        CloudSessionStore$SessionData cloudSessionStore$SessionDataY = eVar.y();
        if (X(cloudSessionStore$SessionData, cloudSessionStore$SessionDataY) && cloudSessionStore$SessionData.refreshToken.equals(cloudSessionStore$SessionDataY.refreshToken)) {
            eVar.a();
        }
    }

    public final s j(long j2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("Idempotency-Key", UUID.randomUUID().toString());
        if (j2 < 0) {
            throw new IllegalArgumentException("云端对手目录代次无效");
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put("generation", Long.valueOf(j2));
        long jU = u(x(a("POST", "/opponents/sync-complete", f537c.i(linkedHashMap2).getBytes(StandardCharsets.UTF_8), "application/json", linkedHashMap).a()), "confirmed_generation", -1L);
        if (jU >= 0) {
            return new s(jU);
        }
        throw new IllegalArgumentException("云端对手确认响应不完整");
    }

    public final byte[] n(String str, Map map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("Idempotency-Key", UUID.randomUUID().toString());
        linkedHashMap.put("X-Cloud-Save-Schema", String.valueOf(2));
        linkedHashMap.putAll(map);
        return b("GET", "/cloud-slot/save", "application/octet-stream", "", str, linkedHashMap, null).f496a;
    }

    public final d3 q(long j2, String str, long j3) {
        if (j2 < 0 || j3 < j2) {
            throw new IllegalArgumentException("云端对手目录代次无效");
        }
        String strTrim = str == null ? "" : str.trim();
        if (!strTrim.isEmpty() && !strTrim.matches("[0-9]+")) {
            throw new IllegalArgumentException("云端对手游标无效");
        }
        StringBuilder sb = new StringBuilder("/opponents/changes?since_generation=");
        sb.append(j2);
        sb.append("&limit=20&target_generation=");
        sb.append(j3);
        sb.append(strTrim.isEmpty() ? "" : "&cursor=".concat(strTrim));
        return H(a("GET", sb.toString(), null, "application/json", Collections.emptyMap()).a());
    }

    public final g r(String str, long j2) {
        if (j2 < 0) {
            throw new IllegalArgumentException("云端对手目录代次无效");
        }
        return I(a("GET", e(str) + "&target_generation=" + j2, null, "application/json", Collections.emptyMap()).a());
    }

    public final x s(String str) {
        a.q qVarM = x(b("GET", "/cloud-slot", "application/json", "", str, Collections.emptyMap(), null).a()).m("slot");
        if (qVarM == null || (qVarM instanceof a.s) || !(qVarM instanceof a.t)) {
            return null;
        }
        return L(qVarM.f());
    }
}
