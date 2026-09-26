package o;

import a.w;
import com.sgscq.battle.api.BattleRequest;
import com.sgscq.battle.api.BattleResponse;
import com.sgscq.battle.api.BattleRuntime;
import com.sgscq.battle.api.BattleRuntimeStatus;
import com.sgscq.battle.api.IntegrityAttestRequest;
import com.sgscq.battle.api.IntegrityAttestResponse;
import com.sgscq.vpn.battle.BattleResult;
import com.sgscq.vpn.battle.BattleScenario;
import com.sgscq.vpn.battle.BattleUnit;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class h implements BattleRuntime {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile h f1831c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final h f1832d = new h(new g(BattleRuntimeStatus.AUTH_REQUIRED));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BattleRuntime f1833a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final w f1834b = new w(16);

    public h(BattleRuntime battleRuntime) {
        this.f1833a = battleRuntime == null ? new g(BattleRuntimeStatus.MODULE_LOAD_FAILED) : battleRuntime;
    }

    public static h a() {
        h hVar = f1831c;
        return hVar == null ? f1832d : hVar;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00d5  */
    public final BattleResult b(BattleScenario battleScenario) {
        BattleUnit battleUnit;
        ArrayList arrayList;
        com.sgscq.vpn.battle.b bVar;
        com.sgscq.vpn.battle.b bVar2;
        BattleUnit battleUnit2;
        BattleResponse battleResponseSimulate = this.f1833a.simulate(BattleRequest.forMigration("auto", battleScenario, 15));
        if (battleResponseSimulate.getStatus() == BattleRuntimeStatus.READY && battleResponseSimulate.isSettled()) {
            return BattleResult.fromRuntime(battleResponseSimulate.getFightInfo(), battleResponseSimulate.getRounds(), battleResponseSimulate.isSuccess(), battleResponseSimulate.getRoundCount());
        }
        this.f1834b.getClass();
        List<BattleUnit> allies = battleScenario.getAllies();
        List<BattleUnit> enemies = battleScenario.getEnemies();
        com.sgscq.vpn.battle.b bVar3 = new com.sgscq.vpn.battle.b(allies, 0);
        com.sgscq.vpn.battle.b bVar4 = new com.sgscq.vpn.battle.b(enemies, 1);
        int i2 = bVar3.f218d;
        int i3 = bVar4.f218d;
        com.sgscq.vpn.battle.a aVar = new com.sgscq.vpn.battle.a(allies, enemies, i2, i3);
        ArrayList arrayList2 = new ArrayList();
        int i4 = battleScenario.getAllyGovern() >= battleScenario.getEnemyGovern() ? 0 : 1;
        int iMin = Math.min(15, Math.max(1, 15));
        int i5 = 0;
        while (i5 < iMin && bVar3.a() && bVar4.a()) {
            int i6 = i5 + 1;
            arrayList2.add(w.p("skill", "Round", "params", w.p("pre", w.p("roundCur", Integer.valueOf(i6)))));
            int i7 = 0;
            while (i7 < 3 && bVar3.a() && bVar4.a()) {
                BattleUnit battleUnit3 = null;
                if (i7 >= 0) {
                    BattleUnit[] battleUnitArr = bVar3.f216b;
                    if (i7 < battleUnitArr.length) {
                        battleUnit = battleUnitArr[i7];
                    } else {
                        battleUnit = null;
                    }
                } else {
                    battleUnit = null;
                }
                if (i7 >= 0) {
                    BattleUnit[] battleUnitArr2 = bVar4.f216b;
                    if (i7 < battleUnitArr2.length) {
                        battleUnit3 = battleUnitArr2[i7];
                    }
                }
                BattleUnit battleUnit4 = battleUnit3;
                if (i4 == 0) {
                    arrayList = arrayList2;
                    w.m(bVar3, battleUnit, bVar4, i7, aVar, arrayList);
                    bVar2 = bVar3;
                    bVar = bVar4;
                    battleUnit2 = battleUnit4;
                } else {
                    arrayList = arrayList2;
                    w.m(bVar4, battleUnit4, bVar3, i7, aVar, arrayList);
                    bVar = bVar3;
                    bVar2 = bVar4;
                    battleUnit2 = battleUnit;
                }
                w.m(bVar, battleUnit2, bVar2, i7, aVar, arrayList);
                i7++;
                i3 = i3;
                arrayList2 = arrayList;
                i2 = i2;
            }
            i5 = i6;
            i3 = i3;
            arrayList2 = arrayList2;
            i2 = i2;
        }
        ArrayList arrayList3 = arrayList2;
        int i8 = i3;
        int i9 = i2;
        return new BattleResult(w.p("init", w.p("first", Integer.valueOf(i4), "roundMax", Integer.valueOf(iMin), "cards_size0", Integer.valueOf(i9), "cards_size1", Integer.valueOf(i8), "backups_size0", Integer.valueOf(Math.max(0, allies.size() - i9)), "backups_size1", Integer.valueOf(Math.max(0, enemies.size() - i8)), "info", Arrays.asList(w.s(battleScenario.getAllyGovern(), allies), w.s(battleScenario.getEnemyGovern(), enemies)), "cards", aVar.f213b, "roundCur", 1, "skipRounds", 0), "rounds", arrayList3), arrayList3, bVar3.a() && !bVar4.a(), i5);
    }

    @Override // com.sgscq.battle.api.BattleRuntime
    public final void initialize(byte[] bArr) {
        try {
            this.f1833a.initialize(bArr);
        } catch (Throwable unused) {
        }
    }

    @Override // com.sgscq.battle.api.BattleRuntime
    public final IntegrityAttestResponse integrityAttest(IntegrityAttestRequest integrityAttestRequest) {
        try {
            return this.f1833a.integrityAttest(integrityAttestRequest);
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.sgscq.battle.api.BattleRuntime
    public final BattleResponse simulate(BattleRequest battleRequest) {
        return battleRequest == null ? BattleResponse.unavailable(BattleRuntimeStatus.MODULE_LOAD_FAILED) : this.f1833a.simulate(battleRequest);
    }

    @Override // com.sgscq.battle.api.BattleRuntime
    public final BattleRuntimeStatus status() {
        return this.f1833a.status();
    }
}
