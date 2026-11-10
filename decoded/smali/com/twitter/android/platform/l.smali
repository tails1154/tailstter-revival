.class final Lcom/twitter/android/platform/l;
.super Landroid/os/AsyncTask;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/platform/l;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/platform/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/provider/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/twitter/android/platform/AccountsChangedReceiver;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "AccountsChangedReceiver"

    const-string v1, "Account does not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/twitter/android/platform/l;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/twitter/android/platform/f;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    goto :goto_0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Landroid/accounts/Account;

    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/twitter/android/platform/AccountsChangedReceiver;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "AccountsChangedReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account still exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/platform/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/client/i;->a(Landroid/content/Context;)Lcom/twitter/android/client/i;

    move-result-object v0

    sget-boolean v1, Lcom/twitter/android/platform/AccountsChangedReceiver;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "AccountsChangedReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->g()Lcom/twitter/android/client/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v1, Lcom/twitter/android/platform/d;->a:[I

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->g()Lcom/twitter/android/client/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/d;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    sget-boolean v1, Lcom/twitter/android/platform/AccountsChangedReceiver;->a:Z

    if-eqz v1, :cond_3

    const-string v1, "AccountsChangedReceiver"

    const-string v2, "Logging out..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v0}, Lcom/twitter/android/client/i;->i()Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
