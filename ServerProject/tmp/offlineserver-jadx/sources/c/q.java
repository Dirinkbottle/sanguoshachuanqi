package c;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public abstract class q implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public r f65a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public r f66b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f67c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ s f68d;

    public q(s sVar) {
        this.f68d = sVar;
        this.f65a = sVar.f84f.f72d;
        this.f67c = sVar.f83e;
    }

    public final r a() {
        r rVar = this.f65a;
        s sVar = this.f68d;
        if (rVar == sVar.f84f) {
            throw new NoSuchElementException();
        }
        if (sVar.f83e != this.f67c) {
            throw new ConcurrentModificationException();
        }
        this.f65a = rVar.f72d;
        this.f66b = rVar;
        return rVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f65a != this.f68d.f84f;
    }

    @Override // java.util.Iterator
    public final void remove() {
        r rVar = this.f66b;
        if (rVar == null) {
            throw new IllegalStateException();
        }
        s sVar = this.f68d;
        sVar.d(rVar, true);
        this.f66b = null;
        this.f67c = sVar.f83e;
    }
}
