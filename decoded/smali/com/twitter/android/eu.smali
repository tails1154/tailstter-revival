.class final Lcom/twitter/android/eu;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Z

.field private synthetic c:Lcom/twitter/android/SettingsActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/eu;->c:Lcom/twitter/android/SettingsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/SettingsActivity;Lcom/twitter/android/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/eu;-><init>(Lcom/twitter/android/SettingsActivity;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/eu;->c:Lcom/twitter/android/SettingsActivity;

    iget-object v1, p0, Lcom/twitter/android/eu;->c:Lcom/twitter/android/SettingsActivity;

    iget-object v1, v1, Lcom/twitter/android/SettingsActivity;->a:Ljava/lang/String;

    const-string v2, "com.android.contacts"

    invoke-static {v0, v1, v2}, Lcom/twitter/android/platform/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/eu;->c:Lcom/twitter/android/SettingsActivity;

    iget-object v1, p0, Lcom/twitter/android/eu;->c:Lcom/twitter/android/SettingsActivity;

    iget-object v1, v1, Lcom/twitter/android/SettingsActivity;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/android/platform/f;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/eu;->a:Ljava/lang/Integer;

    :goto_0
    iget-object v0, p0, Lcom/twitter/android/eu;->c:Lcom/twitter/android/SettingsActivity;

    iget-object v1, p0, Lcom/twitter/android/eu;->c:Lcom/twitter/android/SettingsActivity;

    iget-object v1, v1, Lcom/twitter/android/SettingsActivity;->a:Ljava/lang/String;

    const-string v2, "com.twitter.android.provider.TwitterProvider"

    invoke-static {v0, v1, v2}, Lcom/twitter/android/platform/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/eu;->b:Z

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/eu;->a:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/eu;->a:Ljava/lang/Integer;

    goto :goto_0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/eu;->c:Lcom/twitter/android/SettingsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/eu;->c:Lcom/twitter/android/SettingsActivity;

    const-string v1, "sync_contacts"

    invoke-virtual {v0, v1}, Lcom/twitter/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/eu;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/twitter/android/eu;->c:Lcom/twitter/android/SettingsActivity;

    iget-object v1, p0, Lcom/twitter/android/eu;->a:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/twitter/android/SettingsActivity;->b:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/twitter/android/eu;->c:Lcom/twitter/android/SettingsActivity;

    const-string v1, "sync_data"

    invoke-virtual {v0, v1}, Lcom/twitter/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/twitter/android/eu;->b:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    return-void

    :pswitch_0
    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :pswitch_1
    const v1, 0x7f090015

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :pswitch_2
    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
