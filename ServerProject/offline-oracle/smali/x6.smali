.class public abstract Lcom/sgscq/vpn/x6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Landroid/os/Handler;

.field public static final c:Ljava/util/concurrent/ExecutorService;

.field public static final d:Ljava/util/ArrayList;

.field public static e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sgscq/vpn/x6;->a:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sgscq/vpn/x6;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sgscq/vpn/x0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/sgscq/vpn/x0;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/x6;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sgscq/vpn/x6;->d:Ljava/util/ArrayList;

    const/4 v0, 0x1

    sput v0, Lcom/sgscq/vpn/x6;->e:I

    return-void
.end method
