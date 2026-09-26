.class public final Lcom/sgscq/vpn/cloud/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sgscq/vpn/cloud/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/sgscq/vpn/cloud/a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/sgscq/vpn/cloud/a;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/a;->a:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/sgscq/vpn/cloud/a;->b:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/sgscq/vpn/cloud/a;->c:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1, v2, v3}, Lcom/sgscq/vpn/cloud/b0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "_"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public final b(Lcom/sgscq/vpn/cloud/a;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sgscq/vpn/cloud/a;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/sgscq/vpn/cloud/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sgscq/vpn/cloud/a;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/sgscq/vpn/cloud/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sgscq/vpn/cloud/a;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/sgscq/vpn/cloud/a;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
