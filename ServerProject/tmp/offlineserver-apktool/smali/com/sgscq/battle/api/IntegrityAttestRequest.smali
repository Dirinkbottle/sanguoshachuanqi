.class public final Lcom/sgscq/battle/api/IntegrityAttestRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final challengeId:Ljava/lang/String;

.field private final length:I

.field private final offset:J

.field private final sourceDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/sgscq/battle/api/IntegrityAttestRequest;->challengeId:Ljava/lang/String;

    iput-wide p2, p0, Lcom/sgscq/battle/api/IntegrityAttestRequest;->offset:J

    iput p4, p0, Lcom/sgscq/battle/api/IntegrityAttestRequest;->length:I

    if-nez p5, :cond_1

    move-object p5, v0

    :cond_1
    iput-object p5, p0, Lcom/sgscq/battle/api/IntegrityAttestRequest;->sourceDir:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChallengeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/battle/api/IntegrityAttestRequest;->challengeId:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/sgscq/battle/api/IntegrityAttestRequest;->length:I

    return v0
.end method

.method public getOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/sgscq/battle/api/IntegrityAttestRequest;->offset:J

    return-wide v0
.end method

.method public getSourceDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/battle/api/IntegrityAttestRequest;->sourceDir:Ljava/lang/String;

    return-object v0
.end method
