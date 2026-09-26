.class public final synthetic Lcom/sgscq/vpn/l3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sgscq/vpn/p;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sgscq/vpn/u6;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/u6;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/sgscq/vpn/l3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/l3;->b:Lcom/sgscq/vpn/u6;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/sgscq/vpn/n;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/l3;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/sgscq/vpn/l3;->b:Lcom/sgscq/vpn/u6;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/sgscq/vpn/u6;->e:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v0, v0, Lcom/sgscq/vpn/u6;->a:Lcom/sgscq/vpn/t6;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/sgscq/vpn/t6;->b(Lcom/sgscq/vpn/n;)V

    .line 15
    .line 16
    .line 17
    monitor-exit v1

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p1

    .line 22
    :goto_0
    iget-object v0, p0, Lcom/sgscq/vpn/l3;->b:Lcom/sgscq/vpn/u6;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/sgscq/vpn/u6;->e:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v1

    .line 27
    :try_start_1
    iget-object v0, v0, Lcom/sgscq/vpn/u6;->b:Lcom/sgscq/vpn/t6;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/sgscq/vpn/t6;->b(Lcom/sgscq/vpn/n;)V

    .line 30
    .line 31
    .line 32
    monitor-exit v1

    .line 33
    return-void

    .line 34
    :catchall_1
    move-exception p1

    .line 35
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    throw p1

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
