.class public final synthetic Lcom/sgscq/vpn/w3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sgscq/vpn/PassportActivity;

.field public final synthetic c:Lcom/sgscq/vpn/k4;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/PassportActivity;Lcom/sgscq/vpn/k4;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sgscq/vpn/w3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/w3;->b:Lcom/sgscq/vpn/PassportActivity;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/sgscq/vpn/w3;->c:Lcom/sgscq/vpn/k4;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/sgscq/vpn/w3;->a:I

    .line 2
    .line 3
    iget-object p2, p0, Lcom/sgscq/vpn/w3;->c:Lcom/sgscq/vpn/k4;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/sgscq/vpn/w3;->b:Lcom/sgscq/vpn/PassportActivity;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    sget p1, Lcom/sgscq/vpn/PassportActivity;->q:I

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance p1, Lcom/sgscq/vpn/y3;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {p1, v0, p2, v1}, Lcom/sgscq/vpn/y3;-><init>(Lcom/sgscq/vpn/PassportActivity;Lcom/sgscq/vpn/k4;I)V

    .line 20
    .line 21
    .line 22
    const-string p2, "\u6b63\u5728\u5220\u9664\u672c\u673a\u5b58\u6863\u2026"

    .line 23
    .line 24
    invoke-virtual {v0, p2, p1}, Lcom/sgscq/vpn/PassportActivity;->g(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :goto_0
    sget p1, Lcom/sgscq/vpn/PassportActivity;->q:I

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance p1, Lcom/sgscq/vpn/y3;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-direct {p1, v0, p2, v1}, Lcom/sgscq/vpn/y3;-><init>(Lcom/sgscq/vpn/PassportActivity;Lcom/sgscq/vpn/k4;I)V

    .line 37
    .line 38
    .line 39
    const-string p2, "\u6b63\u5728\u6e05\u9664\u672c\u673a\u73a9\u5bb6\u6570\u636e\u2026"

    .line 40
    .line 41
    invoke-virtual {v0, p2, p1}, Lcom/sgscq/vpn/PassportActivity;->g(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
