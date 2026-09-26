.class public Lcom/sgscq/vpn/battle/BattleSkillDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;
    }
.end annotation


# instance fields
.field private final code:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final majorProperty:Ljava/lang/String;

.field private final phase:Ljava/lang/String;

.field private final range:Ljava/lang/String;

.field private final skillType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;->access$000(Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->emptyToBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->code:Ljava/lang/String;

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;->access$100(Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->emptyToBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->skillType:Ljava/lang/String;

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;->access$200(Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->emptyToBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->majorProperty:Ljava/lang/String;

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;->access$300(Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->emptyToBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->phase:Ljava/lang/String;

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;->access$400(Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->emptyToBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->range:Ljava/lang/String;

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;->access$500(Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->emptyToBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->description:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;Lcom/sgscq/vpn/battle/BattleSkillDescriptor$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;-><init>(Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;)V

    return-void
.end method

.method public static builder(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;
    .locals 2

    new-instance v0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;-><init>(Ljava/lang/String;Lcom/sgscq/vpn/battle/BattleSkillDescriptor$1;)V

    return-object v0
.end method

.method private static emptyToBlank(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method


# virtual methods
.method public combinedText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->phase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->range:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getMajorProperty()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->majorProperty:Ljava/lang/String;

    return-object v0
.end method

.method public getPhase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->phase:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->range:Ljava/lang/String;

    return-object v0
.end method

.method public getSkillType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->skillType:Ljava/lang/String;

    return-object v0
.end method

.method public isEmptySkill()Z
    .locals 2

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->skillType:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->description:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
