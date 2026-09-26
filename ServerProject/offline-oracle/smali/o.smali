.class public final Lcom/sgscq/vpn/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/sgscq/vpn/p;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sgscq/vpn/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sgscq/vpn/o;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sgscq/vpn/o;->b:Lcom/sgscq/vpn/p;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "empty entry name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
