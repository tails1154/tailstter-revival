.class public Lcom/twitter/android/SettingsActivity;
.super Landroid/preference/PreferenceActivity;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private static a(Landroid/preference/ListPreference;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/twitter/android/client/i;->a(Landroid/content/Context;)Lcom/twitter/android/client/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/client/i;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/twitter/android/client/i;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/SettingsActivity;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Lcom/twitter/android/SettingsActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/twitter/android/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v1, "sync_contacts"

    invoke-virtual {p0, v1}, Lcom/twitter/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "polling_interval"

    invoke-virtual {p0, v1}, Lcom/twitter/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/preference/ListPreference;

    move-object v1, v0

    const-string v5, "polling_interval"

    const-string v6, "60"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/twitter/android/SettingsActivity;->a(Landroid/preference/ListPreference;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    sget-boolean v1, Lcom/twitter/android/platform/C2DMService;->a:Z

    if-nez v1, :cond_0

    const-string v1, "notif_mentions_choice"

    invoke-virtual {p0, v1}, Lcom/twitter/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/preference/ListPreference;

    move-object v1, v0

    const-string v5, "notif_mentions_choice"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/twitter/android/SettingsActivity;->a(Landroid/preference/ListPreference;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    const-string v1, "photo_service"

    invoke-virtual {p0, v1}, Lcom/twitter/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/preference/ListPreference;

    move-object v1, v0

    const-string v5, "photo_service"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/twitter/android/SettingsActivity;->a(Landroid/preference/ListPreference;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "font_size"

    invoke-virtual {p0, v1}, Lcom/twitter/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/preference/ListPreference;

    move-object v1, v0

    const-string v5, "font_size"

    const-string v6, "14"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/twitter/android/SettingsActivity;->a(Landroid/preference/ListPreference;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "about"

    invoke-virtual {p0, v1}, Lcom/twitter/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/twitter/android/AboutActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, v3}, Lcom/twitter/android/SettingsActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/SettingsActivity;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/twitter/android/SettingsActivity;->finish()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/twitter/android/SettingsActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/twitter/android/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/t;-><init>(Lcom/twitter/android/SettingsActivity;Lcom/twitter/android/a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/t;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/twitter/android/SettingsActivity;->a(Landroid/preference/ListPreference;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/SettingsActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/twitter/android/eu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/eu;-><init>(Lcom/twitter/android/SettingsActivity;Lcom/twitter/android/a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/eu;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
