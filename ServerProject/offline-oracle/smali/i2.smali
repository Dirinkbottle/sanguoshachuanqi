.class public final Lcom/sgscq/vpn/i2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/sgscq/vpn/config/i;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sgscq/vpn/i2;->a:J

    iput-object p3, p0, Lcom/sgscq/vpn/i2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/sgscq/vpn/i2;->c:Ljava/lang/Object;

    if-nez p5, :cond_0

    const-string p5, ""

    :cond_0
    iput-object p5, p0, Lcom/sgscq/vpn/i2;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sgscq/vpn/i2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sgscq/vpn/i2;

    iget-wide v3, p1, Lcom/sgscq/vpn/i2;->a:J

    iget-wide v5, p0, Lcom/sgscq/vpn/i2;->a:J

    cmp-long v1, v5, v3

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sgscq/vpn/i2;->c:Ljava/lang/Object;

    iget-object v3, p1, Lcom/sgscq/vpn/i2;->c:Ljava/lang/Object;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/sgscq/vpn/i2;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/sgscq/vpn/i2;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sgscq/vpn/i2;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/sgscq/vpn/i2;->d:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/sgscq/vpn/i2;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/sgscq/vpn/i2;->c:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sgscq/vpn/i2;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/sgscq/vpn/i2;->b:Ljava/lang/String;

    filled-new-array {v0, v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
