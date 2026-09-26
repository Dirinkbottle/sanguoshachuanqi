.class public Lcom/sgscq/vpn/battle/BattleSkill$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sgscq/vpn/battle/BattleSkill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private advancedLevel:I

.field private animationSkill:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private explicitTriggerNode:Z

.field private firstTriggerAction:I

.field private firstTriggerMaxAction:I

.field private firstTriggerMinAction:I

.field private final id:Ljava/lang/String;

.field private majorAttribute:Lcom/sgscq/vpn/battle/BattleAttribute;

.field private mandatoryTrigger:Z

.field private params:[D

.field private repeatTriggerMaxAction:I

.field private repeatTriggerMinAction:I

.field private spec:Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;

.field private template:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

.field private triggerInterval:I

.field private type:Lcom/sgscq/vpn/battle/BattleSkillType;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillType;->NONE:Lcom/sgscq/vpn/battle/BattleSkillType;

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->type:Lcom/sgscq/vpn/battle/BattleSkillType;

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->SINGLE_ATTRIBUTE_DAMAGE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->template:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    sget-object v0, Lcom/sgscq/vpn/battle/BattleAttribute;->ATTACK:Lcom/sgscq/vpn/battle/BattleAttribute;

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->majorAttribute:Lcom/sgscq/vpn/battle/BattleAttribute;

    const/4 v0, 0x0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->params:[D

    const/4 v0, 0x4

    iput v0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->firstTriggerAction:I

    iput v0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->triggerInterval:I

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->code:Ljava/lang/String;

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->animationSkill:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/sgscq/vpn/battle/BattleSkill$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->code:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->firstTriggerMinAction:I

    return p0
.end method

.method public static synthetic access$1100(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->firstTriggerMaxAction:I

    return p0
.end method

.method public static synthetic access$1200(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->repeatTriggerMinAction:I

    return p0
.end method

.method public static synthetic access$1300(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->repeatTriggerMaxAction:I

    return p0
.end method

.method public static synthetic access$1400(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->triggerInterval:I

    return p0
.end method

.method public static synthetic access$1500(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->explicitTriggerNode:Z

    return p0
.end method

.method public static synthetic access$1600(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->mandatoryTrigger:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->animationSkill:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)Lcom/sgscq/vpn/battle/BattleSkillType;
    .locals 0

    iget-object p0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->type:Lcom/sgscq/vpn/battle/BattleSkillType;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)Lcom/sgscq/vpn/battle/BattleSkillTemplate;
    .locals 0

    iget-object p0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->template:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;
    .locals 0

    iget-object p0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->spec:Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)Lcom/sgscq/vpn/battle/BattleAttribute;
    .locals 0

    iget-object p0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->majorAttribute:Lcom/sgscq/vpn/battle/BattleAttribute;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)[D
    .locals 0

    iget-object p0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->params:[D

    return-object p0
.end method

.method public static synthetic access$800(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->advancedLevel:I

    return p0
.end method

.method public static synthetic access$900(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->firstTriggerAction:I

    return p0
.end method

.method private static clampScheduleAction(II)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static normalizeParams(Ljava/lang/String;[D)[D
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [D

    goto :goto_0

    :cond_0
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p1

    :goto_0
    const-string v1, "311015"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    array-length p0, p1

    const/4 v1, 0x2

    if-lt p0, v1, :cond_1

    aget-wide v1, p1, v0

    const/4 p0, 0x1

    aget-wide v3, p1, p0

    aput-wide v3, p1, v0

    aput-wide v1, p1, p0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public advancedLevel(I)Lcom/sgscq/vpn/battle/BattleSkill$Builder;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->advancedLevel:I

    return-object p0
.end method

.method public animationSkill(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkill$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->animationSkill:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/sgscq/vpn/battle/BattleSkill;
    .locals 2

    new-instance v0, Lcom/sgscq/vpn/battle/BattleSkill;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sgscq/vpn/battle/BattleSkill;-><init>(Lcom/sgscq/vpn/battle/BattleSkill$Builder;Lcom/sgscq/vpn/battle/BattleSkill$1;)V

    return-object v0
.end method

.method public code(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkill$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->code:Ljava/lang/String;

    return-object p0
.end method

.method public firstTriggerAction(I)Lcom/sgscq/vpn/battle/BattleSkill$Builder;
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->firstTriggerAction:I

    iput-boolean v0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->explicitTriggerNode:Z

    return-object p0
.end method

.method public majorAttribute(Lcom/sgscq/vpn/battle/BattleAttribute;)Lcom/sgscq/vpn/battle/BattleSkill$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->majorAttribute:Lcom/sgscq/vpn/battle/BattleAttribute;

    return-object p0
.end method

.method public mandatoryTrigger(Z)Lcom/sgscq/vpn/battle/BattleSkill$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->mandatoryTrigger:Z

    return-object p0
.end method

.method public varargs params([D)Lcom/sgscq/vpn/battle/BattleSkill$Builder;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->id:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->normalizeParams(Ljava/lang/String;[D)[D

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->params:[D

    return-object p0
.end method

.method public spec(Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;)Lcom/sgscq/vpn/battle/BattleSkill$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->spec:Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;

    return-object p0
.end method

.method public template(Lcom/sgscq/vpn/battle/BattleSkillTemplate;)Lcom/sgscq/vpn/battle/BattleSkill$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->template:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object p0
.end method

.method public triggerSchedule(IIIII)Lcom/sgscq/vpn/battle/BattleSkill$Builder;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result p5

    iput p5, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->triggerInterval:I

    invoke-static {p1, p5}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->clampScheduleAction(II)I

    move-result p1

    iput p1, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->firstTriggerMinAction:I

    iget p5, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->triggerInterval:I

    invoke-static {p2, p5}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->clampScheduleAction(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->firstTriggerMaxAction:I

    iget p1, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->triggerInterval:I

    invoke-static {p3, p1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->clampScheduleAction(II)I

    move-result p1

    iput p1, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->repeatTriggerMinAction:I

    iget p2, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->triggerInterval:I

    invoke-static {p4, p2}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->clampScheduleAction(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->repeatTriggerMaxAction:I

    iput-boolean v0, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->explicitTriggerNode:Z

    return-object p0
.end method

.method public type(Lcom/sgscq/vpn/battle/BattleSkillType;)Lcom/sgscq/vpn/battle/BattleSkill$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->type:Lcom/sgscq/vpn/battle/BattleSkillType;

    return-object p0
.end method
