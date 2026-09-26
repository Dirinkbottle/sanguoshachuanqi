.class public final Lcom/sgscq/vpn/cloud/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final a:Lcom/sgscq/vpn/cloud/q0;

.field public final b:Lm/e;

.field public final c:Lcom/sgscq/vpn/cloud/b0;

.field public final d:Lcom/sgscq/vpn/cloud/b0;

.field public final e:Lcom/sgscq/vpn/m4;

.field public final f:Lcom/sgscq/vpn/f0;

.field public final g:Ljava/util/concurrent/ScheduledExecutorService;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile i:Z

.field public volatile j:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/c0;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/sgscq/vpn/cloud/q0;

    invoke-direct {v0, p1}, Lcom/sgscq/vpn/cloud/q0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/c0;->a:Lcom/sgscq/vpn/cloud/q0;

    new-instance v0, Lm/e;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Lm/e;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/c0;->b:Lm/e;

    new-instance v0, Lcom/sgscq/vpn/cloud/b0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/sgscq/vpn/cloud/b0;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/c0;->c:Lcom/sgscq/vpn/cloud/b0;

    new-instance v0, Lcom/sgscq/vpn/cloud/b0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/sgscq/vpn/cloud/b0;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/c0;->d:Lcom/sgscq/vpn/cloud/b0;

    new-instance v0, Lcom/sgscq/vpn/m4;

    invoke-direct {v0, p1}, Lcom/sgscq/vpn/m4;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/c0;->e:Lcom/sgscq/vpn/m4;

    new-instance v0, Lcom/sgscq/vpn/f0;

    invoke-direct {v0, p1}, Lcom/sgscq/vpn/f0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/c0;->f:Lcom/sgscq/vpn/f0;

    new-instance p1, Lcom/sgscq/vpn/x0;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Lcom/sgscq/vpn/x0;-><init>(I)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/vpn/cloud/c0;->g:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lcom/sgscq/vpn/cloud/c0;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sgscq/vpn/cloud/c0;->i:Z

    iget-object v0, p0, Lcom/sgscq/vpn/cloud/c0;->g:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method
