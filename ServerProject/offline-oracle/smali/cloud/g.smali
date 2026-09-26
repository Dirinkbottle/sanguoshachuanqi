.class public final Lcom/sgscq/vpn/cloud/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sgscq/vpn/cloud/g;-><init>(Lcom/sgscq/vpn/cloud/m;Lcom/sgscq/vpn/cloud/o;IJ)V

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p5

    iput-object p5, p0, Lcom/sgscq/vpn/cloud/g;->c:Ljava/lang/Object;

    if-nez p4, :cond_0

    const-string p4, ""

    :cond_0
    iput-object p4, p0, Lcom/sgscq/vpn/cloud/g;->d:Ljava/lang/Object;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sgscq/vpn/cloud/g;->a:I

    const-wide/16 p4, 0x0

    invoke-static {p4, p5, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sgscq/vpn/cloud/g;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/sgscq/vpn/cloud/m;Lcom/sgscq/vpn/cloud/o;IJ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/cloud/g;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sgscq/vpn/cloud/g;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sgscq/vpn/cloud/g;->a:I

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sgscq/vpn/cloud/g;->b:J

    return-void
.end method

.method public constructor <init>(Ljava/util/List;JLcom/sgscq/vpn/cloud/g;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/cloud/g;->c:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/sgscq/vpn/cloud/g;->b:J

    iput-object p4, p0, Lcom/sgscq/vpn/cloud/g;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p1, p5}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sgscq/vpn/cloud/g;->a:I

    return-void
.end method
