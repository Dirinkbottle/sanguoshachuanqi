.class public final synthetic Lq/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/net/Socket;

.field public final synthetic c:Ljava/net/Socket;


# direct methods
.method public synthetic constructor <init>(Ljava/net/Socket;Ljava/net/Socket;I)V
    .locals 0

    .line 1
    iput p3, p0, Lq/b;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lq/b;->b:Ljava/net/Socket;

    .line 4
    .line 5
    iput-object p2, p0, Lq/b;->c:Ljava/net/Socket;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x4000

    .line 3
    .line 4
    iget v2, p0, Lq/b;->a:I

    .line 5
    .line 6
    iget-object v3, p0, Lq/b;->c:Ljava/net/Socket;

    .line 7
    .line 8
    iget-object v4, p0, Lq/b;->b:Ljava/net/Socket;

    .line 9
    .line 10
    packed-switch v2, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :pswitch_0
    :try_start_0
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    new-array v1, v1, [B

    .line 23
    .line 24
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-ltz v6, :cond_1

    .line 29
    .line 30
    if-nez v6, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v5, v1, v0, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    invoke-static {v4}, Lq/d;->a(Ljava/net/Socket;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v3}, Lq/d;->a(Ljava/net/Socket;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :catch_0
    :cond_1
    invoke-static {v4}, Lq/d;->a(Ljava/net/Socket;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v3}, Lq/d;->a(Ljava/net/Socket;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :goto_1
    sget-object v2, Lq/i;->g:Ljava/lang/Object;

    .line 56
    .line 57
    :try_start_1
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    new-array v1, v1, [B

    .line 66
    .line 67
    :goto_2
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-ltz v6, :cond_3

    .line 72
    .line 73
    if-nez v6, :cond_2

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    invoke-virtual {v5, v1, v0, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :catchall_1
    move-exception v0

    .line 84
    invoke-static {v4}, Lq/i;->b(Ljava/net/Socket;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v3}, Lq/i;->b(Ljava/net/Socket;)V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :catch_1
    :cond_3
    invoke-static {v4}, Lq/i;->b(Ljava/net/Socket;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v3}, Lq/i;->b(Ljava/net/Socket;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
