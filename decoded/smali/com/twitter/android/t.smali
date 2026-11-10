.class final Lcom/twitter/android/t;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/twitter/android/SettingsActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/t;->a:Lcom/twitter/android/SettingsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/SettingsActivity;Lcom/twitter/android/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/t;-><init>(Lcom/twitter/android/SettingsActivity;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/twitter/android/t;->a:Lcom/twitter/android/SettingsActivity;

    iget-object v1, p0, Lcom/twitter/android/t;->a:Lcom/twitter/android/SettingsActivity;

    iget-object v1, v1, Lcom/twitter/android/SettingsActivity;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/android/platform/f;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    const-string v2, "com.twitter.android.provider.TwitterProvider"

    iget-object v0, p0, Lcom/twitter/android/t;->a:Lcom/twitter/android/SettingsActivity;

    const-string v3, "sync_data"

    invoke-virtual {v0, v3}, Lcom/twitter/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/twitter/android/platform/f;->a(Landroid/accounts/Account;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/twitter/android/t;->a:Lcom/twitter/android/SettingsActivity;

    const-string v1, "sync_contacts"

    invoke-virtual {v0, v1}, Lcom/twitter/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/t;->a:Lcom/twitter/android/SettingsActivity;

    iget-object v1, v1, Lcom/twitter/android/SettingsActivity;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/t;->a:Lcom/twitter/android/SettingsActivity;

    iget-object v2, p0, Lcom/twitter/android/t;->a:Lcom/twitter/android/SettingsActivity;

    iget-object v2, v2, Lcom/twitter/android/SettingsActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v5

    :goto_1
    invoke-static {v1, v2, v3, v4}, Lcom/twitter/android/platform/f;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/t;->a:Lcom/twitter/android/SettingsActivity;

    const-class v2, Lcom/twitter/android/platform/RemoveRawContactsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "account_name"

    iget-object v2, p0, Lcom/twitter/android/t;->a:Lcom/twitter/android/SettingsActivity;

    iget-object v2, v2, Lcom/twitter/android/SettingsActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/t;->a:Lcom/twitter/android/SettingsActivity;

    invoke-virtual {v1, v0}, Lcom/twitter/android/SettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    move v3, v6

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_1
.end method
