.class final Lcom/twitter/android/y;
.super Lcom/twitter/android/client/m;


# instance fields
.field private synthetic a:Lcom/twitter/android/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/y;->a:Lcom/twitter/android/LoginActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/LoginActivity;Lcom/twitter/android/cw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/y;-><init>(Lcom/twitter/android/LoginActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/twitter/android/LoginActivity;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoginComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/y;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0}, Lcom/twitter/android/LoginActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/y;->a:Lcom/twitter/android/LoginActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/LoginActivity;->removeDialog(I)V

    iget-object v0, p0, Lcom/twitter/android/y;->a:Lcom/twitter/android/LoginActivity;

    iget-boolean v0, v0, Lcom/twitter/android/LoginActivity;->b:Z

    sparse-switch p3, :sswitch_data_0

    iget-object v0, p0, Lcom/twitter/android/y;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0, p3}, Lcom/twitter/android/LoginActivity;->a(I)V

    goto :goto_0

    :sswitch_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/y;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0}, Lcom/twitter/android/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountAuthenticatorResponse"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "authAccount"

    invoke-virtual {p1}, Lcom/twitter/android/client/n;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "accountType"

    const-string v3, "com.twitter.android.auth.login"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "account_user_info"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/y;->a:Lcom/twitter/android/LoginActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/LoginActivity;->setResult(I)V

    iget-object v0, p0, Lcom/twitter/android/y;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0}, Lcom/twitter/android/LoginActivity;->finish()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/y;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0}, Lcom/twitter/android/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/y;->a:Lcom/twitter/android/LoginActivity;

    const-class v2, Lcom/twitter/android/HomeTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "tab"

    const-string v2, "home"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_3
    iget-object v1, p0, Lcom/twitter/android/y;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/twitter/android/LoginActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/twitter/android/y;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0}, Lcom/twitter/android/LoginActivity;->finish()V

    goto :goto_0

    :sswitch_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/android/y;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0}, Lcom/twitter/android/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountAuthenticatorResponse"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {v0, p3, p4}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/twitter/android/y;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0, p3}, Lcom/twitter/android/LoginActivity;->a(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x190 -> :sswitch_1
    .end sparse-switch
.end method
