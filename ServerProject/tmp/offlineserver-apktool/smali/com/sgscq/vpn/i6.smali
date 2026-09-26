.class public final synthetic Lcom/sgscq/vpn/i6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcom/sgscq/vpn/SettingsActivity;

.field public final synthetic b:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/SettingsActivity;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/i6;->a:Lcom/sgscq/vpn/SettingsActivity;

    iput-object p2, p0, Lcom/sgscq/vpn/i6;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/sgscq/vpn/i6;->a:Lcom/sgscq/vpn/SettingsActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/sgscq/vpn/SettingsActivity;->O:Landroid/widget/AutoCompleteTextView;

    .line 4
    .line 5
    iget-object p2, p0, Lcom/sgscq/vpn/i6;->b:[Ljava/lang/String;

    .line 6
    .line 7
    aget-object p2, p2, p3

    .line 8
    .line 9
    invoke-static {p2}, Lcom/sgscq/vpn/SettingsActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const/4 p3, 0x0

    .line 14
    invoke-virtual {p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
