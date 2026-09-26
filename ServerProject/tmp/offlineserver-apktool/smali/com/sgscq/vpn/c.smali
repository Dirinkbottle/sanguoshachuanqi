.class public final synthetic Lcom/sgscq/vpn/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/sgscq/vpn/p6;Landroid/app/Activity;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/sgscq/vpn/c;->a:I

    iput-object p1, p0, Lcom/sgscq/vpn/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sgscq/vpn/c;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sgscq/vpn/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/sgscq/vpn/c;->a:I

    iput-object p1, p0, Lcom/sgscq/vpn/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sgscq/vpn/c;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sgscq/vpn/c;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/sgscq/vpn/c;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_17

    :pswitch_0
    iget-object v0, p0, Lcom/sgscq/vpn/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/a7;

    iget-object v1, p0, Lcom/sgscq/vpn/c;->b:Ljava/lang/Object;

    check-cast v1, Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/sgscq/vpn/c;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u4e0b\u8f7d\u5931\u8d25: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/a7;->c(Ljava/lang/String;)V

    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Lcom/sgscq/vpn/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/a7;

    iget-object v1, p0, Lcom/sgscq/vpn/c;->b:Ljava/lang/Object;

    check-cast v1, Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/sgscq/vpn/c;->d:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v4, v0, Lcom/sgscq/vpn/a7;->a:Ljava/lang/Object;

    const/16 v5, 0x1a

    const/high16 v6, 0x10000000

    if-lt v1, v5, :cond_0

    move-object v1, v4

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {v5}, Lcom/sgscq/vpn/q1;->l(Landroid/content/pm/PackageManager;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v2, "\u8bf7\u5141\u8bb8\u4ece\u672a\u77e5\u6765\u6e90\u5b89\u88c5\u5e94\u7528"

    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/a7;->c(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v5, v4

    check-cast v5, Landroid/content/Context;

    sget v6, Lcom/sgscq/vpn/ApkProvider;->a:I

    .line 5
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    const-string v7, "content"

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".apkprovider"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 6
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5b89\u88c5\u5931\u8d25: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/a7;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 7
    :pswitch_2
    iget-object v0, p0, Lcom/sgscq/vpn/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/a7;

    iget-object v1, p0, Lcom/sgscq/vpn/c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sgscq/vpn/c;->d:Ljava/lang/Object;

    check-cast v2, Landroid/app/AlertDialog;

    .line 8
    iget-object v3, v0, Lcom/sgscq/vpn/a7;->b:Ljava/lang/Object;

    :try_start_1
    new-instance v4, Ljava/io/File;

    iget-object v5, v0, Lcom/sgscq/vpn/a7;->a:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "update.apk"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v5, "https://api.sgscq.com/api/v1/public/app/latest"

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/net/URL;

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v7, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v5, Lcom/sgscq/vpn/e7;

    invoke-direct {v5, v0, v1, v4, v2}, Lcom/sgscq/vpn/e7;-><init>(Lcom/sgscq/vpn/a7;Ljava/lang/String;Ljava/io/File;Landroid/app/AlertDialog;)V

    invoke-static {v5}, Lcom/sgscq/vpn/p5;->O(Lq/l;)Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Landroid/os/Handler;

    new-instance v5, Lcom/sgscq/vpn/c;

    const/16 v6, 0x9

    invoke-direct {v5, v0, v2, v4, v6}, Lcom/sgscq/vpn/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 11
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "APK\u4e0b\u8f7d\u5730\u5740\u4e3a\u7a7a"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v1

    .line 12
    check-cast v3, Landroid/os/Handler;

    new-instance v4, Lcom/sgscq/vpn/c;

    const/16 v5, 0xa

    invoke-direct {v4, v0, v2, v1, v5}, Lcom/sgscq/vpn/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    .line 13
    :pswitch_3
    iget-object v0, p0, Lcom/sgscq/vpn/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/SettingsActivity;

    iget-object v1, p0, Lcom/sgscq/vpn/c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/sgscq/vpn/cloud/d0;

    iget-object v2, p0, Lcom/sgscq/vpn/c;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget v4, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 14
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/SettingsActivity;->z(Lcom/sgscq/vpn/cloud/d0;)V

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\u5df2\u5207\u6362\u5230\u672c\u5730\u4e91\u5b58\u6863\uff1b\u4e0a\u4f20\u548c\u4e0b\u8f7d\u9700\u624b\u52a8\u64cd\u4f5c"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void

    .line 15
    :pswitch_4
    iget-object v0, p0, Lcom/sgscq/vpn/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/PassportActivity;

    iget-object v2, p0, Lcom/sgscq/vpn/c;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/Callable;

    iget-object v3, p0, Lcom/sgscq/vpn/c;->d:Ljava/lang/Object;

    check-cast v3, Landroid/app/AlertDialog;

    sget v4, Lcom/sgscq/vpn/PassportActivity;->q:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_2
    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v1

    move-object v1, v4

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :goto_3
    new-instance v4, Lcom/sgscq/vpn/z3;

    invoke-direct {v4, v0, v3, v1, v2}, Lcom/sgscq/vpn/z3;-><init>(Lcom/sgscq/vpn/PassportActivity;Landroid/app/AlertDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 17
    :pswitch_5
    iget-object v0, p0, Lcom/sgscq/vpn/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/MainActivity;

    iget-object v4, p0, Lcom/sgscq/vpn/c;->b:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    iget-object v5, p0, Lcom/sgscq/vpn/c;->d:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    sget v6, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 18
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_5

    .line 19
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v6

    if-nez v6, :cond_5

    move v2, v3

    :cond_5
    if-nez v2, :cond_6

    goto :goto_4

    .line 20
    :cond_6
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u5bfc\u51fa\u6210\u529f"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "\u6587\u4ef6\u5df2\u4fdd\u5b58\u5230\u4e0b\u8f7d\u76ee\u5f55:\n"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u786e\u5b9a"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6570\u636e\u5df2\u5bfc\u51fa: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/MainActivity;->e(Ljava/lang/String;)V

    :goto_4
    return-void

    .line 21
    :pswitch_6
    iget-object v0, p0, Lcom/sgscq/vpn/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/y2;

    iget-object v1, p0, Lcom/sgscq/vpn/c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/sgscq/vpn/c;->d:Ljava/lang/Object;

    check-cast v4, [B

    sget-object v5, Lcom/sgscq/vpn/y2;->X:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "SGSCQ_SRV"

    if-eqz v1, :cond_7

    :try_start_3
    const-string v5, ".zip"

    .line 22
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v3

    goto :goto_5

    :cond_7
    move v5, v2

    :goto_5
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v6, ".jpg"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_6

    :cond_8
    move v1, v2

    :goto_6
    if-nez v5, :cond_12

    if-nez v1, :cond_12

    if-eqz v4, :cond_12

    array-length v1, v4

    if-nez v1, :cond_9

    goto/16 :goto_f

    :cond_9
    const-string v1, "\r\n\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    move v5, v2

    .line 23
    :goto_7
    array-length v6, v4

    array-length v7, v1

    sub-int/2addr v6, v7

    if-gt v5, v6, :cond_d

    move v6, v2

    :goto_8
    array-length v7, v1

    if-ge v6, v7, :cond_b

    add-int v7, v5, v6

    aget-byte v7, v4, v7

    aget-byte v8, v1, v6

    if-eq v7, v8, :cond_a

    move v6, v2

    goto :goto_9

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_b
    move v6, v3

    :goto_9
    if-eqz v6, :cond_c

    goto :goto_a

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_d
    const/4 v5, -0x1

    :goto_a
    if-gez v5, :cond_e

    goto/16 :goto_f

    .line 24
    :cond_e
    array-length v1, v4

    sub-int/2addr v1, v5

    add-int/lit8 v1, v1, -0x4

    if-gtz v1, :cond_f

    goto/16 :goto_f

    :cond_f
    add-int/lit8 v5, v5, 0x4

    aget-byte v3, v4, v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const-string v6, "[RESP_DATA] "

    const/16 v7, 0x78

    if-ne v3, v7, :cond_11

    :try_start_4
    new-array v3, v1, [B

    invoke-static {v4, v5, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Lcom/sgscq/vpn/y2;->u0([B)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sgscq/vpn/y2;->b3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RESP_DATA] (zlib decompress failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " compressed bytes)"

    :goto_b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :catch_3
    move-exception v1

    goto :goto_e

    :cond_11
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v4, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sgscq/vpn/y2;->b3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :goto_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_d
    invoke-static {v0, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_f

    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[RESP_DATA] (preview unavailable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_f
    return-void

    .line 25
    :pswitch_7
    iget-object v0, p0, Lcom/sgscq/vpn/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/x1;

    iget-object v1, p0, Lcom/sgscq/vpn/c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sgscq/vpn/c;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    .line 26
    monitor-enter v0

    :try_start_5
    iget-object v3, v0, Lcom/sgscq/vpn/x1;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    .line 27
    :pswitch_8
    iget-object v0, p0, Lcom/sgscq/vpn/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/e1;

    iget-object v1, p0, Lcom/sgscq/vpn/c;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sgscq/vpn/c1;

    iget-object v2, p0, Lcom/sgscq/vpn/c;->b:Ljava/lang/Object;

    check-cast v2, Landroid/app/Activity;

    .line 28
    :try_start_7
    check-cast v0, Lcom/sgscq/vpn/b1;

    iget v3, v0, Lcom/sgscq/vpn/b1;->a:I

    iget-object v0, v0, Lcom/sgscq/vpn/b1;->b:Lcom/sgscq/vpn/h;

    packed-switch v3, :pswitch_data_1

    goto :goto_10

    .line 29
    :pswitch_9
    invoke-virtual {v0}, Lcom/sgscq/vpn/h;->q()Lcom/sgscq/vpn/d1;

    move-result-object v0

    goto :goto_11

    .line 30
    :goto_10
    invoke-virtual {v0}, Lcom/sgscq/vpn/h;->q()Lcom/sgscq/vpn/d1;

    move-result-object v0

    :goto_11
    if-eqz v1, :cond_13

    .line 31
    new-instance v3, Lcom/sgscq/vpn/d;

    const/4 v4, 0x5

    invoke-direct {v3, v1, v0, v4}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_12

    :catch_4
    move-exception v0

    if-eqz v1, :cond_13

    new-instance v3, Lcom/sgscq/vpn/d;

    const/4 v4, 0x6

    invoke-direct {v3, v1, v0, v4}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_13
    :goto_12
    return-void

    .line 32
    :pswitch_a
    iget-object v0, p0, Lcom/sgscq/vpn/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/a0;

    iget-object v1, p0, Lcom/sgscq/vpn/c;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sgscq/vpn/y;

    iget-object v4, p0, Lcom/sgscq/vpn/c;->b:Ljava/lang/Object;

    check-cast v4, Landroid/app/Activity;

    sget v5, Lcom/sgscq/vpn/b0;->c:I

    .line 33
    :try_start_8
    check-cast v0, Lcom/sgscq/vpn/w;

    iget v5, v0, Lcom/sgscq/vpn/w;->a:I

    iget-object v0, v0, Lcom/sgscq/vpn/w;->b:Lcom/sgscq/vpn/b0;

    packed-switch v5, :pswitch_data_2

    goto :goto_13

    .line 34
    :pswitch_b
    invoke-virtual {v0, v3}, Lcom/sgscq/vpn/b0;->d(Z)Lcom/sgscq/vpn/z;

    move-result-object v0

    goto :goto_14

    .line 35
    :pswitch_c
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/b0;->d(Z)Lcom/sgscq/vpn/z;

    move-result-object v0

    goto :goto_14

    .line 36
    :goto_13
    invoke-virtual {v0, v3}, Lcom/sgscq/vpn/b0;->d(Z)Lcom/sgscq/vpn/z;

    move-result-object v0

    :goto_14
    if-eqz v1, :cond_14

    .line 37
    new-instance v2, Lcom/sgscq/vpn/d;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v0, v3}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_15

    :catch_5
    move-exception v0

    if-eqz v1, :cond_14

    new-instance v2, Lcom/sgscq/vpn/d;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v0, v3}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_14
    :goto_15
    return-void

    .line 38
    :pswitch_d
    iget-object v0, p0, Lcom/sgscq/vpn/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/g;

    iget-object v1, p0, Lcom/sgscq/vpn/c;->b:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iget-object v4, p0, Lcom/sgscq/vpn/c;->d:Ljava/lang/Object;

    check-cast v4, Lcom/sgscq/vpn/e;

    .line 39
    :try_start_9
    check-cast v0, Lcom/sgscq/vpn/a;

    invoke-virtual {v0}, Lcom/sgscq/vpn/a;->c()Lcom/sgscq/vpn/f;

    move-result-object v0

    new-instance v5, Lcom/sgscq/vpn/d;

    invoke-direct {v5, v4, v0, v2}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_16

    :catch_6
    move-exception v0

    new-instance v2, Lcom/sgscq/vpn/d;

    invoke-direct {v2, v4, v0, v3}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_16
    return-void

    .line 40
    :goto_17
    iget-object v0, p0, Lcom/sgscq/vpn/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/p7;

    iget-object v1, p0, Lcom/sgscq/vpn/c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/sgscq/vpn/c;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    sget-object v3, Lcom/sgscq/vpn/p7;->t:Ljava/util/HashMap;

    .line 41
    invoke-virtual {v0}, Lcom/sgscq/vpn/p7;->e()V

    iget-object v3, v0, Lcom/sgscq/vpn/p7;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_a
    invoke-virtual {v0, v1, v2}, Lcom/sgscq/vpn/p7;->b(Ljava/util/List;Ljava/util/List;)V

    monitor-exit v3

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method
