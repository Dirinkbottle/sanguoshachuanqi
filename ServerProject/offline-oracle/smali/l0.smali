.class public final Lcom/sgscq/vpn/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sgscq/vpn/l0;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/sgscq/vpn/l0;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/sgscq/vpn/l0;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/sgscq/vpn/l0;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/sgscq/vpn/l0;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/sgscq/vpn/l0;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/sgscq/vpn/l0;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/sgscq/vpn/l0;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/sgscq/vpn/l0;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/sgscq/vpn/l0;->j:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    return-void
.end method
