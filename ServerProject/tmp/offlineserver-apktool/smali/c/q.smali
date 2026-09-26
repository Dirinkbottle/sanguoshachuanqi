.class public abstract Lc/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:Lc/r;

.field public b:Lc/r;

.field public c:I

.field public final synthetic d:Lc/s;


# direct methods
.method public constructor <init>(Lc/s;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lc/q;->d:Lc/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lc/s;->f:Lc/r;

    iget-object v0, v0, Lc/r;->d:Lc/r;

    iput-object v0, p0, Lc/q;->a:Lc/r;

    const/4 v0, 0x0

    iput-object v0, p0, Lc/q;->b:Lc/r;

    iget p1, p1, Lc/s;->e:I

    iput p1, p0, Lc/q;->c:I

    return-void
.end method


# virtual methods
.method public final a()Lc/r;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/q;->a:Lc/r;

    iget-object v1, p0, Lc/q;->d:Lc/s;

    iget-object v2, v1, Lc/s;->f:Lc/r;

    if-eq v0, v2, :cond_1

    iget v1, v1, Lc/s;->e:I

    iget v2, p0, Lc/q;->c:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lc/r;->d:Lc/r;

    iput-object v1, p0, Lc/q;->a:Lc/r;

    iput-object v0, p0, Lc/q;->b:Lc/r;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/q;->a:Lc/r;

    iget-object v1, p0, Lc/q;->d:Lc/s;

    iget-object v1, v1, Lc/s;->f:Lc/r;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/q;->b:Lc/r;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lc/q;->d:Lc/s;

    invoke-virtual {v2, v0, v1}, Lc/s;->d(Lc/r;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/q;->b:Lc/r;

    iget v0, v2, Lc/s;->e:I

    iput v0, p0, Lc/q;->c:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
