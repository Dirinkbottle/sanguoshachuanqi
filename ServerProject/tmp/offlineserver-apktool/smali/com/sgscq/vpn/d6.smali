.class public final synthetic Lcom/sgscq/vpn/d6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sgscq/vpn/SettingsActivity;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/SettingsActivity;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/d6;->a:Lcom/sgscq/vpn/SettingsActivity;

    iput p2, p0, Lcom/sgscq/vpn/d6;->b:I

    iput p3, p0, Lcom/sgscq/vpn/d6;->c:I

    iput p4, p0, Lcom/sgscq/vpn/d6;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 2
    .line 3
    iget v0, p0, Lcom/sgscq/vpn/d6;->c:I

    .line 4
    .line 5
    iget v1, p0, Lcom/sgscq/vpn/d6;->d:I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/sgscq/vpn/d6;->a:Lcom/sgscq/vpn/SettingsActivity;

    .line 8
    .line 9
    iget v3, p0, Lcom/sgscq/vpn/d6;->b:I

    .line 10
    .line 11
    invoke-virtual {v2, v3, v0, v1}, Lcom/sgscq/vpn/SettingsActivity;->x(III)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
