.class public final synthetic Lcom/sgscq/vpn/handler/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/Random;


# direct methods
.method public synthetic constructor <init>(ILjava/util/Random;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sgscq/vpn/handler/q;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/sgscq/vpn/handler/q;->b:Ljava/util/Random;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()D
    .locals 2

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/handler/q;->a:I

    iget-object v1, p0, Lcom/sgscq/vpn/handler/q;->b:Ljava/util/Random;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0

    :goto_0
    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
