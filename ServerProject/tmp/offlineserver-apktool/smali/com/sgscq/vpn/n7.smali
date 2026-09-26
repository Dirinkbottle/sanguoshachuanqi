.class public final synthetic Lcom/sgscq/vpn/n7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/sgscq/vpn/n7;->a:I

    .line 2
    .line 3
    iput p1, p0, Lcom/sgscq/vpn/n7;->b:I

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
    .locals 4

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/n7;->a:I

    .line 2
    .line 3
    iget v1, p0, Lcom/sgscq/vpn/n7;->b:I

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
    iget p1, p1, Lcom/sgscq/vpn/v5;->d:I

    .line 12
    .line 13
    int-to-long v2, p1

    .line 14
    int-to-long v0, v1

    .line 15
    sub-long/2addr v2, v0

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    return-wide v0

    .line 21
    :pswitch_1
    check-cast p1, Lcom/sgscq/vpn/v5;

    .line 22
    .line 23
    iget p1, p1, Lcom/sgscq/vpn/v5;->d:I

    .line 24
    .line 25
    int-to-long v2, p1

    .line 26
    int-to-long v0, v1

    .line 27
    sub-long/2addr v2, v0

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    return-wide v0

    .line 33
    :goto_0
    check-cast p1, Lcom/sgscq/vpn/v5;

    .line 34
    .line 35
    iget p1, p1, Lcom/sgscq/vpn/v5;->d:I

    .line 36
    .line 37
    int-to-long v2, p1

    .line 38
    int-to-long v0, v1

    .line 39
    sub-long/2addr v2, v0

    .line 40
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    return-wide v0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
