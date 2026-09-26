.class public final Lcom/sgscq/vpn/cloud/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;IIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sgscq/vpn/cloud/l;->a:I

    iput-object p2, p0, Lcom/sgscq/vpn/cloud/l;->b:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sgscq/vpn/cloud/l;->c:I

    iput p4, p0, Lcom/sgscq/vpn/cloud/l;->d:I

    iput p5, p0, Lcom/sgscq/vpn/cloud/l;->e:I

    iput p6, p0, Lcom/sgscq/vpn/cloud/l;->f:I

    iput-boolean p7, p0, Lcom/sgscq/vpn/cloud/l;->g:Z

    return-void
.end method
