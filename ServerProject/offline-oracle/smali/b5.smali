.class public final Lcom/sgscq/vpn/b5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Ljavax/crypto/spec/SecretKeySpec;


# virtual methods
.method public final a(Lcom/sgscq/vpn/f2;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/b5;->a:Ljavax/crypto/spec/SecretKeySpec;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sgscq/vpn/b5;->a:Ljavax/crypto/spec/SecretKeySpec;

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/sgscq/vpn/f2;->c()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/vpn/b5;->a:Ljavax/crypto/spec/SecretKeySpec;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
