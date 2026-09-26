.class public final Lcom/sgscq/vpn/cloud/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:D

.field public final f:I

.field public final g:J

.field public final h:I

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/List;

.field public final k:Ljava/util/List;

.field public final l:Ljava/util/List;

.field public final m:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIDIJILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/cloud/r;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sgscq/vpn/cloud/r;->b:Ljava/lang/String;

    iput p3, p0, Lcom/sgscq/vpn/cloud/r;->c:I

    iput p4, p0, Lcom/sgscq/vpn/cloud/r;->d:I

    iput-wide p5, p0, Lcom/sgscq/vpn/cloud/r;->e:D

    iput p7, p0, Lcom/sgscq/vpn/cloud/r;->f:I

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, p8, p9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sgscq/vpn/cloud/r;->g:J

    iput p10, p0, Lcom/sgscq/vpn/cloud/r;->h:I

    iput-object p11, p0, Lcom/sgscq/vpn/cloud/r;->i:Ljava/util/List;

    iput-object p12, p0, Lcom/sgscq/vpn/cloud/r;->j:Ljava/util/List;

    iput-object p13, p0, Lcom/sgscq/vpn/cloud/r;->k:Ljava/util/List;

    iput-object p14, p0, Lcom/sgscq/vpn/cloud/r;->l:Ljava/util/List;

    iput-object p15, p0, Lcom/sgscq/vpn/cloud/r;->m:Ljava/util/List;

    return-void
.end method
