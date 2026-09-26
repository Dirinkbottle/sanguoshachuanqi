.class public final Lcom/sgscq/vpn/cloud/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:D

.field public final g:J

.field public final h:J

.field public final i:I

.field public final j:I

.field public final k:Z

.field public final l:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IDJJIIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/cloud/x;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sgscq/vpn/cloud/x;->b:Ljava/lang/String;

    iput p3, p0, Lcom/sgscq/vpn/cloud/x;->c:I

    iput-object p4, p0, Lcom/sgscq/vpn/cloud/x;->d:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-static {p1, p5}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/sgscq/vpn/cloud/x;->e:I

    const-wide/16 p2, 0x0

    invoke-static {p2, p3, p6, p7}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    iput-wide p2, p0, Lcom/sgscq/vpn/cloud/x;->f:D

    iput-wide p8, p0, Lcom/sgscq/vpn/cloud/x;->g:J

    iput-wide p10, p0, Lcom/sgscq/vpn/cloud/x;->h:J

    invoke-static {p1, p12}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/sgscq/vpn/cloud/x;->i:I

    invoke-static {p1, p13}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sgscq/vpn/cloud/x;->j:I

    iput-boolean p14, p0, Lcom/sgscq/vpn/cloud/x;->k:Z

    iput-boolean p15, p0, Lcom/sgscq/vpn/cloud/x;->l:Z

    return-void
.end method
