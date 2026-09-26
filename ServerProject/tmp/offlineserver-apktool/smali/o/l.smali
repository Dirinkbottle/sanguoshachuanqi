.class public final Lo/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:La/o;


# instance fields
.field public final a:Lo/f;

.field public final b:Lcom/sgscq/vpn/handler/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La/o;

    invoke-direct {v0}, La/o;-><init>()V

    sput-object v0, Lo/l;->c:La/o;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lo/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lo/f;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lo/l;->a:Lo/f;

    new-instance p1, Lcom/sgscq/vpn/handler/a;

    invoke-direct {p1}, Lcom/sgscq/vpn/handler/a;-><init>()V

    iput-object p1, p0, Lo/l;->b:Lcom/sgscq/vpn/handler/a;

    return-void
.end method


# virtual methods
.method public final a(Lo/k;)V
    .locals 6

    .line 1
    const-string v0, "trusted_time_signature"

    .line 2
    .line 3
    const-string v1, "trusted_time_payload"

    .line 4
    .line 5
    iget-object v2, p0, Lo/l;->a:Lo/f;

    .line 6
    .line 7
    :try_start_0
    sget-object v3, Lo/l;->c:La/o;

    .line 8
    .line 9
    invoke-virtual {v3, p1}, La/o;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v3, p0, Lo/l;->b:Lcom/sgscq/vpn/handler/a;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/sgscq/vpn/handler/a;->a([B)[B

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iget-object v4, v2, Lo/f;->a:Landroid/content/SharedPreferences;

    .line 29
    .line 30
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const/4 v5, 0x2

    .line 35
    invoke-static {p1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {v4, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    iget-object p1, v2, Lo/f;->a:Landroid/content/SharedPreferences;

    .line 56
    .line 57
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method
