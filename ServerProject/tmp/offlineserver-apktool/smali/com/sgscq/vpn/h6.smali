.class public final synthetic Lcom/sgscq/vpn/h6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sgscq/vpn/SettingsActivity;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/SettingsActivity;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sgscq/vpn/h6;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/h6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 4
    .line 5
    iput p2, p0, Lcom/sgscq/vpn/h6;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget p1, p0, Lcom/sgscq/vpn/h6;->a:I

    .line 2
    .line 3
    iget v0, p0, Lcom/sgscq/vpn/h6;->c:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lcom/sgscq/vpn/h6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_2

    .line 12
    :pswitch_0
    sget p1, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string p1, "custom_servers"

    .line 18
    .line 19
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    .line 20
    .line 21
    iget-object v4, v2, Lcom/sgscq/vpn/SettingsActivity;->a:Landroid/content/SharedPreferences;

    .line 22
    .line 23
    const-string v5, "[]"

    .line 24
    .line 25
    invoke-interface {v4, p1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    if-ltz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-lt v0, v4, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    new-instance v4, Lorg/json/JSONArray;

    .line 42
    .line 43
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 44
    .line 45
    .line 46
    move v5, v1

    .line 47
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-ge v5, v6, :cond_2

    .line 52
    .line 53
    if-eq v5, v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 60
    .line 61
    .line 62
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, v2, Lcom/sgscq/vpn/SettingsActivity;->a:Landroid/content/SharedPreferences;

    .line 66
    .line 67
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    .line 81
    .line 82
    const-string p1, "\u5df2\u5220\u9664"

    .line 83
    .line 84
    invoke-static {v2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catch_0
    const-string p1, "\u5220\u9664\u5931\u8d25"

    .line 93
    .line 94
    invoke-static {v2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 99
    .line 100
    .line 101
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/sgscq/vpn/SettingsActivity;->s()V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :goto_2
    sget p1, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->E0(I)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    iput p1, v2, Lcom/sgscq/vpn/SettingsActivity;->X:I

    .line 115
    .line 116
    iget-object p1, v2, Lcom/sgscq/vpn/SettingsActivity;->V:Landroid/widget/Switch;

    .line 117
    .line 118
    if-eqz p1, :cond_4

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_4

    .line 125
    .line 126
    const/4 v1, 0x1

    .line 127
    :cond_4
    iget p1, v2, Lcom/sgscq/vpn/SettingsActivity;->X:I

    .line 128
    .line 129
    invoke-virtual {v2, p1, v1}, Lcom/sgscq/vpn/SettingsActivity;->E(IZ)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/sgscq/vpn/SettingsActivity;->A()V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
