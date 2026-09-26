.class public final synthetic Lcom/sgscq/vpn/g4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sgscq/vpn/PassportActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/PassportActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/sgscq/vpn/g4;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/g4;->b:Lcom/sgscq/vpn/PassportActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/sgscq/vpn/g4;->a:I

    .line 2
    .line 3
    iget-object p2, p0, Lcom/sgscq/vpn/g4;->b:Lcom/sgscq/vpn/PassportActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    sget p1, Lcom/sgscq/vpn/PassportActivity;->q:I

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance p1, Lcom/sgscq/vpn/u3;

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    invoke-direct {p1, p2, v0}, Lcom/sgscq/vpn/u3;-><init>(Lcom/sgscq/vpn/PassportActivity;I)V

    .line 18
    .line 19
    .line 20
    const-string v0, "\u6b63\u5728\u4fee\u590d\u81e3\u670d\u9b42\u9b44\u2026"

    .line 21
    .line 22
    invoke-virtual {p2, v0, p1}, Lcom/sgscq/vpn/PassportActivity;->g(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    sget p1, Lcom/sgscq/vpn/PassportActivity;->q:I

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance p1, Lcom/sgscq/vpn/u3;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-direct {p1, p2, v0}, Lcom/sgscq/vpn/u3;-><init>(Lcom/sgscq/vpn/PassportActivity;I)V

    .line 35
    .line 36
    .line 37
    const-string v0, "\u6b63\u5728\u6e05\u9664\u672c\u673a\u73a9\u5bb6\u6570\u636e\u2026"

    .line 38
    .line 39
    invoke-virtual {p2, v0, p1}, Lcom/sgscq/vpn/PassportActivity;->g(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :goto_0
    sget p1, Lcom/sgscq/vpn/PassportActivity;->q:I

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    new-instance p1, Lcom/sgscq/vpn/u3;

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    invoke-direct {p1, p2, v0}, Lcom/sgscq/vpn/u3;-><init>(Lcom/sgscq/vpn/PassportActivity;I)V

    .line 52
    .line 53
    .line 54
    const-string v0, "\u6b63\u5728\u5220\u9664\u672c\u673a\u901a\u884c\u8bc1\u2026"

    .line 55
    .line 56
    invoke-virtual {p2, v0, p1}, Lcom/sgscq/vpn/PassportActivity;->g(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
