.class public final synthetic Lcom/sgscq/vpn/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sgscq/vpn/w0;


# instance fields
.field public final synthetic a:Lcom/sgscq/vpn/DebugSparringConfigActivity;

.field public final synthetic b:Lcom/sgscq/vpn/v0;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/DebugSparringConfigActivity;Lcom/sgscq/vpn/v0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sgscq/vpn/s0;->a:Lcom/sgscq/vpn/DebugSparringConfigActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/sgscq/vpn/s0;->b:Lcom/sgscq/vpn/v0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f:[F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/sgscq/vpn/s0;->a:Lcom/sgscq/vpn/DebugSparringConfigActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/sgscq/vpn/s0;->b:Lcom/sgscq/vpn/v0;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/sgscq/vpn/v0;->a:Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    .line 11
    .line 12
    iput-object p1, v1, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->cultivateAttr:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "none"

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, v0, Lcom/sgscq/vpn/v0;->a:Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-boolean v1, p1, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->extreme:Z

    .line 26
    .line 27
    :cond_0
    invoke-static {v0}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->g(Lcom/sgscq/vpn/v0;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
