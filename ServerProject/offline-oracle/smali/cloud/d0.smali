.class public final Lcom/sgscq/vpn/cloud/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:D

.field public final i:I

.field public final j:I

.field public final k:J


# direct methods
.method public constructor <init>()V
    .locals 14

    .line 1
    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/sgscq/vpn/cloud/d0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IDIIJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IDIIJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/cloud/d0;->a:Ljava/lang/String;

    const-string p1, ""

    if-nez p2, :cond_0

    move-object p2, p1

    :cond_0
    iput-object p2, p0, Lcom/sgscq/vpn/cloud/d0;->b:Ljava/lang/String;

    if-nez p3, :cond_1

    move-object p3, p1

    :cond_1
    iput-object p3, p0, Lcom/sgscq/vpn/cloud/d0;->c:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/sgscq/vpn/cloud/d0;->d:I

    invoke-static {p2, p5}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/sgscq/vpn/cloud/d0;->e:I

    if-nez p6, :cond_2

    move-object p6, p1

    :cond_2
    iput-object p6, p0, Lcom/sgscq/vpn/cloud/d0;->f:Ljava/lang/String;

    invoke-static {p2, p7}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sgscq/vpn/cloud/d0;->g:I

    const-wide/16 p3, 0x0

    invoke-static {p3, p4, p8, p9}, Ljava/lang/Math;->max(DD)D

    move-result-wide p3

    iput-wide p3, p0, Lcom/sgscq/vpn/cloud/d0;->h:D

    invoke-static {p2, p10}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sgscq/vpn/cloud/d0;->i:I

    invoke-static {p2, p11}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sgscq/vpn/cloud/d0;->j:I

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, p12, p13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sgscq/vpn/cloud/d0;->k:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/cloud/d0;->e:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sgscq/vpn/cloud/d0;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/d0;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    iget-object p1, p0, Lcom/sgscq/vpn/cloud/d0;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
