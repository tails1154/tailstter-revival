.class public Lcom/twitter/android/client/AppBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/twitter/android/client/j;

    invoke-direct {v0}, Lcom/twitter/android/client/j;-><init>()V

    sput-object v0, Lcom/twitter/android/client/AppBroadcastReceiver;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {p1}, Lcom/twitter/android/client/i;->a(Landroid/content/Context;)Lcom/twitter/android/client/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/client/AppBroadcastReceiver;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0, v1, p2}, Lcom/twitter/android/client/i;->a(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0}, Lcom/twitter/android/client/i;->t()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0}, Lcom/twitter/android/client/i;->u()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
