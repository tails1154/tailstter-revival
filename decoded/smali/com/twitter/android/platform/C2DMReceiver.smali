.class public Lcom/twitter/android/platform/C2DMReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/twitter/android/platform/C2DMReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
