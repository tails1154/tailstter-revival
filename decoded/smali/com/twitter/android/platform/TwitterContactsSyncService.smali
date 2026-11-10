.class public Lcom/twitter/android/platform/TwitterContactsSyncService;
.super Landroid/app/Service;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/twitter/android/platform/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/twitter/android/platform/TwitterContactsSyncService;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/twitter/android/platform/TwitterContactsSyncService;->b:Lcom/twitter/android/platform/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    sget-object v0, Lcom/twitter/android/platform/TwitterContactsSyncService;->b:Lcom/twitter/android/platform/m;

    invoke-virtual {v0}, Lcom/twitter/android/platform/m;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    sget-object v0, Lcom/twitter/android/platform/TwitterContactsSyncService;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/twitter/android/platform/TwitterContactsSyncService;->b:Lcom/twitter/android/platform/m;

    if-nez v1, :cond_0

    new-instance v1, Lcom/twitter/android/platform/m;

    invoke-virtual {p0}, Lcom/twitter/android/platform/TwitterContactsSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/twitter/android/platform/m;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/twitter/android/platform/TwitterContactsSyncService;->b:Lcom/twitter/android/platform/m;

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
