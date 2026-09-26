.class public final Lcom/sgscq/vpn/a5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sgscq/vpn/a5;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    sget-object v0, Lcom/sgscq/vpn/a5;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ln/a;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ln/a;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
