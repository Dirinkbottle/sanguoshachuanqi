.class public final Lcom/sgscq/vpn/cloud/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:I


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sgscq/vpn/cloud/e;->c:I

    iput-object p2, p0, Lcom/sgscq/vpn/cloud/e;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sgscq/vpn/cloud/e;->b:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/cloud/e;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/sgscq/vpn/cloud/e;->b:J

    iput p4, p0, Lcom/sgscq/vpn/cloud/e;->c:I

    return-void
.end method
