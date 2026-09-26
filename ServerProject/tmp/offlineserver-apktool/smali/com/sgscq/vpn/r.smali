.class public final Lcom/sgscq/vpn/r;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/OutputStream;

.field public final b:Ljavax/crypto/Cipher;

.field public final c:[B

.field public d:I

.field public e:J

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/io/BufferedOutputStream;Ljavax/crypto/Cipher;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 v0, 0xbe

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sgscq/vpn/r;->c:[B

    iput-object p1, p0, Lcom/sgscq/vpn/r;->a:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/sgscq/vpn/r;->b:Ljavax/crypto/Cipher;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/r;->a:Ljava/io/OutputStream;

    :try_start_0
    iget-object v1, p0, Lcom/sgscq/vpn/r;->b:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lcom/sgscq/vpn/r;->c:[B

    iget v3, p0, Lcom/sgscq/vpn/r;->d:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    array-length v2, v1

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    array-length v2, v1

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iput v4, p0, Lcom/sgscq/vpn/r;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "RSA export encryption failed"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final close()V
    .locals 2

    iget-boolean v0, p0, Lcom/sgscq/vpn/r;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/sgscq/vpn/r;->d:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/sgscq/vpn/r;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/sgscq/vpn/r;->a:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sgscq/vpn/r;->f:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    throw v0
.end method

.method public final flush()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/sgscq/vpn/r;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/sgscq/vpn/r;->a:Ljava/io/OutputStream;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 12
    .line 13
    const-string v1, "stream closed"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public final write(I)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/sgscq/vpn/r;->f:Z

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/sgscq/vpn/r;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sgscq/vpn/r;->d:I

    int-to-byte p1, p1

    iget-object v2, p0, Lcom/sgscq/vpn/r;->c:[B

    aput-byte p1, v2, v0

    iget-wide v3, p0, Lcom/sgscq/vpn/r;->e:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sgscq/vpn/r;->e:J

    array-length p1, v2

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/sgscq/vpn/r;->c()V

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "stream closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final write([BII)V
    .locals 7

    if-eqz p1, :cond_4

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 4
    iget-boolean v0, p0, Lcom/sgscq/vpn/r;->f:Z

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    if-lez p3, :cond_1

    .line 5
    iget-object v0, p0, Lcom/sgscq/vpn/r;->c:[B

    array-length v1, v0

    iget v2, p0, Lcom/sgscq/vpn/r;->d:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/sgscq/vpn/r;->d:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/sgscq/vpn/r;->d:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sgscq/vpn/r;->d:I

    iget-wide v3, p0, Lcom/sgscq/vpn/r;->e:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sgscq/vpn/r;->e:J

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    array-length v0, v0

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/sgscq/vpn/r;->c()V

    goto :goto_0

    :cond_1
    return-void

    .line 6
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bytes"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
