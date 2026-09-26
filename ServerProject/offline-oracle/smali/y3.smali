.class public final synthetic Lcom/sgscq/vpn/y3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sgscq/vpn/PassportActivity;

.field public final synthetic c:Lcom/sgscq/vpn/k4;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/PassportActivity;Lcom/sgscq/vpn/k4;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sgscq/vpn/y3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/y3;->b:Lcom/sgscq/vpn/PassportActivity;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/sgscq/vpn/y3;->c:Lcom/sgscq/vpn/k4;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/y3;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sgscq/vpn/y3;->c:Lcom/sgscq/vpn/k4;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/sgscq/vpn/y3;->b:Lcom/sgscq/vpn/PassportActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    iget-object v0, v2, Lcom/sgscq/vpn/PassportActivity;->a:Lcom/sgscq/vpn/m4;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/sgscq/vpn/k4;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/m4;->e(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "\u5df2\u5220\u9664\u901a\u884c\u8bc1"

    .line 19
    .line 20
    return-object v0

    .line 21
    :goto_0
    iget-object v0, v2, Lcom/sgscq/vpn/PassportActivity;->a:Lcom/sgscq/vpn/m4;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/sgscq/vpn/k4;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/m4;->o(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/m4;->a(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string v1, "\u4e91\u5b58\u6863\u4e0d\u53ef\u6e05\u9664\u73a9\u5bb6\u6570\u636e"

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_2
    :goto_1
    const-string v0, "\u5df2\u6e05\u9664\u73a9\u5bb6\u6570\u636e"

    .line 56
    .line 57
    return-object v0

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
