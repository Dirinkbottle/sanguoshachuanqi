.class public final synthetic Lcom/sgscq/vpn/l7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/sgscq/vpn/l7;->a:I

    .line 2
    .line 3
    iput p1, p0, Lcom/sgscq/vpn/l7;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/l7;->a:I

    .line 2
    .line 3
    iget v1, p0, Lcom/sgscq/vpn/l7;->b:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast p1, Lcom/sgscq/vpn/v5;

    .line 10
    .line 11
    iget p1, p1, Lcom/sgscq/vpn/v5;->c:I

    .line 12
    .line 13
    sub-int/2addr p1, v1

    .line 14
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :pswitch_1
    check-cast p1, Lcom/sgscq/vpn/v5;

    .line 20
    .line 21
    iget p1, p1, Lcom/sgscq/vpn/v5;->c:I

    .line 22
    .line 23
    sub-int/2addr p1, v1

    .line 24
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :pswitch_2
    check-cast p1, Lcom/sgscq/vpn/v5;

    .line 30
    .line 31
    iget p1, p1, Lcom/sgscq/vpn/v5;->c:I

    .line 32
    .line 33
    sub-int/2addr p1, v1

    .line 34
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :pswitch_3
    check-cast p1, Lcom/sgscq/vpn/v5;

    .line 40
    .line 41
    iget p1, p1, Lcom/sgscq/vpn/v5;->c:I

    .line 42
    .line 43
    sub-int/2addr p1, v1

    .line 44
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    return p1

    .line 49
    :pswitch_4
    check-cast p1, Lcom/sgscq/vpn/v5;

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lcom/sgscq/vpn/v5;->s(I)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1

    .line 56
    :goto_0
    check-cast p1, Lcom/sgscq/vpn/v5;

    .line 57
    .line 58
    sget-object v0, Lcom/sgscq/vpn/handler/h1;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 59
    .line 60
    iget p1, p1, Lcom/sgscq/vpn/v5;->c:I

    .line 61
    .line 62
    sub-int/2addr p1, v1

    .line 63
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    return p1

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
