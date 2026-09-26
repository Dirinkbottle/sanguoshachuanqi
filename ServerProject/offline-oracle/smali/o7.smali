.class public final synthetic Lcom/sgscq/vpn/o7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sgscq/vpn/o7;->a:I

    .line 2
    .line 3
    iput-wide p1, p0, Lcom/sgscq/vpn/o7;->b:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 5

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/o7;->a:I

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/sgscq/vpn/o7;->b:J

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
    iget-object p1, p1, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1, v2, p1}, Lcom/sgscq/vpn/p7;->C(JLjava/lang/String;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    return-wide v0

    .line 18
    :pswitch_1
    check-cast p1, Lcom/sgscq/vpn/v5;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1, v2, p1}, Lcom/sgscq/vpn/p7;->C(JLjava/lang/String;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    return-wide v0

    .line 27
    :pswitch_2
    check-cast p1, Lcom/sgscq/vpn/v5;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, v2, p1}, Lcom/sgscq/vpn/p7;->C(JLjava/lang/String;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    return-wide v0

    .line 36
    :pswitch_3
    check-cast p1, Lcom/sgscq/vpn/v5;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v1, v2, p1}, Lcom/sgscq/vpn/p7;->C(JLjava/lang/String;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    return-wide v0

    .line 45
    :pswitch_4
    check-cast p1, Lcom/sgscq/vpn/v5;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v1, v2, p1}, Lcom/sgscq/vpn/p7;->C(JLjava/lang/String;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    return-wide v0

    .line 54
    :goto_0
    check-cast p1, Lcom/sgscq/vpn/v5;

    .line 55
    .line 56
    sget-object v0, Lcom/sgscq/vpn/handler/h1;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 57
    .line 58
    iget p1, p1, Lcom/sgscq/vpn/v5;->d:I

    .line 59
    .line 60
    int-to-long v3, p1

    .line 61
    sub-long/2addr v3, v1

    .line 62
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    return-wide v0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
