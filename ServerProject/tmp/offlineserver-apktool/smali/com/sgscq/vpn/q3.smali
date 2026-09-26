.class public final Lcom/sgscq/vpn/q3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/net/URL;

.field public final b:Ljava/net/Proxy;


# direct methods
.method public constructor <init>(Ljava/net/Proxy;Ljava/net/URL;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sgscq/vpn/q3;->a:Ljava/net/URL;

    iput-object p1, p0, Lcom/sgscq/vpn/q3;->b:Ljava/net/Proxy;

    return-void
.end method
