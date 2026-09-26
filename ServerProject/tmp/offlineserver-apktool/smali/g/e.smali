.class public abstract Lg/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static final b:Ld/a;

.field public static final c:Ld/a;

.field public static final d:Ld/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "java.sql.Date"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    goto :goto_0

    :catch_0
    move v2, v1

    :goto_0
    sput-boolean v2, Lg/e;->a:Z

    if-eqz v2, :cond_0

    new-instance v2, Lg/d;

    const-class v3, Ljava/sql/Date;

    invoke-direct {v2, v3, v1}, Lg/d;-><init>(Ljava/lang/Class;I)V

    new-instance v1, Lg/d;

    const-class v2, Ljava/sql/Timestamp;

    invoke-direct {v1, v2, v0}, Lg/d;-><init>(Ljava/lang/Class;I)V

    sget-object v0, Lg/a;->b:Ld/a;

    sput-object v0, Lg/e;->b:Ld/a;

    sget-object v0, Lg/b;->b:Ld/a;

    sput-object v0, Lg/e;->c:Ld/a;

    sget-object v0, Lg/c;->b:Ld/a;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lg/e;->b:Ld/a;

    sput-object v0, Lg/e;->c:Ld/a;

    :goto_1
    sput-object v0, Lg/e;->d:Ld/a;

    return-void
.end method
