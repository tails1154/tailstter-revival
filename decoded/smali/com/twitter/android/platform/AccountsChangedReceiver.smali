.class public Lcom/twitter/android/platform/AccountsChangedReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "AccountsChangedReceiver"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/twitter/android/platform/AccountsChangedReceiver;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-boolean v0, Lcom/twitter/android/platform/AccountsChangedReceiver;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "AccountsChangedReceiver"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/twitter/android/platform/l;

    invoke-direct {v0, p1}, Lcom/twitter/android/platform/l;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/platform/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
