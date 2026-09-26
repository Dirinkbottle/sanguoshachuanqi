.class public final synthetic Lcom/sgscq/vpn/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sgscq/vpn/x0;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/x0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :pswitch_0
    new-instance v0, Ljava/lang/Thread;

    .line 9
    .line 10
    const-string v2, "Cloud-Save-Auto-Upload"

    .line 11
    .line 12
    invoke-direct {v0, p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :pswitch_1
    sget-object v0, Lcom/sgscq/vpn/cloud/b;->o:La/o;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/Thread;

    .line 22
    .line 23
    const-string v2, "Cloud-Acquisition-Sync"

    .line 24
    .line 25
    invoke-direct {v0, p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :pswitch_2
    sget-object v0, Lcom/sgscq/vpn/p7;->t:Ljava/util/HashMap;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/Thread;

    .line 35
    .line 36
    const-string v2, "sgscq-robot-roster"

    .line 37
    .line 38
    invoke-direct {v0, p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :pswitch_3
    sget-object v0, Lcom/sgscq/vpn/x6;->a:Ljava/lang/Object;

    .line 46
    .line 47
    new-instance v0, Ljava/lang/Thread;

    .line 48
    .line 49
    const-string v2, "save-startup-migration"

    .line 50
    .line 51
    invoke-direct {v0, p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    :pswitch_4
    sget v0, Lcom/sgscq/vpn/PassportActivity;->q:I

    .line 59
    .line 60
    new-instance v0, Ljava/lang/Thread;

    .line 61
    .line 62
    const-string v2, "passport-storage"

    .line 63
    .line 64
    invoke-direct {v0, p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 68
    .line 69
    .line 70
    return-object v0

    .line 71
    :pswitch_5
    sget-object v0, Lcom/sgscq/vpn/y2;->X:[Ljava/lang/String;

    .line 72
    .line 73
    new-instance v0, Ljava/lang/Thread;

    .line 74
    .line 75
    const-string v2, "sgscq-ladder-watchdog"

    .line 76
    .line 77
    invoke-direct {v0, p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    :pswitch_6
    sget-object v0, Lcom/sgscq/vpn/y2;->X:[Ljava/lang/String;

    .line 85
    .line 86
    new-instance v0, Ljava/lang/Thread;

    .line 87
    .line 88
    const-string v2, "LocalSrv-RespLog"

    .line 89
    .line 90
    invoke-direct {v0, p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 94
    .line 95
    .line 96
    return-object v0

    .line 97
    :pswitch_7
    sget-object v0, Lcom/sgscq/vpn/g2;->i:Ljava/lang/Object;

    .line 98
    .line 99
    new-instance v0, Ljava/lang/Thread;

    .line 100
    .line 101
    const-string v2, "LimitedShopConfig"

    .line 102
    .line 103
    invoke-direct {v0, p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 107
    .line 108
    .line 109
    return-object v0

    .line 110
    :pswitch_8
    new-instance v0, Ljava/lang/Thread;

    .line 111
    .line 112
    const-string v2, "PlayerSave-Compactor"

    .line 113
    .line 114
    invoke-direct {v0, p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 118
    .line 119
    .line 120
    return-object v0

    .line 121
    :pswitch_9
    new-instance v0, Ljava/lang/Thread;

    .line 122
    .line 123
    const-string v2, "DeviceAuditReporter"

    .line 124
    .line 125
    invoke-direct {v0, p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 129
    .line 130
    .line 131
    return-object v0

    .line 132
    :goto_0
    sget-object v0, Lp/l;->o:Ljava/lang/Object;

    .line 133
    .line 134
    new-instance v0, Ljava/lang/Thread;

    .line 135
    .line 136
    const-string v2, "VpsLimitedSchedule"

    .line 137
    .line 138
    invoke-direct {v0, p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 142
    .line 143
    .line 144
    return-object v0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
