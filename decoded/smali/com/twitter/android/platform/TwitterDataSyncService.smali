.class public Lcom/twitter/android/platform/TwitterDataSyncService;
.super Landroid/app/Service;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/twitter/android/platform/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/twitter/android/platform/TwitterDataSyncService;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/twitter/android/platform/TwitterDataSyncService;->b:Lcom/twitter/android/platform/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/twitter/android/platform/TwitterDataSyncService;->a(Landroid/content/Context;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;Z)V
    .locals 8

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.twitter.android.auth.login"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    const/4 v1, 0x1

    const-string v5, "com.twitter.android.provider.TwitterProvider"

    invoke-static {v4, v5}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v5

    const/4 v5, 0x1

    const-string v5, "com.twitter.android.provider.TwitterProvider"

    invoke-static {v4, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    const/4 v5, 0x1

    # Always include home timeline refreshes in scheduled syncs.
    const-string v5, "home"
    const/4 v6, 0x1
    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    const-string v5, "com.twitter.android.provider.TwitterProvider"

    invoke-static {v4, v5, p1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_0

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/twitter/android/service/TwitterService;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "REFRESH"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "account"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "_data"

    invoke-virtual {v5, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_sync"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    sget-object v0, Lcom/twitter/android/platform/TwitterDataSyncService;->b:Lcom/twitter/android/platform/o;

    invoke-virtual {v0}, Lcom/twitter/android/platform/o;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    sget-object v0, Lcom/twitter/android/platform/TwitterDataSyncService;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/twitter/android/platform/TwitterDataSyncService;->b:Lcom/twitter/android/platform/o;

    if-nez v1, :cond_0

    new-instance v1, Lcom/twitter/android/platform/o;

    invoke-virtual {p0}, Lcom/twitter/android/platform/TwitterDataSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/twitter/android/platform/o;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/twitter/android/platform/TwitterDataSyncService;->b:Lcom/twitter/android/platform/o;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
