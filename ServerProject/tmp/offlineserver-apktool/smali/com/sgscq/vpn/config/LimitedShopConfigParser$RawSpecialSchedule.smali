.class final Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSpecialSchedule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field daysOfWeek:Ljava/util/List;
    .annotation runtime Lb/b;
        value = "days_of_week"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field enabled:Z

.field plannedRotation:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPlannedRotation;
    .annotation runtime Lb/b;
        value = "planned_rotation"
    .end annotation
.end field

.field randomization:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawRandomization;

.field selectionsPerWeek:I
    .annotation runtime Lb/b;
        value = "selections_per_week"
    .end annotation
.end field

.field windowSeconds:J
    .annotation runtime Lb/b;
        value = "window_seconds"
    .end annotation
.end field

.field windowStart:Ljava/lang/String;
    .annotation runtime Lb/b;
        value = "window_start"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
