.class public final Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public accessExpiresAt:J

.field public accessToken:Ljava/lang/String;

.field public afdianUserId:Ljava/lang/String;

.field public environment:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public refreshExpiresAt:J

.field public refreshToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->environment:Ljava/lang/String;

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->accessToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->refreshToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isLoggedIn()Z
    .locals 2

    const-string v0, "release"

    iget-object v1, p0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->environment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
