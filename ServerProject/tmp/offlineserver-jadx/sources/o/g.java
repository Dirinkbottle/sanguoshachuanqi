package o;

import com.sgscq.battle.api.BattleRequest;
import com.sgscq.battle.api.BattleResponse;
import com.sgscq.battle.api.BattleRuntime;
import com.sgscq.battle.api.BattleRuntimeStatus;

/* JADX INFO: loaded from: classes.dex */
public final class g implements BattleRuntime {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BattleRuntimeStatus f1830a;

    public g(BattleRuntimeStatus battleRuntimeStatus) {
        this.f1830a = battleRuntimeStatus;
    }

    @Override // com.sgscq.battle.api.BattleRuntime
    public final BattleResponse simulate(BattleRequest battleRequest) {
        return BattleResponse.unavailable(this.f1830a);
    }

    @Override // com.sgscq.battle.api.BattleRuntime
    public final BattleRuntimeStatus status() {
        return this.f1830a;
    }
}
