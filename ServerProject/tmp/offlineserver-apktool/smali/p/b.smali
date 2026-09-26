.class public final Lp/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:I

.field public final e:Lm/e;

.field public final f:Lm/e;


# direct methods
.method public constructor <init>(JJJILm/e;Lm/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lp/b;->a:J

    iput-wide p3, p0, Lp/b;->b:J

    iput-wide p5, p0, Lp/b;->c:J

    iput p7, p0, Lp/b;->d:I

    iput-object p8, p0, Lp/b;->e:Lm/e;

    iput-object p9, p0, Lp/b;->f:Lm/e;

    return-void
.end method
